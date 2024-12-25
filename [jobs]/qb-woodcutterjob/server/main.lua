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
        local currentAmount = Player.Functions.GetItemByName(item)
        local totalAmount = (currentAmount ~= nil) and currentAmount.amount or 0
        if totalAmount < Config.maxSlotWood then
            exports['qb-inventory']:AddItem(src, item, num, false, {}, 'qb-woodcutterjob:server:takeWood')
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add', num)
        end
        --if totalAmount < Config.maxSlotWood and totalAmount + num == Config.maxSlotWood then
        --    num = Config.maxSlotWood - totalAmount
        --end
    end
end)

RegisterNetEvent('qb-woodcutterjob:server:cutWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local num = 1
    local itemAdd = Config.Items.cutWood['name']
    local itemRemove = Config.Items.wood['name']
    if Player ~= nil then
        local currentAmount = Player.Functions.GetItemByName(itemRemove)
        local totalAmount = (currentAmount ~= nil) and currentAmount.amount or 0
        if totalAmount > 0 then
            exports['qb-inventory']:RemoveItem(src, itemRemove, num, false, 'qb-woodcutterjob:server:cutWood')
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemRemove], 'remove', num)
            exports['qb-inventory']:AddItem(src, itemAdd, num, false, {}, 'qb-woodcutterjob:server:cutWood')
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemAdd], 'add', num)
        end
        --if totalAmount < Config.maxSlotWood and totalAmount + num == Config.maxSlotWood then
        --    num = Config.maxSlotWood - totalAmount
        --end
    end
end)

RegisterNetEvent('qb-woodcutterjob:server:plyWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local num = 1
    local itemAdd = Config.Items.plyWood['name']
    local itemRemove = Config.Items.cutWood['name']
    if Player ~= nil then
        local currentAmount = Player.Functions.GetItemByName(itemRemove)
        local totalAmount = (currentAmount ~= nil) and currentAmount.amount or 0
        if totalAmount > 0 then
            exports['qb-inventory']:RemoveItem(src, itemRemove, num, false, 'qb-woodcutterjob:server:plyWood')
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemRemove], 'remove', num)
            exports['qb-inventory']:AddItem(src, itemAdd, 5, false, {}, 'qb-woodcutterjob:server:plyWood')
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemAdd], 'add', 5)
        end
        --if totalAmount < Config.maxSlotWood and totalAmount + num == Config.maxSlotWood then
        --    num = Config.maxSlotWood - totalAmount
        --end
    end
end)

RegisterNetEvent('qb-woodcutterjob:server:sellWood', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local num = 1
    local itemRemove = Config.Items.plyWood['name']
    if Player ~= nil then
        local currentAmount = Player.Functions.GetItemByName(itemRemove)
        local totalAmount = (currentAmount ~= nil) and currentAmount.amount or 0
        if totalAmount > 0 then
            exports['qb-inventory']:RemoveItem(src, itemRemove, num, false, 'qb-woodcutterjob:server:sellWood')
            TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items[itemRemove], 'remove', num)
            Player.Functions.AddMoney('cash', 500, 'qb-woodcutterjob:server:sellWood')
        end
        --if totalAmount < Config.maxSlotWood and totalAmount + num == Config.maxSlotWood then
        --    num = Config.maxSlotWood - totalAmount
        --end
    end
end)
