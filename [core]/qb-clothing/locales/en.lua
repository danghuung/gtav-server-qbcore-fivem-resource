local Translations = {
    store = {
        barber = "Tiệm hớt tóc",
        surgeon = "Plastic Surgeon",
        clothing = "Tiệm quần áo",
        outfitchanger = "Thay đổi trang phục"
    },

    outfits = {
        roomOutfits = "Cài đặt trước",
        myOutfits = "Những trang phục của tôi",
        character = "Quần áo",
        accessoires = "Phụ kiện"
    },

    menu = {
        hair = "Tóc",
        character = "Quần áo",
        accessoires = "Phụ kiện",
        features = "Đặc trưng"
    },

    ui = {
        select = "Chọn",
        delete = "Xóa",
        select_outfit = "Lựa chọn trang phục",
        player_model = "Mẫu người chơi",
        model = "Mẫu",
        mother = "Mẹ",
        father = "Cha",
        texture = "Kết cấu",
        type = "Kiểu",
        item = "Mục",
        skin_color = "Màu da",
        parent_mixer = "Mực độ lai Cha & Mẹ",
        shape_mix = "Mức độ về hình dạng",
        skin_mix = "Mức độ giống về da",
        arms = "Vũ khí",
        undershirt = "Áo lót/Thắt lưng",
        color = "Màu sắc",
        jacket = "Áo khoác",
        vests = "Vests",
        decals = "Decals",
        acessory = "Phụ kiện đeo cổ",
        bags = "Túi",
        pants = "Quần dài",
        shoes = "Giày",
        eye_color = "Màu mắt",
        moles = "Nốt ruồi/Tàn nhang",
        opacity = "Độ mờ",
        nose_width = "Chiều rộng mũi",
        width = "Chiều rộng",
        nose_peak_height = "Chiều cao đỉnh mũi",
        height = "Chiều cao",
        nose_peak_length = "Chiều dài đỉnh mũi",
        length = "Chiều dài",
        nose_bone_height = "Chiều cao xương mũi",
        nose_peak_lowering = "Nose Peak Lowering",
        lowering = "Hạ đỉnh mũi",
        nose_bone_twist = "Xoắn xương mũi",
        twist = "Xoắn",
        eyebrow_height = "Chiều cao lông mày",
        eyebrow_depth = "Độ sâu lông mày",
        depth = "Độ sâu",
        cheeks_height = "Chiều cao má",
        cheeks_width = "Chiều rộng má",
        cheeks_depth = "Độ sâu của má",
        eyes_opening = "Mở mắt",
        opening = "Mở",
        lips_thickness = "Độ dày môi",
        thickness = "Độ dày",
        jaw_bone_width = "Chiều rộng xương hàm",
        jaw_bone_length = "Chiều dài xương hàm",
        chin_height = "Chiều cao xương cằm",
        chin_width = "Chiều rộng xương cằm",
        butt_chin  ="mông cằm",
        size = "Kích thước",
        neck_thickness = "Độ dày cổ",
        ageing = "Lão hóa",
        hair = "Tóc",
        eyebrow = "Lông mày",
        facial_hair = "Tóc trên khuôn mặt",
        lipstick = "Cây son",
        blush = "đỏ mặt",
        makeup = "Trang điểm",
        mask = "Mặt nạ",
        hat = "Mũ",
        glasses = "Kính",
        ear_accessories = "Phụ kiện tai",
        watch = "Đồng hồ",
        bracelet = "Vòng tay",
        btn_confirm = "Xác nhận",
        btn_cancel = "Hủy",
        btn_saveOutfit = "Lưu trang phục",
        outfit_name = "Tên trang phục"
    },

    notify = {
        error_bracelet = "Bạn không thể tháo vòng đeo mắt cá chân của bạn ...",
        info_deleteOutfit = "Bạn đã xóa trang phục %{outfit} của mình!"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})