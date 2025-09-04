<?php
    require __DIR__ . '/../../config/config.php';
$sql = "SELECT id, question, answer, option1, option2, option3, image FROM game ORDER BY RAND() LIMIT 10";
$result = $conn->query($sql);

$questions = [];
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $questions[] = $row;
  }
}

echo json_encode($questions, JSON_UNESCAPED_UNICODE);
$conn->close();
?>
