<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Câu Hỏi</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f0f0f0; }
        .form-container {
            width: 600px; margin: 40px auto; background: #fff; padding: 20px;
            border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h2 { text-align: center; margin-bottom: 20px; }
        label { display: block; margin-top: 10px; font-weight: bold; }
        input, textarea, select {
            width: 100%; padding: 8px; margin-top: 5px;
            border: 1px solid #ccc; border-radius: 5px;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }
        button, .back-btn {
            padding: 10px 20px;
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Dành cho thẻ a */
            text-align: center;
            flex-grow: 1; /* Cho phép các nút giãn ra */
            margin: 0 5px;
        }
        button {
            background: #28a745;
        }
        button:hover {
            background: #218838;
        }
        .back-btn {
            background: #6c757d; /* Màu xám cho nút quay lại */
        }
        .back-btn:hover {
            background: #5a6268;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Thêm bài kiểm tra</h2>
        <form action="xuly_them_lop3.php" method="POST" enctype="multipart/form-data">
            
            <label for="subject">Chủ đề</label>
            <select id="subject" name="subject" required>
                <option value="">-- Chọn chủ đề --</option>
                <option value="Chủ đề 1: Bảng nhân, bảng chia">Chủ đề 1: Bảng nhân, bảng chia</option>
                <option value="Chủ đề 2: Làm quen với hình phẳng, hình khối">Chủ đề 2: Làm quen với hình phẳng, hình khối</option>
                <option value="Chủ đề 3: Phép nhân, phép chia trong phạm vi 100">Chủ đề 3: Phép nhân, phép chia trong phạm vi 100</option>
                <option value="Chủ đề 4: Một số đơn vị đo độ dài, khối lượng, dung tích, nhiệt độ">Chủ đề 4: Một số đơn vị đo độ dài, khối lượng, dung tích, nhiệt độ</option>
                <option value="Chủ đề 5: Phép nhân, phép chia trong phạm vi 1000">Chủ đề 5: Phép nhân, phép chia trong phạm vi 1000</option>
            </select>

            <label for="lesson">Bài học</label>
            <input type="number" id="lesson" name="lesson" min="1" required>

            <label for="question">Câu hỏi</label>
            <textarea id="question" name="question" rows="3" required></textarea>

            <label for="option1">Đáp án A</label>
            <input type="text" id="option1" name="option1" required>

            <label for="option2">Đáp án B</label>
            <input type="text" id="option2" name="option2" required>

            <label for="option3">Đáp án C</label>
            <input type="text" id="option3" name="option3" required>

            <label for="option4">Đáp án D</label>
            <input type="text" id="option4" name="option4" required>

            <label for="answer">Đáp án đúng</label>
            <select id="answer" name="answer" required>
                <option value="">-- Chọn đáp án đúng --</option>
            </select>

            <label for="image">Ảnh minh họa (tùy chọn)</label>
            <input type="file" id="image" name="image">

            <div class="button-group">
                <a href="/../../Giao_Dien_WEB/login_teacher.php"class="back-btn">Quay lại</a>
                <button type="submit">Thêm Câu Hỏi</button>
            </div>
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Lấy các trường input của đáp án
            const optionInputs = [
                document.getElementById('option1'),
                document.getElementById('option2'),
                document.getElementById('option3'),
                document.getElementById('option4')
            ];
            // Lấy thẻ select của đáp án đúng
            const answerSelect = document.getElementById('answer');

            // Hàm này sẽ cập nhật các tùy chọn trong select
            function updateAnswerOptions() {
                // Xóa tất cả các tùy chọn cũ, trừ tùy chọn mặc định
                answerSelect.innerHTML = '<option value="">-- Chọn đáp án đúng --</option>';

                // Duyệt qua từng trường input đáp án
                optionInputs.forEach(input => {
                    const value = input.value.trim();
                    // Nếu trường input không rỗng, thêm một tùy chọn mới
                    if (value !== '') {
                        const option = document.createElement('option');
                        option.value = value;
                        option.textContent = value;
                        answerSelect.appendChild(option);
                    }
                });
            }

            // Thêm trình lắng nghe sự kiện 'input' cho mỗi trường đáp án
            // Sự kiện này sẽ kích hoạt mỗi khi có thay đổi nội dung
            optionInputs.forEach(input => {
                input.addEventListener('input', updateAnswerOptions);
            });

            // Gọi hàm một lần khi trang được tải để xử lý trường hợp
            // người dùng đã nhập dữ liệu và load lại trang
            updateAnswerOptions();
        });
    </script>
</body>
</html>
