local Translations = {
    afk = {
        will_kick = 'Bạn đang AFK và sẽ bị đá vào ',
        time_seconds = ' giây!',
        time_minutes = ' phút(s)!',
        kick_message = 'Bạn bị kick vì AFK'
    },
    wash = {
        in_progress = "Xe đang được rửa...",
        wash_vehicle = "~g~[E] ~w~ Rửa xe",
        wash_vehicle_target = "Rửa xe",
        dirty = "Xe không bị bẩn",
        cancel = "Đã hủy rửa..."
    },
    consumables = {
        eat_progress = "Đang ăn...",
        drink_progress = "Đang uống...",
        liqour_progress = "Đang uống rượu...",
        coke_progress = "Đánh hơi nhanh...",
        crack_progress = "Hút thuốc lá...",
        ecstasy_progress = "Thuốc Pops",
        healing_progress = "Đang lành lại",
        meth_progress = "Hút thuốc lá",
        joint_progress = "Khớp nối chiếu sáng...",
        use_parachute_progress = "Nhảy dù...",
        pack_parachute_progress = "Đóng gói dù...",
        no_parachute = "Bạn không có dù!",
        armor_full = "Bạn đã có đủ áo giáp rồi!",
        armor_empty = "Bạn không mặc vest...",
        armor_progress = "Mặc áo giáp...",
        heavy_armor_progress = "Mặc áo giáp vào...",
        remove_armor_progress = "Cởi bỏ áo giáp...",
        canceled = "Đã hủy..."
    },
    cruise = {
        unavailable = "Kiểm soát hành trình không có sẵn",
        activated = "Kiểm soát hành trình được kích hoạt",
        deactivated = "Kiểm soát hành trình đã bị vô hiệu hóa"
    },
    editor = {
        started = "Đã bắt đầu ghi âm!",
        save = "Bản ghi đã lưu!",
        delete = "Đã xóa bản ghi!",
        editor = "Cá sấu sau này!"
    },
    firework = {
        place_progress = "Đặt pháo hoa...",
        canceled = "Đã hủy...",
        time_left = "Bắn pháo hoa ở ~r~"
    },
    seatbelt = {
        use_harness_progress = "Cài seatbelt",
        remove_harness_progress = "Tháo seatbelt",
        no_car = "Bạn không ở trong phương tiện"
    },
    teleport = {
        teleport_default = 'Sử dụng thang máy'
    },
    pushcar = {
        stop_push = "~g~[E] ~w~ Dừng đẩy phương tiện"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})