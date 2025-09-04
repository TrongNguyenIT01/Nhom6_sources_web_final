<?php
include 'connect.php'; 
session_start();


if (!isset($_SESSION['id_gv'])) {
    header("Location: login.php"); 
    exit();
}

$id_gv = $_SESSION['id_gv']; 


$lophoc_query = "SELECT l.ID_Lop, l.TenLop 
                 FROM lophoc l
                 JOIN giaovien g ON l.ID_Lop = g.LopDay
                 WHERE g.ID_GV = ?";
$stmt = $conn->prepare($lophoc_query);
$stmt->bind_param("s", $id_gv);
$stmt->execute();
$lophoc_result = $stmt->get_result();
$stmt->close();

$baihoc_query = "SELECT b.ID_BH, b.TenBaiHoc
                 FROM baihoc b
                 JOIN giaovien g ON b.ID_Lop = g.LopDay
                 WHERE g.ID_GV = ?";
$stmt = $conn->prepare($baihoc_query);
$stmt->bind_param("s", $id_gv);
$stmt->execute();
$baihoc_result = $stmt->get_result();
$stmt->close();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_bt = uniqid('BT_'); 
    $ten_baitap = $_POST['ten_baitap'];
    $capdo = $_POST['capdo'];
    $dangbai = $_POST['dangbai'];
    $id_bh = $_POST['id_bh'];
    $id_lop = $_POST['id_lop'];

    if ($dangbai == 'multiple_choice') {
        $cauhoi = $_POST['cauhoi'];
        $option1 = $_POST['option1'];
        $option2 = $_POST['option2'];
        $option3 = $_POST['option3'];
        $option4 = $_POST['option4'];
        $correct_answer = $_POST['correct_answer'];
        $dapan = "$option1|$option2|$option3|$option4|$correct_answer";
    } else {
        $cauhoi = $_POST['cauhoi'];
        $dapan = $_POST['dapan'];
    }

    $sql = "INSERT INTO baitap (ID_BT, TenBaiTap, CapDo, CauHoi, DapAn, DangBai, ID_BH, ID_Lop) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssssss", $id_bt, $ten_baitap, $capdo, $cauhoi, $dapan, $dangbai, $id_bh, $id_lop);

    if ($stmt->execute()) {
        echo "✅ Bài tập đã được tạo thành công! ID: $id_bt";
    } else {
        echo "❌ Lỗi: " . $stmt->error;
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tạo Bài Tập</title>
    <link rel="stylesheet" href="create_exercise.css">
    <script src="script.js"></script>
</head>
<body>
    <h1>Tạo Bài Tập Mới</h1>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="ten_baitap">Tên Bài Tập:</label>
        <input type="text" id="ten_baitap" name="ten_baitap" required><br><br>

        <label for="capdo">Cấp Độ:</label>
        <input type="text" id="capdo" name="capdo" required><br><br>

        <label for="dangbai">Dạng Bài:</label>
        <select id="dangbai" name="dangbai" onchange="changeFormType()" required>
            <option value="multiple_choice">Trắc Nghiệm</option>
            <option value="fill_in_the_blank">Điền Vào Chỗ Trống</option>
            <option value="drag_and_drop">Kéo Thả</option>
        </select><br><br>

        <div id="cauhoi_dapan">
            <label for="cauhoi">Câu Hỏi:</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label for="dapan">Đáp Án:</label>
            <textarea id="dapan" name="dapan" required></textarea><br><br>
        </div>

        <label for="id_bh">Bài Học:</label>
        <select id="id_bh" name="id_bh" required>
            <?php while($row = $baihoc_result->fetch_assoc()) { ?>
                <option value="<?php echo $row['ID_BH']; ?>"><?php echo $row['TenBaiHoc']; ?></option>
            <?php } ?>
        </select><br><br>

        <label for="id_lop">Lớp Học:</label>
        <select id="id_lop" name="id_lop" required>
            <?php while($row = $lophoc_result->fetch_assoc()) { ?>
                <option value="<?php echo $row['ID_Lop']; ?>"><?php echo $row['TenLop']; ?></option>
            <?php } ?>
        </select><br><br>

        <input type="submit" value="Tạo và Lưu">
    </form>
</body>
</html>

<?php $conn->close(); ?>
