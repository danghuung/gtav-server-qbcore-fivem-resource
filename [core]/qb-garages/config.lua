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
    downtowngarage = {
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
    hours6garage = {
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
    hours9garage = {
        label = 'Hours 9 Garage',
        takeVehicle = vector3(-1164.14, -740.67, 19.68),
        depositVehicle = vector3(-1167.22, -731.28, 20.35),
        spawnPoint = {
            vector4(-1186.2, -742.63, 20.11, 307.26),
            vector4(-1202.34, -729.66, 21.15, 302.71),
            vector4(-1163.96, -748.93, 19.25, 32.7)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage 12h tp
    hours12towngarage = {
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
    hours3towngarage = {
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
    desert1garage = {
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
    desert2garage = {
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
    hours12garage = {
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
    beachgarage = {
        label = 'Beach Garage',
        takeVehicle = vector3(-3154.28, 1062.05, 20.67),
        depositVehicle = vector3(-3147.8, 1072.88, 20.66),
        spawnPoint = {
            vector4(-3157.13, 1067.91, 20.68, 261.47)
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
