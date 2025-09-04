<?php
require '../config/config.php';


$sql = "
    SELECT gv.Ten AS TenGV, l.TenLop, COUNT(hs.ID_HS) AS SiSo
    FROM giaovien gv
    JOIN lophoc l ON l.ID_Lop = gv.LopDay
    LEFT JOIN hocsinh hs ON l.ID_Lop = hs.ID_Lop
    GROUP BY gv.ID_GV, gv.Ten, l.ID_Lop, l.TenLop
    ORDER BY gv.Ten, l.TenLop
";
$res = mysqli_query($conn, $sql);

$rows = [];
while ($row = mysqli_fetch_assoc($res)) {
    $rows[] = $row;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Lớp giảng dạy</title>
  <link rel="stylesheet" href="admin_teacher_tt_ld.css">
</head>
<body>
  <p class="button"><a href="admin_teacher.php">⬅ Quay lại</a></p>

  <h2>Danh sách lớp giảng dạy</h2>
  <table class="list-table">
      <thead>
          <tr>
              <th>Giáo viên</th>
              <th>Tên lớp</th>
              <th>Sĩ số</th>
          </tr>
      </thead>
      <tbody>
          <?php foreach ($rows as $row): ?>
          <tr>
              <td><?php echo $row['TenGV']; ?></td>
              <td><?php echo $row['TenLop']; ?></td>
              <td><?php echo $row['SiSo']; ?></td>
          </tr>
          <?php endforeach; ?>
      </tbody>
  </table>
</body>
</html>
