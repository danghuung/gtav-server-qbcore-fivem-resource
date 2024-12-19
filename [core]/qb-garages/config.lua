Config = {}
Config.AutoRespawn = true          -- true == stores cars in garage on restart | false == doesnt modify car states
Config.VisuallyDamageCars = true   -- true == damage car on spawn | false == no damage on spawn
Config.SharedGarages = true       -- true == take any car from any garage | false == only take car from garage stored in
Config.ClassSystem = true         -- true == restrict vehicles by class | false == any vehicle class in any garage
Config.FuelResource = 'LegacyFuel' -- supports any that has a GetFuel() and SetFuel() export
Config.Warp = true                 -- true == warp player into vehicle | false == vehicle spawns without warping
Config.takeVehicleText = 'lấy phương tiện'
Config.depositVehicleText = 'cất phương tiện'

-- https://docs.fivem.net/natives/?_0x29439776AAA00A62
Config.VehicleClass = {
    all = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
    car = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 18, 22 },
    air = { 15, 16 },
    sea = { 14 },
    rig = { 10, 11, 17, 19, 20 }
}

Config.Blips = {
    ['public'] = { blipName= 'Garage phương tiện', blipNumber = 50, blipColor = 38 },
    ['airport_garage'] = { blipName= 'Sân bay', blipNumber = 307, blipColor = 0 },
    ['boathouse'] = { blipName= 'Bến cảng', blipNumber = 455, blipColor = 0 },
}

Config.Garages = {
    -- Garage tttp
    downTownGarage = {
        label = 'Downtown Garage',
        takeVehicle = vector3(231.32, -795.79, 30.58),
        depositVehicle = vector3(218.2, -782.53, 30.81),
        spawnPoint = {
            vector4(231.31, -795.76, 30.58, 161.29)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage 6h tp
    hours6Garage = {
        label = 'Hours 6 Garage',
        takeVehicle = vector3(443.94, -1959.45, 22.95),
        depositVehicle = vector3(437.16, -1957.27, 23.06),
        spawnPoint = {
            vector4(449.41, -1961.48, 22.97, 174.21)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public', -- public, gang, job, depot
        category = Config.VehicleClass['car']
    },

    -- Garage 9h tp
    hours9Garage = {
        label = 'Hours 9 Garage',
        takeVehicle = vector3(-1527.12, -447.03, 35.44),
        depositVehicle = vector3(-1518.86, -440.4, 35.44),
        spawnPoint = {
            vector4(-1530.2, -443.4, 35.38, 318.93)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage 12h tp
    hours12TownGarage = {
        label = 'Hours 12 Town Garage',
        takeVehicle = vector3(666.71, 625.05, 129.12),
        depositVehicle = vector3(655.58, 632.17, 128.91),
        spawnPoint = {
            vector4(660.6, 623.49, 128.91, 67.9)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

        -- Garage 3h
    hours3TownGarage = {
        label = 'Hours 3 Town Garage',
        takeVehicle = vector3(1029.91, -764.08, 57.99),
        depositVehicle = vector3(1040.52, -774.84, 58.02),
        spawnPoint = {
            vector4(1023.69, -762.17, 57.98, 314.02)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage tt samac 1
    desert1Garage = {
        label = 'Desert 1 Garage',
        takeVehicle = vector3(1131.22, 2663.04, 38.0),
        depositVehicle = vector3(1120.03, 2669.7, 38.05),
        spawnPoint = {
            vector4(1129.28, 2670.38, 38.06, 358.44)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage tt samac 2
    desert2Garage = {
        label = 'Desert 2 Garage',
        takeVehicle = vector3(1737.37, 3712.47, 34.13),
        depositVehicle = vector3(1720.7, 3716.46, 34.17),
        spawnPoint = {
            vector4(1741.81, 3716.38, 34.08, 27.64)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage 12h
    hours12Garage = {
        label = 'Hours 12 Garage',
        takeVehicle = vector3(122.96, 6620.9, 31.83),
        depositVehicle = vector3(121.41, 6604.61, 31.93),
        spawnPoint = {
            vector4(121.57, 6615.76, 31.84, 230.98)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage bai bien
    fuelGarage = {
        label = 'Fuel Garage',
        takeVehicle = vector3(-2537.1, 2345.4, 33.06),
        depositVehicle = vector3(-2538.5, 2334.48, 33.06),
        spawnPoint = {
            vector4(-2530.71, 2347.5, 33.06, 210.81)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- cityhall
    cityhallGarage = {
        label = 'City Hall Garage',
        takeVehicle = vector3(-305.09, -987.93, 31.08),
        depositVehicle = vector3(-312.3, -972.84, 31.08),
        spawnPoint = {
            vector4(-302.36, -979.91, 30.43, 247.67)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- san bay tp
    townairport = {
        label = 'Airport Town',
        takeVehicle = vector3(-1037.01, -2990.52, 13.95),
        depositVehicle = vector3(-1049.52, -2982.88, 13.95),
        spawnPoint = {
            vector4(-1028.53, -2975.4, 13.95, 61.87)
        },
        showBlip = true,
        blipName = Config.Blips['airport_garage']['blipName'],
        blipNumber = Config.Blips['airport_garage']['blipNumber'],
        blipColor = Config.Blips['airport_garage']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['air']
    },

    -- san bay sa mac
    desertairport = {
        label = 'Airport Desert',
        takeVehicle = vector3(1724.86, 3273.74, 41.15),
        depositVehicle = vector3(1730.2, 3261.38, 41.2),
        spawnPoint = {
            vector4(1716.5, 3253.72, 41.13, 103.23)
        },
        showBlip = true,
        blipName = Config.Blips['airport_garage']['blipName'],
        blipNumber = Config.Blips['airport_garage']['blipNumber'],
        blipColor = Config.Blips['airport_garage']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['air']
    },
}
