Config = {}

Config.jobName = "woodcutter"
Config.maxSlotWood = 20
Config.takeWoodText = "để lấy gỗ"
Config.cutWoodText = "để cắt gỗ"
Config.plyWoodText = "để làm ván ép"
Config.sellWoodText = "để bán ván ép"

Config.Comparison = {
    lessOrEquals = "lessOrEquals",
    moreOrEquals = "moreOrEquals"
}

Config.Messages = {
    storeFull = "Bạn đã lấy đủ số lượng gỗ",
    takeWoodSuccess = "Bạn đã nhận gỗ số lượng: ",
    isInVehicle = "Đang trên xe không thể thao tác",
    enoughIngredients = "Bạn không có đủ nguyên liệu: ",
}

Config.Items = {
    wood = { name = "wood", price = 0, maxamount = 20},
    cutWood = { name = "cut_wood", price = 0, maxamount = 20 },
    plyWood = { name = "ply_wood", price = 500, maxamount = 100}
}

Config.Locations = {
    takeWood = {
        label = "~y~[1] ~w~Nơi lấy gỗ",
        coords = vector3(-530.17, 5373.66, 70.42),
        type = "takeWood"
    },

    cutWood = {
        label = "~y~[2] ~w~Nơi cắt gỗ",
        coords = vector3(-595.53, 5325.39, 70.31),
        type = "cutWood"
    },

    plyWood = {
        label = "~y~[3] ~w~Nơi làm ván ép",
        coords = vector3(-533.38, 5290.11, 74.2),
        type = "plyWood"
    },

    sellWood = {
        label = "~y~[4] ~w~Nơi bán ván ép",
        coords = vector3(1202.69, -1330.23, 35.23),
        type = "sellWood"
    }
}