// script.js

function changeFormType() {
    var typeEl = document.getElementById('dangbai');
    if (!typeEl) return;
    var type = typeEl.value;
    var instr = document.getElementById('cauhoi_dapan');
    if (!instr) return;

    if (type === 'multiple_choice') {
        instr.innerHTML = `
            <label for="cauhoi">Câu Hỏi (ví dụ: 6-1=?):</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label>Lựa chọn 1:</label>
            <input type="text" name="option1" required><br><br>
            <label>Lựa chọn 2:</label>
            <input type="text" name="option2" required><br><br>
            <label>Lựa chọn 3:</label>
            <input type="text" name="option3" required><br><br>
            <label>Lựa chọn 4:</label>
            <input type="text" name="option4" required><br><br>
            <label>Đáp án đúng:</label><br>
            <input type="radio" name="correct_answer" value="1" required> Lựa chọn 1<br>
            <input type="radio" name="correct_answer" value="2"> Lựa chọn 2<br>
            <input type="radio" name="correct_answer" value="3"> Lựa chọn 3<br>
            <input type="radio" name="correct_answer" value="4"> Lựa chọn 4<br><br>
        `;
    } else if (type === 'fill_in_the_blank') {
        instr.innerHTML = `
            <label for="cauhoi">Câu Hỏi (sử dụng ___ cho chỗ trống):</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label for="dapan">Đáp Án:</label>
            <textarea id="dapan" name="dapan" required></textarea><br><br>
        `;
    } else if (type === 'drag_and_drop') {
        instr.innerHTML = `
            <label for="cauhoi">Các Item Lộn Xộn (phân cách bằng |):</label>
            <textarea id="cauhoi" name="cauhoi" required></textarea><br><br>
            <label for="dapan">Thứ Tự Đúng (phân cách bằng |):</label>
            <textarea id="dapan" name="dapan" required></textarea><br><br>
        `;
    }
}

function showResult(text, ok) {
    var resultDiv = document.getElementById('result');
    if (!resultDiv) return;
    resultDiv.style.display = 'block';
    resultDiv.style.padding = '10px';
    resultDiv.style.margin = '10px';
    resultDiv.style.backgroundColor = ok ? '#ccffcc' : '#ffcccc';
    resultDiv.innerHTML = text;
}

/**
 * Hàm chính: kiểm tra đáp án, hiển thị đúng/sai và gửi AJAX (POST id_bt, user_answer)
 * Gọi từ nút: onclick="checkAnswerAndSubmit()"
 */
function checkAnswerAndSubmit() {
    try {
        var dangBaiEl = document.getElementById('dang_bai');
        var correctEl = document.getElementById('correct_answer');
        var idBtEl = document.getElementById('id_bt');

        if (!dangBaiEl || !correctEl || !idBtEl) {
            console.error('Thiếu phần tử: dang_bai hoặc correct_answer hoặc id_bt');
            return;
        }
var dangBai = dangBaiEl.value;
        var correctAnswer = correctEl.value;
        var id_bt = idBtEl.value;
        var userAnswer = "";
        var resultText = "";
        var isCorrect = false;

        if (dangBai === 'multiple_choice') {
            var selected = document.querySelector('input[name="answer"]:checked');
            if (!selected) {
                showResult('Vui lòng chọn một đáp án!', false);
                return;
            }
            userAnswer = selected.value;
            var parts = correctAnswer.split('|');
            var correctIndex = parts.pop(); // phần cuối là vị trí đúng (1..4)
            var labels = ['a', 'b', 'c', 'd'];
            var correctLabel = labels[parseInt(correctIndex) - 1] || correctIndex;
            var correctText = parts[parseInt(correctIndex) - 1] || '';
            if (userAnswer === correctIndex) {
                isCorrect = true;
                resultText = 'Đúng! Đáp án đúng là: ' + correctLabel + '. ' + correctText;
            } else {
                isCorrect = false;
                resultText = 'Sai! Đáp án đúng là: ' + correctLabel + '. ' + correctText;
            }
        } else if (dangBai === 'fill_in_the_blank') {
            var inputEl = document.getElementById('user_answer');
            userAnswer = inputEl ? inputEl.value.trim() : "";
            if (!userAnswer) {
                showResult('Vui lòng nhập đáp án!', false);
                return;
            }
            if (userAnswer === correctAnswer) {
                isCorrect = true;
                resultText = 'Đúng! Đáp án đúng là: ' + correctAnswer;
            } else {
                isCorrect = false;
                resultText = 'Sai! Đáp án đúng là: ' + correctAnswer;
            }
        } else if (dangBai === 'drag_and_drop') {
            var sortable = document.getElementById('sortable');
            if (!sortable) {
                showResult('Không tìm thấy phần drag-and-drop', false);
                return;
            }
            var items = Array.from(sortable.children).map(i => i.textContent.trim());
            userAnswer = items.join('|');
            if (userAnswer === correctAnswer) {
                isCorrect = true;
                resultText = 'Đúng! Thứ tự đúng là: ' + correctAnswer;
            } else {
                isCorrect = false;
                resultText = 'Sai! Thứ tự đúng là: ' + correctAnswer;
            }
        } else {
            showResult('Loại bài không hợp lệ: ' + dangBai, false);
            return;
        }

        // Hiển thị kết quả ngay
        showResult(resultText, isCorrect);

        // Gửi AJAX để cập nhật trạng thái (và có thể gửi đáp án học sinh)
        var body = new URLSearchParams();
        body.append('id_bt', id_bt);
        body.append('user_answer', userAnswer);

        fetch('do_exercise.php', {
method: 'POST',
            headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
            body: body.toString()
        })
        .then(function(res) { return res.json(); })
        .then(function(json) {
            console.log('Server response:', json);
            // có thể hiển thị thêm thông báo nhỏ nếu cần
        })
        .catch(function(err) {
            console.error('AJAX error:', err);
        });

    } catch (e) {
        console.error('Lỗi trong checkAnswerAndSubmit:', e);
    }
}

document.addEventListener('DOMContentLoaded', function() {
    if (typeof Sortable !== 'undefined') {
        var el = document.getElementById('sortable');
        if (el) {
            Sortable.create(el, {
                animation: 150
            });
        }
    }
});