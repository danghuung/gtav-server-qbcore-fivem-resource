local Translations = {
    error = {
        no_vehicles = 'Không có phương tiện nào ở vị trí này!',
        not_depot = 'Xe của bạn không có trong Garage',
        not_owned = 'Không thể cất chiếc xe này',
        not_correct_type = 'Bạn không thể cất loại xe này ở đây',
        not_enough = 'Không đủ tiền',
        no_garage = 'None',
        vehicle_occupied = 'Bạn không thể cất chiếc xe này vì nó không tồn tại',
        vehicle_not_tracked = 'Không thể theo dõi xe',
        no_spawn = 'Khu vực quá đông đúc'
    },
    success = {
        vehicle_parked = 'Xe đã được cất vào Garage',
        vehicle_tracked = 'Xe được theo dõi',
    },
    status = {
        out = 'Bên ngoài',
        garaged = 'Trong Garage',
        impound = 'Bị giam',
        house = 'Nhà',
    },
    info = {
        car_e = 'E - Lấy xe',
        sea_e = 'E - Lấy thuyền',
        air_e = 'E - Lấy máy bay',
        rig_e = 'E - Giàn khoan Lô',
        depot_e = 'E - Kho',
        house_garage = 'E - Garage nhà',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})