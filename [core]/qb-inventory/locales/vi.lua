local Translations = {
    progress = {
        ['snowballs'] = 'Thu thập bóng tuyết..',
    },
    notify = {
        ['failed'] = 'Thất bại',
        ['canceled'] = 'Đã hủy',
        ['vlocked'] = 'Xe bị khóa',
        ['notowned'] = 'Bạn không sở hữu mặt hàng này!',
        ['missitem'] = 'Bạn không có mặt hàng này!',
        ['nonb'] = 'Không có ai ở gần đây!',
        ['noaccess'] = 'Không thể truy cập',
        ['nosell'] = 'Bạn không thể bán mặt hàng này..',
        ['itemexist'] = 'Mục không tồn tại',
        ['notencash'] = 'Bạn không có đủ tiền mặt..',
        ['noitem'] = 'Bạn không có những món đồ phù hợp..',
        ['gsitem'] = 'Bạn không thể tặng cho mình một món đồ?',
        ['tftgitem'] = 'Bạn ở quá xa để tặng đồ!',
        ['infound'] = 'Mục bạn đã thử đưa ra không tìm thấy!',
        ['iifound'] = 'Đã tìm thấy mục không chính xác, hãy thử lại!',
        ['gitemrec'] = 'Bạn đã nhận được ',
        ['gitemfrom'] = ' Từ ',
        ['gitemyg'] = 'Bạn đã cho ',
        ['gitinvfull'] = 'Túi của người chơi khác đã đầy!',
        ['giymif'] = 'Túi của bạn đã đầy!',
        ['gitydhei'] = 'Bạn không có đủ mặt hàng',
        ['gitydhitt'] = 'Bạn không có đủ vật phẩm để chuyển',
        ['navt'] = 'Không phải là loại hợp lệ..',
        ['anfoc'] = 'Các đối số không được điền chính xác..',
        ['yhg'] = 'Bạn đã đưa ra ',
        ['cgitem'] = 'Không thể tặng đồ!',
        ['idne'] = 'Mục không tồn tại',
        ['pdne'] = 'Người chơi không online',
    },
    inf_mapping = {
        ['opn_inv'] = 'Mở túi',
        ['tog_slots'] = 'Chuyển đổi các phím bấm',
        ['use_item'] = 'Sử dụng vật phẩm trong slot ',
    },
    menu = {
        ['vending'] = 'Máy bán hàng tự động',
        ['bin'] = 'mở thùng rác',
        ['craft'] = 'thủ công',
        ['o_bag'] = 'Mở túi',
    },
    interaction = {
        ['craft'] = '~g~E~w~ - thủ công',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
