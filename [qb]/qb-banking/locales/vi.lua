local Translations = {
    success = {
        withdraw = 'Rút tiền thành công',
        deposit = 'Gửi tiền thành công',
        transfer = 'Chuyển thành công',
        account = 'Đã tạo tài khoản',
        rename = 'Đã đổi tên tài khoản',
        delete = 'Đã xóa tài khoản',
        userAdd = 'Người dùng đã thêm',
        userRemove = 'Người dùng đã bị xóa',
        card = 'Đã tạo thẻ',
        give = '$%s tiền mặt được trao',
        receive = '$%s tiền mặt đã nhận',
    },
    error = {
        error = 'Đã xảy ra lỗi',
        access = 'Không được ủy quyền',
        account = 'Không tìm thấy tài khoản',
        accounts = 'Số tài khoản tối đa đã được tạo',
        user = 'Người dùng đã được thêm',
        noUser = 'Không tìm thấy người dùng',
        money = 'Không đủ tiền',
        pin = 'Mã PIN không hợp lệ',
        card = 'Không tìm thấy thẻ ngân hàng',
        amount = 'Số tiền không hợp lệ',
        toofar = 'Bạn ở quá xa',
    },
    progress = {
        atm = 'Truy cập ATM',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
