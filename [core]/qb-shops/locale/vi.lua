local Translations = {
    info = {
        open_shop = '[E] Shop',
        deliver_e = '~g~E~w~ - Vận chuyển hàng',
        deliver = 'Vận chuyển hàng',
    },
    error = {
        missing_license = 'Thiếu giấy phép %s cho một số sản phẩm nhất định',
        no_deposit = '$%{value} Yêu cầu đặt cọc',
        cancelled = 'Đã hủy',
        vehicle_not_correct = 'Đây không phải là một chiếc xe thương mại!',
        no_driver = 'Bạn phải là người lái xe để làm điều này ..',
        no_work_done = "Bạn chưa làm việc gì cả..",
        backdoors_not_open = "Cửa sau của xe không mở được",
        get_out_vehicle = 'Bạn cần phải bước ra khỏi xe để thực hiện thao tác này',
        too_far_from_trunk = 'Bạn cần lấy những chiếc hộp từ cốp xe của bạn',
        too_far_from_delivery = 'Bạn cần ở gần điểm giao hàng hơn'
    },
    success = {
        dealer_verify = 'Đại lý xác minh giấy phép của bạn',
        paid_with_cash = '$%{value} Đặt cọc bằng tiền mặt',
        paid_with_bank = '$%{value} Tiền đặt cọc từ ngân hàng',
        refund_to_cash = '$%{value} Đặt cọc bằng tiền mặt',
        you_earned = 'Bạn đã kiếm được $%{value}',
        payslip_time = 'Bạn đã đến tất cả các cửa hàng .. Đã đến lúc nhận phiếu lương của bạn!',
    },
    mission = {
        store_reached = 'Đến cửa hàng, lấy hộp trong cốp có [E] và giao đến điểm đánh dấu',
        take_box = 'Lấy một hộp sản phẩm',
        deliver_box = 'Giao hộp sản phẩm',
        another_box = 'Nhận một hộp sản phẩm khác',
        goto_next_point = 'Bạn đã giao tất cả sản phẩm đến điểm tiếp theo',
        return_to_station = 'Bạn đã giao tất cả sản phẩm, quay trở lại ga',
        job_completed = 'Bạn đã hoàn thành lộ trình của mình'
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
