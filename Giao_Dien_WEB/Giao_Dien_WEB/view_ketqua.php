<?php
session_start();
require '../config/config.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$student_id = $_SESSION['user_id'];

$sql = "
SELECT
  k.ID_KQ,
  h.ID_HS,
  h.Ten,
  h.CapDo,
  k.DiemSo,
  k.ThanhTich,
  k.ThoiGianHoanThanh,
  k.TongKet,
  /* số bài đã làm trong đúng lớp */
  COALESCE((
    SELECT COUNT(DISTINCT r.ID_BT)
    FROM results r
    JOIN baitap b2 ON b2.ID_BT = r.ID_BT
    WHERE r.ID = h.ID       -- r.ID là ID (user), trỏ tới HocSinh.ID
      AND r.is_done = 1
      AND b2.ID_Lop = h.ID_Lop
  ), 0) AS da_lam,
  /* tổng số bài của lớp học sinh */
  (SELECT COUNT(*) FROM baitap b3 WHERE b3.ID_Lop = h.ID_Lop) AS tong_bai
FROM ketqua k
JOIN hocsinh h ON k.ID_HS = h.ID_HS
WHERE h.ID_HS = '$student_id'
ORDER BY h.Ten ASC, k.ID_KQ DESC
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
  <title>Kết quả học tập học sinh</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 20px; background: linear-gradient(to right, #fff8b5, #a9def9); }
    h2 { text-align: center; }
    table { width: 100%; border-collapse: collapse; background: #fff; }
    th, td { border: 1px solid #ccc; padding: 8px; text-align: center; }
    th { background: #ff9800; color: #fff; }
    tr:nth-child(even) { background: #f1f8e9; }
    .back-home {
    position: fixed;
    top: 16px;
    left: 16px;
    color: #009de0;
    padding: 8px 14px;
    font-weight: bold;
    text-decoration: none;
    transition: background-color 0.2s;
    z-index: 1000;
    } 
  </style>
</head>
<body>

<a  href="login_student.php" class="back-home">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
        stroke-width="1.5" stroke="purple" width="24" height="24"
        style="vertical-align: middle; margin-right: 8px;">
        <path stroke-linecap="round" stroke-linejoin="round"
            d="M8.25 9V5.25A2.25 2.25 0 0 1 10.5 3h6a2.25 2.25 0 0 1 2.25 2.25v13.5A2.25 2.25 0 0 1 16.5 21h-6a2.25 2.25 0 0 1-2.25-2.25V15m-3 0-3-3m0 0 3-3m-3 3H15" />
    </svg>
</a>

  <h2>Bảng kết quả học tập của học sinh</h2>
  <table>
    <tr>
      <th>Mã KQ</th>
      <th>Tên học sinh</th>
      <th>Điểm số</th>
      <th>Cấp Độ</th>
      <th>Thời gian hoàn thành</th>
      <th>Tổng kết</th>
      <th>Tiến độ</th>
    </tr>
    <?php if ($result->num_rows > 0): ?>
      <?php while ($row = $result->fetch_assoc()): ?>
        <tr>
          <td><?= htmlspecialchars($row['ID_KQ']) ?></td>
          <td><?= htmlspecialchars($row['Ten']) ?></td>
          <td><?= htmlspecialchars($row['DiemSo']) ?></td>
          <td><?= htmlspecialchars($row['CapDo']) ?></td>
          <td><?= htmlspecialchars($row['ThoiGianHoanThanh']) ?></td>
          <td><?= htmlspecialchars($row['TongKet']) ?></td>
          <td><?= intval($row['da_lam']) . " / " . intval($row['tong_bai']) . " bài" ?></td>
        </tr>
      <?php endwhile; ?>
    <?php else: ?>
      <tr><td colspan="7">Chưa có dữ liệu</td></tr>
    <?php endif; ?>
  </table>
</body>
</html>
<?php $conn->close(); ?>