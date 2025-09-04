<?php
session_start();
require '../config/config.php';

if (!isset($_SESSION['id_hs'])) {
    header("Location: A_phuhuynh.php");
    exit();
}

$child_id = $_SESSION['id_hs'];

/* Lấy kết quả từ bảng baitapphuhuynh */
$sql = "
SELECT 
    b.ID_BT,
    b.TenBaiTap,
    b.TrangThai
FROM baitapph b
WHERE b.ID_HS = '$child_id'
ORDER BY b.ID_BT DESC
";

$result = $conn->query($sql);
if (!$result) {
    die("Lỗi truy vấn: " . $conn->error);
}
?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <title>Kết quả học tập của con</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; background: linear-gradient(to right, #e8f5e9, #c8e6c9); }
    h2 { text-align: center; color: black;}
    table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 2px 6px rgba(0,0,0,0.08); border-radius: 6px; overflow: hidden; }
    th, td { border: 1px solid #ddd; padding: 10px; text-align: center; }
    th { background: #ff9800; color: #fff; font-weight: bold;}
    tr:nth-child(even) { background: #f1f8e9; }
    .back-home {
        position: fixed; top: 16px; left: 16px;
        color: #009de0; padding: 8px 14px;
        font-weight: bold; text-decoration: none;
    }
  </style>
</head>
<body>
  <a href="login_phuhuynh.php" class="back-home">Quay lại</a>
  <h2>Bảng kết quả học tập của con</h2>
  <table>
    <tr>
      <th>Mã BT</th>
      <th>Tên bài tập</th>
      <th>Trạng thái</th>
 

    </tr>
    <?php if ($result->num_rows > 0): ?>
      <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
          <td><?= htmlspecialchars($row['ID_BT']) ?></td>
          <td><?= htmlspecialchars($row['TenBaiTap']) ?></td>
          <td><?= htmlspecialchars($row['TrangThai']) ?></td>
        </tr>
      <?php endwhile; ?>
    <?php else: ?>
      <tr><td colspan="7">Chưa có dữ liệu</td></tr>
    <?php endif; ?>
  </table>
</body>
</html>
<?php $conn->close(); ?>
