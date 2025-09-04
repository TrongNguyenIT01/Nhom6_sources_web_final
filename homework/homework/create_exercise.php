<?php
include 'connect.php';
session_start(); 

if (!isset($_SESSION['id_ph'])) {
    die("Bạn chưa đăng nhập phụ huynh.");
}

$id_ph = $_SESSION['id_ph']; 


$baihoc_query = "SELECT ID_BH, TenBaiHoc FROM baihoc";
$baihoc_result = $conn->query($baihoc_query);


$hocsinh_query = "SELECT h.ID_HS, h.Ten 
                  FROM hocsinh h
                  JOIN phuhuynh p ON h.Ten = p.TenCon
                  WHERE p.ID_PH = ?";
$stmt_hs = $conn->prepare($hocsinh_query);
$stmt_hs->bind_param("s", $id_ph);
$stmt_hs->execute();
$hocsinh_result = $stmt_hs->get_result();;


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id_bt = uniqid('BT_'); 
    $ten_baitap = $_POST['ten_baitap'];
    $capdo = $_POST['capdo'];
    $dangbai = $_POST['dangbai'];
    $id_bh = $_POST['id_bh'];
    $id_hs = $_POST['id_hs'];

    if ($dangbai == 'multiple_choice') {
        $cauhoi = $_POST['cauhoi'];
        // Lấy 4 lựa chọn và đáp án đúng
        $option1 = $_POST['option1'] ?? '';
        $option2 = $_POST['option2'] ?? '';
        $option3 = $_POST['option3'] ?? '';
        $option4 = $_POST['option4'] ?? '';
        $correct_answer = $_POST['correct_answer'] ?? '';
        $dapan = "$option1|$option2|$option3|$option4|$correct_answer";
    } else {
        $cauhoi = $_POST['cauhoi'];
        $dapan = $_POST['dapan'];
    }

    $sql = "INSERT INTO baitapph (ID_BT, TenBaiTap, CapDo, CauHoi, DapAn, DangBai, ID_BH, ID_HS) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssssss", $id_bt, $ten_baitap, $capdo, $cauhoi, $dapan, $dangbai, $id_bh, $id_hs);

    if ($stmt->execute()) {
        echo "Bài tập đã được tạo thành công! ID: $id_bt";
    } else {
        echo "Lỗi: " . $stmt->error;
    }
    $stmt->close();
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Tạo Bài Tập</title>
    <link rel="stylesheet" href="create.css">
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

        <label for="id_hs">Học Sinh:</label>
        <select id="id_hs" name="id_hs" required>
            <?php while($row = $hocsinh_result->fetch_assoc()) { ?>
                <option value="<?php echo $row['ID_HS']; ?>"><?php echo $row['Ten']; ?></option>
            <?php } ?>
        </select><br><br>

        <input type="submit" value="Tạo và Lưu">
    </form>
</body>
</html>

<?php $conn->close(); ?>
