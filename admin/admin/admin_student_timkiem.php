<?php
require '../config/config.php';

$searchResult = [];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $keyword = trim($_POST['keyword']);

    if (!empty($keyword)) {
       
        $stmt = $conn->prepare("SELECT ID_HS, Ten, ID_Lop, CapDo, Ten_PH 
                                FROM hocsinh 
                                WHERE ID_HS = ? OR Ten LIKE ?");
        $like = "%$keyword%";
        $stmt->bind_param("ss", $keyword, $like);
        $stmt->execute();
        $result = $stmt->get_result();

     
        while ($row = $result->fetch_assoc()) {
            $searchResult[] = [
                'id' => $row['ID_HS'],
                'name' => $row['Ten'],
                'class' => $row['ID_Lop'],
                'level' => $row['CapDo'],
                'tenPH' => $row['Ten_PH']
            ];
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Tìm kiếm học sinh</title>
  <link rel="stylesheet" href="admin_student_tt_tk.css">
</head>
<body>
  <p class="button"><a href="admin_student.php">⬅ Quay lại</a></p>

  <h2>Tìm kiếm học sinh</h2>

 
  <form method="POST" action="">
    <input type="text" name="keyword" placeholder="Nhập tên hoặc ID học sinh..." required>
    <button type="submit">Tìm</button>
  </form>

 
  <table>
    <thead>
      <tr>
        <th>ID học sinh</th>
        <th>Họ và tên</th>
        <th>Lớp</th>
        <th>Cấp độ</th>
        <th>Tên Phụ Huynh</th>
      </tr>
    </thead>
    <tbody>
      <?php if (!empty($searchResult)): ?>
        <?php foreach ($searchResult as $student): ?>
          <tr>
            <td><?php echo $student['id']; ?></td>
            <td><?php echo $student['name']; ?></td>
            <td><?php echo $student['class']; ?></td>
            <td><?php echo $student['level'] ?? "Chưa cập nhật"; ?></td>
            <td><?php echo $student['tenPH'] ?? "Chưa có"; ?></td>
          </tr>
        <?php endforeach; ?>
      <?php else: ?>
        <tr><td colspan="5">Chưa có kết quả tìm kiếm.</td></tr>
      <?php endif; ?>
    </tbody>
  </table>
</body>
</html>
