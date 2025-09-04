<?php
session_start();
require '../config/config.php';

if (isset($_SESSION['id_hs'])) {
    $id_hs = $_SESSION['id_hs'];
    $sql = "SELECT id_hs, ten_hs, id_lop, subject, lesson, dung, tongcau, diem, ngay_lam 
            FROM kq_kt 
            WHERE id_hs = '$id_hs'
            ORDER BY ngay_lam DESC";
} else {
    // Nếu chưa đăng nhập thì không có dữ liệu
    $sql = "SELECT * FROM kq_kt WHERE 1=0";
}

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Bảng điểm học sinh</title>
    <style>
        .back-home {
        display: inline-block;
        margin: 30px auto;
        margin-top:80px;
        margin-left: 20px;
        padding: 12px 24px;
        background: linear-gradient(45deg, #4facfe, #00f2fe);
        color: white;
        font-size: 18px;
        font-weight: bold;
        text-decoration: none;
        border-radius: 30px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        transition: 0.3s ease;
        }

        .back-home:hover {
        background: linear-gradient(45deg, #43e97b, #38f9d7);
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(0,0,0,0.3);
        }
        body { font-family: Arial, sans-serif; background: #f0f9ff; padding: 20px; }
        h1 { text-align: center; color: #0d6efd; }
        table {
            width: 100%; border-collapse: collapse; margin-top: 25px;
            background: #fff; border-radius: 10px; overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        th, td { padding: 12px 15px; text-align: center; border-bottom: 1px solid #ddd; }
        th { background: #0d6efd; color: white; }
        tr:hover { background: #f1f5f9; }
        .good { color: green; font-weight: bold; }
        .bad { color: red; font-weight: bold; }
    </style>
</head>
<body>
    <h1>📊 Bảng điểm học sinh</h1>

    <table>
        <tr>
            <th>ID HS</th>
            <th>Tên học sinh</th>
            <th>Lớp</th>
            <th>Chủ đề</th>
            <th>Bài</th>
            <th>Số câu đúng</th>
            <th>Tổng số câu</th>
            <th>Điểm</th>
            <th>Ngày làm</th>
        </tr>
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $diem_class = $row['diem'] >= 5 ? "good" : "bad";
                echo "<tr>
                        <td>{$row['id_hs']}</td>
                        <td>{$row['ten_hs']}</td>
                        <td>{$row['id_lop']}</td>
                        <td>{$row['subject']}</td>
                        <td>{$row['lesson']}</td>
                        <td>{$row['dung']}</td>
                        <td>{$row['tongcau']}</td>
                        <td class='{$diem_class}'>{$row['diem']}</td>
                        <td>{$row['ngay_lam']}</td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='9' style='text-align:center;'>Không có dữ liệu</td></tr>";
        }
        ?>
    </table>
    <a href="../Giao_Dien_WEB/login_student.php" class="back-home">🔙 Quay Lại Trang Chính 🔙</a>
</body>
</html>
