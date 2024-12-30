local QBCore = exports['qb-core']:GetCoreObject()
local availableJobs = Config.AvailableJobs

-- Exports

local function AddCityJob(jobName, toCH)
    if availableJobs[jobName] then return false, 'already added' end
    availableJobs[jobName] = {
        ['label'] = toCH.label,
        ['isManaged'] = toCH.isManaged
    }
    return true, 'success'
end

exports('AddCityJob', AddCityJob)

-- Functions

local function giveStarterItems()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    for _, v in pairs(QBCore.Shared.StarterItems) do
        local info = {}
        if v.item == 'id_card' then
            info.citizenid = Player.PlayerData.citizenid
            info.firstname = Player.PlayerData.charinfo.firstname
            info.lastname = Player.PlayerData.charinfo.lastname
            info.birthdate = Player.PlayerData.charinfo.birthdate
            info.gender = Player.PlayerData.charinfo.gender
            info.nationality = Player.PlayerData.charinfo.nationality
        elseif v.item == 'driver_license' then
            info.firstname = Player.PlayerData.charinfo.firstname
            info.lastname = Player.PlayerData.charinfo.lastname
            info.birthdate = Player.PlayerData.charinfo.birthdate
            info.type = 'Class C Driver License'
        end
        exports['qb-inventory']:AddItem(source, v.item, 1, false, info, 'qb-cityhall:giveStarterItems')
    end
end

-- Callbacks

QBCore.Functions.CreateCallback('qb-cityhall:server:receiveJobs', function(_, cb)
    cb(availableJobs)
end)

-- Events

RegisterNetEvent('qb-cityhall:server:requestId', function(item, hall)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local itemInfo = Config.Cityhalls[hall].licenses[item]
    if not exports['qb-inventory']:RemoveItem(src, 'cash', itemInfo.cost, false, 'cityhall id') then return TriggerClientEvent('QBCore:Notify', src, ('Bạn không có đủ tiền, bạn cần %s tiền mặt'):format(itemInfo.cost), 'error') end
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['cash'], 'remove', itemInfo.cost)
    local info = {}
    if item == 'id_card' then
        info.citizenid = Player.PlayerData.citizenid
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
        info.gender = Player.PlayerData.charinfo.gender
        info.nationality = Player.PlayerData.charinfo.nationality
    elseif item == 'driver_license' then
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
        info.type = 'Bằng lái xe hạng C'
    elseif item == 'weaponlicense' then
        info.firstname = Player.PlayerData.charinfo.firstname
        info.lastname = Player.PlayerData.charinfo.lastname
        info.birthdate = Player.PlayerData.charinfo.birthdate
    else
        return false -- DropPlayer(src, 'Attempted exploit abuse')
    end
    if not exports['qb-inventory']:AddItem(source, item, 1, false, info, 'qb-cityhall:server:requestId') then return end
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
end)

RegisterNetEvent('qb-cityhall:server:sendDriverTest', function(instructors)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    for i = 1, #instructors do
        local citizenid = instructors[i]
        local SchoolPlayer = QBCore.Functions.GetPlayerByCitizenId(citizenid)
        if SchoolPlayer then
            TriggerClientEvent('qb-cityhall:client:sendDriverEmail', SchoolPlayer.PlayerData.source, Player.PlayerData.charinfo)
        else
            local mailData = {
                sender = 'Township',
                subject = 'Yêu cầu học lái xe',
                message = 'Xin chào,<br><br>Chúng tôi vừa nhận được tin nhắn rằng có người muốn học lái xe.<br>Nếu bạn muốn dạy, vui lòng liên hệ với họ:<br>Tên: <strong>' .. Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname .. '<br />Phone Number: <strong>' .. Player.PlayerData.charinfo.phone .. '</strong><br><br>Kind regards,<br>Township Los Santos',
                button = {}
            }
            exports['qb-phone']:sendNewMailToOffline(citizenid, mailData)
        end
    end
    TriggerClientEvent('QBCore:Notify', src, 'Một email đã được gửi đến các trường dạy lái xe và bạn sẽ tự động được liên lạc', 'success', 5000)
end)

RegisterNetEvent('qb-cityhall:server:ApplyJob', function(job, cityhallCoords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local ped = GetPlayerPed(src)
    local pedCoords = GetEntityCoords(ped)

    local data = {
        ['src'] = src,
        ['job'] = job
    }
    if #(pedCoords - cityhallCoords) >= 20.0 or not availableJobs[job] then
        return false -- DropPlayer(source, "Attempted exploit abuse")
    end
    local JobInfo = QBCore.Shared.Jobs[job]
    Player.Functions.SetJob(data.job, 0)
    TriggerClientEvent('QBCore:Notify', data.src, Lang:t('info.new_job', { job = JobInfo.label }))
end)

RegisterNetEvent('qb-cityhall:server:getIDs', giveStarterItems)

RegisterNetEvent('QBCore:Client:UpdateObject', function()
    QBCore = exports['qb-core']:GetCoreObject()
end)

-- Commands

QBCore.Commands.Add('drivinglicense', 'Trao bằng lái xe cho ai đó', { { 'id', 'ID Người chơi' } }, true, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    local SearchedPlayer = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if SearchedPlayer then
        if not SearchedPlayer.PlayerData.metadata['licences']['driver'] then
            for i = 1, #Config.DrivingSchools do
                for id = 1, #Config.DrivingSchools[i].instructors do
                    if Config.DrivingSchools[i].instructors[id] == Player.PlayerData.citizenid then
                        SearchedPlayer.PlayerData.metadata['licences']['driver'] = true
                        SearchedPlayer.Functions.SetMetaData('licences', SearchedPlayer.PlayerData.metadata['licences'])
                        TriggerClientEvent('QBCore:Notify', SearchedPlayer.PlayerData.source, 'Bạn đã vượt qua! Nhận bằng lái xe tại tòa thị chính', 'success', 5000)
                        TriggerClientEvent('QBCore:Notify', source, ('Người chơi có ID %s đã được cấp giấy phép lái xe'):format(SearchedPlayer.PlayerData.source), 'success', 5000)
                        break
                    end
                end
            end
        else
            TriggerClientEvent('QBCore:Notify', source, "Không thể cấp giấy phép lái xe, người này đã có giấy phép rồi", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, 'Người không Online', 'error')
    end
end)
