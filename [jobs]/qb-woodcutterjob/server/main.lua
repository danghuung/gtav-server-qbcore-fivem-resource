local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-woodcutterjob:server:canHandleWood', function(source, cb, itemNeedCheck, amountCheck, comparison)
    local Player = QBCore.Functions.GetPlayer(source)
    local currentAmount = Player.Functions.GetItemByName(itemNeedCheck)
    local totalAmount = (currentAmount ~= nil) and currentAmount.amount or 0
    if comparison == Config.Comparison.moreOrEquals then
        if totalAmount > amountCheck then
            cb(true)
            return
        end
    elseif comparison == Config.Comparison.lessOrEquals then
        if totalAmount < amountCheck then
            cb(true)
            return
        end
    end
    cb(false)
end)

RegisterNetEvent('qb-woodcutterjob:server:takeWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local num = 1
    local item = Config.Items.wood['name']
    if Player ~= nil then
        exports['qb-inventory']:AddItem(src, item, num, false, {}, 'qb-woodcutterjob:server:takeWood')
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add', num)
    end
end)

RegisterNetEvent('qb-woodcutterjob:server:cutWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local num = 1
    local itemAdd = Config.Items.cutWood['name']
    local itemRemove = Config.Items.wood['name']
    if Player ~= nil then
        exports['qb-inventory']:RemoveItem(src, itemRemove, num, false, 'qb-woodcutterjob:server:cutWood')
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemRemove], 'remove', num)
        exports['qb-inventory']:AddItem(src, itemAdd, num, false, {}, 'qb-woodcutterjob:server:cutWood')
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemAdd], 'add', num)
    end
end)

RegisterNetEvent('qb-woodcutterjob:server:plyWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemAdd = Config.Items.plyWood['name']
    local itemRemove = Config.Items.cutWood['name']
    if Player ~= nil then
        exports['qb-inventory']:RemoveItem(src, itemRemove, 1, false, 'qb-woodcutterjob:server:plyWood')
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemRemove], 'remove', 1)
        exports['qb-inventory']:AddItem(src, itemAdd, 5, false, {}, 'qb-woodcutterjob:server:plyWood')
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemAdd], 'add', 5)
    end
end)

RegisterNetEvent('qb-woodcutterjob:server:sellWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemRemove = Config.Items.plyWood['name']
    if Player ~= nil then
        exports['qb-inventory']:RemoveItem(src, itemRemove, 1, false, 'qb-woodcutterjob:server:sellWood')
        TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemRemove], 'sell', 1)
        exports['qb-inventory']:AddItem(src, 'cash', 650, false, 'qb-woodcutterjob:server:sellWood')
    end
end)
