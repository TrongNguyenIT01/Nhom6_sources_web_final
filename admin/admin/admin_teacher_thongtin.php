<?php
require '../config/config.php';

// Lấy danh sách giáo viên + tên lớp
$sql = "
    SELECT gv.ID_GV, gv.Ten, gv.GioiTinh, gv.DiaChi, gv.Email, gv.SDT, l.TenLop
    FROM giaovien gv
    LEFT JOIN lophoc l ON gv.LopDay = l.ID_Lop
";
$res = mysqli_query($conn, $sql);

$teachers = [];
while ($row = mysqli_fetch_assoc($res)) {
    $teachers[] = $row;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Danh sách giáo viên</title>
  <link rel="stylesheet" href="admin_teacher_tt_ld.css">
</head>
<body>
  <p class="button"><a href="admin_teacher.php">⬅ Quay lại</a></p>

  <h2>Danh sách giáo viên</h2>
  <table class="list-table">
      <thead>
          <tr>
              <th>Mã GV</th>
              <th>Họ tên</th>
              <th>Giới tính</th>
              <th>Địa chỉ</th>
              <th>Email</th>
              <th>SĐT</th>
              <th>Tên lớp</th>
          </tr>
      </thead>
      <tbody>
          <?php foreach ($teachers as $t): ?>
          <tr>
              <td><?php echo $t['ID_GV']; ?></td>
              <td><?php echo $t['Ten']; ?></td>
              <td><?php echo $t['GioiTinh']; ?></td>
              <td><?php echo $t['DiaChi']; ?></td>
              <td><?php echo $t['Email']; ?></td>
              <td><?php echo $t['SDT']; ?></td>
              <td><?php echo $t['TenLop'] ?? 'Chưa phân công'; ?></td>
          </tr>
          <?php endforeach; ?>
      </tbody>
  </table>
</body>
</html>
