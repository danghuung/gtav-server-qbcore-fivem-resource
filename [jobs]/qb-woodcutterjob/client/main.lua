local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local PlayerJob = {}
local woodZone = {}
local listenForKey = false

local function CreateBlips(location)
        local blip = AddBlipForCoord(location.coords.x, location.coords.y, location.coords.z)
        SetBlipSprite(blip, 285)
        SetBlipScale(blip, 0.8)
        SetBlipDisplay(blip, 4)
        SetBlipColour(blip, 0)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(location.label)
        EndTextCommandSetBlipName(blip)
end

local function CreateCircleMarkerZone(coords, zoneDiameter, colorR, colorG, colorB, colorAlpha)
    while true do
        Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distancePlayerToZone = #(playerCoords - coords)

        local metadata = {
            zoneDiameter = zoneDiameter,
            zoneHeight = 0.5,
            colorR = colorR,
            colorG = colorG,
            colorB = colorB,
            colorAlpha = colorAlpha
        }
        exports['qb-core']:DrawCircleMarker(distancePlayerToZone, 20, coords, metadata)
    end
end

local function CreateZone(index, location)
    local zone = CircleZone:Create(location.coords, 2.25, {
        name = location.type .. '_' .. index,
        debugPoly = false,
        useZ = true,
        data = {
            indexZone = index,
            zoneType = location.type
        }
    })

    return zone
end

local function DisplayText(zoneType)
    local displayText = 'Nhấn <span class="key-start-action-input">[E]</span> '
    if zoneType == 'takeWood' then
        displayText = displayText .. Config.takeWoodText
        exports['qb-core']:DrawText(displayText, 'left')
    elseif zoneType == 'cutWood' then
        displayText = displayText .. Config.cutWoodText
        exports['qb-core']:DrawText(displayText, 'left')
    elseif zoneType == 'plyWood' then
        displayText = displayText .. Config.plyWoodText
        exports['qb-core']:DrawText(displayText, 'left')
    elseif zoneType == 'sellWood' then
        displayText = displayText .. Config.sellWoodText
        exports['qb-core']:DrawText(displayText, 'left')
    end
end

local function CreateBlipsZones()
    PlayerData = QBCore.Functions.GetPlayerData()
    PlayerJob = PlayerData.job

    local zoneTemp

    if PlayerJob.name == Config.jobName then
        for i, location in pairs(Config.Locations) do
            CreateBlips(location)
            CreateThread(function()
                CreateCircleMarkerZone(location.coords, 4.0, 255, 255, 0, 155)
            end)

            zoneTemp = CreateZone(i, location)

            if zoneTemp then
                woodZone[#woodZone + 1] = zoneTemp
            end
        end

        local comboZone = ComboZone:Create(woodZone, { name = 'woodZoneCombo', debugPoly = false })
        comboZone:onPlayerInOut(function(isPointInside, _, zone)
            if isPointInside then
                local zoneType = zone.data.zoneType
                DisplayText(zoneType)

                listenForKey = true
                local isProcessing = false
                CreateThread(function()
                    while listenForKey do
                        Wait(0)
                        if IsControlJustReleased(0, 38) and not isProcessing then
                            isProcessing = true
                            exports['qb-core']:HideText()
                            CreateThread(function()
                                while listenForKey and isProcessing do
                                    if GetVehiclePedIsUsing(PlayerPedId()) ~= 0 then
                                        QBCore.Functions.Notify(Config.Messages.isInVehicle, 'error', 2500)
                                        break
                                    else
                                        if zoneType == 'cutWood' then
                                            QBCore.Functions.TriggerCallback('qb-woodcutterjob:server:canHandleWood', function(canHandleWood)
                                                if canHandleWood then
                                                    TriggerServerEvent('qb-woodcutterjob:server:cutWood')
                                                else
                                                    QBCore.Functions.Notify(Config.Messages.enoughIngredients .. "Gỗ thô", 'error', 2500)
                                                    isProcessing = false
                                                end
                                            end,  Config.Items.wood['name'], 0, Config.Comparison.moreOrEquals)
                                        elseif zoneType == 'plyWood' then
                                            QBCore.Functions.TriggerCallback('qb-woodcutterjob:server:canHandleWood', function(canHandleWood)
                                                if canHandleWood then
                                                    TriggerServerEvent('qb-woodcutterjob:server:plyWood')
                                                else
                                                    QBCore.Functions.Notify(Config.Messages.enoughIngredients .. "Gỗ đã cắt", 'error', 2500)
                                                    isProcessing = false
                                                end
                                            end,  Config.Items.cutWood['name'], 0, Config.Comparison.moreOrEquals)
                                        elseif zoneType == 'sellWood' then
                                            QBCore.Functions.TriggerCallback('qb-woodcutterjob:server:canHandleWood', function(canHandleWood)
                                                if canHandleWood then
                                                    TriggerServerEvent('qb-woodcutterjob:server:sellWood')
                                                else
                                                    QBCore.Functions.Notify(Config.Messages.enoughIngredients .. "Ván gỗ", 'error', 2500)
                                                    isProcessing = false
                                                end
                                            end,  Config.Items.plyWood['name'], 0, Config.Comparison.moreOrEquals)
                                        else
                                            QBCore.Functions.TriggerCallback('qb-woodcutterjob:server:canHandleWood', function(canHandleWood)
                                                if canHandleWood then
                                                    TriggerServerEvent('qb-woodcutterjob:server:takeWood')
                                                else
                                                    QBCore.Functions.Notify(Config.Messages.storeFull, 'error', 2500)
                                                    isProcessing = false
                                                end
                                            end, Config.Items.wood['name'], Config.Items.wood['maxamount'], Config.Comparison.lessOrEquals)
                                        end
                                    end
                                    if zoneType == 'sellWood' then
                                        Wait(1000)
                                    else
                                        Wait(3000)
                                    end
                                end
                                isProcessing = false
                            end)
                        end
                    end
                end)

            else
                listenForKey = false
                exports['qb-core']:HideText()
            end
        end)
    end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    CreateBlipsZones()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerJob = job
end)

AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        CreateBlipsZones()
    end
end)
