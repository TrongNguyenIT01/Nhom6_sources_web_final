<?php
    require '../config/config.php';

    $phuhuynh = [];

    $sql = "SELECT ID_PH, Ten, SDT, DiaChi,TenCon FROM phuhuynh";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $phuhuynh[] = $row;
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Danh Sách Phụ Huynh</title>
  <link rel="stylesheet" href="admin_student_tt_tk.css">
</head>
<body>
  <p class="button"><a href="admin_student.php">⬅ Quay lại</a></p>

  <h2>Thông Tin Phụ Huynh</h2>

  <table>
    <thead>
      <tr>
        <th>ID Phụ Huynh</th>
        <th>Họ và tên</th>
        <th>Địa chỉ</th>
        <th>Số điện thoại</th>
        <th>Tên Con</th>
      </tr>
    </thead>
    <tbody>
      <?php if (!empty($phuhuynh)): ?>
        <?php foreach ($phuhuynh as $phuhuynh1): ?>
          <tr>
            <td><?php echo $phuhuynh1['ID_PH']; ?></td>
            <td><?php echo $phuhuynh1['Ten']; ?></td>
            <td><?php echo $phuhuynh1['SDT']; ?></td>
            <td><?php echo $phuhuynh1['DiaChi']; ?></td>
            <td><?php echo $phuhuynh1['TenCon']; ?></td>
          </tr>
        <?php endforeach; ?>
      <?php else: ?>
        <tr>
          <td colspan="9">Không có phụ huynh nào</td>
        </tr>
      <?php endif; ?>
    </tbody>
  </table>
</body>
</html>
