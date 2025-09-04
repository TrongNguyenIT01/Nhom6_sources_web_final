<?php
require __DIR__ . '/../../config/config.php';

// Lấy dữ liệu từ form
$subject  = $_POST['subject'];
$lesson   = $_POST['lesson'];
$question = $_POST['question'];
$option1  = $_POST['option1'];
$option2  = $_POST['option2'];
$option3  = $_POST['option3'];
$option4  = $_POST['option4'];
$answer   = $_POST['answer'];

// Xử lý upload ảnh (nếu có)
$imagePath = NULL;
if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
    $targetDir = "uploads/";
    if (!is_dir($targetDir)) {
        mkdir($targetDir, 0777, true);
    }
    $imagePath = $targetDir . basename($_FILES['image']['name']);
    move_uploaded_file($_FILES['image']['tmp_name'], $imagePath);
}

$sql = "INSERT INTO questions_lop5 (subject, lesson, question, option1, option2, option3, option4, answer, image)
        VALUES ('$subject', '$lesson', '$question', '$option1', '$option2', '$option3', '$option4', '$answer', " . 
        ($imagePath ? "'$imagePath'" : "NULL") . ")";

if ($conn->query($sql) === TRUE) {
    echo "<script>alert('Thêm câu hỏi thành công!'); window.location.href='Them_lop5.php';</script>";
} else {
    echo "Lỗi: " . $conn->error;
}

$conn->close();
?>
