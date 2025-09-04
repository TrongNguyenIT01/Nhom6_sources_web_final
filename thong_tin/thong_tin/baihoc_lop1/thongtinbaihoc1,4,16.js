const pages = document.querySelectorAll('.book-img');
let currentPage = 0;

const prevBtn = document.getElementById('prevBtn');
const nextBtn = document.getElementById('nextBtn');

function updatePage(nextPage) {
  const current = pages[currentPage];
  const next = pages[nextPage];

  // Thêm hiệu ứng rời trang cũ
  current.classList.add('flipping');
  current.classList.remove('visible');

  // Hiển thị trang mới
  next.classList.add('visible');

  currentPage = nextPage;

  // Ẩn/hiện nút điều hướng
  prevBtn.style.visibility = currentPage === 0 ? 'hidden' : 'visible';
  nextBtn.style.visibility = currentPage === pages.length - 1 ? 'hidden' : 'visible';

  setTimeout(() => {
    current.classList.remove('flipping');
  }, 600);
}

prevBtn.addEventListener('click', () => {
  if (currentPage > 0) {
    updatePage(currentPage - 1);
  }
});

nextBtn.addEventListener('click', () => {
  if (currentPage < pages.length - 1) {
    updatePage(currentPage + 1);
  }
});

updatePage(0);
