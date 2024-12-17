Config = {}
Config.AutoRespawn = true          -- true == stores cars in garage on restart | false == doesnt modify car states
Config.VisuallyDamageCars = true   -- true == damage car on spawn | false == no damage on spawn
Config.SharedGarages = false       -- true == take any car from any garage | false == only take car from garage stored in
Config.ClassSystem = false         -- true == restrict vehicles by class | false == any vehicle class in any garage
Config.FuelResource = 'LegacyFuel' -- supports any that has a GetFuel() and SetFuel() export
Config.Warp = true                 -- true == warp player into vehicle | false == vehicle spawns without warping

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
    -- Garage 6h tp
    motelgarage = {
        label = 'Motel Parking',
        takeVehicle = vector3(437.18, -1957.53, 23.06),
        spawnPoint = {
            vector4(451.39, -1970.27, 22.94, 220.71)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public', -- public, gang, job, depot
        category = Config.VehicleClass['car']
    },

    -- Garage 9h
    spanishave = {
        label = 'Spanish Ave Parking',
        takeVehicle = vector3(-1160.86, -741.41, 19.63),
        spawnPoint = {
            vector4(-1145.2, -745.42, 19.26, 108.22)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage 12h tp
    caears24 = {
        label = 'Caears 24 Parking',
        takeVehicle =vector3(663.98, 617.53, 129.21),
        spawnPoint = {
            vector4(652.3, 626.35, 128.91, 334.57)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage tt samac 1
    themotorhotel = {
        label = 'The Motor Hotel Parking',
        takeVehicle = vector3(1137.77, 2663.54, 37.9),
        spawnPoint = {
            vector4(1127.7, 2647.84, 37.58, 1.41)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },
    -- Garage tt samac 2
    shoreparking = {
        label = 'Shore Parking',
        takeVehicle = vector3(1737.03, 3718.88, 34.05),
        spawnPoint = {
            vector4(1725.4, 3716.78, 34.15, 20.54)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage 12h
    haanparking = {
        label = 'Bell Farms Parking',
        takeVehicle = vector3(122.48, 6603.93, 31.49),
        spawnPoint = {
            vector4(123.65, 6617.82, 31.83, 155.65),
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage bai bien
    dumbogarage = {
        label = 'Dumbo Private Parking',
        takeVehicle = vector3(-3139.51, 1103.97, 20.69),
        spawnPoint = {
            vector4(-3138.55, 1121.68, 20.7, 204.25)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    -- Garage tttp
    pillboxgarage = {
        label = 'Pillbox Garage Parking',
        takeVehicle = vector3(213.2, -796.05, 30.86),
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

    -- Garage 3h
    grapeseedgarage = {
        label = 'Grapeseed Parking',
        takeVehicle = vector3(1039.91, -775.32, 58.02),
        spawnPoint = {
            vector4(1021.1, -765.66, 57.95, 318.71)
        },
        showBlip = true,
        blipName = Config.Blips['public']['blipName'],
        blipNumber = Config.Blips['public']['blipNumber'],
        blipColor = Config.Blips['public']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['car']
    },

    depotLot = {
        label = 'Depot Lot',
        takeVehicle = vector3(401.76, -1632.57, 29.29),
        spawnPoint = {
            vector4(396.55, -1643.93, 28.88, 321.91)
        },
        showBlip = true,
        blipName = 'Garage giam xe',
        blipNumber = 524,
        blipColor = 17,
        type = 'depot',
        category = Config.VehicleClass['car']
    },
    --ballas = {
    --    label = 'Ballas',
    --    takeVehicle = vector3(87.51, -1969.1, 20.75),
    --    spawnPoint = {
    --        vector4(93.78, -1961.73, 20.34, 319.11)
    --    },
    --    showBlip = false,
    --    blipName = 'Ballas',
    --    blipNumber = 357,
    --    blipColor = 3,
    --    type = 'gang',
    --    category = Config.VehicleClass['car'], --car, air, sea, rig
    --    job = 'ballas',
    --    jobType = 'ballas'
    --},
    --families = {
    --    label = 'Families',
    --    takeVehicle = vector3(-23.89, -1436.03, 30.65),
    --    spawnPoint = {
    --        vector4(-25.47, -1445.76, 30.24, 178.5)
    --    },
    --    showBlip = false,
    --    blipName = 'Families',
    --    blipNumber = 357,
    --    blipColor = 3,
    --    type = 'gang',
    --    category = Config.VehicleClass['car'], --car, air, sea, rig
    --    job = 'families',
    --    jobType = 'families'
    --},
    --lostmc = {
    --    label = 'Lost MC',
    --    takeVehicle = vector3(985.83, -138.14, 73.09),
    --    spawnPoint = {
    --        vector4(977.65, -133.02, 73.34, 59.39)
    --    },
    --    showBlip = false,
    --    blipName = 'Lost MC',
    --    blipNumber = 357,
    --    blipColor = 3,
    --    type = 'gang',
    --    category = Config.VehicleClass['car'], --car, air, sea, rig
    --    job = 'lostmc',
    --    jobType = 'lostmc'
    --},
    --
    --cartel = {
    --    label = 'Cartel',
    --    takeVehicle = vector3(1411.67, 1117.8, 114.84),
    --    spawnPoint = {
    --        vector4(1403.01, 1118.25, 114.84, 88.69)
    --    },
    --    showBlip = false,
    --    blipName = 'Cartel',
    --    blipNumber = 357,
    --    blipColor = 3,
    --    type = 'gang',
    --    category = Config.VehicleClass['car'],
    --    job = 'cartel',
    --    jobType = 'cartel'
    --},

    police = {
        label = 'Police',
        takeVehicle = vector3(462.83, -1019.52, 28.1),
        spawnPoint = {
            vector4(446.16, -1025.79, 28.23, 6.59)
        },
        showBlip = false,
        blipName = 'Police',
        blipNumber = 357,
        blipColor = 3,
        type = 'job',
        category = Config.VehicleClass['car'], --car, air, sea, rig
        job = 'police',
        jobType = 'leo'
    },

    -- san bay tp
    intairport = {
        label = 'Airport Hangar',
        takeVehicle = vector3(-979.06, -2995.48, 13.95),
        spawnPoint = {
            vector4(-998.37, -2985.01, 13.95, 61.09)
        },
        showBlip = true,
        blipName = Config.Blips['airport_garage']['blipName'],
        blipNumber = Config.Blips['airport_garage']['blipNumber'],
        blipColor = Config.Blips['airport_garage']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['air']
    },

    -- san bay sa mac
    airsshores = {
        label = 'Sandy Shores Hangar',
        takeVehicle = vector3(1736.33, 3281.67, 41.12),
        spawnPoint = {
            vector4(1742.83, 3266.83, 41.24, 102.64)
        },
        showBlip = true,
        blipName = Config.Blips['airport_garage']['blipName'],
        blipNumber = Config.Blips['airport_garage']['blipNumber'],
        blipColor = Config.Blips['airport_garage']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['air']
    },

    lsymc = {
        label = 'LSYMC Boathouse',
        takeVehicle = vector3(-785.95, -1497.84, -0.09),
        spawnPoint = {
            vector4(-796.64, -1502.6, -0.09, 111.49)
        },
        showBlip = true,
        blipName = Config.Blips['boathouse']['blipName'],
        blipNumber = Config.Blips['boathouse']['blipNumber'],
        blipColor = Config.Blips['boathouse']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['sea']
    },
    paleto = {
        label = 'Paleto Boathouse',
        takeVehicle = vector3(-278.21, 6638.13, 7.55),
        spawnPoint = {
            vector4(-289.2, 6637.96, 1.01, 45.5)
        },
        showBlip = true,
        blipName = Config.Blips['boathouse']['blipName'],
        blipNumber = Config.Blips['boathouse']['blipNumber'],
        blipColor = Config.Blips['boathouse']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['sea']
    },
    millars = {
        label = 'Millars Boathouse',
        takeVehicle = vector3(1298.56, 4212.42, 33.25),
        spawnPoint = {
            vector4(1297.82, 4209.61, 30.12, 253.5)
        },
        showBlip = true,
        blipName = Config.Blips['boathouse']['blipName'],
        blipNumber = Config.Blips['boathouse']['blipNumber'],
        blipColor = Config.Blips['boathouse']['blipColor'],
        type = 'public',
        category = Config.VehicleClass['sea']
    },
    --seadepot = {
    --    label = 'LSYMC Depot',
    --    takeVehicle = vector3(-742.95, -1407.58, 5.5),
    --    spawnPoint = {
    --        vector4(-729.77, -1355.49, 1.19, 142.5)
    --    },
    --    showBlip = true,
    --    blipName = 'LSYMC Depot',
    --    blipNumber = 356,
    --    blipColor = 3,
    --    type = 'depot',
    --    category = Config.VehicleClass['sea']
    --},
    --rigdepot = {
    --    label = 'Big Rig Depot',
    --    takeVehicle = vector3(2334.42, 3118.62, 48.2),
    --    spawnPoint = {
    --        vector4(2324.57, 3117.79, 48.21, 4.05)
    --    },
    --    showBlip = true,
    --    blipName = 'Big Rig Depot',
    --    blipNumber = 68,
    --    blipColor = 2,
    --    type = 'depot',
    --    category = Config.VehicleClass['rig']
    --},
    --dumborigparking = {
    --    label = 'Dumbo Big Rig Parking',
    --    takeVehicle = vector3(161.23, -3188.73, 5.97),
    --    spawnPoint = {
    --        vector4(167.0, -3203.89, 5.94, 271.27)
    --    },
    --    showBlip = true,
    --    blipName = 'Big Rig Parking',
    --    blipNumber = 357,
    --    blipColor = 2,
    --    type = 'public',
    --    category = Config.VehicleClass['rig']
    --},
    --popsrigparking = {
    --    label = 'Pop\'s Big Rig Parking',
    --    takeVehicle = vector3(137.67, 6632.99, 31.67),
    --    spawnPoint = {
    --        vector4(127.69, 6605.84, 31.93, 223.67)
    --    },
    --    showBlip = true,
    --    blipName = 'Big Rig Parking',
    --    blipNumber = 357,
    --    blipColor = 2,
    --    type = 'public',
    --    category = Config.VehicleClass['rig']
    --},
    --ronsrigparking = {
    --    label = 'Ron\'s Big Rig Parking',
    --    takeVehicle = vector3(-2529.37, 2342.67, 33.06),
    --    spawnPoint = {
    --        vector4(-2521.61, 2326.45, 33.13, 88.7)
    --    },
    --    showBlip = true,
    --    blipName = 'Big Rig Parking',
    --    blipNumber = 357,
    --    blipColor = 2,
    --    type = 'public',
    --    category = Config.VehicleClass['rig']
    --},
    --ronsrigparking2 = {
    --    label = 'Ron\'s Big Rig Parking',
    --    takeVehicle = vector3(2561.67, 476.68, 108.49),
    --    spawnPoint = {
    --        vector4(2561.67, 476.68, 108.49, 177.86)
    --    },
    --    showBlip = true,
    --    blipName = 'Big Rig Parking',
    --    blipNumber = 357,
    --    blipColor = 2,
    --    type = 'public',
    --    category = Config.VehicleClass['rig']
    --},
    --ronsrigparking3 = {
    --    label = 'Ron\'s Big Rig Parking',
    --    takeVehicle = vector3(-41.24, -2550.63, 6.01),
    --    spawnPoint = {
    --        vector4(-39.39, -2527.81, 6.08, 326.18)
    --    },
    --    showBlip = true,
    --    blipName = 'Big Rig Parking',
    --    blipNumber = 357,
    --    blipColor = 2,
    --    type = 'public',
    --    category = Config.VehicleClass['rig']
    --},
}
