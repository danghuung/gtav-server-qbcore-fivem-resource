Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
    --['trucker'] = { ['label'] = 'Lái xe tải', ['isManaged'] = false },
    --['taxi'] = { ['label'] = 'Taxi', ['isManaged'] = false },
    --['tow'] = { ['label'] = 'Lái Xe kéo', ['isManaged'] = false },
    --['reporter'] = { ['label'] = 'Phóng viên', ['isManaged'] = false },
    ['garbage'] = { ['label'] = 'Lao Công', ['isManaged'] = false },
    ['woodcutter'] = { ['label'] = 'Tiều Phu', ['isManaged'] = false },
    --['bus'] = { ['label'] = 'Lái xe buýt', ['isManaged'] = false },
    --['hotdog'] = { ['label'] = 'Bán xúc xích', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-265.0, -963.6, 31.2),
        showBlip = true,
        blipData = {
            sprite = 787,
            display = 4,
            scale = 0.9,
            colour = 0,
            title = 'Trung tâm việc làm'
        },
        licenses = {
            ['id_card'] = {
                label = 'Mua CCCD',
                cost = 50,
            },
            --['driver_license'] = {
            --    label = 'Giấy phép lái xe',
            --    cost = 50,
            --    metadata = 'driver'
            --},
            --['weaponlicense'] = {
            --    label = 'Giấy phép sử dụng vũ khí',
            --    cost = 50,
            --    metadata = 'weapon'
            --},
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = true,
        blipData = {
            sprite = 408,
            display = 4,
            scale = 0.7,
            colour = 0,
            title = 'Trung tâm đào tạo GPLX'
        },
        instructors = {
            'DJD56142',
            'DXT09752',
            'SRI85140',
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'csb_stripper_01',
        coords = vector4(-265.0, -964.45, 31.22, 353.07),
        scenario = 'WORLD_HUMAN_AA_SMOKE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'csb_stripper_01',
        coords = vector4(240.44, -1379.62, 33.74, 315.31),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
