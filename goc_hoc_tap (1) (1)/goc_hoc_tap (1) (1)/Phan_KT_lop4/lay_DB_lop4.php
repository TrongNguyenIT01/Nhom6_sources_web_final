<style>
    body {
        font-family: "Comic Sans MS", Arial, sans-serif;
        background: #f0faff;
        margin: 0;
        padding: 20px;
    }

    .question {
        background: #fff8e7;
        border: 2px solid #ffcc80;
        border-radius: 15px;
        padding: 15px 20px;
        margin-bottom: 20px;
        box-shadow: 2px 2px 6px rgba(0,0,0,0.1);
    }

    .question p {
        font-size: 20px;
        font-weight: bold;
        color: #ff6600;
        margin-bottom: 10px;
    }

    label {
        display: block;
        font-size: 18px;
        color: #333;
        padding: 8px;
        border-radius: 10px;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    label:hover {
        background: #e0f7fa;
    }

    input[type="radio"] {
        transform: scale(1.2);
        margin-right: 8px;
        accent-color: #ff6600;
    }

    hr {
        border: none;
        border-top: 2px dashed #ccc;
        margin: 20px 0;
    }

    button[type="submit"] {
        display: block;
        margin: 30px auto;
        padding: 12px 25px;
        font-size: 20px;
        font-weight: bold;
        color: white;
        background: linear-gradient(45deg, #ff9933, #ff6600);
        border: none;
        border-radius: 15px;
        cursor: pointer;
        box-shadow: 3px 3px 8px rgba(0,0,0,0.2);
        transition: all 0.3s ease;
    }

    button[type="submit"]:hover {
        background: linear-gradient(45deg, #ff6600, #ff3300);
        transform: scale(1.1);
        box-shadow: 4px 4px 10px rgba(0,0,0,0.25);
    }

    button[type="submit"]:active {
        transform: scale(0.95);
    }

    .subject {
        text-align: center;
        color: #0066cc;
        font-size: 20px;
        margin-bottom: 20px;
    }
</style>

<?php
require __DIR__ . '/../../config/config.php';

$subject = isset($_GET['subject']) ? urldecode($_GET['subject']) : '';
$lesson  = isset($_GET['lesson']) ? (int)$_GET['lesson'] : 1;

// Lấy câu hỏi theo subject + lesson  //tenDB
$sql = "SELECT * FROM questions_lop4    
        WHERE subject = '".$conn->real_escape_string($subject)."' 
        AND lesson = $lesson 
        ORDER BY id";

$result = $conn->query($sql);

echo "<h2>$subject - Bài $lesson</h2>";

$i = 1;
if ($result->num_rows > 0) {            //ten fie
    echo "<form method='post' action='ketqua_lop4.php?subject=".urlencode($subject)."&lesson=$lesson'>";
    while ($row = $result->fetch_assoc()) {
        echo "<div class='question'>";
        echo "<p><b>Câu $i:</b> " . $row['question'] . "</p>";

        $name = "q" . $row['id'];
        echo "<label><input type='radio' name='$name' value='".$row['option1']."'> ".$row['option1']."</label><br>";
        echo "<label><input type='radio' name='$name' value='".$row['option2']."'> ".$row['option2']."</label><br>";
        echo "<label><input type='radio' name='$name' value='".$row['option3']."'> ".$row['option3']."</label><br>";
        echo "<label><input type='radio' name='$name' value='".$row['option4']."'> ".$row['option4']."</label><br>";

        echo "</div><hr>";
        $i++;
    }
    echo "<button type='submit'>Nộp bài</button>";
    echo "</form>";
} else {
    echo "Không có câu hỏi.";
}

$conn->close();
?>
