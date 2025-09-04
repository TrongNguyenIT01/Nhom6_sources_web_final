<?php

require __DIR__ . '/../../config/config.php';
$subject = isset($_GET['subject']) ? urldecode($_GET['subject']) : '';
$lesson  = isset($_GET['lesson']) ? (int)$_GET['lesson'] : 1;

// Lấy tất cả câu hỏi + đáp án đúng    //DB
$sql = "SELECT id, answer FROM questions
        WHERE subject = '".$conn->real_escape_string($subject)."' 
        AND lesson = $lesson";
$result = $conn->query($sql);

$answers = [];
while ($row = $result->fetch_assoc()) {
    $answers[$row['id']] = $row['answer'];
}

$tongCau = count($answers);
$dung = 0;

foreach ($answers as $id => $dapAnDung) {
    if (isset($_POST["q$id"]) && $_POST["q$id"] == $dapAnDung) {
        $dung++;
    }
}

$diem = $tongCau > 0 ? round((10 / $tongCau) * $dung, 2) : 0;
if (isset($_POST['save'])) {
    $id_hs  = $_POST['id_hs'];
    $ten_hs = $_POST['ten_hs'];
    $id_lop = $_POST['id_lop'];
    $subject = $_POST['subject'];
    $lesson  = $_POST['lesson'];
    $dung    = $_POST['dung'];
    $tongCau = $_POST['tongcau'];
    $diem    = $_POST['diem'];

    $stmt = $conn->prepare("INSERT INTO kq_kt (id_hs, ten_hs, id_lop, subject, lesson, dung, tongcau, diem) 
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssiiid", $id_hs, $ten_hs, $id_lop, $subject, $lesson, $dung, $tongCau, $diem);
    $stmt->execute();
    $stmt->close();

    echo "<p style='color:green; font-weight:bold;'>✅ Kết quả đã được lưu thành công!</p>";
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Kết quả kiểm tra</title>
    <style>
        body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: linear-gradient(135deg, #dbeafe, #f0fdf4);
    margin: 0;
    padding: 0;
    text-align: center;
}
.result-box {
    margin: 60px auto 30px;
    padding: 35px;
    width: 420px;
    background: #fff;
    border-radius: 20px;
    box-shadow: 0px 8px 20px rgba(0,0,0,0.15);
    animation: fadeIn 0.6s ease-in-out;
}
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(15px); }
    to { opacity: 1; transform: translateY(0); }
}
h2 {
    color: #0d6efd;
    margin-bottom: 20px;
}
.score {
    font-size: 20px;
    margin: 12px 0;
    color: #333;
}
.btn {
    display: inline-block;
    padding: 12px 22px;
    font-size: 16px;
    background: #28a745;
    color: white;
    text-decoration: none;
    border-radius: 10px;
    transition: 0.3s;
}
.btn:hover {
    background: #218838;
    transform: scale(1.05);
}
form {
    margin: 25px auto 0;
    max-width: 420px;
    text-align: left;
    background: #fff;
    padding: 20px 25px;
    border-radius: 15px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.1);
}
form div {
    margin-bottom: 15px;
}
label {
    font-weight: bold;
    display: block;
    margin-bottom: 6px;
    color: #444;
}
input[type="text"] {
    width: 100%;
    padding: 10px 12px;
    border-radius: 8px;
    border: 1px solid #ccc;
    transition: 0.2s;
    font-size: 15px;
}
input[type="text"]:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 5px rgba(13,110,253,0.4);
    outline: none;
}
button.btn {
    background: #0d6efd;
    display: block;
    width: 100%;
    text-align: center;
    padding: 12px;
    border: none;
    cursor: pointer;
    border-radius: 10px;
    font-size: 16px;
    color: #fff;
    transition: 0.3s;
}
button.btn:hover {
    background: #0b5ed7;
    transform: scale(1.03);
}

    </style>
</head>
<body>
    <div class="result-box">
        <h2>Kết quả kiểm tra</h2>
        <p class="score">Bạn làm đúng <b><?php echo $dung; ?></b> / <?php echo $tongCau; ?> câu</p>
        <p class="score">Điểm của bạn: <b><?php echo $diem; ?>/10</b></p> 
        
        <form method="post" action="">
            <input type="hidden" name="subject" value="<?php echo htmlspecialchars($subject); ?>">
            <input type="hidden" name="lesson" value="<?php echo $lesson; ?>">
            <input type="hidden" name="dung" value="<?php echo $dung; ?>">
            <input type="hidden" name="tongcau" value="<?php echo $tongCau; ?>">
            <input type="hidden" name="diem" value="<?php echo $diem; ?>">

            <div style="margin: 15px 0;">
                <label>ID Học sinh: </label>
                <input type="text" name="id_hs" required>
            </div>
            <div style="margin: 15px 0;">
                <label>Tên học sinh: </label>
                <input type="text" name="ten_hs" required>
            </div>
            <div style="margin: 15px 0;">
                <label>ID Lớp: </label>
                <input type="text" name="id_lop" required>
            </div>
            <div style="display: flex; justify-content: space-between; gap: 10px; margin-top: 20px;">
                <a href="../bai_KT_lop1.php?subject=<?php echo urlencode($subject); ?>&lesson=<?php echo $lesson; ?>" class="btn">🔙 Quay lại</a>
                <button type="submit" name="save" class="btn">💾 Lưu kết quả</button>
            </div>
        </form>
    </div>   
    
                      
</body>
</html>