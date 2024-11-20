local Translations = {
    notify = {
        ["hud_settings_loaded"] = "Đã tải cài đặt HUD!",
        ["hud_restart"] = "HUD đang khởi động lại!",
        ["hud_start"] = "HUD hiện đã bắt đầu!",
        ["hud_command_info"] = "Lệnh này đặt lại cài đặt HUD hiện tại của bạn!",
        ["load_square_map"] = "Đang tải bản đồ hình vuông...",
        ["loaded_square_map"] = "Bản đồ hình vuông đã được tải!",
        ["load_circle_map"] = "Đang tải bản đồ vòng tròn...",
        ["loaded_circle_map"] = "Bản đồ vòng tròn đã được tải!",
        ["cinematic_on"] = "Chế độ điện ảnh đang bật!",
        ["cinematic_off"] = "Tắt chế độ điện ảnh!",
        ["engine_on"] = "Động cơ đã khởi động!",
        ["engine_off"] = "Tắt động cơ!",
        ["low_fuel"] = "Mức nhiên liệu thấp!",
        ["access_denied"] = "Bạn không được ủy quyền!",
        ["stress_gain"] = "Cảm thấy căng thẳng hơn!",
        ["stress_removed"] = "Cảm thấy thư giãn hơn!"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
