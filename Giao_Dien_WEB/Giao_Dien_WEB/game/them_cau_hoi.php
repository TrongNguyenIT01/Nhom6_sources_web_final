<?php
    require __DIR__ . '/../../config/config.php';

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $question = $_POST['question'] ?? '';
        $option1  = $_POST['option1'] ?? '';
        $option2  = $_POST['option2'] ?? '';
        $option3  = $_POST['option3'] ?? '';
        $answer   = $_POST['answer'] ?? '';

        if ($question && $option1 && $option2 && $option3 && $answer) {
            $sql = "INSERT INTO game (question, option1, option2, option3, answer) 
                    VALUES ('$question', '$option1', '$option2', '$option3', '$answer')";
            
            if ($conn->query($sql) === TRUE) {
                echo "<p style='color:green; font-size:20px;'>✅ Thêm câu hỏi thành công!</p>";
            } else {
                echo "<p style='color:red;'>❌ Lỗi: " . $conn->error . "</p>";
            }
        }
        $conn->close();
    }
?>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Thêm câu hỏi mới</title>
  <style>
    body {
      font-family: "Comic Sans MS", Arial, sans-serif;
      background: #eaf6ff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .container {
      background: #ffffff;
      padding: 30px 40px;
      border-radius: 15px;
      box-shadow: 0 6px 12px rgba(0,0,0,0.15);
      width: 450px;
    }
    h2 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 25px;
    }
    form {
      display: flex;
      flex-direction: column;
    }
    .form-group {
      display: flex;
      align-items: center;
      margin-bottom: 15px;
    }
    label {
      flex: 1;
      font-size: 18px;
      color: #34495e;
      text-align: right;
      margin-right: 15px;
    }
    input[type="text"] {
      flex: 2;
      padding: 10px;
      font-size: 16px;
      border: 2px solid #3498db;
      border-radius: 8px;
    }
    button {
      margin-top: 20px;
      padding: 12px;
      font-size: 18px;
      font-weight: bold;
      background: #3498db;
      color: white;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      transition: 0.3s;
      width: 100%;
    }
    button:hover {
      background: #2980b9;
    }
    a{
      color: #333;
      text-decoration: none;
      font-weight: 600px;
      margin-top:20px;
      display:block;
      text-align:center;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>📝 Thêm câu hỏi mới</h2>
    <form method="POST" action="" enctype="multipart/form-data">
      <div class="form-group">
        <label>Câu hỏi:</label>
        <input type="text" name="question" placeholder="Ví dụ: 5 + 3 = ?" required>
      </div>
      
      <div class="form-group">
        <label>Lựa chọn 1:</label>
        <input type="text" name="option1" required>
      </div>
      <div class="form-group">
        <label>Lựa chọn 2:</label>
        <input type="text" name="option2" required>
      </div>
      <div class="form-group">
        <label>Lựa chọn 3:</label>
        <input type="text" name="option3" required>
      </div>
      <div class="form-group">
        <label>Đáp án đúng:</label>
        <input type="text" name="answer" required>
      </div>
      <button type="submit">➕ Thêm</button>
      <a href="/../../Giao_Dien_WEB/login_teacher.php" class="back-btn">Quay lại</a>
    </form>
  </div>
</body>
</html>
