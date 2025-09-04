function loadContent(page, element) {
  // Bỏ active cũ
  document.querySelectorAll(".menu a").forEach(el => el.classList.remove("active"));

  // Gán active cho menu vừa bấm
  element.classList.add("active");

  // Load nội dung vào iframe
  document.getElementById("content-frame").src = page;
}
