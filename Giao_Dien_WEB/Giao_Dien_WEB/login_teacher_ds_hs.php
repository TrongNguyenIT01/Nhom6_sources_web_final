<?php
require '../config/config.php';
session_start();

$lopday = $_SESSION['lopday'] ?? null;

$studentList = [];

if ($lopday) {
    $sql = "SELECT ID_HS, Ten, GioiTinh, ID_Lop, DiaChi, SDT, Ten_PH, CapDo, PhanThuong 
            FROM hocsinh 
            WHERE ID_Lop = '$lopday' ";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $studentList[] = $row;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Danh Sách Học Sinh</title>
  <link rel="stylesheet" href="login_teacher_ds_hs.css">
</head>
<body>
  <p class="button"><a href="login_teacher.php">⬅ Quay lại</a></p>

  <h2>Danh Sách Học Sinh</h2>

  <table>
    <thead>
      <tr>
        <th>ID học sinh</th>
        <th>Họ và tên</th>
        <th>Giới tính</th>
        <th>Lớp</th>
        <th>Địa chỉ</th>
        <th>Số điện thoại</th>
        <th>Tên phụ huynh</th>
        <th>Cấp độ</th>
        <th>Phần thưởng</th>
      </tr>
    </thead>
    <tbody>
      <?php if (!empty($studentList)): ?>
        <?php foreach ($studentList as $student): ?>
          <tr>
            <td><?php echo $student['ID_HS']; ?></td>
            <td><?php echo $student['Ten']; ?></td>
            <td><?php echo $student['GioiTinh']; ?></td>
            <td><?php echo $student['ID_Lop']; ?></td>
            <td><?php echo $student['DiaChi']; ?></td>
            <td><?php echo $student['SDT']; ?></td>
            <td><?php echo $student['Ten_PH']; ?></td>
            <td><?php echo $student['CapDo']; ?></td>
            <td><?php echo $student['PhanThuong']; ?></td>
          </tr>
        <?php endforeach; ?>
      <?php else: ?>
        <tr>
          <td colspan="9">Không có học sinh nào</td>
        </tr>
      <?php endif; ?>
    </tbody>
  </table>
</body>
</html>
