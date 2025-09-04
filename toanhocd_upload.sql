-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 04, 2025 lúc 11:03 AM
-- Phiên bản máy phục vụ: 11.4.8-MariaDB-log
-- Phiên bản PHP: 8.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `toanhocd_upload`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihoc`
--

CREATE TABLE `baihoc` (
  `ID_BH` varchar(20) NOT NULL,
  `TenBaiHoc` varchar(255) NOT NULL,
  `ID_Lop` varchar(20) DEFAULT NULL,
  `NoiDungBaiHoc` text DEFAULT NULL,
  `NguoiTao` varchar(100) DEFAULT NULL,
  `NgayTao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baihoc`
--

INSERT INTO `baihoc` (`ID_BH`, `TenBaiHoc`, `ID_Lop`, `NoiDungBaiHoc`, `NguoiTao`, `NgayTao`) VALUES
('BH001CD1L1', 'Bài 1: Các số 0,1,2,3,4,5', 'CL01', 'Học các số từ 1 -> 5', 'Trọng Nguyễn', '2025-08-23'),
('BH001CD1L2', 'Bài 1: Phép cộng trong phạm vi 20', 'CL02', 'dậy các phép toán cộng trong phạm vi 20', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH001CD1L3', 'Bài 1: Bảng nhân 7, bảng chia 7', 'CL03', 'Bảng nhân 7, bảng chia 7', 'Nguyễn Nhật Long', '2025-08-22'),
('BH001CD1L4', 'Bài 1: Đo góc, đơn vị đo góc.', 'CL04', 'học về đơn vị đo', 'thành huy', '2025-08-23'),
('BH001CD1L5', 'Bài 1: Khái Niệm Số Thập Phân', 'CL05', 'Khái Niệm Về Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH002CD1L1', 'Bài 2: Các số 6,7,8,9,10', 'CL01', 'Học các số từ 6 -> 10', 'Trọng Nguyễn', '2025-08-23'),
('BH002CD1L2', 'Bài 2: Bảng cộng', 'CL02', 'dậy các phép tính cộng đơn giản', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH002CD1L3', 'Bài 2: Bảng nhân 8, bảng chia 8', 'CL03', 'Bảng nhân 8, bảng chia 8', 'Nguyễn Nhật Long', '2025-08-22'),
('BH002CD1L4', 'Bài 2: Góc nhọn, góc tù, góc bẹt.', 'CL04', 'Học về các góc', 'thành huy', '2025-08-23'),
('BH002CD1L5', 'Bài 2: So Sánh Số Thập Phân', 'CL05', 'So Sánh Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH003CD1L1', 'Bài 3: Nhiều Hơn, Ít Hơn, Bằng Nhau', 'CL01', 'Học Các Phép So Sánh', 'Trọng Nguyễn', '2025-08-23'),
('BH003CD1L2', 'Bài 3: Bài toán về thêm, bớt một số đơn vị', 'CL02', 'Giảng dậy về thêm bớt một một số đơn vị dễ hiểu', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH003CD1L3', 'Bài 3: Bảng nhân 9, bảng chia 9', 'CL03', 'Bảng nhân 9, bảng chia 9', 'Nguyễn Nhật Long', '2025-08-22'),
('BH003CD1L5', 'Bài 3: Số Đo Dưới Dạng Số Thập Phân', 'CL05', 'Viết Số Đo Đại Lượng Dưới Dạng Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH003CD2L4', 'Bài 3: Số có sáu chữ số. Số 100 000', 'CL04', 'Học số có 6 chữ số', 'thành huy', '2025-08-23'),
('BH004CD1L1', 'Bài 4: So Sánh Số', 'CL01', 'So Sánh Số', 'Trọng Nguyễn', '2025-08-23'),
('BH004CD1L2', 'Bài 4: Phép trừ trong phạm vi 20', 'CL02', 'giảng dậy về các phép trừ đơn giản trong phạm vi 20', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH004CD1L3', 'Bài 4: Tìm thành phần trong phép nhân, phép chia', 'CL03', 'Tìm thành phần trong phép nhân, phép chia', 'Nguyễn Nhật Long', '2025-08-22'),
('BH004CD1L5', 'Bài 4: Làm Tròn Số Thập Phân', 'CL05', 'Làm Tròn Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH004CD2L4', 'Bài 4: Hàng và lớp.', 'CL04', 'Học về vị trí của hàng và lớp', 'thành huy', '2025-08-23'),
('BH005CD1L1', 'Bài 5: Mấy Và Mấy?', 'CL01', 'Thực Hiện Đếm Số', 'Trọng Nguyễn', '2025-08-23'),
('BH005CD1L2', 'Bài 5: Bảng trừ', 'CL02', 'Giảng về các phép trừ đơn giản', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH005CD1L3', 'Bài 5: Một phần mấy', 'CL03', 'Một phần mấy', 'Nguyễn Nhật Long', '2025-08-22'),
('BH005CD2L4', 'Bài 5: Các số trong phạm vi lớp triệu.', 'CL04', 'Học về lớp triệu', 'thành huy', '2025-08-23'),
('BH005CD2L5', 'Bài 5: Khái Niệm Đơn Vị Đo Diện Tích', 'CL05', 'Các Khái Niệm Đơn Vị Đo Diện Tích Ki-Lô-Mét Vuông, Héc Ta', 'Trọng Nguyễn', '2025-08-23'),
('BH006CD1L2', 'Bài 6: Bài toán về nhiều hơn, ít hơn một số đơn vị', 'CL02', 'học về nhiều hơn, ít hơn một số đơn vị', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH006CD2L1', 'Bài 6: Khái Niệm Hình Học', 'CL01', 'Học Các Hình Vuông, Hình Tròn, Hình Tam Giác, Hình Chữ Nhật', 'Trọng Nguyễn', '2025-08-23'),
('BH006CD2L3', 'Bài 6: Điểm ở giữa, trung điểm của đoạn thẳng', 'CL03', 'Điểm ở giữa, trung điểm của đoạn thẳng', 'Nguyễn Nhật Long', '2025-08-22'),
('BH006CD2L4', 'Bài 6: Làm tròn số đến hàng trăm nghìn.', 'CL04', 'Học cách làm tròn', 'thành huy', '2025-08-23'),
('BH006CD2L5', 'Bài 6: Các Đơn Vị Đo Diện Tích', 'CL05', 'Các Đơn Vị Đo Diện Tích', 'Trọng Nguyễn', '2025-08-23'),
('BH007CD2L1', 'Bài 7:Thực Hành Hình Học', 'CL01', 'Thực Hành Lắp Ghép Hình Học', 'Trọng Nguyễn', '2025-08-23'),
('BH007CD2L3', 'Bài 7: Hình tròn. Tâm, bán kính, đường kính của hình tròn', 'CL03', 'Hình tròn. Tâm, bán kính, đường kính của hình tròn', 'Nguyễn Nhật Long', '2025-08-22'),
('BH007CD2L4', 'Bài 7: So sách các số có nhiều chữ số', 'CL04', 'So sách các số có nhiều chữ số', 'thành huy', '2025-08-23'),
('BH007CD2L5', 'Bài 7: Thực Hành Đo Lường', 'CL05', 'Thực Hành - Trải Nghiệm Với Một Số Đơn Vị Đo', 'Trọng Nguyễn', '2025-08-23'),
('BH008CD2L2', 'Bài 8: Ki-lô-gam', 'CL02', 'học về nặng hơn, nhẹ hơn và về ki-lô-gam', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH008CD2L3', 'Bài 8: Góc, góc vuông, góc không vuông', 'CL03', 'Góc, góc vuông, góc không vuông', 'Nguyễn Nhật Long', '2025-08-22'),
('BH008CD2L4', 'Bài 8: Làm quen với dãy số tự nhiên.', 'CL04', 'Làm quen với dãy số tự nhiên.', 'thành huy', '2025-08-23'),
('BH008CD3L5', 'Bài 8: Phép Cộng Số Thập Phân', 'CL05', 'Phép Cộng Các Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH009CD2L2', 'Bài 9: Lít', 'CL02', 'Học về lít', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH009CD2L3', 'Bài 9: Hình tam giác, hình tứ giác. Hình chữ nhật, hình vuông', 'CL03', 'Hình tam giác, hình tứ giác. Hình chữ nhật, hình vuông', 'Nguyễn Nhật Long', '2025-08-22'),
('BH009CD3L4', 'Bài 9: Yến, tạ, tấn.', 'CL04', 'Học yến, tạ, tấn', 'thành huy', '2025-08-23'),
('BH009CD3L5', 'Bài 9: Phép Trừ Số Thập Phân', 'CL05', 'Phép Trừ Các Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH010CD2L2', 'Bài 10: Thực hành và trải nhiệm với các đơn vị Ki-lô-gam, lít', 'CL02', 'thực hành để tăng trải nghiệm của học sinh', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH010CD2L3', 'Bài 10: Khối lập phương, khối hộp hình chữ nhật', 'CL03', 'Khối lập phương, khối hộp hình chữ nhật', 'Nguyễn Nhật Long', '2025-08-22'),
('BH010CD3L1', 'Bài 10: Phép Cộng Trong Phạm Vi 10', 'CL01', 'Tính Toán Các Phép Cộng Trong Phạm Vi 10', 'Trọng Nguyễn', '2025-08-23'),
('BH010CD3L4', 'Bài 10: Đề-xi-mét vuông, mét vuông, mi-li-mét vuông.', 'CL04', 'Đề-xi-mét vuông, mét vuông, mi-li-mét vuông.', 'thành huy', '2025-08-23'),
('BH010CD3L5', 'Bài 10: Phép Nhân Số Thập Phân', 'CL05', 'Phép Nhân Các Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH011CD3L1', 'Bài 11: Phép Trừ Trong Phạm Vi 10', 'CL01', 'Tính Toán Các Phép Trừ Trong Phạm Vi 10', 'Trọng Nguyễn', '2025-08-23'),
('BH011CD3L2', 'Bài 11: Phép cộng (có nhớ) số có hai chữ số với số có một chữ số', 'CL02', 'học phép cộng nâng cao', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH011CD3L3', 'Bài 11: Nhân số có hai chữ số với số có một chữ số', 'CL03', 'Nhân số có hai chữ số với số có một chữ số', 'Nguyễn Nhật Long', '2025-08-22'),
('BH011CD3L4', 'Bài 11: Giấy, thế kỉ.', 'CL04', 'Giấy, thế kỉ.', 'thành huy', '2025-08-23'),
('BH011CD3L5', 'Bài 11: Phép Chia Số Thập Phân', 'CL05', 'Phép Chia Các Số Thập Phân', 'Trọng Nguyễn', '2025-08-23'),
('BH012CD3L1', 'Bài 12: Bảng Cộng, Bảng Trừ, trong phạm vi 10', 'CL01', 'Bảng Cộng - Trừ Trong Phạm Vi 10', 'Trọng Nguyễn', '2025-08-23'),
('BH012CD3L2', 'Bài 12: Phép cộng (có nhớ) số có hai chữ số với số có hai chữ số', 'CL02', 'học phép cộng nâng cao với chữ số', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH012CD3L3', 'Bài 12: Gấp một số lên một số lần', 'CL03', 'Gấp một số lên một số lần', 'Nguyễn Nhật Long', '2025-08-22'),
('BH012CD3L4', 'Bài 12: Thực hành và trải nghiệm sử dụng một đơn vị đo đại lượng', 'CL04', 'Thực hành và trải nghiệm sử dụng một đơn vị đo đại lượng', 'thành huy', '2025-08-23'),
('BH012CD3L5', 'Bài 12: Phép Nhân Số Thập Phân Với Các Số Đặc Biệt', 'CL05', 'Phép Nhân Các Số Thập Phân Với Các Số 10 - 100 - 1000 hoặc 0.1 - 0.01 - 0.001,.....', 'Trọng Nguyễn', '2025-08-23'),
('BH013CD3L2', 'Bài 13: Phép trừ (có nhớ) số có hai chữ số với số có một chữ số ', 'CL02', 'học phép trừ nâng cao hai chữ số', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH013CD3L3', 'Bài 13: Phép chia hết, phép chia có dư', 'CL03', 'Phép chia hết, phép chia có dư', 'Nguyễn Nhật Long', '2025-08-22'),
('BH013CD4L4', 'Bài 13: Phép cộng các số có nhiều chữ số.', 'CL04', 'Phép cộng các số có nhiều chữ số.', 'thành huy', '2025-08-23'),
('BH013CD4L5', 'Bài 13: Hình Tam Giác', 'CL05', 'Khái Niệm Hình Tam Giác - Diện Tích Hình Tam Giác', 'Trọng Nguyễn', '2025-08-23'),
('BH014CD3L2', 'Bài 14: Phép trừ (có nhớ) số có hai chữ số với số có hai chữ số', 'CL02', 'học phép trừ nâng cao với hai chữ số', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH014CD3L3', 'Bài 14: Chia số có hai chữ số cho số có một chữ số', 'CL03', 'Chia số có hai chữ số cho số có một chữ số', 'Nguyễn Nhật Long', '2025-08-22'),
('BH014CD4L1', 'Bài 14: Hình Học Khối', 'CL01', 'Khối Lập Phương, Khối Hộp Chữ Nhật', 'Trọng Nguyễn', '2025-08-23'),
('BH014CD4L4', 'Bài 14: Phép trừ các số có nhiều chữ số.', 'CL04', 'Phép trừ các số có nhiều chữ số.', 'thành huy', '2025-08-23'),
('BH014CD4L5', 'Bài 14: Hình Thang', 'CL05', 'Khái Niệm Hình Thang - Diện Tích Hình Thang', 'Trọng Nguyễn', '2025-08-23'),
('BH015CD4L1', 'Bài 15: Hình Học Khối - Tiếp Theo', 'CL01', 'Vị Trí, Định Hướng Trong Không Gian', 'Trọng Nguyễn', '2025-08-23'),
('BH015CD4L2', 'Bài 15: Điểm, đoạn thẳng, đường thẳng, đường cong, ba điểm thẳng hàng', 'CL02', 'học về điểm, đoạn thẳng, đường thẳng, đường cong, ba điểm thẳng hàng', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH015CD4L3', 'Bài 15: Mi - li - mét', 'CL03', 'Mi - li - mét', 'Nguyễn Nhật Long', '2025-08-22'),
('BH015CD4L4', 'Bài 15: Tính chất giao hoán và kết hợp của phép cộng.', 'CL04', 'Tính chất giao hoán và kết hợp của phép cộng.', 'thành huy', '2025-08-23'),
('BH015CD4L5', 'Bài 15: Đường Tròn', 'CL05', 'Đường Tròn. Chu Vi Và Diện Tích Hình Tròn', 'Trọng Nguyễn', '2025-08-23'),
('BH016CD4L1', 'Bài 16: Luyện Tập Chung', 'CL01', 'Luyện Tập Chung', 'Trọng Nguyễn', '2025-08-23'),
('BH016CD4L2', 'Bài 16: Đường gấp khúc, hình tứ giác', 'CL02', 'học về đường gấp khúc, hình tứ giác', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH016CD4L3', 'Bài 16: Gam', 'CL03', 'Gam', 'Nguyễn Nhật Long', '2025-08-22'),
('BH016CD4L4', 'Bài 16: Tìm hai số biết tổng và hiệu của hai số đó.', 'CL04', 'Tìm hai số biết tổng và hiệu của hai số đó.', 'thành huy', '2025-08-23'),
('BH016CD4L5', 'Bài 16: Thực Hành Hình Học', 'CL05', 'Thực Hành Và Trải Nghiệm Đo và Lắp Ghép Tạo Hình', 'Trọng Nguyễn', '2025-08-23'),
('BH017CD4L2', 'Bài 17: Thực hành gấp, cắt, ghép, xếp hình, vẽ đoạn thẳng ', 'CL02', 'học thực hành để nâng cao trải nghiệm cho học sinh', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH017CD4L3', 'Bài 17: Mi - li - lít', 'CL03', 'Mi - li - lít', 'Nguyễn Nhật Long', '2025-08-22'),
('BH017CD5L4', 'Bài 17: Hai đường thẳng vuông góc.', 'CL04', 'Hai đường thẳng vuông góc.', 'thành huy', '2025-08-23'),
('BH018CD4L3', 'Bài 18: Nhiệt độ, Đơn vị đo nhiệt độ', 'CL03', 'Nhiệt độ, Đơn vị đo nhiệt độ', 'Nguyễn Nhật Long', '2025-08-22'),
('BH018CD5L2', 'Bài 18: Ngày - giờ, giờ - phút', 'CL02', 'học về ngày, giờ và phút', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH018CD5L4', 'Bài 18: Thực hành và trải nghiệm vẽ hai đường thẳng vuông góc.', 'CL04', 'Thực hành và trải nghiệm vẽ hai đường thẳng vuông góc.', 'thành huy', '2025-08-23'),
('BH019CD5L2', 'Bài 19: Ngày - tháng', 'CL02', 'học về ngày và tháng', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH019CD5L3', 'Bài 19: Nhân số có ba chữ số với số có một chữ số', 'CL03', 'Nhân số có ba chữ số với số có một chữ số', 'Nguyễn Nhật Long', '2025-08-22'),
('BH019CD5L4', 'Bài 19: Hai đường thẳng song song.', 'CL04', 'Hai đường thẳng song song.', 'thành huy', '2025-08-23'),
('BH020CD5L2', 'Bài 20: Thực hành và trải nghiệm xem đồng hồ, xem lịch', 'CL02', 'Thực hành giúp nâng cao nhận thức về thời gian', 'Nguyễn Cao Hoàng Phú', '2025-08-25'),
('BH020CD5L3', 'Bài 20: Chia số có ba chữ số cho số có một chữ số', 'CL03', 'Chia số có hai chữ số cho số có một chữ số', 'Nguyễn Nhật Long', '2025-08-22'),
('BH020CD5L4', 'Bài 20: Thực hành và trải nghiệm vẽ hai đường thẳng song song.', 'CL04', 'Thực hành và trải nghiệm vẽ hai đường thẳng song song.', 'thành huy', '2025-08-23'),
('BH021CD5L3', 'Bài 21: Biểu thức số. Tính giá trị của biểu thức số', 'CL03', 'Biểu thức số. Tính giá trị của biểu thức số', 'Nguyễn Nhật Long', '2025-08-22'),
('BH021CD5L4', 'Bài 21: Hình bình hành, hình thoi.', 'CL04', 'Hình bình hành, hình thoi.', 'thành huy', '2025-08-23'),
('BH022CD5L3', 'Bài 22: So sánh số lớn gấp mấy lần số bé', 'CL03', 'So sánh số lớn gấp mấy lần số bé', 'Nguyễn Nhật Long', '2025-08-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baitap`
--

CREATE TABLE `baitap` (
  `ID_BT` varchar(20) NOT NULL,
  `TenBaiTap` varchar(255) NOT NULL,
  `CapDo` varchar(50) DEFAULT NULL,
  `CauHoi` text DEFAULT NULL,
  `DapAn` text DEFAULT NULL,
  `DangBai` enum('multiple_choice','fill_in_the_blank','drag_and_drop') NOT NULL,
  `ID_BH` varchar(20) DEFAULT NULL,
  `ID_Lop` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baitap`
--

INSERT INTO `baitap` (`ID_BT`, `TenBaiTap`, `CapDo`, `CauHoi`, `DapAn`, `DangBai`, `ID_BH`, `ID_Lop`) VALUES
('BT_68ac810611229', '8 + 5 = ?', 'Dễ', '8 + 5 = ?', '13|14|15|12|1', 'multiple_choice', 'BH001CD1L2', 'CL02'),
('BT_68ac8126a5e9e', 'Số nào đứng sau 2?', 'Dễ', 'Số nào đứng liền sau 2?\r\n', '1|2|3|4|3', 'multiple_choice', 'BH001CD1L1', 'CL01'),
('BT_68ac814ce37cb', 'Số nào đứng liền trước 4?', 'Dễ', 'Số nào đứng liền trước 4?\r\n', '5|4|3|2|3', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac81a1dba52', '7 + 6 = ?', 'Dễ', '7 + 6 = ?', '15|13|10|14|2', 'multiple_choice', 'BH001CD1L2', 'CL02'),
('BT_68ac81b30bce3', 'Điền số: 1, 2, __, 4', 'Trung Bình', 'Điền số: 1, 2, __, 4\r\n', '3', 'fill_in_the_blank', 'BH001CD1L1', 'CL01'),
('BT_68ac81bec2894', '7 × 2 = ?', 'Dễ', '7 × 2 = ?\r\n', '14\r\n', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac81ce80996', 'Điền số: 0, __, 2, 3', 'Trung Bình', 'Điền số: 0, __, 2, 3\r\n', '1', 'fill_in_the_blank', 'BH001CD1L1', 'CL01'),
('BT_68ac81e106381', '9 + 8 = ?', 'Dễ', '9 + 8 = ?', '17', 'fill_in_the_blank', 'BH001CD1L2', 'CL02'),
('BT_68ac81e2e7e01', '7 × 5 = ?', 'Dễ', '7 × 5 = ?', '35', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac81f4754dd', 'Có 5 quả táo, ăn 2 quả còn lại mấy quả?', 'Trung Bình', 'Có 5 quả táo, ăn 2 quả còn lại mấy quả?\r\n', '2|3|4|5|2', 'multiple_choice', 'BH001CD1L1', 'CL01'),
('BT_68ac81fd5396c', '7 × 8 = ?', 'Dễ', '7 × 8 = ?', '56', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac82141fde1', '6 + 9 = ?', 'Dễ', '6 + 9 = ?', '10|11|15|16|3', 'multiple_choice', 'BH001CD1L2', 'CL02'),
('BT_68ac82188621c', '28 ÷ 7 = ?', 'Dễ', '28 ÷ 7 = ?', '4', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac822cacbf7', 'Số lớn nhất trong các số 0,1,5,3 là?', 'Dễ', 'Số lớn nhất trong các số 0,1,5,3 là?\r\n', '0|1|3|5|4', 'multiple_choice', 'BH001CD1L1', 'CL01'),
('BT_68ac82327ef1e', '49 ÷ 7 = ?', 'Dễ', '49 ÷ 7 = ?\r\n', '7\r\n', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac8244ebffd', 'Sắp xếp theo thứ tự tăng dần: 4,1,3,0', 'Trung Bình', '4|1|3|0', '0|1|3|4', 'drag_and_drop', 'BH001CD1L1', 'CL01'),
('BT_68ac824708a51', '7 × 9 = ?', 'Dễ', '7 × 9 = ?\r\n', '63\r\n', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac824d894f4', '5 + 7 = ?', 'Dễ', '5 + 7 = ?', '12', 'fill_in_the_blank', 'BH001CD1L2', 'CL02'),
('BT_68ac8264bc002', '7 × 3 = ?', 'Dễ', '7 × 3 = ?\r\n', '21', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac826e04efc', 'Sắp xếp theo thứ tự giảm dần: 2,5,1,4', 'Trung Bình', '2|5|1|4', '5|4|2|1', 'drag_and_drop', 'BH001CD1L1', 'CL01'),
('BT_68ac828d5ce17', '8 + 9 = ?', 'Dễ', '8 + 9 = ?', '18|15|16|17|4', 'multiple_choice', 'BH001CD1L2', 'CL02'),
('BT_68ac8290c7391', '35 ÷ 7 = ?', 'Dễ', '35 ÷ 7 = ?\r\n', '5', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac82a59c88d', '1 + 2 = ?', 'Dễ', '1 + 2 = ?\r\n', '1|3|2|4|2', 'multiple_choice', 'BH001CD1L1', 'CL01'),
('BT_68ac82a8e2f3e', '7 × 6 = ?', 'Dễ', '7 × 6 = ?', '42', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac82be328f5', '70 ÷ 7 = ?', 'Trung Bình', '70 ÷ 7 = ?', '10', 'fill_in_the_blank', 'BH001CD1L3', 'CL03'),
('BT_68ac82c3c0d35', '5 - 4 = ?', 'Dễ', '5 - 4 = ?\r\n', '0|1|2|3|2', 'multiple_choice', 'BH001CD1L1', 'CL01'),
('BT_68ac82c40ba95', '7 + 8 = ?', 'Dễ', '7 + 8 = ?', '15|6|5|16|1', 'multiple_choice', 'BH001CD1L2', 'CL02'),
('BT_68ac82e1572e4', '9 + 6 = ?', 'Dễ', '9 + 6 = ?', '15', 'fill_in_the_blank', 'BH001CD1L2', 'CL02'),
('BT_68ac8311632db', '8 × 2 = ?', 'Dễ', '8 × 2 = ?\r\n', '16', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac831347b2b', '4 + 9 = ?', 'Dễ', '4 + 9 = ?', '14|12|13|15|3', 'multiple_choice', 'BH001CD1L2', 'CL02'),
('BT_68ac8336a2340', '6 + 8 = ?', 'Dễ', '6 + 8 = ?', '14', 'fill_in_the_blank', 'BH001CD1L2', 'CL02'),
('BT_68ac83393365d', '8 × 5 = ?', 'Dễ', '8 × 5 = ?\r\n', '40', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac8358a5715', '8 × 8 = ?', 'Dễ', '8 × 8 = ?\r\n', '64', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac8366d1469', '32 ÷ 8 = ?', 'Dễ', '32 ÷ 8 = ?\r\n', '4', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac8373965bb', '56 ÷ 8 = ?', 'Dễ', '56 ÷ 8 = ?\r\n', '7', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac83847131c', '8 × 9 = ?', 'Dễ', '8 × 9 = ?\r\n', '72', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac838c30dff', '10 + 2 = ?', 'Dễ', '10 + 2 = ?', '9|12|10|11|2', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac8395c2d6a', '8 × 3 = ?', 'Dễ', '8 × 3 = ?\r\n', '24', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac83afe61d7', '48 ÷ 8 = ?', 'Dễ', '48 ÷ 8 = ?\r\n', '6', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac83bd8efdc', '8 × 6 = ?', 'Dễ', '8 × 6 = ?\r\n', '48', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac83bf356d1', '10 + 5 = ?', 'Dễ', '10 + 5 = ?', '6|5|17|15|4', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac83cd0a46e', '80 ÷ 8 = ?', 'Dễ', '80 ÷ 8 = ?\r\n', '10', 'fill_in_the_blank', 'BH002CD1L3', 'CL03'),
('BT_68ac83de1b44b', '10 + 8 = ?', 'Dễ', '10 + 8 = ?', '18', 'fill_in_the_blank', 'BH002CD1L2', 'CL02'),
('BT_68ac83faa0ece', '9 × 2 = ?', 'Dễ', '9 × 2 = ?\r\n', '18', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac83fbaeb8b', '11 + 4 = ?', 'Dễ', '11 + 4 = ?', '15|20|19|15|1', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac840d076e1', '9 × 5 = ?', 'Dễ', '9 × 5 = ?\r\n', '45', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac8421e55e7', '9 × 8 = ?', 'Dễ', '9 × 8 = ?\r\n', '72', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac842ed737b', '12 + 6 = ?', 'Dễ', '12 + 6 = ?', '19|15|17|18|4', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac8442e2cec', 'Góc vuông có số đo là bao nhiêu độ?', 'dễ', 'Góc vuông có số đo là bao nhiêu độ?', '80°|90°|70°|60°|2', 'multiple_choice', 'BH001CD1L4', 'CL04'),
('BT_68ac846a6b5ec', '27 ÷ 9 = ?', 'Dễ', '27 ÷ 9 = ?\r\n', '3', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac86590e457', '54 ÷ 9 = ?', 'Dễ', '54 ÷ 9 = ?\r\n', '6', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac866f78682', '9 × 9 = ?', 'Dễ', '9 × 9 = ?\r\n', '81', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac86706e276', '13 + 7 = ?', 'Trung bình', '13 + 7 = ?', '20', 'fill_in_the_blank', 'BH002CD1L2', 'CL02'),
('BT_68ac868035cf6', '9 × 3 = ?', 'Dễ', '9 × 3 = ?\r\n', '27', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac86922f925', '14 + 5 = ?', 'Trung bình', '14 + 5 = ?', '19|20|18|15|1', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac86b1c6c02', '36 ÷ 9 = ?', 'Dễ', '36 ÷ 9 = ?\r\n', '4', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac86b6e09a8', '15 + 2 = ?', 'Dễ', '15 + 2 = ?', '16|17|18|14|2', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac86c2f3bdc', '9 × 6 = ?', 'Dễ', '9 × 6 = ?\r\n', '54', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac86c66d027', 'Số nào đứng liền sau 6?', 'Dễ', 'Số nào đứng liền sau 6?\r\n', '6|7|8|9|2', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac86cd2d562', '16 + 3 = ?', 'Dễ', '16 + 3 = ?', '19', 'fill_in_the_blank', 'BH002CD1L2', 'CL02'),
('BT_68ac86f7112e7', '90 ÷ 9 = ?', 'Dễ', '90 ÷ 9 = ?\r\n', '10', 'fill_in_the_blank', 'BH003CD1L3', 'CL03'),
('BT_68ac86f8818db', '17 + 2 = ?', 'Dễ', '17 + 2 = ?', '18|20|19|17|3', 'multiple_choice', 'BH002CD1L2', 'CL02'),
('BT_68ac86fc78446', 'Số nào đứng trước 8?', 'Dễ', 'Số nào đứng liền trước 8?\r\n', '8|7|10|11|2', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac872cdfc0c', '? × 6 = 36', 'Trung Bình', '? × 6 = 36\r\n', '6', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac873646b6e', 'Điền số: 6, 7, __, 9', 'Trung Bình', 'Điền số: 6, 7, __, 9\r\n', '8', 'fill_in_the_blank', 'BH002CD1L1', 'CL01'),
('BT_68ac8740877d5', 'Lan có 8 bông hoa, mẹ tặng thêm 5 bông. Lan có bao nhiêu bông hoa?', 'Trung bình', 'Lan có 8 bông hoa, mẹ tặng thêm 5 bông. Lan có bao nhiêu bông hoa?', '13', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac8743553d7', '7 × ? = 42', 'Trung Bình', '7 × ? = 42\r\n', '6', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac87457a278', 'Điền số: __, 7, 8, 9', 'Trung Bình', 'Điền số: __, 7, 8, 9\r\n', '6', 'fill_in_the_blank', 'BH002CD1L1', 'CL01'),
('BT_68ac875fea489', 'Bình có 15 viên bi, Bình cho Nam 6 viên. Bình còn bao nhiêu viên bi?', 'Trung bình', 'Bình có 15 viên bi, Bình cho Nam 6 viên. Bình còn bao nhiêu viên bi?', '9', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac87678d85d', '? ÷ 7 = 8', 'Trung Bình', '? ÷ 7 = 8\r\n', '56', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac876fdcbec', 'Có 10 bông hoa, hái 3 bông còn lại mấy bông?', 'Khó', 'Có 10 bông hoa, hái 3 bông còn lại mấy bông?\r\n', '10|9|8|7|4', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac87d66bc47', 'Có 7 con chim, 4 con bay đi. Hỏi còn lại mấy con chim?', 'Trung bình', 'Có 7 con chim, 4 con bay đi. Hỏi còn lại mấy con chim?', '3', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac87f3407e0', 'Trong giỏ có 12 quả cam, thêm 6 quả nữa. Hỏi có tất cả bao nhiêu quả cam?', 'Trung bình', 'Trong giỏ có 12 quả cam, thêm 6 quả nữa. Hỏi có tất cả bao nhiêu quả cam?', '18', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac88108fca9', '54 ÷ ? = 9', 'Trung Bình', '54 ÷ ? = 9\r\n', '6', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac882a142bc', 'An có 14 cái kẹo, ăn mất 5 cái. An còn lại bao nhiêu cái kẹo?', 'Trung bình', 'An có 14 cái kẹo, ăn mất 5 cái. An còn lại bao nhiêu cái kẹo?', '8|7|9|10|3', 'multiple_choice', 'BH003CD1L2', 'CL02'),
('BT_68ac8848ef014', '? × 9 = 27', 'Trung Bình', '? × 9 = 27\r\n', '3', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac8855a6ea8', 'Có 10 học sinh đang chơi, thêm 8 bạn nữa. Hỏi có tất cả bao nhiêu bạn?', 'Trung bình', 'Có 10 học sinh đang chơi, thêm 8 bạn nữa. Hỏi có tất cả bao nhiêu bạn?', '18', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac8855d9c53', '8 × ? = 64', 'Trung Bình', '8 × ? = 64\r\n', '8', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac888fb3003', '? ÷ 8 = 5', 'Trung Bình', '? ÷ 8 = 5\r\n', '40', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac88a0444b4', '63 ÷ ? = 7', 'Trung Bình', '63 ÷ ? = 7\r\n', '9', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac88e526133', '? × 7 = 21', 'Trung Bình', '? × 7 = 21\r\n', '3', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac88fa913a6', '45 ÷ ? = 5', 'Trung Bình', '45 ÷ ? = 5\r\n', '9', 'fill_in_the_blank', 'BH004CD1L3', 'CL03'),
('BT_68ac8910bcd70', 'Hoa có 16 quả táo, cho bạn 7 quả. Hoa còn bao nhiêu quả táo?', 'Trung bình', 'Hoa có 16 quả táo, cho bạn 7 quả. Hoa còn bao nhiêu quả táo?', '9|8|10|11|1', 'multiple_choice', 'BH003CD1L2', 'CL02'),
('BT_68ac89341edc3', 'Trong hộp có 11 chiếc bút, thêm 4 chiếc nữa. Có tất cả bao nhiêu chiếc bút?', 'Trung bình', 'Trong hộp có 11 chiếc bút, thêm 4 chiếc nữa. Có tất cả bao nhiêu chiếc bút?', '15', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac8934d717d', 'Số nhỏ nhất trong các số 7,9,10,8 là?', 'Trung Bình', 'Số nhỏ nhất trong các số 7,9,10,8 là?\r\n', '7|8|9|10|1', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac895399a7a', 'Sắp xếp theo thứ tự tăng dần: 9,6,8,7', 'Trung Bình', '9|6|8|7', '6|7|8|9', 'drag_and_drop', 'BH002CD1L1', 'CL01'),
('BT_68ac8954c3332', 'Có 20 con vịt, 8 con đi ra ngoài. Còn lại bao nhiêu con vịt?', 'Trung bình', 'Có 20 con vịt, 8 con đi ra ngoài. Còn lại bao nhiêu con vịt?', '12', 'fill_in_the_blank', 'BH003CD1L2', 'CL02'),
('BT_68ac8964a3a18', 'Trong 1 cái bánh chia 4 phần bằng nhau, 1 phần là bao nhiêu?', 'Trung Bình', 'Trong 1 cái bánh chia 4 phần bằng nhau, 1 phần là bao nhiêu?\r\n', '1/4', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac896c347fd', 'Sắp xếp theo thứ tự giảm dần: 10,6,9,7', 'Trung Bình', '10|6|9|7', '10|9|7|6', 'drag_and_drop', 'BH002CD1L1', 'CL01'),
('BT_68ac897bcb2f8', 'Trong ngăn kéo có 13 cái kẹo, mẹ cho thêm 5 cái. Hỏi có bao nhiêu cái kẹo?', 'Trung bình', 'Trong ngăn kéo có 13 cái kẹo, mẹ cho thêm 5 cái. Hỏi có bao nhiêu cái kẹo?', '17|18|19|16|2', 'multiple_choice', 'BH003CD1L2', 'CL02'),
('BT_68ac898599fcb', 'Một đoạn thẳng chia làm 5 phần bằng nhau, 1 phần là ?', 'Trung Bình', 'Một đoạn thẳng chia làm 5 phần bằng nhau, 1 phần là ?\r\n', '1/5', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac89889b778', '6 + 3 = ?', 'Dễ', '6 + 3 = ?\r\n', '6|3|9|10|3', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac899fd9bf5', '10 - 8 = ?', 'Dễ', '10 - 8 = ?\r\n', '10|2|8|7|2', 'multiple_choice', 'BH002CD1L1', 'CL01'),
('BT_68ac89a375979', 'Một chiếc bánh chia làm 10 phần, 1 phần là ?', 'Trung Bình', 'Một chiếc bánh chia làm 10 phần, 1 phần là ?\r\n', '1/10', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac89c729f6e', 'Trong 1 táo chia 2 phần, 1 phần là ?', 'Trung Bình', 'Trong 1 táo chia 2 phần, 1 phần là ?\r\n', '1/2', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac89ddd0efa', 'Một hình vuông chia làm 3 phần bằng nhau, 1 phần là ?', 'Trung Bình', 'Một hình vuông chia làm 3 phần bằng nhau, 1 phần là ?\r\n', '1/3', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac89ea2da60', 'Có 5 quả cam và 3 quả táo. Quả nào nhiều hơn?', 'Trung Bình', 'Có 5 quả cam và 3 quả táo. Quả nào nhiều hơn?\r\n(Nhập Đáp Án Theo Dạng: Quả xx)', 'Quả cam', 'fill_in_the_blank', 'BH003CD1L1', 'CL01'),
('BT_68ac89efda5d7', 'Một thanh kẹo chia làm 8 phần, 1 phần là ?', 'Trung Bình', 'Một thanh kẹo chia làm 8 phần, 1 phần là ?\r\n', '1/8', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac8a090c1c8', '15 – 7 = ?', 'Trung bình', '15 – 7 = ?', '8|7|9|10|1', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8a1b74ef3', 'Có 7 con mèo và 9 con chó. Con nào ít hơn?', 'Trung Bình', 'Có 7 con mèo và 9 con chó. Con nào ít hơn?\r\n', 'Mèo |Chó|Tôm|Cá|1', 'multiple_choice', 'BH003CD1L1', 'CL01'),
('BT_68ac8a1bdccfe', '1/2 cái bánh bằng mấy phần của cái bánh?', 'Trung Bình', '1/2 cái bánh bằng mấy phần của cái bánh?\r\n', '1/2', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac8a3919cd8', '18 – 9 = ?', 'Trung bình', '18 – 9 = ?', '8|10|9|7|3', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8a42c2edc', 'Điền dấu: 4 __ 6', 'Trung Bình', 'Điền dấu: 4 __ 6 ( >, <, =)\r\n', '<', 'fill_in_the_blank', 'BH003CD1L1', 'CL01'),
('BT_68ac8a52e154a', '14 – 8 = ?', 'Trung bình', '14 – 8 = ?', '6', 'fill_in_the_blank', 'BH004CD1L2', 'CL02'),
('BT_68ac8a60191fa', 'Điền dấu: 8 __ 5', 'Trung Bình', 'Điền dấu: 8 __ 5\r\n', '>|<|=|!=|1', 'multiple_choice', 'BH003CD1L1', 'CL01'),
('BT_68ac8a6b32a99', '1/5 cái bánh và 2/5 cái bánh cộng lại là bao nhiêu?', 'Khó', '1/5 cái bánh và 2/5 cái bánh cộng lại là bao nhiêu?\r\n', '3/5', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac8a7db0519', '17 – 6 = ?', 'Trung bình', '17 – 6 = ?', '11|12|13|10|1', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8a7e5e61d', 'Một hình tròn chia làm 6 phần, tô màu 1 phần. Đó là phân số nào?', 'Trung Bình', 'Một hình tròn chia làm 6 phần, tô màu 1 phần. Đó là phân số nào?\r\n', '1/6', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac8aab8ab42', '16 – 9 = ?', 'Trung bình', '16 – 9 = ?', '7|8|6|5|1', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8aaba9fd7', 'Có 6 bút chì và 6 quyển vở. So sánh?', 'Trung Bình', 'Có 6 bút chì và 6 quyển vở. So sánh?\r\n', 'Bút Chì Nhiều Hơn|Vở Nhiều Hơn|Vở Và Bút Chì Bằng Nhau|Vở Ít Hơn Bút Chì|3', 'multiple_choice', 'BH003CD1L1', 'CL01'),
('BT_68ac8aba63555', 'Một hình chữ nhật chia 10 phần, tô màu 4 phần. Đó là phân số nào?', 'Trung Bình', 'Một hình chữ nhật chia 10 phần, tô màu 4 phần. Đó là phân số nào?\r\n', '4/10', 'fill_in_the_blank', 'BH005CD1L3', 'CL03'),
('BT_68ac8ad8b9661', '19 – 8 = ?', 'Trung bình', '19 – 8 = ?', '11', 'fill_in_the_blank', 'BH004CD1L2', 'CL02'),
('BT_68ac8add23c6f', 'Loại quả nào có số lượng nhiều hơn: 10 quả xoài và 7 quả cam?', 'Trung Bình', 'Loại quả nào có số lượng nhiều hơn: 10 quả xoài và 7 quả cam?', 'Xoài|Cam|Bằng Nhau|Cam Nhiều Hơn|1', 'multiple_choice', 'BH003CD1L1', 'CL01'),
('BT_68ac8b1725f22', 'Sắp xếp theo số lượng tăng dần: 5,9,7,1,12', 'Khó', '5|9|7|1|12\r\n', '1|5|7|9|12', 'drag_and_drop', 'BH003CD1L1', 'CL01'),
('BT_68ac8b275371a', '13 – 7 = ?', 'Dễ', '13 – 7 = ?', '7|6|8|5|2', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8b7a67d51', '20 – 9 = ?', 'Trung bình', '20 – 9 = ?', '11', 'fill_in_the_blank', 'BH004CD1L2', 'CL02'),
('BT_68ac8b9fbd064', '18 – 7 = ?', 'Dễ', '18 – 7 = ?', '11|12|17|18|1', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8bd022f0c', '12 – 5 = ?', 'Dễ', '12 – 5 = ?', '7|11|12|5|1', 'multiple_choice', 'BH004CD1L2', 'CL02'),
('BT_68ac8c1692ac5', '12 – 2 = ?', 'Dễ', '12 – 2 = ?', '10|2|11|8|1', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8c30a586b', 'Đơn vị đo góc thường dùng trong toán học là gì?', 'dễ', 'Đơn vị đo góc thường dùng trong toán học là gì?', 'cm|mét|Độ|g|3', 'multiple_choice', 'BH001CD1L4', 'CL04'),
('BT_68ac8c32327ee', '15 – 5 = ?', 'Dễ', '15 – 5 = ?', '10', 'fill_in_the_blank', 'BH005CD1L2', 'CL02'),
('BT_68ac8c4f9f78d', 'Trên đoạn thẳng AB, ngoài B là đầu mút thì đâu là đầu mút còn lại?', 'Trung Bình', 'Trên đoạn thẳng AB, ngoài B là đầu mút thì đâu là đầu mút còn lại?\r\n', 'M|C|A|V|3', 'multiple_choice', 'BH006CD2L3', 'CL03'),
('BT_68ac8c5688d5f', '18 – 8 = ?', 'Dễ', '18 – 8 = ?', '10|9|11|8|1', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8c716aaf9', 'Nếu M là trung điểm của AB, thì AM = ?', 'Trung Bình', 'Nếu M là trung điểm của AB, thì AM = ?\r\n', 'MB', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8c8273788', '20 – 10 = ?', 'Dễ', '20 – 10 = ?', '10|11|6|7|1', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8c8f53f01', 'Sắp xếp theo số lượng giảm dần: 8,6,10,3,20,18,19', 'Khó', '8|6|10|3|20|18|19', '3|6|8|10|18|19|20', 'drag_and_drop', 'BH003CD1L1', 'CL01'),
('BT_68ac8c94f1b30', '11 – 1 = ?', 'Dễ', '11 – 1 = ?', '10', 'fill_in_the_blank', 'BH005CD1L2', 'CL02'),
('BT_68ac8cab37f7b', '3 __ 3', 'Dễ', '3 __ 3\r\n', '>|<|=|!=|3', 'multiple_choice', 'BH003CD1L1', 'CL01'),
('BT_68ac8cb17578d', '14 – 4 = ?', 'Dễ', '14 – 4 = ?', '4|14|10|11|3', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8ccbdb63f', '9 __ 10', 'Dễ', '9 __ 10\r\n', '<|>|=|!=|1', 'multiple_choice', 'BH003CD1L1', 'CL01'),
('BT_68ac8ccfbb485', '19 – 9 = ?', 'Dễ', '19 – 9 = ?', '9|19|11|10|4', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8ce58b443', 'Một vòng tròn có số đo là ……… độ.', 'dễ', 'Một vòng tròn có số đo là ……… độ.', '180|360|120|90|2', 'multiple_choice', 'BH001CD1L4', 'CL04'),
('BT_68ac8cf3aa92f', '13 – 3 = ?', 'Dễ', '13 – 3 = ?', '14|13|10|11|3', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8cf7eb2c1', 'Trên đoạn thẳng PQ, M nằm giữa P và Q. Khi đó PM + MQ = ?', 'Trung Bình', 'Trên đoạn thẳng PQ, M nằm giữa P và Q. Khi đó PM + MQ = ?\r\n', 'MP|PQ|PM|QP|2', 'multiple_choice', 'BH006CD2L3', 'CL03'),
('BT_68ac8d12c39d3', '17 – 7 = ?', 'Dễ', '17 – 7 = ?', '10|16|11|14|1', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8d21dd71e', 'Trên đoạn thẳng 8 cm, điểm M là trung điểm. Độ dài AM bằng bao nhiêu?', 'Trung Bình', 'Trên đoạn thẳng 8 cm, điểm M là trung điểm. Độ dài AM bằng bao nhiêu?\r\n', '4 cm', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8d406a49e', '16 – 6 = ?', 'Dễ', '16 – 6 = ?', '6|10|16|7|2', 'multiple_choice', 'BH005CD1L2', 'CL02'),
('BT_68ac8d61eea0e', 'Trên đoạn thẳng 10 cm, điểm M là trung điểm. MB = ?', 'Trung Bình', 'Trên đoạn thẳng 10 cm, điểm M là trung điểm. MB = ?\r\n', '5 cm|6 cm|7 cm|8 cm|1', 'multiple_choice', 'BH006CD2L3', 'CL03'),
('BT_68ac8d6c081d0', 'Nam có 12 quả bóng, An có ít hơn Nam 3 quả. Hỏi An có bao nhiêu quả bóng?', 'Trung bình', 'Nam có 12 quả bóng, An có ít hơn Nam 3 quả. Hỏi An có bao nhiêu quả bóng?', '9', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8d808e6ca', 'M nằm giữa A và B. Nếu AM = 3 cm, MB = 5 cm, thì AB = ?', 'Trung Bình', 'M nằm giữa A và B. Nếu AM = 3 cm, MB = 5 cm, thì AB = ?\r\n', '8 cm', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8d9d06bb9', 'Nếu M là trung điểm của AB, thì AM so với MB thế nào?', 'Trung Bình', 'Nếu M là trung điểm của AB, thì AM so với MB thế nào?\r\n', 'AM = MB\r\n', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8dc1035b2', 'Trên đoạn thẳng 6 cm, điểm M là trung điểm. AM dài bao nhiêu?', 'Trung Bình', 'Trên đoạn thẳng 6 cm, điểm M là trung điểm. AM dài bao nhiêu?\r\n', '3 cm', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8dc13566c', 'Hoa có 15 bông hoa, Lan có nhiều hơn Hoa 4 bông. Lan có bao nhiêu bông hoa?', 'Trung bình', 'Hoa có 15 bông hoa, Lan có nhiều hơn Hoa 4 bông. Lan có bao nhiêu bông hoa?', '19', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8dddf33b3', 'Góc nhọn có số đo:', 'dễ', 'Góc nhọn có số đo:', 'Lớn hơn 120°|Bé hơn 120°|Lớn hơn 90°|Bé hơn 90°|4', 'multiple_choice', 'BH001CD1L4', 'CL04'),
('BT_68ac8de8b2cb4', 'Có 8 con mèo, chó nhiều hơn mèo 6 con. Hỏi có bao nhiêu con chó?', 'Trung bình', 'Có 8 con mèo, chó nhiều hơn mèo 6 con. Hỏi có bao nhiêu con chó?', '14', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8e0b99346', 'Trong lớp có 20 học sinh nam, số học sinh nữ ít hơn nam 5 em. Có bao nhiêu học sinh nữ?', 'Trung bình', 'Trong lớp có 20 học sinh nam, số học sinh nữ ít hơn nam 5 em. Có bao nhiêu học sinh nữ?', '15', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8e13e8816', 'Điểm nào chia đoạn thẳng thành hai đoạn bằng nhau?', 'Trung Bình', 'Điểm nào chia đoạn thẳng thành hai đoạn bằng nhau?\r\n', 'Trung điểm', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8e2d3f12b', 'Nếu M nằm giữa A và B, AM = 4 cm, AB = 9 cm. Vậy MB = ?', 'Khó', 'Nếu M nằm giữa A và B, AM = 4 cm, AB = 9 cm. Vậy MB = ?\r\n', '5 cm', 'fill_in_the_blank', 'BH006CD2L3', 'CL03'),
('BT_68ac8e35c9063', 'Lan có 17 cái kẹo, Mai có ít hơn Lan 8 cái. Mai có bao nhiêu cái kẹo?', 'Trung bình', 'Lan có 17 cái kẹo, Mai có ít hơn Lan 8 cái. Mai có bao nhiêu cái kẹo?', '9|10|7|8|1', 'multiple_choice', 'BH006CD1L2', 'CL02'),
('BT_68ac8e8416742', 'Một cửa hàng bán 16 cái bút xanh, số bút đỏ nhiều hơn bút xanh 7 cái. Có bao nhiêu bút đỏ?', 'Trung bình', 'Một cửa hàng bán 16 cái bút xanh, số bút đỏ nhiều hơn bút xanh 7 cái. Có bao nhiêu bút đỏ?', '23', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8eaf61ee3', 'Trong vườn có 18 cây cam, cây chanh ít hơn cây cam 6 cây. Có bao nhiêu cây chanh?', 'Trung bình', 'Trong vườn có 18 cây cam, cây chanh ít hơn cây cam 6 cây. Có bao nhiêu cây chanh?', '11|12|22|11|2', 'multiple_choice', 'BH006CD1L2', 'CL02'),
('BT_68ac8ecc9a9e2', 'Bình có 14 quyển sách, Hùng có nhiều hơn Bình 5 quyển. Hùng có bao nhiêu quyển?', 'Trung bình', 'Bình có 14 quyển sách, Hùng có nhiều hơn Bình 5 quyển. Hùng có bao nhiêu quyển?', '19', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8ef7bf90c', 'Lan có 11 con búp bê, Hồng có ít hơn Lan 4 con. Hồng có bao nhiêu con?', 'Trung bình', 'Lan có 11 con búp bê, Hồng có ít hơn Lan 4 con. Hồng có bao nhiêu con?', '7|5|6|8|1', 'multiple_choice', 'BH006CD1L2', 'CL02'),
('BT_68ac8f2917c1c', 'Có 10 con chim trên cành, số chim sẻ nhiều hơn số chim sáo 2 con. Nếu chim sáo có 4 con, chim sẻ có bao nhiêu con?', 'Trung bình', 'Có 10 con chim trên cành, số chim sẻ nhiều hơn số chim sáo 2 con. Nếu chim sáo có 4 con, chim sẻ có bao nhiêu con?', '6', 'fill_in_the_blank', 'BH006CD1L2', 'CL02'),
('BT_68ac8fb7d3a30', '1kg + 2kg = ?', 'Dễ', '1kg + 2kg = ?', '5kg|4kg|3kg|2kg|3', 'multiple_choice', 'BH008CD2L2', 'CL02'),
('BT_68ac8fba598c0', 'Hình tròn có mấy tâm?', 'Dễ', 'Hình tròn có mấy tâm?\r\n', '1 tâm|2 tâm|3 tâm|4 tâm|1', 'multiple_choice', 'BH007CD2L3', 'CL03'),
('BT_68ac8fc3ae3a2', 'Nửa vòng tròn có số đo ……… độ.', 'Trung bình', 'Nửa vòng tròn có số đo ……… độ.', '180', 'fill_in_the_blank', 'BH001CD1L4', 'CL04'),
('BT_68ac8fd3ecc87', 'Tâm nằm ở đâu trong hình tròn?', 'Dễ', 'Tâm nằm ở đâu trong hình tròn?\r\n', 'Ở giữa', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac8fe1434a1', '5kg – 3kg = ?', 'Dễ', '5kg – 3kg = ?', '2kg', 'fill_in_the_blank', 'BH008CD2L2', 'CL02'),
('BT_68ac90098be8b', 'Đường thẳng đi qua tâm và nối hai điểm trên hình tròn gọi là gì?', 'Trung Bình', 'Đường thẳng đi qua tâm và nối hai điểm trên hình tròn gọi là gì?\r\n', 'Đường kính\r\n', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac9012ccc07', '4kg + 6kg = ?', 'Dễ', '4kg + 6kg = ?', '10kg|7kg|8kg|9kg|1', 'multiple_choice', 'BH008CD2L2', 'CL02'),
('BT_68ac90238979c', 'Đường thẳng nối tâm với một điểm trên đường tròn gọi là gì?', 'Trung Bình', 'Đường thẳng nối tâm với một điểm trên đường tròn gọi là gì?\r\n', 'Bán kính', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac9031a4138', '9kg – 7kg = ?', 'Dễ', '9kg – 7kg = ?', '2kg', 'fill_in_the_blank', 'BH008CD2L2', 'CL02'),
('BT_68ac90507e8cc', 'Một hình tròn có mấy bán kính?', 'Trung Bình', 'Một hình tròn có mấy bán kính?\r\n', 'một|hai|ba|nhiều bán kính|4', 'multiple_choice', 'BH007CD2L3', 'CL03'),
('BT_68ac905738046', 'Một con gà 2kg, một con vịt 3kg. Hỏi cả hai con nặng bao nhiêu kg?', 'Dễ', 'Một con gà 2kg, một con vịt 3kg. Hỏi cả hai con nặng bao nhiêu kg?', '6kg|8kg|5kh|2kh|3', 'multiple_choice', 'BH008CD2L2', 'CL02'),
('BT_68ac906e08c91', 'Đường kính dài gấp mấy lần bán kính?', 'Trung Bình', 'Đường kính dài gấp mấy lần bán kính?\r\n', '2 lần', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac9073dbb78', 'Dụng cụ nào dùng để đo góc?', 'Trung bình', 'Dụng cụ nào dùng để đo góc?', 'Compa|Thước đo góc|Thước kẻ|Cây bút|2', 'multiple_choice', 'BH001CD1L4', 'CL04'),
('BT_68ac908571b0a', '7kg + 8kg = ?', 'Dễ', '7kg + 8kg = ?', '15kg|12kg|10kg|17kg|1', 'multiple_choice', 'BH008CD2L2', 'CL02'),
('BT_68ac908a0bd08', 'Điểm nằm chính giữa hình tròn gọi là gì?', 'Dễ', 'Điểm nằm chính giữa hình tròn gọi là gì?\r\n', 'tâm', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac909ea2217', '1 góc vuông = ……… độ.', 'Trung bình', '1 góc vuông = ……… độ.\r\n', '90', 'fill_in_the_blank', 'BH001CD1L4', 'CL04'),
('BT_68ac90ab391a9', '12kg – 5kg = ?', 'Dễ', '12kg – 5kg = ?', '7kg', 'fill_in_the_blank', 'BH008CD2L2', 'CL02'),
('BT_68ac90c2ef299', 'Hình tròn có mấy đường kính?', 'Trung Bình', 'Hình tròn có mấy đường kính?\r\n', 'một|hai|ba |nhiều đường kính|4', 'multiple_choice', 'BH007CD2L3', 'CL03'),
('BT_68ac90d069ff0', '10kg + 9kg = ?', 'Dễ', '10kg + 9kg = ?', '19kg|20kg|9kg|10kg|1', 'multiple_choice', 'BH008CD2L2', 'CL02'),
('BT_68ac90e143949', 'Bán kính nối từ đâu đến đâu?', 'Khó', 'Bán kính nối từ đâu đến đâu?\r\n', 'Từ tâm đến đường tròn\r\n', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac90e49236d', 'Góc bẹt có số đo là bao nhiêu độ?', 'Trung bình', 'Góc bẹt có số đo là bao nhiêu độ?', '180°|120°|90°|360°|1', 'multiple_choice', 'BH001CD1L4', 'CL04'),
('BT_68ac90f0bb31d', '14kg – 6kg = ?', 'Dễ', '14kg – 6kg = ?', '8kg', 'fill_in_the_blank', 'BH008CD2L2', 'CL02'),
('BT_68ac9101ac450', 'Đường kính nối từ đâu đến đâu?', 'Khó', 'Đường kính nối từ đâu đến đâu?\r\n', 'Qua tâm nối 2 điểm trên đường tròn\r\n', 'fill_in_the_blank', 'BH007CD2L3', 'CL03'),
('BT_68ac91216b86b', 'Một bao gạo 20kg, đã dùng 11kg. Còn lại bao nhiêu?', 'Trung bình', 'Một bao gạo 20kg, đã dùng 11kg. Còn lại bao nhiêu?', '9kg|11kg|10kg|18kg|1', 'multiple_choice', 'BH008CD2L2', 'CL02'),
('BT_68ac9141ceb8a', 'Sắp xếp: ¼ vòng tròn, ½ vòng tròn, 1 vòng tròn', 'Trung bình', '¼ → 1 vòng tròn → ½ ', '¼ → ½ → 1 vòng tròn\r\n', 'drag_and_drop', 'BH001CD1L4', 'CL04'),
('BT_68ac91729896a', '2l + 3l = ?', 'Dễ', '2l + 3l = ?', '4l|6l|5l|2l|3', 'multiple_choice', 'BH009CD2L2', 'CL02'),
('BT_68ac918113001', 'Sắp xếp: 30°, 90°, 180°', 'Trung bình', '180° → 30° → 90°\r\n', '30° → 90° → 180°\r\n', 'drag_and_drop', 'BH001CD1L4', 'CL04'),
('BT_68ac918f1a3e2', '6l – 4l = ?', 'Dễ', '6l – 4l = ?', '2l', 'fill_in_the_blank', 'BH009CD2L2', 'CL02'),
('BT_68ac91b3a5f36', '5l + 7l = ?', 'Dễ', '5l + 7l = ?', '11l|13l|14l|12l|4', 'multiple_choice', 'BH009CD2L2', 'CL02'),
('BT_68ac91e72ea67', '10l – 8l = ?', 'Dễ', '10l – 8l = ?', '2l', 'fill_in_the_blank', 'BH009CD2L2', 'CL02'),
('BT_68ac91f561461', 'Góc có 2 cạnh và 1 …?', 'Dễ', 'Góc có 2 cạnh và 1 …?\r\n', 'đỉnh', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac920c1b15a', 'Góc vuông có hình dạng giống gì?', 'Dễ', 'Góc vuông có hình dạng giống gì?\r\n', 'L', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac920e30952', 'Một can 8l, rót ra 3l. Còn lại bao nhiêu lít?', 'Trung bình', 'Một can 8l, rót ra 3l. Còn lại bao nhiêu lít?', '6l|7l|5l|4l|3', 'multiple_choice', 'BH009CD2L2', 'CL02'),
('BT_68ac922babd8b', 'Thước eke dùng để kiểm tra gì?', 'Trung Bình', 'Thước eke dùng để kiểm tra gì?\r\n', 'góc vuông', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac922cf3d35', 'Góc nào nhỏ hơn góc vuông?', 'dễ', 'Góc nào nhỏ hơn góc vuông?', 'Góc nhọn|Góc 90 độ|Góc bẹt|Góc tù|1', 'multiple_choice', 'BH002CD1L4', 'CL04'),
('BT_68ac92498cb71', 'Góc nhỏ hơn góc vuông gọi là gì?', 'Dễ', 'Góc nhỏ hơn góc vuông gọi là gì?\r\n', 'góc nhọn', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac925d0a023', '9l + 6l = ?', 'Dễ', '9l + 6l = ?', '16l|15l|19l|20l|2', 'multiple_choice', 'BH009CD2L2', 'CL02'),
('BT_68ac925dcb3fb', 'Góc lớn hơn góc vuông gọi là gì?', 'Trung Bình', 'Góc lớn hơn góc vuông gọi là gì?\r\n', 'góc tù', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac927913811', 'Góc tù lớn hơn 90° và nhỏ hơn ……… độ.', 'dễ', 'Góc tù lớn hơn 90° và nhỏ hơn ……… độ.\r\n', '180', 'fill_in_the_blank', 'BH002CD1L4', 'CL04'),
('BT_68ac927edd11d', '14l – 9l = ?', 'Dễ', '14l – 9l = ?', '5l', 'fill_in_the_blank', 'BH009CD2L2', 'CL02'),
('BT_68ac9284df297', 'Góc vuông có bao nhiêu độ?', 'Dễ', 'Góc vuông có bao nhiêu độ?\r\n', '90 độ|70 độ|20 độ|120 độ|1', 'multiple_choice', 'BH008CD2L3', 'CL03'),
('BT_68ac929ce87a2', 'Góc nhọn có số đo thế nào so với 90 độ?', 'Dễ', 'Góc nhọn có số đo thế nào so với 90 độ?\r\n', 'nhỏ hơn', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac929fb016a', '7l + 11l = ?', 'Dễ', '7l + 11l = ?', '18l|17l|16l|19l|1', 'multiple_choice', 'BH009CD2L2', 'CL02'),
('BT_68ac92ac66328', 'Góc bẹt có số đo là:', 'dễ', 'Góc bẹt có số đo là:', '180°|120°|90°|60°|1', 'multiple_choice', 'BH002CD1L4', 'CL04'),
('BT_68ac92ac8b69c', 'Góc tù có số đo thế nào so với 90 độ?', 'Dễ', 'Góc tù có số đo thế nào so với 90 độ?\r\n', 'lớn hơn', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac92bbcf005', '20l – 15l = ?', 'Trung bình', '20l – 15l = ?', '5l', 'fill_in_the_blank', 'BH009CD2L2', 'CL02'),
('BT_68ac92d46fdf7', 'Góc vuông có mấy cạnh bằng nhau?', 'Khó', 'Góc vuông có mấy cạnh bằng nhau?', '2 cạnh vuông góc\r\n', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac92e2153c7', 'Bình A 12l, bình B 8l. Hỏi cả hai bình có bao nhiêu lít?', 'Trung bình', 'Bình A 12l, bình B 8l. Hỏi cả hai bình có bao nhiêu lít?', '21l|22l|20l|18l|3', 'multiple_choice', 'BH009CD2L2', 'CL02'),
('BT_68ac92f119c1e', 'Số nào lớn hơn: 4 hay 2?', 'Dễ', 'Số nào lớn hơn: 4 hay 2?\r\n', '4|2|Bằng Nhau|-|1', 'multiple_choice', 'BH004CD1L1', 'CL01'),
('BT_68ac93150f9d2', 'Góc nào lớn hơn góc vuông nhưng nhỏ hơn góc bẹt?', 'Trung bình', 'Góc nào lớn hơn góc vuông nhưng nhỏ hơn góc bẹt?', 'Góc tù|Góc nhọn|Góc bẹt|Cả A và B|1', 'multiple_choice', 'BH002CD1L4', 'CL04'),
('BT_68ac9317b8ac3', 'Số nào nhỏ hơn: 9 hay 7?', 'Dễ', 'Số nào nhỏ hơn: 9 hay 7?\r\n', '7|9|Bằng Nhau|-|1', 'multiple_choice', 'BH004CD1L1', 'CL01'),
('BT_68ac931faf676', 'Dùng thước eke đặt vừa khít thì đó là góc gì?', 'Dễ', 'Dùng thước eke đặt vừa khít thì đó là góc gì?', 'góc vuông', 'fill_in_the_blank', 'BH008CD2L3', 'CL03'),
('BT_68ac93201ec46', 'Quả bí 4kg, quả dưa 6kg. Hỏi cả hai nặng bao nhiêu?', 'Trung bình', 'Quả bí 4kg, quả dưa 6kg. Hỏi cả hai nặng bao nhiêu?', '10|12|14|16|1', 'multiple_choice', 'BH010CD2L2', 'CL02'),
('BT_68ac9330ec57a', 'Điền dấu: 5 __ 8', 'Trung Bình', 'Điền dấu: 5 __ 8\r\n', '<|>|=|<>|1', 'multiple_choice', 'BH004CD1L1', 'CL01'),
('BT_68ac9339974d4', 'Bình 1 có 5l sữa, bình 2 có 7l sữa. Hỏi cả hai có bao nhiêu lít?', 'Trung bình', 'Bình 1 có 5l sữa, bình 2 có 7l sữa. Hỏi cả hai có bao nhiêu lít?', '12l', 'fill_in_the_blank', 'BH010CD2L2', 'CL02'),
('BT_68ac934db8c42', 'Điền dấu: 10 __ 6', 'Trung Bình', 'Điền dấu: 10 __ 6\r\n', '<|>|=|<>|2', 'multiple_choice', 'BH004CD1L1', 'CL01'),
('BT_68ac935753e2a', 'Sắp xếp: Góc nhọn, Góc vuông, Góc tù, Góc bẹt', 'Trung bình', 'Vuông → Nhọn → Bẹt → Tù\r\n', 'Nhọn → Vuông → Tù → Bẹt\r\n', 'drag_and_drop', 'BH002CD1L4', 'CL04'),
('BT_68ac936482238', 'Mẹ mua 12kg gạo, đã dùng 5kg. Còn lại bao nhiêu kg?', 'Trung bình', 'Mẹ mua 12kg gạo, đã dùng 5kg. Còn lại bao nhiêu kg?', '6|7|5|17|2', 'multiple_choice', 'BH010CD2L2', 'CL02'),
('BT_68ac937822e90', 'Góc nhọn có số đo bé hơn ……… độ.', 'dễ', 'Góc nhọn có số đo bé hơn ……… độ.\r\n', '90', 'fill_in_the_blank', 'BH002CD1L4', 'CL04'),
('BT_68ac937b1f730', 'Điền dấu: 3 __ 3', 'Dễ', 'Điền dấu: 3 __ 3\r\n', '=', 'fill_in_the_blank', 'BH004CD1L1', 'CL01'),
('BT_68ac93929c240', 'Sắp xếp theo thứ tự tăng dần: 2,9,5,7', 'Trung Bình', '2|9|5|7', '2|5|7|9', 'drag_and_drop', 'BH004CD1L1', 'CL01'),
('BT_68ac9397cad38', 'Thùng dầu có 20l, rót đi 8l. Còn lại bao nhiêu lít?', 'Trung bình', 'Thùng dầu có 20l, rót đi 8l. Còn lại bao nhiêu lít?', '2l', 'fill_in_the_blank', 'BH010CD2L2', 'CL02'),
('BT_68ac93a5ae900', 'Góc 60° thuộc loại góc nào?', 'Trung bình', 'Góc 60° thuộc loại góc nào?', 'Góc tù|Góc nhọn|Góc bẹt|Góc vuông|2', 'multiple_choice', 'BH002CD1L4', 'CL04'),
('BT_68ac93b0ac52d', 'Sắp xếp theo thứ tự giảm dần: 6,1,8,4', 'Trung Bình', '6|1|8|4', '8|6|4|1', 'drag_and_drop', 'BH004CD1L1', 'CL01'),
('BT_68ac93c04654b', 'Một bao đường 10kg, thêm bao nữa 5kg. Cả hai bao nặng bao nhiêu?', 'Trung bình', 'Một bao đường 10kg, thêm bao nữa 5kg. Cả hai bao nặng bao nhiêu?', '15kg|12kg|14kg|20kg|1', 'multiple_choice', 'BH010CD2L2', 'CL02'),
('BT_68ac93cfa14cf', 'Số lớn nhất trong các số 2,7,9,5 là?', 'Trung Bình', 'Số lớn nhất trong các số 2,7,9,5 là?\r\n', '2|5|7|9|4', 'multiple_choice', 'BH004CD1L1', 'CL01'),
('BT_68ac93d125b59', 'Góc 150° là góc:', 'Trung bình', 'Góc 150° là góc:', 'Góc tù|Góc nhọn|Góc bẹt|Góc vuông|1', 'multiple_choice', 'BH002CD1L4', 'CL04'),
('BT_68ac93d9597cb', 'Giỏ xoài 18kg, ăn bớt 9kg. Còn lại bao nhiêu?', 'Trung bình', 'Giỏ xoài 18kg, ăn bớt 9kg. Còn lại bao nhiêu?', '9kg', 'fill_in_the_blank', 'BH010CD2L2', 'CL02'),
('BT_68ac93e711561', 'Số nhỏ nhất trong các số 6,4,3,8 là?', 'Trung Bình', 'Số nhỏ nhất trong các số 6,4,3,8 là?\r\n', '6|4|3|8|3', 'multiple_choice', 'BH004CD1L1', 'CL01'),
('BT_68ac93ecf074f', 'Góc 90° được gọi là góc ………', 'dễ', 'Góc 90° được gọi là góc ………', 'vuông', 'fill_in_the_blank', 'BH002CD1L4', 'CL04'),
('BT_68ac93f46b856', 'Điền dấu: 7 __ 7', 'Dễ', 'Điền dấu: 7 __ 7\r\n', '=', 'fill_in_the_blank', 'BH004CD1L1', 'CL01'),
('BT_68ac94031f985', 'Một thùng nước 25l, rót ra 10l. Còn lại bao nhiêu lít?', 'Trung bình', 'Một thùng nước 25l, rót ra 10l. Còn lại bao nhiêu lít?', '35l|20l|15l|14l|3', 'multiple_choice', 'BH010CD2L2', 'CL02'),
('BT_68ac9421ab36f', 'Điền Vào Chỗ Trống : 5 = __ + 2', 'Dễ', 'Điền: 5 = __ + 2\r\n', '3', 'fill_in_the_blank', 'BH005CD1L1', 'CL01'),
('BT_68ac9433d6b7f', 'Hai túi cam, túi A 8kg, túi B 7kg. Hỏi cả hai túi nặng bao nhiêu?', 'Trung bình', 'Hai túi cam, túi A 8kg, túi B 7kg. Hỏi cả hai túi nặng bao nhiêu?', '15kg', 'fill_in_the_blank', 'BH010CD2L2', 'CL02'),
('BT_68ac9436202de', 'Điền Vào Chỗ Trống: 6 = 1 + __', 'Dễ', 'Điền Vào Chỗ Trống: 6 = 1 + __', '5', 'fill_in_the_blank', 'BH005CD1L1', 'CL01'),
('BT_68ac945a40af5', 'Một bồn nước chứa 30l, đã lấy đi 12l. Còn lại bao nhiêu?', 'Trung bình', 'Một bồn nước chứa 30l, đã lấy đi 12l. Còn lại bao nhiêu?', '28|18|8|42|2', 'multiple_choice', 'BH010CD2L2', 'CL02'),
('BT_68ac94740f86e', 'Điền Vào Chỗ Trống : 7 = __ + 4', 'Dễ', 'Điền Vào Chỗ Trống : 7 = __ + 4\r\n', '3', 'fill_in_the_blank', 'BH005CD1L1', 'CL01'),
('BT_68ac94756ec16', 'Sắp xếp: 75°, 120°, 180°', 'Trung bình', ' 120° | 180° | 75° ', '75° | 120° | 180°', 'drag_and_drop', 'BH002CD1L4', 'CL04'),
('BT_68ac94851bd4a', 'Cửa hàng nhập 40kg gạo, bán 25kg. Còn lại bao nhiêu?', 'Trung bình', 'Cửa hàng nhập 40kg gạo, bán 25kg. Còn lại bao nhiêu?', '15kg', 'fill_in_the_blank', 'BH010CD2L2', 'CL02'),
('BT_68ac948706c5b', 'Hình tam giác có mấy cạnh?', 'Dễ', 'Hình tam giác có mấy cạnh?\r\n', '3 cạnh|2 cạnh|1 cạnh|1 cạnh|1', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac94a40d783', 'Điền Vào Chỗ Trống:  8 = __ + 6', 'Dễ', 'Điền Vào Chỗ Trống: 8 = __ + 6\r\n', '2', 'fill_in_the_blank', 'BH005CD1L1', 'CL01'),
('BT_68ac94be6f1b5', 'Viết số thập phân cho số 3 đơn vị và 4 phần mười.', 'Dễ', 'Viết số thập phân cho số 3 đơn vị và 4 phần mười.___?', '3,4', 'fill_in_the_blank', 'BH001CD1L5', 'CL05'),
('BT_68ac94c814c22', 'Điền Vào Chỗ Trống: 9 = 3 + __', 'Dễ', 'Điền Vào Chỗ Trống: 9 = 3 + __\r\n', '6', 'fill_in_the_blank', 'BH005CD1L1', 'CL01'),
('BT_68ac94c986a88', 'Hình tứ giác có mấy cạnh?', 'Dễ', 'Hình tứ giác có mấy cạnh?\r\n', '1 cạnh|2 cạnh|3 cạnh|4 cạnh|4', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac94d1c207e', 'Sắp xếp: Góc nhọn, Góc vuông, Góc tù, Góc bẹt', 'Trung bình', 'Bẹt | Vuông | Nhọn | Tù', 'Nhọn | Vuông | Tù | Bẹt', 'drag_and_drop', 'BH002CD1L4', 'CL04'),
('BT_68ac94e83a134', '27 + 8 = ?', 'Trung bình', '27 + 8 = ?', '19|35|38|37|2', 'multiple_choice', 'BH011CD3L2', 'CL02'),
('BT_68ac94efb1ff4', 'Hình chữ nhật có mấy góc vuông?', 'Dễ', 'Hình chữ nhật có mấy góc vuông?\r\n', '4 góc vuông|5 góc vuông|6 góc vuông|7 góc vuông|1', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac94fd891af', '46 + 7 = ?', 'Trung bình', '46 + 7 = ?', '53', 'fill_in_the_blank', 'BH011CD3L2', 'CL02'),
('BT_68ac9515efa46', 'Hình vuông có mấy cạnh bằng nhau?', 'Dễ', 'Hình vuông có mấy cạnh bằng nhau?\r\n', '4 cạnh bằng nhau|3 cạnh bằng nhau|2 cạnh bằng nhau|1 cạnh bằng nhau|1', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac9517981c8', 'Cặp nào sau đây cộng lại tạo thành 10?', 'Trung Bình', 'Cặp nào sau đây cộng lại tạo thành 10?', '6 và 4|2 và 7|5 và 4|9 và 2|1', 'multiple_choice', 'BH005CD1L1', 'CL01'),
('BT_68ac953038412', '58 + 6 = ?', 'Trung bình', '58 + 6 = ?', '66|52|64|56|3', 'multiple_choice', 'BH011CD3L2', 'CL02'),
('BT_68ac954ad2842', '39 + 5 = ?', 'Trung bình', '39 + 5 = ?', '44', 'fill_in_the_blank', 'BH011CD3L2', 'CL02'),
('BT_68ac954ce2d0d', 'Hình chữ nhật có các cạnh đối diện thế nào?', 'Trung Bình', 'Hình chữ nhật có các cạnh đối diện thế nào?\r\n', 'song song và bằng nhau\r\n', 'fill_in_the_blank', 'BH009CD2L3', 'CL03'),
('BT_68ac9573c6d7e', '64 + 8 = ?', 'Trung bình', '64 + 8 = ?', '72|78|73|68|1', 'multiple_choice', 'BH011CD3L2', 'CL02'),
('BT_68ac9574dabfe', 'Cặp nào tạo sau đây cộng lại tạo thành 7? ', 'Trung Bình', 'Cặp nào tạo sau đây cộng lại tạo thành 7? ', '1 và 3|4 và 3|5 và 3|2 và 3|2', 'multiple_choice', 'BH005CD1L3', 'CL01'),
('BT_68ac957d0829b', 'Hình vuông là hình chữ nhật đặc biệt đúng hay sai?', 'Dễ', 'Hình vuông là hình chữ nhật đặc biệt đúng hay sai?\r\n', 'đúng', 'fill_in_the_blank', 'BH009CD2L3', 'CL03'),
('BT_68ac95a4d9b74', 'Một tam giác có mấy góc?', 'Dễ', 'Một tam giác có mấy góc?\r\n', '1 góc|2 góc|4 góc|3 góc|4', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac95c50986a', 'Một tứ giác có mấy đỉnh?', 'Dễ', 'Một tứ giác có mấy đỉnh?\r\n', '4 đỉnh|3 đỉnh|2 đỉnh|1 đỉnh|1', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac95c9d8505', '75 + 6 = ?', 'Trung bình', '75 + 6 = ?', '81|76|69|67|1', 'multiple_choice', 'BH011CD3L2', 'CL02'),
('BT_68ac95deb10b7', '28 + 7 = ?', 'Trung bình', '28 + 7 = ?', '35', 'fill_in_the_blank', 'BH011CD3L2', 'CL02'),
('BT_68ac95ef11691', 'Sắp xếp theo tổng tăng dần: (1 và 4), (2 và 9), (3 và 3)', 'Khó', '(2 và 9)| (3 và 1)| (3 và 3)\r\n\r\n', '(3 và 1)| (3 và 3)| (2 và 9)\r\n', 'drag_and_drop', 'BH005CD1L1', 'CL01'),
('BT_68ac95ef36273', 'Số thập phân nào biểu diễn 2 đơn vị và 5 phần mười?', 'Dễ', 'Số thập phân nào biểu diễn 2 đơn vị và 5 phần mười?', '1,5|2,5|2,6|3,5|2', 'multiple_choice', 'BH001CD1L5', 'CL05'),
('BT_68ac95fc98fb2', 'Hình chữ nhật có mấy đường chéo?', 'Khó', 'Hình chữ nhật có mấy đường chéo?\r\n', '2 ', 'fill_in_the_blank', 'BH009CD2L3', 'CL03'),
('BT_68ac960d8b35e', '57 + 9 = ?', 'Trung bình', '57 + 9 = ?', '59|66|58|48|2', 'multiple_choice', 'BH011CD3L2', 'CL02'),
('BT_68ac961888a27', 'Hình vuông có các góc thế nào?', 'Trung Bình', 'Hình vuông có các góc thế nào?\r\n', '1 góc vuông|2 góc vuông|3 góc vuông|4 góc vuông|4', 'multiple_choice', 'BH009CD2L3', 'CL03'),
('BT_68ac9628512f7', '86 + 5 = ?', 'Trung bình', '86 + 5 = ?', '91', 'fill_in_the_blank', 'BH011CD3L2', 'CL02'),
('BT_68ac96402fe99', 'Sắp xếp theo tổng giảm dần: (4 và 4), (1 và 5), (0 và 3)', 'Khó', '(0 và 3)| (1 và 5)| (4 và 4)\r\n', '(4 và 4)| (1 và 5)| (0 và 3)\r\n', 'drag_and_drop', 'BH005CD1L1', 'CL01'),
('BT_68ac96525b3a6', '0,7 đọc là gì?', 'Dễ', '0,7 đọc là gì?', 'Không phẩy ba|Không phẩy bốn|Không phẩy bảy|Không phẩy năm|3', 'multiple_choice', 'BH001CD1L5', 'CL05'),
('BT_68ac965ccb7e4', '49 + 8 = ?', 'Trung bình', '49 + 8 = ?', '57|66|58|99|1', 'multiple_choice', 'BH011CD3L2', 'CL02'),
('BT_68ac966b9d6ca', 'Điền hai số bằng nhau có tổng là: 10 = __ và __', 'Trung Bình', 'Điền hai số bằng nhau: 10 = __ và __\r\n', '5 5', 'fill_in_the_blank', 'BH005CD1L1', 'CL01'),
('BT_68ac969621c10', 'Khối lập phương có mấy mặt?', 'Dễ', 'Khối lập phương có mấy mặt?\r\n', '6 mặt|7 mặt|8 mặt|9 mặt|1', 'multiple_choice', 'BH010CD2L3', 'CL03'),
('BT_68ac97145725b', 'Khối hộp chữ nhật có mấy mặt?', 'Dễ', 'Khối hộp chữ nhật có mấy mặt?', '3 mặt|4 mặt|5 mặt|6 mặt|4', 'multiple_choice', 'BH010CD2L3', 'CL03'),
('BT_68ac98379c993', 'Số nào lớn hơn: 1 hay 0,9?', 'Dễ', 'Số nào lớn hơn: 1 hay 0,9?', '1|0,9|2|4|1', 'multiple_choice', 'BH001CD1L5', 'CL05'),
('BT_68ac9a7100c3b', 'Viết phân số 7/10 dưới dạng số thập phân.', 'Dễ', 'Viết phân số 7/10 dưới dạng số thập phân. ___ ?', '0,7', 'fill_in_the_blank', 'BH001CD1L5', 'CL05'),
('BT_68ac9ac636b47', 'Số nào bằng 2,0?', 'Dễ', 'Số nào bằng 2,0?', '1|2|3|4|2', 'multiple_choice', 'BH001CD1L5', 'CL05'),
('BT_68ac9bbfdec92', 'Một mét có 100 cm. Viết 25 cm dưới dạng số thập phân của mét.', 'Dễ', 'Một mét có 100 cm. Viết 25 cm dưới dạng số thập phân của mét.___?', '0,25', 'fill_in_the_blank', 'BH001CD1L5', 'CL05'),
('BT_68ac9c0ad8fa6', 'Số 4,50 bằng số nào sau đây?', 'Dễ', 'Số 4,50 bằng số nào sau đây?', '4,5|2|3|4|1', 'multiple_choice', 'BH001CD1L5', 'CL05'),
('BT_68ac9c64d1e6f', '0,25 đọc là?', 'Dễ', '0,25 đọc là?', 'Không phẩy hai mươi lăm|Không phẩy hai mươi hai|Không phẩy hai mươi ba|Không phẩy hai mươi tám|1', 'multiple_choice', 'BH001CD1L5', 'CL05'),
('BT_68ac9cbe8048b', 'Viết phân số 3/100 dưới dạng số thập phân.', 'Dễ', 'Viết phân số 3/100 dưới dạng số thập phân. ___ ?', '0,03', 'fill_in_the_blank', 'BH001CD1L5', 'CL05'),
('BT_68ac9d8376f16', 'Số nào lớn hơn: 0,7 hay 0,65?', 'Dễ', 'Số nào lớn hơn: 0,7 hay 0,65?', '0,7|0,5|0,65|0,8|1', 'multiple_choice', 'BH002CD1L5', 'CL05'),
('BT_68ac9dad8026b', 'So sánh: 1,2 ... 1,19', 'Dễ', 'So sánh: 1,2 ... 1,19?', '1,2 > 1,19', 'fill_in_the_blank', 'BH002CD1L5', 'CL05'),
('BT_68ac9dee4726d', 'Số bé nhất trong dãy: 0,8; 0,75; 0,79 là?', 'Dễ', 'Số bé nhất trong dãy: 0,8; 0,75; 0,79 là?', '0,8|0,75|0,79|0,78|2', 'multiple_choice', 'BH002CD1L5', 'CL05'),
('BT_68ac9e20e6812', 'Điền dấu đúng: 2,05 ... 2,5?', 'Dễ', 'Điền dấu đúng: 2,05 ... 2,5?', '<', 'fill_in_the_blank', 'BH002CD1L5', 'CL05'),
('BT_68ac9ea53c5a6', 'Sắp xếp theo thứ tự tăng dần: 0,5; 0,55; 0,45?', 'Dễ', '0,5| 0,55| 0,45?', '0,45| 0,5| 0,55', 'drag_and_drop', 'BH002CD1L5', 'CL05'),
('BT_68aca1bae7b55', 'Số nào lớn hơn: 3,01 hay 3,1?', 'Dễ', 'Số nào lớn hơn: 3,01 hay 3,1?', '3,01|3,1|3,2|3,3|2', 'multiple_choice', 'BH002CD1L5', 'CL05'),
('BT_68aca20eefe45', 'So sánh:0,25 ... 0,205?', 'Dễ', '0,25 ... 0,205?', '0,25 > 0,205', 'fill_in_the_blank', 'BH002CD1L5', 'CL05'),
('BT_68aca244c95e8', 'Số lớn nhất trong dãy: 4,3; 4,29; 4,299 là?', 'Dễ', 'Số lớn nhất trong dãy: 4,3; 4,29; 4,299 là?', '4,3|4,29|4,299|4,283|1', 'multiple_choice', 'BH002CD1L5', 'CL05'),
('BT_68aca26ea813f', 'Điền dấu: 0,99 ... 1', 'Dễ', 'Điền dấu: 0,99 ... 1?', '<', 'fill_in_the_blank', 'BH002CD1L5', 'CL05'),
('BT_68aca2a41272a', 'Sắp xếp dãy theo thứ tự giảm dần: 2,5; 2,05; 2,15', 'Dễ', '2,5| 2,05| 2,15?', '2,5| 2,15| 2,05', 'drag_and_drop', 'BH002CD1L5', 'CL05'),
('BT_68aca3244363c', 'Viết 50 cm dưới dạng số thập phân của mét?', 'Dễ', 'Viết 50 cm dưới dạng số thập phân của mét ___ ?', '0,5', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca3580737b', 'Viết 25 g dưới dạng số thập phân của kg.', 'Dễ', 'Viết 25 g dưới dạng số thập phân của kg.___?', '0,025', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca38597b10', 'Một mét có 1000 mm. Viết 125 mm dưới dạng số thập phân của mét.', 'Dễ', 'Một mét có 1000 mm. Viết 125 mm dưới dạng số thập phân của mét.___?', '0,125', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca3be98a4f', 'Viết 1 dm dưới dạng số thập phân của mét.', 'Dễ', 'Viết 1 dm dưới dạng số thập phân của mét.___?', '0,1', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca3e51bc4e', 'Viết 75 cm dưới dạng số thập phân của mét.', 'Dễ', 'Viết 75 cm dưới dạng số thập phân của mét.___?', '0,75', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca4225f72f', '200 g bằng bao nhiêu kg (dưới dạng số thập phân)?', 'Trung Bình', '200 g bằng bao nhiêu kg (dưới dạng số thập phân)___?', '0,2', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca4440cd79', 'Viết 5 mm dưới dạng số thập phân của mét.', 'Trung Bình', 'Viết 5 mm dưới dạng số thập phân của mét.___?', '0,005', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca4bcc8529', 'Viết 3 dm dưới dạng số thập phân của mét.', 'Trung Bình', 'Viết 3 dm dưới dạng số thập phân của mét.___ ?', '0,3', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca4daed760', 'Viết 125 g dưới dạng số thập phân của kg.', 'Dễ', 'Viết 125 g dưới dạng số thập phân của kg.___?', '0,125', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca5358ea9f', 'Viết 9 cm dưới dạng số thập phân của mét.', 'Dễ', 'Viết 9 cm dưới dạng số thập phân của mét.___?', '0,09', 'fill_in_the_blank', 'BH003CD1L5', 'CL05'),
('BT_68aca5733aa81', 'Làm tròn số 3,46 đến một chữ số thập phân.', 'Dễ', 'Làm tròn số 3,46 đến một chữ số thập phân.___?', '3,5', 'fill_in_the_blank', 'BH004CD1L5', 'CL05'),
('BT_68aca59584199', 'Làm tròn số 7,82 đến hàng đơn vị.', 'Dễ', 'Làm tròn số 7,82 đến hàng đơn vị.___ ?', '8', 'fill_in_the_blank', 'BH004CD1L5', 'CL05'),
('BT_68aca5ce20d00', 'Làm tròn số 2,67 đến hàng phần mười.', 'Dễ', 'Làm tròn số 2,67 đến hàng phần mười.___?', '2,7', 'fill_in_the_blank', 'BH004CD1L5', 'CL05'),
('BT_68aca603d1395', 'Số 5,49 làm tròn đến hàng đơn vị bằng?', 'Dễ', 'Số 5,49 làm tròn đến hàng đơn vị bằng?', '6|5|7|8|2', 'multiple_choice', 'BH004CD1L5', 'CL05'),
('BT_68aca6311dcda', 'Số 4,95 làm tròn đến hàng đơn vị bằng?', 'Dễ', 'Số 4,95 làm tròn đến hàng đơn vị bằng?', '5|4|3|2|1', 'multiple_choice', 'BH004CD1L5', 'CL05'),
('BT_68aca65a732f1', 'Số 1,04 làm tròn đến hàng phần mười bằng?', 'Dễ', 'Số 1,04 làm tròn đến hàng phần mười bằng?', '1,0|5,0|3,0|6,0|1', 'multiple_choice', 'BH004CD1L5', 'CL05'),
('BT_68aca67ee4d65', 'Làm tròn 6,444 đến hai chữ số thập phân.', 'Dễ', 'Làm tròn 6,444 đến hai chữ số thập phân.___?', '6,44', 'fill_in_the_blank', 'BH004CD1L5', 'CL05'),
('BT_68aca6a15301b', 'Làm tròn 9,876 đến một chữ số thập phân.', 'Trung Bình', 'Làm tròn 9,876 đến một chữ số thập phân.___?', '9,9', 'fill_in_the_blank', 'BH004CD1L5', 'CL05'),
('BT_68aca6c2ec664', 'Làm tròn 12,5 đến hàng đơn vị.', 'Trung Bình', 'Làm tròn 12,5 đến hàng đơn vị.___?', '13', 'fill_in_the_blank', 'BH004CD1L5', 'CL05'),
('BT_68aca6f1bb6de', 'Số 0,99 làm tròn đến hàng đơn vị bằng?', 'Dễ', 'Số 0,99 làm tròn đến hàng đơn vị bằng?', '1|2|3|4|1', 'multiple_choice', 'BH004CD1L5', 'CL05'),
('BT_68ad23adbcb23', 'Khối lập phương có các mặt là hình gì?', 'Dễ', 'Khối lập phương có các mặt là hình gì?\r\n', 'hình vuông', 'fill_in_the_blank', 'BH010CD2L3', 'CL03'),
('BT_68ad23e07ce67', 'Khối hộp chữ nhật có các mặt là hình gì?', 'Dễ', 'Khối hộp chữ nhật có các mặt là hình gì?\r\n', 'hình chữ nhật', 'fill_in_the_blank', 'BH010CD2L3', 'CL03'),
('BT_68ad23ffbb090', 'Khối lập phương có mấy cạnh?', 'Dễ', 'Khối lập phương có mấy cạnh?\r\n', '12 cạnh|11 cạnh|10 cạnh|9 cạnh|1', 'multiple_choice', 'BH010CD2L3', 'CL03'),
('BT_68ad242823114', 'Khối hộp chữ nhật có mấy đỉnh?', 'Trung Bình', 'Khối hộp chữ nhật có mấy đỉnh?\r\n', '8 đỉnh|9 đỉnh|10 đỉnh|11 đỉnh|1', 'multiple_choice', 'BH010CD2L3', 'CL03'),
('BT_68ad24535ff2c', 'Khối lập phương có mấy đỉnh?', 'Trung Bình', 'Khối lập phương có mấy đỉnh?\r\n', '12 cạnh|13 cạnh|14 cạnh|15 cạnh|1', 'multiple_choice', 'BH010CD2L3', 'CL03'),
('BT_68ad24c40fb6d', 'Các cạnh của khối lập phương thế nào?', 'Dễ', 'Các cạnh của khối lập phương thế nào?\r\n', 'bằng nhau', 'fill_in_the_blank', 'BH010CD2L3', 'CL03'),
('BT_68ad24d9ef947', 'Các mặt đối diện của khối hộp chữ nhật thế nào?', 'Khó', 'Các mặt đối diện của khối hộp chữ nhật thế nào?\r\n', 'song song và bằng nhau', 'fill_in_the_blank', 'BH010CD2L3', 'CL03'),
('BT_68ad2513d6c58', '23 × 3 = ?', 'Trung Bình', '23 × 3 = ?\r\n', '69', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad2528b2e3c', '45 × 2 = ?', 'Trung Bình', '45 × 2 = ?\r\n', '90', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad25434d460', '36 × 4 = ?', 'Trung Bình', '36 × 4 = ?\r\n', '144', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad2550347e6', 'Một điểm là gì?', 'Trung bình', 'Một điểm là gì?', 'Vị trí xác định|Điểm là một đoạn thẳng rất nhỏ có độ dài bằng 0.|Điểm là một hình tròn vô cùng bé trong mặt phẳng.|Điểm là giao của hai đường thẳng song song.|1', 'multiple_choice', 'BH015CD4L2', 'CL02'),
('BT_68ad255202424', '58 × 2 = ?', 'Trung Bình', '58 × 2 = ?\r\n', '116', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad2568b1a62', 'Đoạn thẳng có mấy đầu mút?', 'Trung bình', 'Đoạn thẳng có mấy đầu mút?', '2', 'fill_in_the_blank', 'BH015CD4L2', 'CL02'),
('BT_68ad2573db0eb', '64 × 3 = ?', 'Trung Bình', '64 × 3 = ?\r\n', '192|199|200|198|1', 'multiple_choice', 'BH011CD3L3', 'CL03'),
('BT_68ad2587488ca', '72 × 5 = ?', 'Trung Bình', '72 × 5 = ?\r\n', '360', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad25a9473f0', 'Đường thẳng kéo dài như thế nào?', 'Trung bình', 'Đường thẳng kéo dài như thế nào?', 'Đường thẳng chỉ kéo dài về một phía.|Vô hạn về 2 phía|Đường thẳng chỉ kéo dài đến khi gặp một đường khác.|Đường thẳng chỉ có độ dài bằng đoạn thẳng nối hai điểm đầu và cuối.|2', 'multiple_choice', 'BH015CD4L2', 'CL02'),
('BT_68ad25a968fbc', '81 × 4 = ?', 'Khó', '81 × 4 = ?\r\n', '324', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad25b92a3ed', '99 × 2 = ?', 'Khó', '99 × 2 = ?\r\n', '198', 'fill_in_the_blank', 'BH011CD3L3', 'CL03');
INSERT INTO `baitap` (`ID_BT`, `TenBaiTap`, `CapDo`, `CauHoi`, `DapAn`, `DangBai`, `ID_BH`, `ID_Lop`) VALUES
('BT_68ad25ef3aed7', 'Đường cong khác đường thẳng ở điểm nào?', 'Trung bình', 'Đường cong khác đường thẳng ở điểm nào?', 'Không thẳng|Đường cong có điểm đầu và điểm cuối, còn đường thẳng thì không có.|Đường cong luôn ngắn hơn đường thẳng.|Đường cong không nằm trong mặt phẳng còn đường thẳng thì có.|1', 'multiple_choice', 'BH015CD4L2', 'CL02'),
('BT_68ad25f24428c', '47 × 3 = ?', 'Khó', '47 × 3 = ?\r\n', '141', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad26086475e', '62 × 4 = ?', 'Khó', '62 × 4 = ?\r\n', '248', 'fill_in_the_blank', 'BH011CD3L3', 'CL03'),
('BT_68ad260ce03ee', 'Ba điểm thẳng hàng nghĩa là gì?', 'Trung bình', 'Ba điểm thẳng hàng nghĩa là gì?', 'Cùng nằm trên 1 đường thẳng\r\n', 'fill_in_the_blank', 'BH015CD4L2', 'CL02'),
('BT_68ad2630b03e0', 'Đoạn thẳng AB ký hiệu là gì?', 'Trung bình', 'Đoạn thẳng AB ký hiệu là gì?', 'AC|AS|AD|AB|4', 'multiple_choice', 'BH015CD4L2', 'CL02'),
('BT_68ad2640a7f68', 'Gấp 12 lên 3 lần được bao nhiêu?', 'Trung Bình', 'Gấp 12 lên 3 lần được bao nhiêu?\r\n', '36', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad264f4b828', 'Gấp 15 lên 2 lần được bao nhiêu?', 'Trung Bình', 'Gấp 15 lên 2 lần được bao nhiêu?\r\n', '30', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad26694e8fc', 'Gấp 25 lên 4 lần được bao nhiêu?', 'Khó', 'Gấp 25 lên 4 lần được bao nhiêu?\r\n', '100|13|25|4|1', 'multiple_choice', 'BH012CD3L3', 'CL03'),
('BT_68ad266961580', 'Điểm nằm trên đoạn thẳng AB phải thỏa mãn gì?', 'Trung bình', 'Điểm nằm trên đoạn thẳng AB phải thỏa mãn gì?', 'Giữa A và D|Giữa D và B|Giữa A và B|Giữa C và B|3', 'multiple_choice', 'BH015CD4L2', 'CL02'),
('BT_68ad268dcb12b', 'Đường cong có thể cắt đường thẳng không?', 'Dễ', 'Đường cong có thể cắt đường thẳng không?', 'Có', 'fill_in_the_blank', 'BH015CD4L2', 'CL02'),
('BT_68ad26a127db9', 'Hai điểm xác định được mấy đường thẳng?', 'Dễ', 'Hai điểm xác định được mấy đường thẳng?', '1', 'fill_in_the_blank', 'BH015CD4L2', 'CL02'),
('BT_68ad26b79ea92', '18 gấp lên 5 lần bằng?', 'Khó', '18 gấp lên 5 lần bằng?\r\n', '90', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad26c655145', 'Gấp 20 lên 6 lần = ?', 'Khó', 'Gấp 20 lên 6 lần = ?\r\n', '120', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad26d267292', '10 gấp lên 7 lần bằng?', 'Trung Bình', '10 gấp lên 7 lần bằng?\r\n', '70', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad26dc61c89', 'Trong 3 điểm thẳng hàng, điểm ở giữa gọi là gì?', 'Dễ', 'Trong 3 điểm thẳng hàng, điểm ở giữa gọi là gì?', 'Điểm mút.|Trung điểm|Điểm giao nhau.|Điểm đặc biệt.|2', 'multiple_choice', 'BH015CD4L2', 'CL02'),
('BT_68ad26eab04fe', '9 gấp lên 9 lần = ?', 'Trung Bình', '9 gấp lên 9 lần = ?\r\n', '81|9|78|64|1', 'multiple_choice', 'BH012CD3L3', 'CL03'),
('BT_68ad26f8a07e9', 'Gấp 14 lên 8 lần được bao nhiêu?', 'Khó', 'Gấp 14 lên 8 lần được bao nhiêu?\r\n', '112', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad2707d91b4', '11 gấp lên 3 lần = ?', 'Trung Bình', '11 gấp lên 3 lần = ?\r\n', '33', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad271670e26', 'Gấp 13 lên 6 lần = ?', 'Trung Bình', 'Gấp 13 lên 6 lần = ?\r\n', '78', 'fill_in_the_blank', 'BH012CD3L3', 'CL03'),
('BT_68ad273c01c3b', 'Đường gấp khúc được tạo bởi gì?', 'Trung bình', 'Đường gấp khúc được tạo bởi gì?', 'Đường gấp khúc được tạo bởi các điểm rời rạc không nối với nhau.|Đường gấp khúc được tạo bởi một đường thẳng duy nhất|Đường gấp khúc được tạo bởi nhiều đường cong nối liền nhau|Các đoạn thẳng liên tiếp|4', 'multiple_choice', 'BH016CD4L2', 'CL02'),
('BT_68ad274f49285', '12 : 3 = ?', 'Dễ', '12 : 3 = ?\r\n', '4|3|5|6|1', 'multiple_choice', 'BH013CD3L3', 'CL03'),
('BT_68ad275eecc2f', '14 : 4 = ?', 'Khó', '14 : 4 = ?\r\n', '3 dư 2', 'fill_in_the_blank', 'BH013CD3L3', 'CL03'),
('BT_68ad276034a7e', 'Đường gấp khúc có thể tự cắt nhau không?', 'Dễ', 'Đường gấp khúc có thể tự cắt nhau không?', 'Có', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad277e293c8', 'Hình tứ giác có mấy cạnh?', 'Dễ', 'Hình tứ giác có mấy cạnh?', '4', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad27823bba9', '25 : 5 = ?', 'Dễ', '25 : 5 = ?\r\n', '5|3|12|7|1', 'multiple_choice', 'BH013CD3L3', 'CL03'),
('BT_68ad2790c8ae1', '27 : 4 = ?', 'Khó', '27 : 4 = ?\r\n', '6 dư 3', 'fill_in_the_blank', 'BH013CD3L3', 'CL03'),
('BT_68ad27959e34b', 'Hình tứ giác có mấy đỉnh?', 'Dễ', 'Hình tứ giác có mấy đỉnh?', '4', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad27aa5057c', '30 : 6 = ?', 'Dễ', '30 : 6 = ?\r\n', '5|6|7|8|1', 'multiple_choice', 'BH013CD3L3', 'CL03'),
('BT_68ad27b8c0d0b', 'Hình tứ giác có mấy góc?', 'Dễ', 'Hình tứ giác có mấy góc?', '4', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad27bf666d6', '19 : 3 = ?', 'Khó', '19 : 3 = ?\r\n', '6 dư 1', 'fill_in_the_blank', 'BH013CD3L3', 'CL03'),
('BT_68ad27d2b89a2', 'Hình vuông có phải là hình tứ giác không?', 'Dễ', 'Hình vuông có phải là hình tứ giác không?', 'có', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad27d93f2d0', '40 : 8 = ?', 'Dễ', '40 : 8 = ?\r\n', '5|4|3|1|1', 'multiple_choice', 'BH013CD3L3', 'CL03'),
('BT_68ad27e7e0611', '22 : 5 = ?', 'Khó', '22 : 5 = ?\r\n', '4 dư 2', 'fill_in_the_blank', 'BH013CD3L3', 'CL03'),
('BT_68ad27ea367a4', 'Hình chữ nhật có mấy cặp cạnh song song?', 'Dễ', 'Hình chữ nhật có mấy cặp cạnh song song?', '2', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad27fca7d5a', '36 : 9 = ?', 'Dễ', '36 : 9 = ?\r\n', '4|5|6|7|1', 'multiple_choice', 'BH013CD3L3', 'CL03'),
('BT_68ad280c3ee0f', '29 : 7 = ?', 'Khó', '29 : 7 = ?\r\n', '4 dư 1', 'fill_in_the_blank', 'BH013CD3L3', 'CL03'),
('BT_68ad2853bb512', 'Các cạnh trong hình tứ giác nối nhau tại đâu?', 'Trung bình', 'Các cạnh trong hình tứ giác nối nhau tại đâu?', 'Tại các đỉnh|Tại trung điểm của các cạnh.|Tại tâm của hình.|Tại các đường chéo.|1', 'multiple_choice', 'BH016CD4L2', 'CL02'),
('BT_68ad2860f3b9f', '84 : 2 = ?', 'Dễ', '84 : 2 = ?\r\n', '42', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad2868ac8e5', 'Hình bình hành là hình có mấy cặp cạnh đối?', 'Dễ', 'Hình bình hành là hình có mấy cặp cạnh đối?', '2', 'fill_in_the_blank', 'BH016CD4L2', 'CL02'),
('BT_68ad2871eb0fb', '96 : 3 = ?', 'Dễ', '96 : 3 = ?\r\n', '32', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad2883cf46e', '72 : 4 = ?', 'Dễ', '72 : 4 = ?\r\n', '18', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad2899b46ba', '85 : 5 = ?', 'Dễ', '85 : 5 = ?\r\n', '17|12|13|15|1', 'multiple_choice', 'BH014CD3L3', 'CL03'),
('BT_68ad28a15c2be', 'Đường gấp khúc khép kín tạo thành gì?', 'Trung bình', 'Đường gấp khúc khép kín tạo thành gì?', 'Tạo thành một đường thẳng.|Tạo thành một đường tròn.|Hình phẳng (như hình tứ giác)|Tạo thành một tia.|3', 'multiple_choice', 'BH016CD4L2', 'CL02'),
('BT_68ad28aa59b1f', '66 : 6 = ?', 'Dễ', '66 : 6 = ?\r\n', '11', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad28bb65874', '98 : 7 = ?', 'Dễ', '98 : 7 = ?\r\n', '14', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad28cd2b742', '64 : 8 = ?', 'Dễ', '64 : 8 = ?\r\n', '8', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad28dd2c753', '95 : 9 = ?', 'Khó', '95 : 9 = ?\r\n', '10 dư 5', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad28f48d727', '77 : 7 = ?', 'Dễ', '77 : 7 = ?\r\n', '11|12|13|14|1', 'multiple_choice', 'BH014CD3L3', 'CL03'),
('BT_68ad28f9b53a3', 'Gấp đôi tờ giấy thì số nếp gấp được gọi là gì?', 'Dễ', 'Gấp đôi tờ giấy thì số nếp gấp được gọi là gì?', 'Đường thẳng song song.|Đường gấp|Đường viền của tờ giấy.|Đường chéo.|2', 'multiple_choice', 'BH017CD4L2', 'CL02'),
('BT_68ad29084a6af', '69 : 4 = ?', 'Khó', '69 : 4 = ?\r\n', '17 dư 1', 'fill_in_the_blank', 'BH014CD3L3', 'CL03'),
('BT_68ad293932d09', 'Cắt 2 tam giác vuông có thể ghép thành hình gì?', 'Trung bình', 'Cắt 2 tam giác vuông có thể ghép thành hình gì?', 'Hình ngũ giác.|Hình tròn.|Hình thoi.|Hình chữ nhật|4', 'multiple_choice', 'BH017CD4L2', 'CL02'),
('BT_68ad29710563f', '1 cm = bao nhiêu mm?', 'Dễ', '1 cm = bao nhiêu mm?\r\n', '10 mm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad297f16f04', '20 mm = mấy cm?', 'Dễ', '20 mm = mấy cm?\r\n', '2 cm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad29970f609', '35 mm = ? cm', 'Khó', '35 mm = ? cm\r\n', '3 cm 5 mm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad29a928944', '100 mm = ? cm', 'Dễ', '100 mm = ? cm\r\n', '10 cm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad29ac322a0', 'Dùng 2 hình tam giác cân có thể ghép thành gì?', 'Trung bình', 'Dùng 2 hình tam giác cân có thể ghép thành gì?', 'hình vuông|hình chữ nhật|hình tam giác|hình thoi|4', 'multiple_choice', 'BH017CD4L2', 'CL02'),
('BT_68ad29b9d0fa6', 'Một đoạn thước dài 5 cm thì bằng bao nhiêu mm?', 'Trung Bình', 'Một đoạn thước dài 5 cm thì bằng bao nhiêu mm?\r\n', '50 mm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad29c9796ff', '75 mm = ? cm', 'Khó', '75 mm = ? cm\r\n', '7 cm 5mm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad29cda9fb0', 'Dùng thước kẻ để vẽ đoạn thẳng AB phải làm gì?', 'Trung bình', 'Dùng thước kẻ để vẽ đoạn thẳng AB phải làm gì?', 'Xác định 2 điểm A, B rồi nối', 'fill_in_the_blank', 'BH017CD4L2', 'CL02'),
('BT_68ad29d6812c4', '120 mm = ? cm', 'Dễ', '120 mm = ? cm\r\n', '12 cm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad29fae37e8', 'Ghép 2 hình vuông bằng cạnh có thể tạo gì?', 'Dễ', 'Ghép 2 hình vuông bằng cạnh có thể tạo gì?', 'hình vuông|hình chữ nhật|tam giác|hình tròn|2', 'multiple_choice', 'BH017CD4L2', 'CL02'),
('BT_68ad2a1580f04', 'Vẽ đoạn thẳng dài 3cm cần dùng dụng cụ gì?', 'Dễ', 'Vẽ đoạn thẳng dài 3cm cần dùng dụng cụ gì?', 'Thước kẻ\r\n', 'fill_in_the_blank', 'BH017CD4L2', 'CL02'),
('BT_68ad2a3433f2e', 'Khi cắt giấy phải chú ý điều gì?', 'Trung bình', 'Khi cắt giấy phải chú ý điều gì?', 'An toàn, cắt đúng đường vẽ', 'fill_in_the_blank', 'BH017CD4L2', 'CL02'),
('BT_68ad2a6ee2087', '250 mm = ? cm', 'Dễ', '250 mm = ? cm\r\n', '25 cm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad2a8365889', 'Từ 2 hình tam giác vuông có thể ghép thành gì?', 'Dễ', 'Từ 2 hình tam giác vuông có thể ghép thành gì?', 'Hình tròn.|Hình bình hành cong.|Hình bình hành|Hình ngũ giác.|3', 'multiple_choice', 'BH017CD4L2', 'CL02'),
('BT_68ad2a94385bc', '8 cm = ? mm', 'Dễ', '8 cm = ? mm\r\n', '80 mm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad2a9a109a7', 'Để vẽ đoạn thẳng MN dài 5cm ta làm thế nào?', 'Dễ', 'Để vẽ đoạn thẳng MN dài 5cm ta làm thế nào?', 'Đặt thước, chấm điểm M và N\r\n', 'fill_in_the_blank', 'BH017CD4L2', 'CL02'),
('BT_68ad2aa4bd2e9', '1 mét có bao nhiêu mm?', 'Khó', '1 mét có bao nhiêu mm?\r\n', '1000 mm', 'fill_in_the_blank', 'BH015CD4L3', 'CL03'),
('BT_68ad2ab69d4f3', 'Cắt 1 hình vuông theo đường chéo được mấy tam giác?', 'Trung bình', 'Cắt 1 hình vuông theo đường chéo được mấy tam giác?', '2', 'fill_in_the_blank', 'BH017CD4L2', 'CL02'),
('BT_68ad2aeb1f02f', '1 kg = bao nhiêu g?', 'Dễ', '1 kg = bao nhiêu g?\r\n', '1000 g', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2afaada2e', '500 g = ? kg', 'Trung Bình', '500 g = ? kg\r\n', '0,5 kg', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b05e39c3', 'Một ngày có bao nhiêu giờ?', 'Dễ', 'Một ngày có bao nhiêu giờ?', '24|12|36|48|1', 'multiple_choice', 'BH018CD5L2', 'CL02'),
('BT_68ad2b103dfe2', '250 g + 750 g = ? kg', 'Khó', '250 g + 750 g = ? kg\r\n', '1 kg', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b2854935', 'Một giờ có bao nhiêu phút?', 'Dễ', 'Một giờ có bao nhiêu phút?', '60|59|70|80|1', 'multiple_choice', 'BH018CD5L2', 'CL02'),
('BT_68ad2b2e30ed4', '1200 g = ? kg', 'Khó', '1200 g = ? kg\r\n', '1 kg 200 g', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b3cdd0ca', '200 g = ? kg', 'Dễ', '200 g = ? kg\r\n', '0,2 kg', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b4a00f30', '3 kg = ? g', 'Dễ', '3 kg = ? g\r\n', '3000 kg', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b5bf388f', '1,5 kg = ? g', 'Dễ', '1,5 kg = ? g\r\n', '1500 g', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b67227c5', 'Kim ngắn trên đồng hồ chỉ gì?', 'Dễ', 'Kim ngắn trên đồng hồ chỉ gì?', 'Giờ', 'fill_in_the_blank', 'BH018CD5L2', 'CL02'),
('BT_68ad2b6a349bd', '700 g + 400 g = ? kg', 'Khó', '700 g + 400 g = ? kg\r\n', '1,1 kg', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b7aa6ccf', '2 kg – 800 g = ? g', 'Khó', '2 kg – 800 g = ? g\r\n', '1200 g', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2b7f9b1b0', 'Kim dài trên đồng hồ chỉ gì?', 'Dễ', 'Kim dài trên đồng hồ chỉ gì?', 'Phút', 'fill_in_the_blank', 'BH018CD5L2', 'CL02'),
('BT_68ad2b9e8deed', 'Nửa ngày có mấy giờ?', 'Trung bình', 'Nửa ngày có mấy giờ?', '24|36|12|48|3', 'multiple_choice', 'BH018CD5L2', 'CL02'),
('BT_68ad2ba116293', '5 g = ? mg', 'Dễ', '5 g = ? mg\r\n', '5000 g', 'fill_in_the_blank', 'BH016CD4L3', 'CL03'),
('BT_68ad2bbaa6312', '1 lít = bao nhiêu ml?', 'Dễ', '1 lít = bao nhiêu ml?\r\n', '1000 ml', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2bc3ddf51', 'Khi kim phút chỉ số 12 thì là phút thứ bao nhiêu?', 'Trung bình', 'Khi kim phút chỉ số 12 thì là phút thứ bao nhiêu?', '10|60|12|0|4', 'multiple_choice', 'BH018CD5L2', 'CL02'),
('BT_68ad2be64ae1c', 'Khi kim phút chỉ số 6 thì là phút thứ bao nhiêu?', 'Trung bình', 'Khi kim phút chỉ số 6 thì là phút thứ bao nhiêu?', '6|12|30|36|3', 'multiple_choice', 'BH018CD5L2', 'CL02'),
('BT_68ad2be99b76c', '500 ml = ? lít', 'Dễ', '500 ml = ? lít\r\n', '0,5 lít', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2bf7c01ba', '250 ml + 750 ml = ? lít', 'Khó', '250 ml + 750 ml = ? lít\r\n', '1 lít', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2c0509a64', '3 giờ chiều còn gọi là mấy giờ?', 'Trung bình', '3 giờ chiều còn gọi là mấy giờ?', '15 giờ', 'fill_in_the_blank', 'BH018CD5L2', 'CL02'),
('BT_68ad2c090711c', '1200 ml = ? lít', 'Khó', '1200 ml = ? lít\r\n', '1 lít 200 ml', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2c2695a55', '2 lít = ? ml', 'Dễ', '2 lít = ? ml\r\n', '2000 ml|3000 ml|4000 ml|5000 ml|1', 'multiple_choice', 'BH017CD4L3', 'CL03'),
('BT_68ad2c3061a08', 'Một ngày có mấy buổi?', 'Trung bình', 'Một ngày có mấy buổi?', '2 buổi|3 buổi|4 buổi|1 buổi|1', 'multiple_choice', 'BH018CD5L2', 'CL02'),
('BT_68ad2c3ca1b56', '1,5 lít = ? ml', 'Dễ', '1,5 lít = ? ml\r\n', '1500 ml', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2c4678193', 'Khi đồng hồ chỉ 7 giờ thì kim giờ chỉ số mấy?', 'Dễ', 'Khi đồng hồ chỉ 7 giờ thì kim giờ chỉ số mấy?', '7', 'fill_in_the_blank', 'BH018CD5L2', 'CL02'),
('BT_68ad2c4b974c0', '800 ml = ? lít', 'Dễ', '800 ml = ? lít\r\n', '0,8 lít', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2c5a4ba5a', '2,5 lít = ? ml', 'Dễ', '2,5 lít = ? ml\r\n', '2500 ml', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2c69a9bc2', '300 ml + 400 ml = ? ml', 'Trung Bình', '300 ml + 400 ml = ? ml\r\n', '700 ml', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2c78a7f6b', '100 ml = ? lít', 'Trung Bình', '100 ml = ? lít\r\n', '0,1 lít', 'fill_in_the_blank', 'BH017CD4L3', 'CL03'),
('BT_68ad2ce861b7a', 'Một tuần có bao nhiêu ngày?', 'Dễ', 'Một tuần có bao nhiêu ngày?', '6 ngày|7 ngày|8 ngày|9 ngày|2', 'multiple_choice', 'BH019CD5L2', 'CL02'),
('BT_68ad2d0e16b1a', 'Một năm có bao nhiêu tháng?', 'Dễ', 'Một năm có bao nhiêu tháng?', '12|11|14|10|1', 'multiple_choice', 'BH019CD5L2', 'CL02'),
('BT_68ad2d326b0c2', 'Tháng Hai thường có bao nhiêu ngày?', 'Trung bình', 'Tháng Hai thường có bao nhiêu ngày?', '26|28|27|25|2', 'multiple_choice', 'BH019CD5L2', 'CL02'),
('BT_68ad2d51f3365', 'Tháng có 30 ngày là những tháng nào?', 'Khó', 'Tháng có 30 ngày là những tháng nào?', '4, 6, 9, 11', 'fill_in_the_blank', 'BH019CD5L2', 'CL02'),
('BT_68ad2d76afc99', 'Tháng có 31 ngày là những tháng nào?', 'Khó', 'Tháng có 31 ngày là những tháng nào?', '1, 3, 5, 7, 8, 10, 12\r\n', 'fill_in_the_blank', 'BH019CD5L2', 'CL02'),
('BT_68ad2dbf34195', 'Một năm có bao nhiêu ngày thường?', 'Trung bình', 'Một năm có bao nhiêu ngày thường?', '356|536|365|366|3', 'multiple_choice', 'BH019CD5L2', 'CL02'),
('BT_68ad2e0c9e7cb', 'Năm nhuận có bao nhiêu ngày?', 'Khó', 'Năm nhuận có bao nhiêu ngày?', '366|356|365|367|1', 'multiple_choice', 'BH019CD5L2', 'CL02'),
('BT_68ad2e68e0944', 'Năm nhuận thì tháng Hai có bao nhiêu ngày?', 'Trung bình', 'Năm nhuận thì tháng Hai có bao nhiêu ngày?\r\n', '27|29|28|30|2', 'multiple_choice', 'BH019CD5L2', 'CL02'),
('BT_68ad2e888b25e', 'Tháng 12 còn gọi là tháng gì?', 'Khó', 'Tháng 12 còn gọi là tháng gì?', 'Tháng Chạp', 'fill_in_the_blank', 'BH019CD5L2', 'CL02'),
('BT_68ad2ea17e7d8', 'Ngày Tết Nguyên Đán thường rơi vào tháng nào?', 'Trung bình', 'Ngày Tết Nguyên Đán thường rơi vào tháng nào?', 'Tháng 1 hoặc tháng 2\r\n', 'fill_in_the_blank', 'BH019CD5L2', 'CL02'),
('BT_68ad2ebda525d', 'Nhiệt độ nước đá đang tan khoảng bao nhiêu độ C?', 'Dễ', 'Nhiệt độ nước đá đang tan khoảng bao nhiêu độ C?', '0 độ C', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad2ed087bb1', 'Nhiệt độ bình thường của cơ thể người là bao nhiêu độ C?', 'Dễ', 'Nhiệt độ bình thường của cơ thể người là bao nhiêu độ C?\r\n', '37 độ C', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad2edeef183', 'Nhiệt kế dùng để đo gì?', 'Dễ', 'Nhiệt kế dùng để đo gì?\r\n', 'đo nhiệt độ', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad2eef2ac95', 'Khi trời lạnh, nhiệt độ thường lớn hơn hay nhỏ hơn 20°C?', 'Dễ', 'Khi trời lạnh, nhiệt độ thường lớn hơn hay nhỏ hơn 20°C?\r\n', 'nhỏ hơn', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad2f0c65f6d', 'Khi trời nóng, nhiệt độ khoảng bao nhiêu độ C?', 'Trung Bình', 'Khi trời nóng, nhiệt độ khoảng bao nhiêu độ C?\r\n', '30–35°C|30–34°C|30–33°C|30–32°C|1', 'multiple_choice', 'BH018CD4L3', 'CL03'),
('BT_68ad2f1c529e9', 'Đơn vị đo nhiệt độ thường dùng ở Việt Nam là gì?', 'Dễ', 'Đơn vị đo nhiệt độ thường dùng ở Việt Nam là gì?\r\n', 'độ C', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad2f385c6d8', 'Nếu nhiệt kế chỉ 25°C, thời tiết thế nào?', 'Dễ', 'Nếu nhiệt kế chỉ 25°C, thời tiết thế nào?\r\n', 'mát mẻ|nóng nực|lạnh|mưa|1', 'multiple_choice', 'BH018CD4L3', 'CL03'),
('BT_68ad2f4124b03', 'Đồng hồ đang chỉ 6 giờ thì kim giờ ở đâu?', 'Khó', 'Đồng hồ đang chỉ 6 giờ thì kim giờ ở đâu?', '6', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad2f5a1ab28', 'Đồng hồ đang chỉ 6 giờ thì kim phút ở đâu?', 'Trung bình', 'Đồng hồ đang chỉ 6 giờ thì kim phút ở đâu?', '12', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad2f6e0f048', 'Khi đồng hồ chỉ 3 giờ 15 phút thì kim phút chỉ số mấy?', 'Trung bình', 'Khi đồng hồ chỉ 3 giờ 15 phút thì kim phút chỉ số mấy?', '3', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad2fa7a4680', 'Khi đồng hồ chỉ 7 giờ 30 phút thì kim phút chỉ số mấy?', 'Trung bình', 'Khi đồng hồ chỉ 7 giờ 30 phút thì kim phút chỉ số mấy?', '6', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad2fcf7da39', 'Khi đồng hồ chỉ 12 giờ thì là mấy giờ?', 'Dễ', 'Khi đồng hồ chỉ 12 giờ thì là mấy giờ?', '11|13|12|10|3', 'multiple_choice', 'BH020CD5L2', 'CL02'),
('BT_68ad2fe930019', 'Nếu nhiệt kế chỉ 10°C, ta nên mặc gì?', 'Dễ', 'Nếu nhiệt kế chỉ 10°C, ta nên mặc gì?\r\n', 'áo ấm|áo thun|áo 3 lỗ |không bận|1', 'multiple_choice', 'BH018CD4L3', 'CL03'),
('BT_68ad2ff93385b', 'Hôm nay là thứ 2 thì ngày mai là thứ mấy?', 'Trung bình', 'Hôm nay là thứ 2 thì ngày mai là thứ mấy?', 'thứ 4|thứ 2|thứ 3|thứ 5|3', 'multiple_choice', 'BH020CD5L2', 'CL02'),
('BT_68ad30004c5a8', 'Khi đun nước sôi, nhiệt độ của nước là bao nhiêu độ C?', 'Dễ', 'Khi đun nước sôi, nhiệt độ của nước là bao nhiêu độ C?\r\n', '100 độ C', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad302740f0c', 'Hôm nay là thứ 6 thì hôm qua là thứ mấy?', 'Trung bình', 'Hôm nay là thứ 6 thì hôm qua là thứ mấy?', 'thứ 5|thứ 4|thứ 7|thứ 2|1', 'multiple_choice', 'BH020CD5L2', 'CL02'),
('BT_68ad303e3de5f', 'Đọc nhiệt kế thấy vạch đỏ dừng ở số 36. Nhiệt độ bao nhiêu độ C?', 'Dễ', 'Đọc nhiệt kế thấy vạch đỏ dừng ở số 36. Nhiệt độ bao nhiêu độ C?\r\n', '36 độ C', 'fill_in_the_blank', 'BH018CD4L3', 'CL03'),
('BT_68ad304108ca4', 'Ngày 1/1 gọi là ngày gì?', 'Trung bình', 'Ngày 1/1 gọi là ngày gì?', 'Ngày Tết Dương lịch', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad305c2f1fa', 'Ngày 20/11 là ngày lễ gì?', 'Dễ', 'Ngày 20/11 là ngày lễ gì?', 'Ngày Nhà giáo Việt Nam', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad3077d322b', '123 × 3 = ?', 'Khó', '123 × 3 = ?\r\n', '369', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad3078e9ee6', 'Ngày Quốc tế Thiếu nhi là ngày nào?', 'Trung bình', 'Ngày Quốc tế Thiếu nhi là ngày nào?', 'Ngày 1/6', 'fill_in_the_blank', 'BH020CD5L2', 'CL02'),
('BT_68ad3085514bc', '245 × 4 = ?', 'Khó', '245 × 4 = ?\r\n', '980', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad30a5c45f5', '312 × 2 = ?', 'Khó', '312 × 2 = ?\r\n', '624', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad30b7c334c', '406 × 5 = ?', 'Khó', '406 × 5 = ?\r\n', '2030', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad30ce455c8', '528 × 6 = ?', 'Khó', '528 × 6 = ?\r\n', '3168', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad30e07914c', '639 × 7 = ?', 'Khó', '639 × 7 = ?\r\n', '4473', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad30f62d403', '710 × 8 = ?', 'Khó', '710 × 8 = ?\r\n', '5680', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad310b9efa9', '824 × 9 = ?', 'Khó', '824 × 9 = ?\r\n', '7416', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad31253629f', '935 × 3 = ?', 'Khó', '935 × 3 = ?\r\n', '2805', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad313ad2f9d', '999 × 9 = ?', 'Khó', '999 × 9 = ?\r\n', '8991', 'fill_in_the_blank', 'BH019CD5L3', 'CL03'),
('BT_68ad319bec2e8', '144 ÷ 3 = ?', 'Khó', '144 ÷ 3 = ?\r\n', '48', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad31a9360a6', '225 ÷ 5 = ?', 'Khó', '225 ÷ 5 = ?\r\n', '45', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad31b4547b8', '306 ÷ 6 = ?', 'Khó', '306 ÷ 6 = ?\r\n', '51', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad31c798be9', '432 ÷ 8 = ?', 'Khó', '432 ÷ 8 = ?\r\n', '54', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad31dd7353d', '525 ÷ 7 = ?', 'Khó', '525 ÷ 7 = ?\r\n', '75', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad31ed1d77e', '648 ÷ 9 = ?', 'Khó', '648 ÷ 9 = ?\r\n', '72', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad31fe3316e', '735 ÷ 5 = ?', 'Khó', '735 ÷ 5 = ?\r\n', '147', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad320fb757a', '816 ÷ 4 = ?', 'Khó', '816 ÷ 4 = ?\r\n', '204', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad32351cea8', '924 ÷ 6 = ?', 'Khó', '924 ÷ 6 = ?\r\n', '154', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad3241ca97b', '999 ÷ 9 = ?', 'Khó', '999 ÷ 9 = ?\r\n', '111', 'fill_in_the_blank', 'BH020CD5L3', 'CL03'),
('BT_68ad326e17d29', '(25 + 15) × 2 = ?', 'Khó', '(25 + 15) × 2 = ?\r\n', '80', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad327a6a2cc', '100 – (20 + 30) = ?', 'Khó', '100 – (20 + 30) = ?\r\n', '50', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad328e404fc', '(12 × 3) + 40 = ?', 'Khó', '(12 × 3) + 40 = ?\r\n', '76', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad329c43f9b', '(90 ÷ 9) + 25 = ?', 'Khó', '(90 ÷ 9) + 25 = ?\r\n', '35', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad32b720289', '(8 + 12) × 4 = ?', 'Khó', '(8 + 12) × 4 = ?\r\n', '80', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad32c35d96b', '200 – (30 × 4) = ?', 'Khó', '200 – (30 × 4) = ?\r\n', '80', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad32cfbe600', '(45 ÷ 5) + (18 ÷ 3) = ?', 'Khó', '(45 ÷ 5) + (18 ÷ 3) = ?\r\n', '15', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad32de0eaea', '(50 + 25) – (30 ÷ 5) = ?', 'Khó', '(50 + 25) – (30 ÷ 5) = ?\r\n', '69', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad32f0ccfc6', '(16 × 2) + (40 ÷ 5) = ?', 'Khó', '(16 × 2) + (40 ÷ 5) = ?\r\n', '42', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad32fd4f080', '(100 – 40) ÷ 10 = ?', 'Khó', '(100 – 40) ÷ 10 = ?\r\n', '6', 'fill_in_the_blank', 'BH021CD5L3', 'CL03'),
('BT_68ad334be0e7e', '20 gấp mấy lần 5?', 'Khó', '20 gấp mấy lần 5?\r\n', '4 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad335ccad50', '18 gấp mấy lần 6?', 'Khó', '18 gấp mấy lần 6?\r\n', '3 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad336e18d1e', '40 gấp mấy lần 10?', 'Khó', '40 gấp mấy lần 10?\r\n', '4 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad3379c24da', '30 gấp mấy lần 15?', 'Khó', '30 gấp mấy lần 15?\r\n', '2 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad338b3a353', '25 gấp mấy lần 5?', 'Khó', '25 gấp mấy lần 5?\r\n', '5 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad3396da234', '50 gấp mấy lần 25?', 'Khó', '50 gấp mấy lần 25?\r\n', '2 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad33a550df2', '36 gấp mấy lần 12?', 'Khó', '36 gấp mấy lần 12?\r\n', '3 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad33b3a81a2', '81 gấp mấy lần 9?', 'Khó', '81 gấp mấy lần 9?\r\n', '9 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad33bfa55b6', '64 gấp mấy lần 8?', 'Khó', '64 gấp mấy lần 8?\r\n', '8 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68ad33d012add', '100 gấp mấy lần 20?', 'Khó', '100 gấp mấy lần 20?\r\n', '5 lần', 'fill_in_the_blank', 'BH022CD5L3', 'CL03'),
('BT_68af110d76e4f', '1 km² bằng bao nhiêu m²?', 'Dễ', '1 km² bằng bao nhiêu m² ___ ?', '1 000 000 m²', 'fill_in_the_blank', 'BH005CD2L5', 'CL05'),
('BT_68af116d24878', '1 ha bằng bao nhiêu m²?', 'Dễ', '1 ha bằng bao nhiêu m² ___ ?', '10 000 m²', 'fill_in_the_blank', 'BH005CD2L5', 'CL05'),
('BT_68af11a6753bb', '1 km² bằng bao nhiêu ha?', 'Dễ', '1 km² bằng bao nhiêu ha ___?', '100 ha', 'fill_in_the_blank', 'BH005CD2L5', 'CL05'),
('BT_68af12d5d8621', 'Sắp xếp các đơn vị diện tích từ bé đến lớn: ha, m², km²?', 'Khó', 'ha|m²|km²', 'm² | ha | km²', 'drag_and_drop', 'BH005CD2L5', 'CL05'),
('BT_68af13193799a', 'Diện tích một cánh đồng là 5 ha, viết dưới dạng m² là bao nhiêu?', 'Trung Bình', 'Diện tích một cánh đồng là 5 ha, viết dưới dạng m² là bao nhiêu?', '53 000 m²|50 000 m²|51 000 m²|52 000 m²|2', 'multiple_choice', 'BH005CD2L5', 'CL05'),
('BT_68af13cbe661b', 'Điền số: 2 km² = … ha', 'Dễ', 'Điền số: 2 km² = … ha?', '200', 'fill_in_the_blank', 'BH005CD2L5', 'CL05'),
('BT_68af143d9e750', 'Một khu rừng rộng 300 ha, bằng bao nhiêu km²?', 'Dễ', 'Một khu rừng rộng 300 ha, bằng bao nhiêu km²?', '3 km²|6 km²|9 km²|10 km²|1', 'multiple_choice', 'BH005CD2L5', 'CL05'),
('BT_68af14ab1d5ac', 'Sắp xếp: 1 km², 500 000 m², 100 ha theo thứ tự tăng dần', 'Dễ', '1 km²|500 000 m²|100 ha', '500 000 m² | 100 ha | 1 km²', 'drag_and_drop', 'BH005CD2L5', 'CL05'),
('BT_68af150f795a3', 'Điền số: 7 ha = … m²', 'Dễ', 'Điền số: 7 ha = … m²?', '70 000', 'fill_in_the_blank', 'BH005CD2L5', 'CL05'),
('BT_68af15a427c8b', '1 km² = … ha = … m²', 'Dễ', '1 km² = … ha = … m²?', '100 ha = 1 000 000 m² ', 'fill_in_the_blank', 'BH005CD2L5', 'CL05'),
('BT_68af15e83468f', '1 m² bằng bao nhiêu cm²?', 'Dễ', '1 m² bằng bao nhiêu ___ cm²?', '10 000', 'fill_in_the_blank', 'BH006CD2L5', 'CL05'),
('BT_68af1615e9eaa', '1 dm² bằng bao nhiêu cm²?', 'Dễ', '1 dm² bằng bao nhiêu ___ cm²?', '100', 'fill_in_the_blank', 'BH006CD2L5', 'CL05'),
('BT_68af1640d5dcb', '1 ha bằng bao nhiêu m²?', 'Dễ', '1 ha bằng bao nhiêu ___  m²?', '10 000', 'fill_in_the_blank', 'BH006CD2L5', 'CL05'),
('BT_68af168fa72b5', 'Sắp xếp: mm², cm², dm², m²', 'Dễ', 'mm²| cm²| m²| dm²', 'mm² | cm² | dm² | m²', 'drag_and_drop', 'BH006CD2L5', 'CL05'),
('BT_68af16b3c2357', '1 km² bằng bao nhiêu m²?', 'Dễ', '1 km² bằng bao nhiêu ___ m²?', '1 000 000', 'fill_in_the_blank', 'BH006CD2L5', 'CL05'),
('BT_68af16d379f79', 'Diện tích của một sân bóng là 7000 m² = … ha', 'Dễ', 'Diện tích của một sân bóng là 7000 m² = … ha?', '0,7', 'fill_in_the_blank', 'BH006CD2L5', 'CL05'),
('BT_68af174831b80', 'Trong các đơn vị: cm², ha, m² – đơn vị nào lớn nhất?', 'Dễ', 'Trong các đơn vị: cm², ha, m² – đơn vị nào lớn nhất?', 'm²|ha|m²|dm²|2', 'multiple_choice', 'BH006CD2L5', 'CL05'),
('BT_68af1ade8b182', 'Sắp xếp: 1 ha, 1000 m², 100 m² theo thứ tự tăng dần', 'Dễ', '1 ha| 1000 m²| 100 m²', '100 m² | 1000 m² | 1 ha', 'drag_and_drop', 'BH006CD2L5', 'CL05'),
('BT_68af27949a8dd', 'Điền số: 1 dm² = … m²', 'Dễ', 'Điền số: 1 dm² = … m²?', '0,01', 'fill_in_the_blank', 'BH006CD2L5', 'CL05'),
('BT_68af27d87006e', 'Đổi 2500 cm² ra dm²', 'Trung Bình', 'Đổi 2500 cm² ra dm²?', '28 dm²|25 dm²|35 dm²|20 dm²|2', 'multiple_choice', 'BH006CD2L5', 'CL05'),
('BT_68af287322b32', 'Một tấm vải rộng 2 m và dài 5 m có diện tích bao nhiêu?', 'Dễ', 'Một tấm vải rộng 2 m và dài 5 m có diện tích bao nhiêu?', '10 m²|11 m²|13 m²|19 m²|1', 'multiple_choice', 'BH007CD2L5', 'CL05'),
('BT_68af28f06d5ee', 'Một khu vườn hình vuông cạnh 50 m có diện tích bao nhiêu?', 'Trung Bình', 'Một khu vườn hình vuông cạnh 50 m có diện tích bao nhiêu ___ m²?', '2500', 'fill_in_the_blank', 'BH007CD2L5', 'CL05'),
('BT_68af293e3afa7', 'Một mảnh đất hình chữ nhật có chiều dài 200 m, chiều rộng 100 m. Diện tích là bao nhiêu?', 'Dễ', 'Một mảnh đất hình chữ nhật có chiều dài 200 m, chiều rộng 100 m. Diện tích là bao nhiêu?', '10 000 m²|20 000 m²|30 000 m²|40 000 m²|2', 'multiple_choice', 'BH007CD2L5', 'CL05'),
('BT_68af2a31af35a', 'Sắp xếp diện tích sau tăng dần : 1 ha, 5000 m², 2 ha', 'Trung Bình', '1 ha| 5000 m²| 2 ha', '5000 m² | 1 ha | 2 ha', 'drag_and_drop', 'BH007CD2L5', 'CL05'),
('BT_68af2a7677e36', 'Đây là hình gì? ⬜', 'Dễ', 'Đây là hình gì? ⬜\r\n', 'Hình Vuông|Hình Tròn|Hình Tam Giác|Hình như không biết!!|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2a9e3b031', 'Đây là hình gì? 🔺', 'Dễ', 'Đây là hình gì? 🔺\r\n', 'Hình Vuông|Hình Tròn|Hình Tam Giác|Hình như không biết!!|3', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2abfe0240', 'Đây là hình gì? ⚪', 'Dễ', 'Đây là hình gì? ⚪\r\n', 'Hình Vuông|Hình Tròn|Hình Tam Giác|Hình như không biết!!|2', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2aef4cf79', 'Đây là hình gì? ▭', 'Dễ', 'Đây là hình gì? ▭\r\n', 'Hình Vuông|Hình Tròn|Hình Chữ Nhật|Hình như không biết!!|3', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2b1dac661', 'Hình nào sau đây có 3 cạnh?', 'Trung Bình', 'Hình nào có 3 cạnh?\r\n', 'Hình Tam Giác|Hình Bình Hành|Hình Tròn|Hình Thoi|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2ba507670', 'Hình nào có 4 góc vuông?', 'Trung Bình', 'Hình nào có 4 góc vuông?\r\n', 'Hình Vuông|Hình Tròn|Hình Tam Giác|Hình Thang|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2bffb9439', 'Một thửa ruộng có diện tích 3 ha. Viết dưới dạng m² là …', 'Trung Bình', 'Một thửa ruộng có diện tích 3 ha. Viết dưới dạng m² là …?', '30 000 m²', 'fill_in_the_blank', 'BH007CD2L5', 'CL05'),
('BT_68af2c25d17e0', 'Hình nào có 4 cạnh vuông góc nhưng không phải hình vuông?', 'Trung Bình', 'Hình nào có 4 cạnh vuông góc nhưng không phải hình vuông?\r\n', 'Hình Chữ Nhật|Hình Thang|Hình Bình Hành|Hình Tam Giác|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2c42cbe16', 'Hình nào không có cạnh?', 'Trung Bình', 'Hình nào không có cạnh?\r\n', 'Hình Vuông|Hình Tròn|Hình Tam Giác|Hình Bình Hành|2', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68af2c46d47ca', 'Một mảnh đất có diện tích 2 km² = … m²', 'Dễ', 'Một mảnh đất có diện tích 2 km² = … m²?', '2 000 000', 'fill_in_the_blank', 'BH007CD2L5', 'CL05'),
('BT_68af2eacad533', 'Một sân trường có diện tích 6000 m². Viết dưới dạng ha là …', 'Dễ', 'Một sân trường có diện tích 6000 m². Viết dưới dạng ha là …?', '0,6 ha', 'fill_in_the_blank', 'BH007CD2L5', 'CL05'),
('BT_68af33acdaad9', 'Sắp xếp các đơn vị từ nhỏ đến lớn: m², ha, cm²', 'Dễ', 'm²| ha| cm²', 'cm² | m² | ha', 'drag_and_drop', 'BH007CD2L5', 'CL05'),
('BT_68af340fd4b00', 'Một vườn cây rộng 1,5 ha thì bằng bao nhiêu m²?', 'Dễ', 'Một vườn cây rộng 1,5 ha thì bằng bao nhiêu m²?', '18 000 m²|15 000 m²|25 000 m²|35 000 m²|2', 'multiple_choice', 'BH007CD2L5', 'CL05'),
('BT_68af34a2c8a00', 'Một mảnh đất 0,2 km² bằng bao nhiêu ha?', 'Dễ', 'Một mảnh đất 0,2 km² bằng bao nhiêu ha?', '10 ha|20 ha|30 ha|40 ha|2', 'multiple_choice', 'BH007CD2L5', 'CL05'),
('BT_68af359ecfbcf', 'Tính: 2,5 + 3,4', 'Dễ', 'Tính: 2,5 + 3,4=?', '10,9|7,9|5,9|9,9|3', 'multiple_choice', 'BH008CD3L5', 'CL05'),
('BT_68af35e73f8a6', 'Điền vào chỗ trống: 4,7 + 1,3 = …', 'Dễ', 'Điền vào chỗ trống: 4,7 + 1,3 = …', '6,0', 'fill_in_the_blank', 'BH008CD3L5', 'CL05'),
('BT_68af36ca23489', 'Sắp xếp kết quả theo thứ tự tăng dần: 1,2+2,3; 3,4+0,5; 2,1+1,1', 'Trung Bình', '1,2+2,3 | 3,4+0,5 | 2,1+1,1', '2,1+1,1 | 1,2+2,3 | 3,4+0,5', 'drag_and_drop', 'BH008CD3L5', 'CL05'),
('BT_68af370071336', 'Tính: 0,25 + 0,75', 'Dễ', 'Tính: 0,25 + 0,75=?', '9,0|6,0|2,0|1,0|4', 'multiple_choice', 'BH008CD3L5', 'CL05'),
('BT_68af37589f6a7', 'Điền số: 5,8 + 2,2 = …', 'Dễ', 'Điền số: 5,8 + 2,2 = …', '8,0', 'fill_in_the_blank', 'BH008CD3L5', 'CL05'),
('BT_68af3880f3ffe', 'Một đoạn dây dài 2,5 m, đoạn dây khác dài 1,75 m. Tổng chiều dài 2 dây là … m', 'Dễ', 'Một đoạn dây dài 2,5 m, đoạn dây khác dài 1,75 m. Tổng chiều dài 2 dây là … m?', '9,0|4,25|2,0|1,0|2', 'multiple_choice', 'BH008CD3L5', 'CL05'),
('BT_68af4076b0622', 'Sắp xếp tăng dần: 1,5+2,5; 3,6+1,2; 4,0+0,9', 'Trung Bình', '1,5+2,5| 4,0+0,9| 3,6+1,2', '1,5+2,5 | 3,6+1,2 | 4,0+0,9', 'drag_and_drop', 'BH008CD3L5', 'CL05'),
('BT_68af4116481b0', 'Tính: 6,4 + 3,6', 'Dễ', 'Tính: 6,4 + 3,6 = ___ ?', '10,0', 'fill_in_the_blank', 'BH008CD3L5', 'CL05'),
('BT_68af4153e75a3', 'Điền số: 7,05 + 2,95 = …', 'Dễ', 'Điền số: 7,05 + 2,95 = …?', '10,0', 'fill_in_the_blank', 'BH008CD3L5', 'CL05'),
('BT_68af44cea5757', 'Một cửa hàng bán 2,5 kg gạo và 3,75 kg gạo nữa. Tổng số gạo là … kg', 'Dễ', 'Một cửa hàng bán 2,5 kg gạo và 3,75 kg gạo nữa. Tổng số gạo là … kg ?', '9,0|4,25|2,0|6,25|4', 'multiple_choice', 'BH008CD3L5', 'CL05'),
('BT_68af4b5bee7b2', 'Tính: 7,5 - 2,3', 'Dễ', 'Tính: 7,5 - 2,3=?', '9,0|4,25|3|5,2|4', 'multiple_choice', 'BH009CD3L5', 'CL05'),
('BT_68af4b8359a9d', 'Điền vào chỗ trống: 9,6 - 4,1 = …', 'Dễ', 'Điền vào chỗ trống: 9,6 - 4,1 = …?', '5,5', 'fill_in_the_blank', 'BH009CD3L5', 'CL05'),
('BT_68af4c37e5dcc', 'Một thùng có 10 lít nước, lấy ra 3,75 lít. Còn lại … lít', 'Dễ', 'Một thùng có 10 lít nước, lấy ra 3,75 lít. Còn lại … lít?', '6,25|4,25|3|5,2|1', 'multiple_choice', 'BH009CD3L5', 'CL05'),
('BT_68af4db32bab7', 'Sắp xếp kết quả tăng dần: 5,6-2,1; 8,0-3,5; 4,2-1,7 ', 'Trung Bình', '5,6-2,1| 8,0-3,5| 4,2-1,7', '4,2-1,7 | 5,6-2,1 | 8,0-3,5', 'drag_and_drop', 'BH009CD3L5', 'CL05'),
('BT_68af6124afbd9', 'Tính: 12,0 - 7,8', 'Dễ', 'Tính: 12,0 - 7,8 ___?', '4,2', 'fill_in_the_blank', 'BH009CD3L5', 'CL05'),
('BT_68af61840d925', 'Một đoạn dây 5,25 m, cắt đi 2,15 m. Còn lại … m', 'Dễ', 'Một đoạn dây 5,25 m, cắt đi 2,15 m. Còn lại … m?', '6,25|3,1|3|5,2|2', 'multiple_choice', 'BH009CD3L5', 'CL05'),
('BT_68af61ba1fc7e', 'Tính: 100,0 - 99,9', 'Dễ', 'Tính: 100,0 - 99,9 =?', '6,25|3,9|3|0,1|4', 'multiple_choice', 'BH009CD3L5', 'CL05'),
('BT_68af620e9974b', 'Điền số: 6,05 - 1,05 = …', 'Dễ', 'Điền số: 6,05 - 1,05 = …?', '5,0', 'fill_in_the_blank', 'BH009CD3L5', 'CL05'),
('BT_68af626e83c7d', 'Sắp xếp: 10-3,5; 8,5-2,25; 9-4,0', 'Trung Bình', '10-3,5| 8,5-2,25| 9-4,0', '9-4,0 | 8,5-2,25 | 10-3,5', 'drag_and_drop', 'BH009CD3L5', 'CL05'),
('BT_68af62be46dc3', 'Một cây cao 15,5 m, bị cắt đi 2,75 m. Cây còn cao … m', 'Dễ', 'Một cây cao 15,5 m, bị cắt đi 2,75 m. Cây còn cao … m?', '12,75', 'fill_in_the_blank', 'BH009CD3L5', 'CL05'),
('BT_68afe32c6a3c0', 'Tính: 2,5 × 3', 'Dễ', 'Tính: 2,5 × 3=?', '9,0|7,5|3|0,1|2', 'multiple_choice', 'BH010CD3L5', 'CL05'),
('BT_68afe37853b65', 'Điền số: 1,2 × 0,5 = …', 'Dễ', 'Điền số: 1,2 × 0,5 = …', '0,6', 'fill_in_the_blank', 'BH010CD3L5', 'CL05'),
('BT_68afe486f1dc2', 'Một mảnh đất hình chữ nhật có chiều dài 12,5 m và chiều rộng 2 m. Diện tích là … m²', 'Dễ', 'Một mảnh đất hình chữ nhật có chiều dài 12,5 m và chiều rộng 2 m. Diện tích là … m²?', '25,0|7,5|3,0|29,0|1', 'multiple_choice', 'BH010CD3L5', 'CL05'),
('BT_68afe75265b05', 'Sắp xếp kết quả tăng dần: 1,5×2; 2,1×1,2; 0,5×4,5', 'Trung Bình', '1,5×2| 2,1×1,2| 0,5×4,5', '0,5×4,5 | 2,1×1,2 | 1,5×2', 'drag_and_drop', 'BH010CD3L5', 'CL05'),
('BT_68afe7bd4faf7', 'Tính: 0,25 × 4', 'Dễ', 'Tính: 0,25 × 4___?', '1,0', 'fill_in_the_blank', 'BH010CD3L5', 'CL05'),
('BT_68afe7ec3eff5', 'Điền số: 6,4 × 0,1 = …', 'Dễ', 'Điền số: 6,4 × 0,1 = …?', '0,64', 'fill_in_the_blank', 'BH010CD3L5', 'CL05'),
('BT_68afe8a0eb182', 'Một cửa hàng bán 2,5 kg đường với giá 12,5 nghìn/kg. Tổng tiền là … nghìn', 'Trung Bình', 'Một cửa hàng bán 2,5 kg đường với giá 12,5 nghìn/kg. Tổng tiền là … nghìn đồng?', '25,0|4,25|31,25|29,0|3', 'multiple_choice', 'BH010CD3L5', 'CL05'),
('BT_68afe8e29daef', 'Tính: 0,2 × 0,2', 'Dễ', 'Tính: 0,2 × 0,2=?', '9,0|3,1|0,03|0,04|4', 'multiple_choice', 'BH010CD3L5', 'CL05'),
('BT_68afea1c33c65', 'Sắp xếp tăng dần: 0,1×5; 0,2×2; 0,3×1,5', 'Trung Bình', '0,1×5| 0,2×2| 0,3×1,5', '0,2×2|0,3×1,5|0,1×5', 'drag_and_drop', 'BH010CD3L5', 'CL05'),
('BT_68afebaa55434', 'Điền số: 7,2 × 0,5 = …', 'Dễ', 'Điền số: 7,2 × 0,5 = …?', '3,6', 'fill_in_the_blank', 'BH010CD3L5', 'CL05'),
('BT_68afedce5df33', 'Tính: 7,5 ÷ 3', 'Dễ', 'Tính: 7,5 ÷ 3=?', '10|2,5|3,4|9,1|2', 'multiple_choice', 'BH011CD3L5', 'CL05'),
('BT_68afee3390124', 'Điền vào chỗ trống: 12,6 ÷ 3 = …', 'Dễ', 'Điền vào chỗ trống: 12,6 ÷ 3 = …?', '4,2', 'fill_in_the_blank', 'BH011CD3L5', 'CL05'),
('BT_68afeefc53b82', 'Một đoạn dây 7,2 m chia thành 4 phần bằng nhau. Mỗi phần dài … m', 'Trung Bình', 'Một đoạn dây 7,2 m chia thành 4 phần bằng nhau. Mỗi phần dài … m?', '2,8|1,8|4,0|5,0|2', 'multiple_choice', 'BH011CD3L5', 'CL05'),
('BT_68aff023c58ce', 'Sắp xếp tăng dần : 9,0÷3; 8,1÷3; 6,0÷4', 'Trung Bình', '9,0÷3| 8,1÷3| 6,0÷4', '6,0÷4 | 8,1÷3 | 9,0÷3', 'drag_and_drop', 'BH011CD3L5', 'CL05'),
('BT_68aff0f35acd5', 'Tính: 0,81 ÷ 9', 'Dễ', 'Tính: 0,81 ÷ 9 = ___ ?', '0,09', 'fill_in_the_blank', 'BH011CD3L5', 'CL05'),
('BT_68aff14ba4a64', 'Điền số: 4,5 ÷ 0,5 = …', 'Dễ', 'Điền số: 4,5 ÷ 0,5 = …?', '9', 'fill_in_the_blank', 'BH011CD3L5', 'CL05'),
('BT_68aff244a2007', 'Một người chia đều 12,5 kg gạo vào 5 túi. Mỗi túi có … kg', 'Trung Bình', 'Một người chia đều 12,5 kg gạo vào 5 túi. Mỗi túi có … kg?', '2,5|2,0|3,0|5,2|1', 'multiple_choice', 'BH011CD3L5', 'CL05'),
('BT_68aff28ae566b', 'Tính: 0,6 ÷ 0,2', 'Dễ', 'Tính: 0,6 ÷ 0,2=?', '1|4|5|3|4', 'multiple_choice', 'BH011CD3L5', 'CL05'),
('BT_68aff35b4932f', 'Sắp xếp kết quả tăng dần: 10÷2,5; 6÷3; 7,2÷2,4', 'Trung Bình', '10÷2,5| 6÷3| 7,2÷2,4', '6÷3 | 7,2÷2,4 | 10÷2,5', 'drag_and_drop', 'BH011CD3L5', 'CL05'),
('BT_68aff3bfbf389', 'Điền số: 5,25 ÷ 0,25 = …', 'Dễ', 'Điền số: 5,25 ÷ 0,25 = …?', '21', 'fill_in_the_blank', 'BH011CD3L5', 'CL05'),
('BT_68aff4311517a', 'Tính: 2,5 × 10', 'Dễ', 'Tính: 2,5 × 10=?', '25,0|4,25|2,6|4,283|1', 'multiple_choice', 'BH012CD3L5', 'CL05'),
('BT_68aff45903124', 'Điền số: 3,4 × 100 = …', 'Dễ', 'Điền số: 3,4 × 100 = …?', '340', 'fill_in_the_blank', 'BH012CD3L5', 'CL05'),
('BT_68aff4a3a53d5', 'Tính: 5,67 × 1000', 'Dễ', 'Tính: 5,67 × 1000=?', '4950|2410|5670|9920|3', 'multiple_choice', 'BH012CD3L5', 'CL05'),
('BT_68aff51c23732', 'Sắp xếp: 2,5×10; 2,5×100; 2,5×1000', 'Trung Bình', '2,5×100| 2,5×10| 2,5×1000', '2,5×10 | 2,5×100 | 2,5×1000', 'drag_and_drop', 'BH012CD3L5', 'CL05'),
('BT_68aff585c9ed8', 'Điền số: 7,2 ÷ 10 = …', 'Dễ', 'Điền số: 7,2 ÷ 10 = …?', '0,72', 'fill_in_the_blank', 'BH012CD3L5', 'CL05'),
('BT_68aff702d5bf8', 'Tính: 8,4 ÷ 100', 'Dễ', 'Tính: 8,4 ÷ 100 =___ ?', '0,084', 'fill_in_the_blank', 'BH012CD3L5', 'CL05'),
('BT_68aff7d04a215', 'Tính: 12,5 × 0,1 = …', 'Dễ', 'Tính: 12,5 × 0,1 = …?', '1,25|4,25|2,0|1,0|1', 'multiple_choice', 'BH012CD3L5', 'CL05'),
('BT_68aff80d78d75', 'Tính: 0,36 ÷ 0,01', 'Dễ', 'Tính: 0,36 ÷ 0,01=?', '9|36|88|46|2', 'multiple_choice', 'BH012CD3L5', 'CL05'),
('BT_68aff8ed0bff0', 'Sắp xếp tăng dần: 4,5×0,1; 4,5×0,01; 4,5×0,001', 'Khó', '4,5×0,1| 4,5×0,01| 4,5×0,001', '4,5×0,001 | 4,5×0,01 | 4,5×0,1', 'drag_and_drop', 'BH012CD3L5', 'CL05'),
('BT_68aff91fbc9f8', 'Điền số: 9,6 ÷ 0,01 = …', 'Dễ', 'Điền số: 9,6 ÷ 0,01 = …?', '960', 'fill_in_the_blank', 'BH012CD3L5', 'CL05'),
('BT_68aff9efc92a0', 'Một tam giác có đáy 8cm, chiều cao 5cm. Tính diện tích.', 'Trung Bình', 'Một tam giác có đáy 8cm, chiều cao 5cm. Tính diện tích ___?', '20 cm²', 'fill_in_the_blank', 'BH013CD4L5', 'CL05'),
('BT_68affa3667765', 'Tam giác có các cạnh 5cm, 6cm, 7cm. Chu vi là bao nhiêu?', 'Trung Bình', 'Tam giác có các cạnh 5cm, 6cm, 7cm. Chu vi là ___ ?', '18 cm', 'fill_in_the_blank', 'BH013CD4L5', 'CL05'),
('BT_68affa9b49aa7', 'Tam giác đều có cạnh 4cm. Chu vi bằng?', 'Dễ', 'Tam giác đều có cạnh 4cm. Chu vi = ?', '12 cm|19 cm|20 cm|40 cm|1', 'multiple_choice', 'BH013CD4L5', 'CL05'),
('BT_68affb738e9ea', 'Chọn công thức tính diện tích tam giác.', 'Trung Bình', 'Chọn công thức tính diện tích tam giác.', 'S = (a × h)/2|S = (a × h)x2|S = (a × h)x3|S = (a × h)x4|1', 'multiple_choice', 'BH013CD4L5', 'CL05'),
('BT_68affc220abe3', 'Một tam giác vuông có 2 cạnh góc vuông 6cm và 8cm. Diện tích là?', 'Khó', 'Một tam giác vuông có 2 cạnh góc vuông 6cm và 8cm. Diện tích là ___?', '24 cm²', 'fill_in_the_blank', 'BH013CD4L5', 'CL05'),
('BT_68affce28ac9a', 'Tam giác cân có 2 cạnh bằng 5cm và cạnh đáy 6cm. Chu vi là?', 'Trung Bình', 'Tam giác cân có 2 cạnh bằng 5cm và cạnh đáy 6cm. Chu vi là?', '16 cm|17 cm|18 cm|19 cm|1', 'multiple_choice', 'BH013CD4L5', 'CL05'),
('BT_68affd41a6331', 'Tam giác đều có cạnh 10cm. Chu vi là?', 'Trung Bình', 'Tam giác đều có cạnh 10cm. Chu vi là ___ ?', '30 cm', 'fill_in_the_blank', 'BH013CD4L5', 'CL05'),
('BT_68affd9fbbe32', 'Điền từ còn thiếu: Diện tích tam giác bằng 1/2 tích của … và …', 'Trung Bình', 'Điền từ còn thiếu: Diện tích tam giác bằng 1/2 tích của … và …', 'cạnh đáy và chiều cao', 'fill_in_the_blank', 'BH013CD4L5', 'CL05'),
('BT_68affde68585e', 'Tam giác có đáy 12cm, chiều cao 7cm. Diện tích là?', 'Trung Bình', 'Tam giác có đáy 12cm, chiều cao 7cm. Diện tích là?', '42 cm²', 'fill_in_the_blank', 'BH013CD4L5', 'CL05'),
('BT_68affe486ddbc', 'Sắp xếp các bước tính diện tích tam giác theo thứ tự đúng.', 'Khó', 'Xác định chiều cao| Xác định đáy| Áp dụng công thức', 'Xác định đáy| Xác định chiều cao| Áp dụng công thức', 'drag_and_drop', 'BH013CD4L5', 'CL05'),
('BT_68affea00332d', 'Hình thang có đáy lớn 10cm, đáy bé 6cm, chiều cao 4cm. Diện tích là?', 'Dễ', 'Hình thang có đáy lớn 10cm, đáy bé 6cm, chiều cao 4cm. Diện tích là ___?', '32 cm²', 'fill_in_the_blank', 'BH014CD4L5', 'CL05'),
('BT_68affef719c2e', 'Hình thang cân có 2 đáy dài 8cm và 12cm, chiều cao 5cm. Diện tích?', 'Trung Bình', 'Hình thang cân có 2 đáy dài 8cm và 12cm, chiều cao 5cm. Diện tích = ?', '50 cm²|51 cm²|52 cm²|53 cm²|1', 'multiple_choice', 'BH014CD4L5', 'CL05'),
('BT_68afff851ba5b', 'Chu vi hình thang có 4 cạnh: 6cm, 8cm, 5cm, 7cm. Chu vi là?', 'Dễ', 'Chu vi hình thang có 4 cạnh: 6cm, 8cm, 5cm, 7cm. Chu vi là ___?', '26 cm', 'fill_in_the_blank', 'BH014CD4L5', 'CL05'),
('BT_68b0001b6b83a', 'Chọn công thức tính diện tích hình thang.', 'Khó', 'Chọn công thức tính diện tích hình thang?', 'S = ((a+b) × h)/2|S = ((a+b) × h)/3|S = ((a+b) × h)/4|S = ((a+b) × h)/5|1', 'multiple_choice', 'BH014CD4L5', 'CL05'),
('BT_68b0025a91df4', 'Hình thang có đáy lớn 20cm, đáy bé 10cm, chiều cao 6cm. Diện tích là?', 'Trung Bình', 'Hình thang có đáy lớn 20cm, đáy bé 10cm, chiều cao 6cm. Diện tích là ___?', '90 cm²', 'fill_in_the_blank', 'BH014CD4L5', 'CL05'),
('BT_68b0027e2cba9', 'Điền từ còn thiếu: Diện tích hình thang bằng nửa tích của tổng … với …', 'Trung Bình', 'Điền từ còn thiếu: Diện tích hình thang bằng nửa tích của tổng … với …', 'hai đáy, chiều cao', 'fill_in_the_blank', 'BH014CD4L5', 'CL05'),
('BT_68b002c6ce299', 'Một hình thang có diện tích 60cm², chiều cao 5cm, hai đáy cộng lại bằng?', 'Khó', 'Một hình thang có diện tích 60cm², chiều cao 5cm, hai đáy cộng lại bằng?', '24 cm|25 cm|26 cm|27 cm|1', 'multiple_choice', 'BH014CD4L5', 'CL05'),
('BT_68b00335edeb6', 'Hình thang vuông có đáy lớn 12cm, đáy bé 6cm, chiều cao 4cm. Diện tích?', 'Trung Bình', 'Hình thang vuông có đáy lớn 12cm, đáy bé 6cm, chiều cao 4cm. Diện tích là ___?', '36 cm²', 'fill_in_the_blank', 'BH014CD4L5', 'CL05'),
('BT_68b003ec073eb', 'Sắp xếp các bước tính diện tích hình thang theo thứ tự đúng.', 'Khó', 'Xác định chiều cao| Xác định 2 đáy| Áp dụng công thức', 'Xác định 2 đáy| Xác định chiều cao| Áp dụng công thức', 'drag_and_drop', 'BH014CD4L5', 'CL05'),
('BT_68b0048cd765a', 'Một hình thang có đáy lớn 14cm, đáy bé 6cm, chiều cao 5cm. Diện tích?', 'Trung Bình', 'Một hình thang có đáy lớn 14cm, đáy bé 6cm, chiều cao 5cm. Diện tích là ___ ?', '50 cm²', 'fill_in_the_blank', 'BH014CD4L5', 'CL05'),
('BT_68b004f5697c0', 'Hình tròn có bán kính 7cm. Chu vi là bao nhiêu? (π=3,14)', 'Dễ', 'Hình tròn có bán kính 7cm. Chu vi là bao nhiêu? (π=3,14)', '43,96 cm|44,96 cm|45,96 cm|46,96 cm|1', 'multiple_choice', 'BH015CD4L5', 'CL05'),
('BT_68b00523b6b61', 'Hình tròn có bán kính 7cm. Diện tích là bao nhiêu? (π=3,14)', 'Trung Bình', 'Hình tròn có bán kính 7cm. Diện tích là ___? (π=3,14)', '153,86 cm²', 'fill_in_the_blank', 'BH015CD4L5', 'CL05'),
('BT_68b00566d2f50', 'Điền từ còn thiếu: Công thức chu vi hình tròn là …', 'Dễ', 'Điền từ còn thiếu: Công thức chu vi hình tròn là …?', 'C = 2πr', 'fill_in_the_blank', 'BH015CD4L5', 'CL05'),
('BT_68b0059d122f5', 'Điền từ còn thiếu: Công thức diện tích hình tròn là …', 'Trung Bình', 'Điền từ còn thiếu: Công thức diện tích hình tròn là …?', 'S = πr²', 'fill_in_the_blank', 'BH015CD4L5', 'CL05'),
('BT_68b005e107870', 'Hình tròn có đường kính 10cm. Chu vi là bao nhiêu? (π=3,14)', 'Trung Bình', 'Hình tròn có đường kính 10cm. Chu vi là ___ ? (π=3,14)', '31,4 cm', 'fill_in_the_blank', 'BH015CD4L5', 'CL05'),
('BT_68b0062b2bc98', 'Một hình tròn có diện tích 314 cm². Bán kính là?', 'Dễ', 'Một hình tròn có diện tích 314 cm². Bán kính là ?', '14 cm|10 cm|11 cm|12 cm|2', 'multiple_choice', 'BH015CD4L5', 'CL05'),
('BT_68b006a0c7392', 'Sắp xếp các bước tính diện tích hình tròn theo thứ tự đúng.', 'Trung Bình', 'Bình phương bán kính| Xác định bán kính| Nhân với π', 'Xác định bán kính| Bình phương bán kính| Nhân với π', 'drag_and_drop', 'BH015CD4L5', 'CL05'),
('BT_68b006d2550b1', 'Hình tròn có bán kính 3cm. Diện tích là?', 'Trung Bình', 'Hình tròn có bán kính 3cm. Diện tích là ___?', '28,26 cm²', 'fill_in_the_blank', 'BH015CD4L5', 'CL05'),
('BT_68b006f97825b', 'Hình tròn có đường kính 8cm. Chu vi là?', 'Trung Bình', 'Hình tròn có đường kính 8cm. Chu vi là ___?', '25,12 cm', 'fill_in_the_blank', 'BH015CD4L5', 'CL05'),
('BT_68b007462b7ce', 'Một bánh xe có bán kính 35cm. Chu vi bánh xe là?', 'Trung Bình', 'Một bánh xe có bán kính 35cm. Chu vi bánh xe là?', '214,8 cm|249,8 cm|219,8 cm|319,8 cm|3', 'multiple_choice', 'BH015CD4L5', 'CL05'),
('BT_68b007a591c57', 'Dùng thước vẽ một tam giác có đáy 6cm, chiều cao 4cm. Hãy tính diện tích.', 'Dễ', 'Dùng thước vẽ một tam giác có đáy 6cm, chiều cao 4cm. Diện tích là ___.', '12 cm²', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b007e6d2fd1', 'Dùng compa vẽ hình tròn có bán kính 5cm. Chu vi là?', 'Dễ', 'Dùng compa vẽ hình tròn có bán kính 5cm. Chu vi là ___?', '31,4 cm', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b008fab6d43', 'Một hình chữ nhật có chiều dài 8 cm và chiều rộng 5 cm. Tính diện tích của hình chữ nhật đó.', 'Dễ', 'Một hình chữ nhật có chiều dài 8 cm và chiều rộng 5 cm. Diện tích của hình chữ nhật đó là ___ .', '40 cm²', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b009aaafec8', 'Một hình vuông có chu vi 20 cm. Hỏi cạnh của hình vuông đó dài bao nhiêu cm?', 'Dễ', 'Một hình vuông có chu vi 20 cm. Hỏi cạnh của hình vuông đó dài bao nhiêu cm?', '5 cm|6 cm|7 cm|8 cm|1', 'multiple_choice', 'BH016CD4L5', 'CL05'),
('BT_68b00a4968bb0', 'Hãy vẽ một hình thang cân có 2 đáy dài 5cm và 9cm, chiều cao 4cm, rồi tính diện tích.', 'Trung Bình', 'Hãy vẽ một hình thang cân có 2 đáy dài 5cm và 9cm, chiều cao 4cm,tính diện tích ___.', '28 cm²', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b00ab95e7ff', 'Sắp xếp các bước đo chiều dài cái bàn.', 'Dễ', 'Ghi kết quả| Đọc số đo| Đặt thước đúng vị trí', 'Đặt thước đúng vị trí| Đọc số đo| Ghi kết quả', 'drag_and_drop', 'BH016CD4L5', 'CL05'),
('BT_68b00bf3b4959', 'Một hình vuông có tất cả ... cạnh bằng nhau và ... góc vuông. ( điền dưới dạng chữ )', 'Dễ', 'Một hình vuông có tất cả ... cạnh bằng nhau và ... góc vuông. ( điền dưới dạng chữ )', 'bốn,bốn', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b00cba4ca3d', 'Hình thoi có hai đường chéo vuông góc với nhau và cắt nhau tại ... của mỗi đường.', 'Trung Bình', 'Hình thoi có hai đường chéo vuông góc với nhau và cắt nhau tại ... của mỗi đường.', 'trung điểm', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b00d086180c', 'Hãy vẽ một tam giác đều cạnh 6cm và tính chu vi.', 'Trung Bình', 'Hãy vẽ một tam giác đều cạnh 6cm và chu vi là ___.', '18 cm', 'fill_in_the_blank', 'BH016CD4L5', 'CL05'),
('BT_68b00d7604a1d', 'Sắp xếp các bước vẽ một hình tròn bằng compa.', 'Dễ', 'Vẽ hình| Đặt compa| Chọn bán kính', 'Chọn bán kính| Đặt compa| Vẽ hình', 'drag_and_drop', 'BH016CD4L5', 'CL05'),
('BT_68b0147cebdeb', 'Đây là hình gì? ⬜', 'Dễ', 'Đây là hình gì? ⬜', 'Hình vuông|Hình Tròn|Hình Tam Giác|Hình Chữ Nhật|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b0173979152', 'Đây là hình gì? 🔺', 'Dễ', 'Đây là hình gì? 🔺', 'Hình vuông|Hình tam Giác|Hình Chữ Nhật|Hình Tròn|2', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b017f3d8e18', 'Đây là hình gì? ⚪', 'Dễ', 'Đây là hình gì? ⚪', 'Hình vuông|Hình tam Giác|Hình Chữ Nhật|Hình Tròn|4', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b0188edc57c', 'Đây là hình gì? ▭', 'Dễ', 'Đây là hình gì? ▭', 'Hình vuông|Hình tam Giác|Hình Chữ Nhật|Hình Tròn|3', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b019d795f3f', 'Hình vuông có mấy cạnh bằng nhau?', 'Dễ', 'Hình vuông có mấy cạnh bằng nhau?', '4 |5|3|Không có đáp án|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b01b7e0f085', 'Hình nào sau đây có 4 góc vuông?', 'Dễ', 'Hình nào sau đây có 4 góc vuông?', 'Hình vuông|Hình Tròn|Hình Tam Giác|Không có đáp án|1', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b01d119213d', 'Hình nào có 4 cạnh nhưng không phải hình vuông?', 'Trung Bình', 'Hình nào có 4 cạnh nhưng không phải hình vuông?', 'Hình Tròn|Hình Tam Giác|Hình Chữ Nhật|Tất cả đều sai|3', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b01dcc91f1a', 'Hình Tam giác có bao nhiêu góc?', 'Dễ', 'Hình Tam giác có bao nhiêu góc?', '3 góc|4 góc|2 góc|Không có góc nào|1', 'multiple_choice', 'BH006CD2L1', 'CL01');
INSERT INTO `baitap` (`ID_BT`, `TenBaiTap`, `CapDo`, `CauHoi`, `DapAn`, `DangBai`, `ID_BH`, `ID_Lop`) VALUES
('BT_68b01ea2c1a58', 'Trong các hình sau đây hình nào có số cạnh nhiều nhất?', 'Dễ', 'Trong các hình sau đây hình nào có số cạnh nhiều nhất?', 'Hình tam Giác|Hình Tròn|Hình Vuông|Không có đáp án|3', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b01f3f8ff28', 'Hình nào sau đây không có số cạnh?', 'Dễ', 'Hình nào sau đây không có số cạnh?', 'Hình Tam Giác|Hình Tròn|Hình Vuông|Hình Chữ Nhật|2', 'multiple_choice', 'BH006CD2L1', 'CL01'),
('BT_68b02275ac2ee', 'Ghép hình vuông và một hình tam giác từ trên xuống thành hình nào?', 'Trung Bình', 'Ghép hình vuông và một hình tam giác từ trên xuống thành hình nào?', 'Ngôi nhà|Xe hơi|Xe đạp|Tất cả đáp án đều đúng|1', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02455a5a9f', 'Ghép 1 hình tròn trên và 1 hình tròn dưới sẽ trông giống số mấy?', 'Dễ', 'Ghép 1 hình tròn trên và 1 hình tròn dưới sẽ trông giống số mấy?', 'Số 7|Số 8|Số 6|Số 5|2', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02575334f0', 'Cắt một hình vuông theo đường chéo sẽ được mấy hình tam giác?', 'Dễ', 'Cắt một hình vuông theo đường chéo sẽ được mấy hình tam giác?', '3 hình tam giác|1 hình tam giác|2 hình tam giác|Tất cả đáp án đều đúng|3', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b028778ed97', 'Ghép 2 hình vuông cạnh nhau sẽ thành hình gì?', 'Dễ', 'Ghép 2 hình vuông cạnh nhau sẽ thành hình gì?', 'Hình Chữ Nhật|Hình Tròn|Hình Tam Giác|Tất cả đáp án đều sai|1', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02932e7b15', 'Ghép 1 hình chữ nhật và 2 hình tròn ở dưới lại thì giống hình gì?', 'Trung Bình', 'Ghép 1 hình chữ nhật và 2 hình tròn ở dưới lại thì giống hình gì?', 'Xe hơi|Bông Hoa|Ngôi nhà|Tất cả đều sai|1', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b029e441304', 'Ghép 5 hình tròn nhỏ lại thành hình gì?', 'Dễ', 'Ghép 5 hình tròn nhỏ lại thành hình gì?', 'Bông Hoa|Xe đạp|Ngôi nhà|Con cá|1', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02a496a610', 'Để 3 hình tròn liền nhau giống con gì sau đây?', 'Dễ', 'Để 3 hình tròn liền nhau giống con gì sau đây?', 'Con mèo|Con sâu|Con chó|Con rắn|2', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02b6667d7a', 'Ghép 1 hình tròn và 1 hình tam giác ngang nhau sẽ thành con gì?', 'Trung Bình', 'Ghép 1 hình tròn và 1 hình tam giác ngang nhau sẽ thành con gì?', 'Con mèo|Con cá|Con chó|Con voi|2', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02ccfaee3d', 'Để 3 hình tròn từ trên xuống thành hình gì?', 'Dễ', 'Để 3 hình tròn từ trên xuống thành hình gì?', 'Người tuyết|Con cá|Con heo|Con chim|1', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b02e098441b', 'Ghép 2 hình tròn ngang nhau sẽ thành hình gì?', 'Dễ', 'Ghép 2 hình tròn ngang nhau sẽ thành hình gì?', 'Mắt Kính|Ngôi nhà|Cánh cửa|Tất cả đều sai|1', 'multiple_choice', 'BH007CD2L1', 'CL01'),
('BT_68b0307b8d081', '3 + 2 = ?', 'Dễ', '3 + 2 = ?', '5|4|6|7|1', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b03190501f4', '4 + 5 = ?', 'Dễ', '4 + 5 = ?', '6|9|7|8|2', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b031f1a20d0', '6 + 3 = ?', 'Dễ', '6 + 3 = ?', '9|7|6|5|1', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b032753d078', '1 + 7 = ?', 'Dễ', '1 + 7 = ?', '6|8|9|Tất cả đều sai|2', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b032ee9c68c', '2 + 4 = ?', 'Dễ', '2 + 4 = ?', '6|7|9|Tất cả đều sai|1', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b0336bcbba0', '5 + 5 = ?', 'Dễ', '5 + 5 = ?', '10|9|7|8|1', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b033bf233da', '7 + 2 = ?', 'Dễ', '7 + 2 = ?', '8|9|6|Tất cả đều sai|2', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b03473dcb0e', '0 + 8 = ?', 'Dễ', '0 + 8 = ?', '8|9|0|6|1', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b034c301feb', '3 + 6 = ?', 'Dễ', '3 + 6 = ?', '8|10|9|7|3', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b0350b86904', '2 + 7 = ?', 'Dễ', '2 + 7 = ?', '10|9|8|7|2', 'multiple_choice', 'BH010CD3L1', 'CL01'),
('BT_68b0395464682', '5 - 2 = ?', 'Dễ', '5 - 2 = ?', '2|3|1|Tất cả đều sai|2', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03a0198dd9', '9 - 4 = ?', 'Dễ', '9 - 4 = ?', '5|6|3|7|1', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03b3ec3a82', '7 - 3 = ?', 'Dễ', '7 - 3 = ?', '5|4|6|3|2', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03bf8cfbfb', '8 - 6 = ?', 'Dễ', '8 - 6 = ?', '2|4|5|3|1', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03c6abe058', '10 - 7 = ?', 'Dễ', '10 - 7 = ?', '2|4|3|5|3', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03cf313cef', '6 - 5 = ?', 'Dễ', '6 - 5 = ?', '1|2|4|3|1', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03db627ad0', '4 - 2 = ?', 'Dễ', '4 - 2 = ?', '1|2|3|5|2', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03dee668d1', '9 - 8 = ?', 'Dễ', '9 - 8 = ?', '2|3|1|4|3', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03e3ebd885', '7 - 6 = ?', 'Dễ', '7 - 6 = ?', '3|2|1|5|3', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03eb52fbe8', '10 - 9 = ?', 'Dễ', '10 - 9 = ?', '2|1|3|5|2', 'multiple_choice', 'BH011CD3L1', 'CL01'),
('BT_68b03ffaf27fd', '2 + 3 = ?', 'Dễ', '2 + 3 = ?', '5|4|6|7|1', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b0436012bac', '7 - 2 = ?', 'Dễ', '7 - 2 = ?', '4|5|3|2|2', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b044819874b', '4 + 4 = ?', 'Dễ', '4 + 4 = ?', '7|8|6|9|2', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b044ef81ab2', '6 - 3 = ?', 'Dễ', '6 - 3 = ?', '2|1|3|4|3', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b0453677cea', '1 + 8 = ?', 'Dễ', '1 + 8 = ?', '7|5|9|6|3', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b0457acaa12', '9 - 5 = ?', 'Dễ', '9 - 5 = ?', '4|3|1|2|1', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b045c59c3ad', '3 + 6 = ?', 'Dễ', '3 + 6 = ?', '7|9|8|10|2', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b0463ac0562', '5 - 2 = ?', 'Dễ', '5 - 2 = ?', '2|3|5|4|2', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b046947b5a8', '2 + 7 = ?', 'Dễ', '2 + 7 = ?', '9|7|8|10|1', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b04734bb597', '8 - 6 = ?', 'Dễ', '8 - 6 = ?', '3|2|4|5|2', 'multiple_choice', 'BH012CD3L1', 'CL01'),
('BT_68b04f0f28bf8', 'Khối lập phương có mấy mặt?', 'Dễ', 'Khối lập phương có mấy mặt?', '5|3|12|6|4', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b04fbbf34d5', 'Khối hộp chữ nhật có mấy cạnh?', 'Dễ', 'Khối hộp chữ nhật có mấy cạnh?', '12|5|6|3|1', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b0513b0cde3', 'Mặt của khối lập phương có hình gì?', 'Trung Bình', 'Mặt của khối lập phương có hình gì?', 'Hình Chữ Nhật|Hình Vuông|Hình Tròn|Hình Tam Giác|2', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b051a329502', 'Khối hộp chữ nhật có mấy đỉnh?', 'Dễ', 'Khối hộp chữ nhật có mấy đỉnh?', '8|6|10|12|1', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b052b97b443', 'Khối lập phương có mấy cạnh?', 'Dễ', 'Khối lập phương có mấy cạnh?', '10|12|8|11|2', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b053cc655b8', 'Khối nào có tất cả các mặt là hình vuông?', 'Trung Bình', 'Khối nào có tất cả các mặt là hình vuông?', 'Khối Lập Phương|Khối Hộp Chữ Nhật|Cả 2 khối đều có các mặt là hình vuông|Cả 2 khối đều không có các mặt là hình vuông|1', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b0544eb82ee', 'Khối nào có các mặt là hình chữ nhật?', 'Trung Bình', 'Khối nào có các mặt là hình chữ nhật?', 'Khối Lập Phương|Khối Hộp Chữ Nhật|Cả 2 khối đều có các mặt là hình vuông|Cả 2 khối đều không có các mặt là hình vuông|2', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b055753d2f5', 'Khối lập phương có mấy đỉnh?', 'Dễ', 'Khối lập phương có mấy đỉnh?', '8|9|12|10|1', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b056fec1b4f', 'Đặt 2 khối lập phương cạnh nhau, được hình gì?', 'Trung Bình', 'Đặt 2 khối lập phương cạnh nhau, được hình gì?', 'Hình Hộp Chữ Nhật|Hình Tam Giác|Khối Lập Phương|Tất cả đều sai|1', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b0580581cdc', 'Khối lập phương có tất cả các cạnh bằng nhau không?', 'Trung Bình', 'Khối lập phương có tất cả các cạnh bằng nhau không?', 'Có|Không |Một nửa|Tất cả đều sai|1', 'multiple_choice', 'BH014CD4L1', 'CL01'),
('BT_68b05a9ed3386', 'Quyển vở trên bàn, vậy vị trí của vở nằm ở đâu?', 'Dễ', 'Quyển vở trên bàn, vậy vị trí của vở nằm ở đâu?', 'Trên bàn|Dưới bàn|Bên cạnh bàn|Giữa bàn|1', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05b67c58b9', 'Con mèo ngồi giữa 2 cái ghế, vị trí của mèo ở đâu?', 'Trung Bình', 'Con mèo ngồi giữa 2 cái ghế, vị trí của mèo ở đâu?', 'Ở trước 2 ghế|Ở giữa 2 ghế|Ở sau 2 ghế|Ở trên 2 ghế|2', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05bf3e2612', 'Đặt một quả bóng nằm trên bàn, vậy vị trí quả bòng nằm ở đâu?', 'Dễ', 'Đặt một quả bóng nằm trên bàn, vậy vị trí quả bòng nằm ở đâu?', 'Trên bàn|Dưới bàn|Bên cạnh bàn|Giữa bàn|1', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05c6e64f0f', 'Quả bóng ở dưới bàn, vậy vị trí là gì?', 'Dễ', 'Quả bóng ở dưới bàn, vậy vị trí là gì?', 'Trên bàn|Dưới bàn|Bên cạnh bàn|Giữa bàn|2', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05cc648b37', 'Con mèo ngồi trên ghế, mèo ở đâu so với ghế?', 'Dễ', 'Con mèo ngồi trên ghế, mèo ở đâu so với ghế?', 'Trên ghế|Dưới ghế|Bên cạnh ghế|Giữa ghế|1', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05da20db03', 'Chiếc xe đứng trước ngôi nhà, xe ở đâu so với nhà?', 'Dễ', 'Chiếc xe đứng trước ngôi nhà, xe ở đâu so với nhà?', 'Trước nhà|Sau nhà|Bên trái nhà|Bên phải nhà|1', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05e2aad21c', 'Bạn A đứng sau bạn B, vậy A ở đâu?', 'Dễ', 'Bạn A đứng sau bạn B, vậy A ở đâu?', 'Trước B|Sau B|Bên trái B|Bên phải B|2', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05e8742905', 'Tay trái đối diện với tay nào?', 'Dễ', 'Tay trái đối diện với tay nào?', 'Tay trái|Tay phải|Chân trái|Chân phải|2', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05ecef13be', 'Con gà ở trước nhà, vị trí của gà là gì?', 'Dễ', 'Con gà ở trước nhà, vị trí của gà là gì?', 'Trước nhà|Sau nhà|Bên trái nhà|Bên phải nhà|1', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05f0d11651', 'Con chó dưới cầu thang, vị trí của chó là gì?', 'Dễ', 'Con chó dưới cầu thang, vị trí của chó là gì?', 'Trên cầu thang|Dưới cầu thang|Bên cạnh cầu thang|Giữa cầu thang|2', 'multiple_choice', 'BH015CD4L1', 'CL01'),
('BT_68b05f664573e', '2 + 3 = ?', 'Dễ', '2 + 3 = ?', '5|6|7|4|1', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b05fc85fc83', 'Số liền sau của 9 là số nào?', 'Dễ', 'Số liền sau của 9 là số nào?', '10|11|8|12|1', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b05ffd8f2ec', 'Số liền trước của 7 là số nào?', 'Dễ', 'Số liền trước của 7 là số nào?', '8|6|5|2|2', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b0605971073', '5 - 2 = ?', 'Dễ', '5 - 2 = ?', '3|4|2|1|1', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b06093a944f', 'Hình tam giác có mấy cạnh?', 'Dễ', 'Hình tam giác có mấy cạnh?', '2|3|4|5|2', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b061435dbe8', 'Hình chữ nhật có mấy góc vuông?', 'Dễ', 'Hình chữ nhật có mấy góc vuông?', '4|3|5|2|1', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b061859edc8', 'Khối lập phương có bao nhiêu đỉnh?', 'Dễ', 'Khối lập phương có bao nhiêu đỉnh?', '8|7|5|6|1', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b061d3463f2', '4 + 5 = ?', 'Dễ', '4 + 5 = ?', '10|11|9|8|3', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b0622b766cd', '10 - 7 = ?', 'Dễ', '10 - 7 = ?', '2|4|3|5|3', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b062b46cc1d', 'Chiếc ghế bên trái bàn, vị trí của ghế ở đâu?', 'Dễ', 'Chiếc ghế bên trái bàn, vị trí của ghế ở đâu?', 'Trái|Phải|Trước|Sau|1', 'multiple_choice', 'BH016CD4L1', 'CL01'),
('BT_68b1c206018d8', 'Test', 'Dễ', 'AI đẹp trai nhất', 'Khoa |Nguyễn |Kiên|Phú|2', 'multiple_choice', 'BH022CD5L3', 'CL05'),
('BT_68b86e9059122', 'Test', 'Dá»…', '1+1=....', '2', 'fill_in_the_blank', 'BH019CD5L4', 'CL04'),
('BT_68b881df3f474', '9 - 3', 'Dễ', '9 - 3 = ?', '6', 'fill_in_the_blank', 'BH004CD2L4', 'CL04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baitapph`
--

CREATE TABLE `baitapph` (
  `ID_BT` varchar(20) NOT NULL,
  `TenBaiTap` varchar(255) NOT NULL,
  `CapDo` varchar(50) DEFAULT NULL,
  `CauHoi` text DEFAULT NULL,
  `DapAn` text DEFAULT NULL,
  `DangBai` enum('multiple_choice','fill_in_the_blank','drag_and_drop') NOT NULL,
  `ID_BH` varchar(20) DEFAULT NULL,
  `ID_HS` varchar(20) DEFAULT NULL,
  `TrangThai` varchar(20) NOT NULL DEFAULT 'Chưa hoàn thành'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baitapph`
--

INSERT INTO `baitapph` (`ID_BT`, `TenBaiTap`, `CapDo`, `CauHoi`, `DapAn`, `DangBai`, `ID_BH`, `ID_HS`, `TrangThai`) VALUES
('BT_68b5969053302', 'Sắp xếp theo thứ tự giảm dần: 2,5,1,4', 'Dễ', '2|5|1|4', '1|2|4|5', 'drag_and_drop', 'BH001CD1L1', 'HS002', 'hoàn thành'),
('BT_68b5edf277bd2', 'Bài 1 – Các số 0,1,2,3,4,5', 'Dễ', 'Điền vào chỗ trống: 1 +___ = 10', '9', 'fill_in_the_blank', 'BH002CD1L1', 'HS002', 'hoàn thành'),
('BT_68b71143cc843', 'Viết số 1/2 dưới dạng số thập phân:', 'Dễ', '1/2=.....?', '0.5', 'fill_in_the_blank', 'BH001CD1L5', 'HS001', 'hoàn thành'),
('BT_68b7117c6c7f6', 'Sắp xếp số thập phân', 'Trung Bình', '6,37| 5,18| 6,29| 5,7', '5,18| 5,7| 6,29| 6,37', 'drag_and_drop', 'BH001CD1L5', 'HS001', 'hoàn thành'),
('BT_68b903c692968', 'TEST N', 'Dễ', '1+1 =....', '2', 'fill_in_the_blank', 'BH001CD1L1', 'HS001', 'Chưa hoàn thành'),
('BT_68b90521061c6', 'From Trọng Nguyễn', 'Dễ', 'Sau hợp âm Am là hợp âm gì sau khi cộng lên 1 cung?', 'E#m|Bm|Cm|Em|2', 'multiple_choice', 'BH001CD1L1', 'HS022', 'Chưa hoàn thành');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `game`
--

CREATE TABLE `game` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `game`
--

INSERT INTO `game` (`id`, `question`, `option1`, `option2`, `option3`, `answer`, `image`) VALUES
(2, '1+1 =???', '1', '2', '3', '2', NULL),
(9, '5+4=....', '8', '9', '10', '9', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `ID_GV` varchar(20) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `GioiTinh` varchar(6) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `LopDay` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SDT` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`ID_GV`, `ID`, `Ten`, `GioiTinh`, `DiaChi`, `LopDay`, `Email`, `SDT`) VALUES
('GV008', 'GV008', 'Nguyễn Thị Khánh Ly', 'Nữ', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'CL01', 'khanhly@gmail.com', '01263547894'),
('GV009', 'GV009', 'Hứa Gia Nghĩa', 'Nam', 'Bến Thượng Hải', 'CL02', 'nghiahua@gmail.com', '0913788609'),
('GV010', 'GV010', 'Mai Hứa Gia Trang', 'Nữ', '1310 tổ 9, ấp 2 Đại Phước, Đồng Nai', 'CL03', 'TrangNghia@gmail.com', '0819446876'),
('GV011', 'GV011', 'Nguyễn Thị Thanh Thanh', 'Nữ', 'Bình Chánh', 'CL04', 'ThanhNguyen@gmail.com', '0937318936'),
('GV012', 'GV012', 'Nguyễn Cao Hoàng Phát', 'Nam', 'Tiệm vàng trường an, đường đồng khởi, khu phố 9', 'CL05', 'PhatNguyen@gmail.com', '0937318936'),
('GV013', 'GV013', 'Mai Đặng Anh Trân', 'Nữ', 'Bình Chánh', 'CL03', 'tranmai@gmail.com', '0937318936'),
('GV014', 'GV014', 'Âu Dương Chấn Hoa', 'Nam', 'Hồng Kong', 'CL01', 'chanhoa@gmail.com', '0123543546');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `ID_HS` varchar(20) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `Ten_PH` varchar(30) DEFAULT NULL,
  `ID_PH` varchar(20) DEFAULT NULL,
  `ID_Lop` varchar(20) DEFAULT NULL,
  `Ten` varchar(100) NOT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `CapDo` varchar(50) DEFAULT NULL,
  `PhanThuong` varchar(255) DEFAULT NULL,
  `TienDoHocTap` varchar(255) DEFAULT NULL,
  `ID_GV` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`ID_HS`, `ID`, `Ten_PH`, `ID_PH`, `ID_Lop`, `Ten`, `DiaChi`, `SDT`, `GioiTinh`, `CapDo`, `PhanThuong`, `TienDoHocTap`, `ID_GV`) VALUES
('HS001', 'HS001', 'Lê Thành Huy', 'PH001', 'CL05', 'Nguyễn Nhật Long', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0913788609', 'Nam', 'Vàng', NULL, NULL, NULL),
('HS002', 'HS002', 'Nguyễn Văn Hùng', 'PH002', 'CL03', 'Nguyễn Trọng Nguyễn', '1310 tổ 9, ấp 2 Đại Phước, Đồng Nai', '0937318936', 'Nam', 'Kim Cương', NULL, NULL, NULL),
('HS003', 'HS003', 'Nguyễn Trọng Nguyễn', 'PH003', 'CL03', 'Nguyễn Cao Hoàng Phú', 'Tiệm vàng trường an, đường đồng khởi, khu phố 9', '09887654', 'Nam', 'Bạch Kim', NULL, NULL, NULL),
('HS004', 'HS004', 'Nguyễn Thị Thử', 'PH004', 'CL03', 'Nguyễn Thị Test', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0123456789', 'Nữ', NULL, NULL, NULL, NULL),
('HS005', 'HS005', 'Nguyễn Văn B', 'PH005', 'CL01', 'Nguyễn Văn A', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0921512465', 'Nam', 'Chưa có', NULL, NULL, NULL),
('HS006', 'HS006', 'Nguyễn Văn Phát', 'PH006', 'CL03', 'Nguyễn Văn Toàn', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0921512465', 'Nam', NULL, NULL, NULL, NULL),
('HS007', 'HS007', 'Phùng Kính Nghiêu', 'PH007', 'CL02', 'Hứa Văn Cường', 'Bến Thượng Hải', '093317556', 'Nam', 'Chưa có', NULL, NULL, NULL),
('HS008', 'HS008', 'Đường Tam Tạng', 'PH008', 'CL03', 'Tôn Ngộ Không', 'Hoa Quả Sơn', '0819446876', 'Nam', NULL, NULL, NULL, NULL),
('HS009', 'HS009', 'Đặng Hoàng Mã', 'PH009', 'CL03', 'Đặng Quốc Tuấn', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0123456789', 'Nam', NULL, NULL, NULL, NULL),
('HS010', 'HS010', 'Lâm Chấn Khang', 'PH010', 'CL02', 'Trần Hạo Nam', 'Hồ Chí Minh', '0921512465', 'Nam', NULL, NULL, NULL, NULL),
('HS011', 'HS011', 'Như Hoa Cô Nương', 'PH011', 'CL03', 'Châu Tinh Trì', 'Hồng Kong', '01489474358', 'Nam', NULL, NULL, NULL, NULL),
('HS012', 'HS012', 'Long Tứ', 'PH012', 'CL03', 'Châu Nhuận Phát', 'Hồng Kong', '0957125768', 'Nam', NULL, NULL, NULL, NULL),
('HS013', 'HS013', 'Trác Bá Vũ', 'PH013', 'CL04', 'Huỳnh Tông Trạch', 'Hong Kong', '0921512465', 'Nam', 'Vàng', NULL, NULL, NULL),
('HS014', 'HS014', 'Diệp Vấn', 'PH014', 'CL04', 'Lý Tiểu Long', 'Trung Quốc', '0487965785', 'Nam', 'Chưa có', NULL, NULL, NULL),
('HS015', 'HS015', 'Tạ Thiên Hoa', 'PH015', 'CL04', 'Phạm Băng Băng', 'Trung Quốc', '0921512465', 'Nữ', NULL, NULL, NULL, NULL),
('HS016', 'HS016', 'baba', 'PH016', 'CL04', 'Học Sinh Lớp 4', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0123456789', 'Nam', NULL, NULL, NULL, NULL),
('HS017', 'HS017', 'Lê Thành Tâm', 'PH017', 'CL02', 'Lê Thành Duy', 'LA', '0937318936', 'Nam', NULL, NULL, NULL, NULL),
('HS018', 'HS018', 'abc', 'PH018', 'CL04', 'HS lớp 4', 'Tiệm vàng trường an, đường đồng khởi, khu phố 9', '0123456789', 'Nữ', NULL, NULL, NULL, NULL),
('HS019', 'HS019', 'Nguyễn Văn Nam', 'PH019', 'CL05', 'Nguyễn Mai Tố Trinh', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '0907895415', 'Nữ', 'Chưa có', NULL, NULL, NULL),
('HS020', 'HS020', 'batest', 'PH020', 'CL02', 'Test HOST', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', '09783148215', 'Nam', 'Chưa có', NULL, NULL, NULL),
('HS021', 'HS021', 'Nguyễn Trọng Nguyễn', 'PH021', 'CL05', 'Gia Kiên', '72/4 nguyễn văn trỗi p7 quận 8', '0907926248', 'Nam', 'Chưa có', NULL, NULL, NULL),
('HS022', 'HS022', 'Đặng Thị Tú Quyên', 'PH022', 'CL05', 'NTL', 'Ấp 2 xã phước khánh Nhơn Trạch Đồng Nai ', '0788075591', 'Nam', 'Vàng', NULL, NULL, NULL),
('HS027', 'HS027', 'nono', 'PH023', 'CL03', 'Cô ba sài gòn', 'Bình Chánh', '0937318936', 'Nam', 'Chưa có', NULL, NULL, NULL),
('HS028', 'HS028', 'Hồ Quốc Thành', 'PH024', 'CL03', 'Hồ Quốc Đạt', 'Thôn 8, Ea Siên, Thị Xã Buôn Hồ, Đắk Lắk', '0397149184', 'Nam', 'Chưa có', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `ID_KQ` varchar(20) NOT NULL,
  `ID_HS` varchar(20) DEFAULT NULL,
  `DiemSo` float DEFAULT NULL,
  `ThanhTich` varchar(255) DEFAULT NULL,
  `ThoiGianHoanThanh` time DEFAULT NULL,
  `TongKet` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`ID_KQ`, `ID_HS`, `DiemSo`, `ThanhTich`, `ThoiGianHoanThanh`, `TongKet`) VALUES
('KQ_HS001', 'HS001', 5.33, '', '14:00:13', 'Chưa hoàn thành khóa học'),
('KQ_HS002', 'HS002', 6.77, '', '20:28:39', 'Chưa hoàn thành khóa học'),
('KQ_HS003', 'HS003', 8.97, '', '23:07:54', 'Chưa hoàn thành khóa học'),
('KQ_HS005', 'HS005', 10, '', '19:36:11', 'Chưa hoàn thành khóa học'),
('KQ_HS007', 'HS007', 10, '', '22:04:39', 'Chưa hoàn thành khóa học'),
('KQ_HS013', 'HS013', 7.27, '', '23:11:54', 'Chưa hoàn thành khóa học'),
('KQ_HS014', 'HS014', 10, '', '23:43:56', 'Chưa hoàn thành khóa học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kq_kt`
--

CREATE TABLE `kq_kt` (
  `id` int(11) NOT NULL,
  `id_hs` varchar(11) NOT NULL,
  `ten_hs` varchar(100) NOT NULL,
  `id_lop` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `lesson` int(11) NOT NULL,
  `dung` int(11) NOT NULL,
  `tongcau` int(11) NOT NULL,
  `diem` decimal(4,2) NOT NULL,
  `ngay_lam` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kq_kt`
--

INSERT INTO `kq_kt` (`id`, `id_hs`, `ten_hs`, `id_lop`, `subject`, `lesson`, `dung`, `tongcau`, `diem`, `ngay_lam`) VALUES
(1, 'HS001', 'Nguyễn Nhật Long', 'CL05', 'Chủ đề 2: Một số đơn vị đo diện tích', 1, 2, 2, 10.00, '2025-09-02 16:26:18'),
(2, 'HS019', 'Nguyễn Mai Tố Trinh', 'CL05', 'Chủ đề 2: Một số đơn vị đo diện tích', 1, 2, 2, 10.00, '2025-09-02 16:54:48'),
(3, 'HS002', 'Nguyễn Trọng Nguyễn', 'CL03', 'Chủ đề 3: Phép nhân, phép chia trong phạm vi 100', 1, 1, 1, 10.00, '2025-09-04 01:10:36'),
(4, 'HS003', 'Nguyễn Cao Hoàng Phú', 'CL03', 'Chủ đề 3: Phép nhân, phép chia trong phạm vi 100', 1, 1, 1, 10.00, '2025-09-04 01:13:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `ID_Lop` varchar(20) NOT NULL,
  `TenLop` varchar(100) DEFAULT NULL,
  `KhoiLop` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`ID_Lop`, `TenLop`, `KhoiLop`) VALUES
('CL01', 'Lớp 1', '1'),
('CL02', 'Lớp 2', '2'),
('CL03', 'Lớp 3', '3'),
('CL04', 'Lớp 4', '4'),
('CL05', 'Lớp 5', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuhuynh`
--

CREATE TABLE `phuhuynh` (
  `ID_PH` varchar(20) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `TenCon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phuhuynh`
--

INSERT INTO `phuhuynh` (`ID_PH`, `ID`, `Ten`, `SDT`, `DiaChi`, `TenCon`) VALUES
('PH001', 'PH001', 'Lê Thành Huy', '0913788609', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Nguyễn Nhật Long'),
('PH002', 'PH002', 'Nguyễn Văn Hùng', '0937318936', '1310 tổ 9, ấp 2 Đại Phước, Đồng Nai', 'Nguyễn Trọng Nguyễn'),
('PH003', 'PH003', 'Nguyễn Trọng Nguyễn', '09887654', 'Tiệm vàng trường an, đường đồng khởi, khu phố 9', 'Nguyễn Cao Hoàng Phú'),
('PH004', 'PH004', 'Nguyễn Thị Thử', '0123456789', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Nguyễn Thị Test'),
('PH005', 'PH005', 'Nguyễn Văn B', '0921512465', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Nguyễn Văn A'),
('PH006', 'PH006', 'Nguyễn Văn Phát', '0921512465', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Nguyễn Văn Toàn'),
('PH007', 'PH007', 'Phùng Kính Nghiêu', '093317556', 'Bến Thượng Hải', 'Hứa Văn Cường'),
('PH008', 'PH008', 'Đường Tam Tạng', '0819446876', 'Hoa Quả Sơn', 'Tôn Ngộ Không'),
('PH009', 'PH009', 'Đặng Hoàng Mã', '0123456789', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Đặng Quốc Tuấn'),
('PH010', 'PH010', 'Lâm Chấn Khang', '0921512465', 'Hồ Chí Minh', 'Trần Hạo Nam'),
('PH011', 'PH011', 'Như Hoa Cô Nương', '01489474358', 'Hồng Kong', 'Châu Tinh Trì'),
('PH012', 'PH012', 'Long Tứ', '0957125768', 'Hồng Kong', 'Châu Nhuận Phát'),
('PH013', 'PH013', 'Trác Bá Vũ', '0921512465', 'Hong Kong', 'Huỳnh Tông Trạch'),
('PH014', 'PH014', 'Diệp Vấn', '0487965785', 'Trung Quốc', 'Lý Tiểu Long'),
('PH015', 'PH015', 'Tạ Thiên Hoa', '0921512465', 'Trung Quốc', 'Phạm Băng Băng'),
('PH016', 'PH016', 'baba', '0123456789', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Học Sinh Lớp 4'),
('PH017', 'PH017', 'Lê Thành Tâm', '0937318936', 'LA', 'Lê Thành Duy'),
('PH018', 'PH018', 'abc', '0123456789', 'Tiệm vàng trường an, đường đồng khởi, khu phố 9', 'HS lớp 4'),
('PH019', 'PH019', 'Nguyễn Văn Nam', '0907895415', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Nguyễn Mai Tố Trinh'),
('PH020', 'PH020', 'batest', '09783148215', '88/87A Nguyễn Văn Quỳ, P. Phú Thuận, Q7, TP Hồ Chí Minh', 'Test HOST'),
('PH021', 'PH021', 'Nguyễn Trọng Nguyễn', '0907926248', '72/4 nguyễn văn trỗi p7 quận 8', 'Gia Kiên'),
('PH022', 'PH022', 'Đặng Thị Tú Quyên', '0788075591', 'Ấp 2 xã phước khánh Nhơn Trạch Đồng Nai ', 'NTL'),
('PH023', 'PH023', 'nono', '0937318936', 'Bình Chánh', 'Cô ba sài gòn'),
('PH024', 'PH024', 'Hồ Quốc Thành', '0397149184', 'Thôn 8, Ea Siên, Thị Xã Buôn Hồ, Đắk Lắk', 'Hồ Quốc Đạt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions_lop2`
--

CREATE TABLE `questions_lop2` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions_lop3`
--

CREATE TABLE `questions_lop3` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions_lop3`
--

INSERT INTO `questions_lop3` (`id`, `subject`, `lesson`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `image`) VALUES
(1, 'Chủ đề 3: Phép nhân, phép chia trong phạm vi 100', '1', 'Chọn Kết quả đúng: 30:3=...?', '5', '10', '15', '20', '10', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions_lop4`
--

CREATE TABLE `questions_lop4` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions_lop4`
--

INSERT INTO `questions_lop4` (`id`, `subject`, `lesson`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `image`) VALUES
(1, 'Chủ đề 2: Số có nhiều chữ số', '1', 'đâu là cách viết đúng của số sau: hai mươi hai nghìn năm trăm bảy mươi một', '22571', '22512', '225701', '2225701', '22571', 'uploads/HFK.jpg'),
(2, 'Chá»§ Ä‘á» 1: GÃ³c vÃ  Ä‘Æ¡n vá»‹ Ä‘o gÃ³c', '2', 'Test ', '1', '2', '3', '4', '1', NULL),
(3, 'Chủ đề 2: Số có nhiều chữ số', '5', '6 - 4', '2', '1', '3', '5', '2', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions_lop5`
--

CREATE TABLE `questions_lop5` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions_lop5`
--

INSERT INTO `questions_lop5` (`id`, `subject`, `lesson`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `image`) VALUES
(1, 'Chủ đề 2: Một số đơn vị đo diện tích', '1', '1m=......cm', '10', '100', '1000', '0.1', '100', NULL),
(2, 'Chủ đề 2: Một số đơn vị đo diện tích', '1', '1m^2 =…..cm^2', '10', '100', '1000', '0.01', '1000', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `results`
--

CREATE TABLE `results` (
  `ID_exercise` varchar(20) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `ID_BT` varchar(20) NOT NULL,
  `score` decimal(5,2) DEFAULT 0.00,
  `is_done` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `results`
--

INSERT INTO `results` (`ID_exercise`, `ID`, `ID_BT`, `score`, `is_done`) VALUES
('RES_68ad535e2c13e', 'HS002', 'BT_68ac81bec2894', 0.00, 1),
('RES_68b064208fdc2', 'HS002', 'BT_68ac81e2e7e01', 1.00, 1),
('RES_68b0645ed8361', 'HS002', 'BT_68ac81fd5396c', 1.00, 1),
('RES_68b06464dc5a0', 'HS002', 'BT_68ac82188621c', 0.00, 1),
('RES_68b0646bdca43', 'HS002', 'BT_68ac82327ef1e', 0.00, 1),
('RES_68b06473eae23', 'HS002', 'BT_68ac824708a51', 0.00, 1),
('RES_68b0647968088', 'HS002', 'BT_68ac8264bc002', 1.00, 1),
('RES_68b06485e144d', 'HS002', 'BT_68ac8290c7391', 1.00, 1),
('RES_68b0648d11074', 'HS002', 'BT_68ac82a8e2f3e', 1.00, 1),
('RES_68b064976f907', 'HS002', 'BT_68ac82be328f5', 1.00, 1),
('RES_68b19b7f90d08', 'HS001', 'BT_68ac94be6f1b5', 0.00, 1),
('RES_68b19b89a4579', 'HS001', 'BT_68ac95ef36273', 1.00, 1),
('RES_68b19d9f17d30', 'HS002', 'BT_68ac8311632db', 1.00, 1),
('RES_68b19dae456ba', 'HS002', 'BT_68ac83393365d', 1.00, 1),
('RES_68b19ebb2ce78', 'HS005', 'BT_68ac8126a5e9e', 1.00, 1),
('RES_68b1c187ed2a8', 'HS007', 'BT_68ac810611229', 1.00, 1),
('RES_68b1d0a087e7e', 'HS013', 'BT_68ac8442e2cec', 1.00, 1),
('RES_68b1d0a841218', 'HS013', 'BT_68ac8c30a586b', 1.00, 1),
('RES_68b1d0ae5d175', 'HS013', 'BT_68ac8ce58b443', 1.00, 1),
('RES_68b1d0b7818fb', 'HS013', 'BT_68ac8dddf33b3', 0.00, 1),
('RES_68b1d0da9606f', 'HS013', 'BT_68ac8fc3ae3a2', 1.00, 1),
('RES_68b1d0e6a72e8', 'HS013', 'BT_68ac9073dbb78', 1.00, 1),
('RES_68b1d0ecb4dc5', 'HS013', 'BT_68ac909ea2217', 1.00, 1),
('RES_68b1d0f1be618', 'HS013', 'BT_68ac90e49236d', 1.00, 1),
('RES_68b1d11120e6a', 'HS013', 'BT_68ac9141ceb8a', 0.00, 1),
('RES_68b1d1437b6ca', 'HS013', 'BT_68ac918113001', 0.00, 1),
('RES_68b1d14a7fc9a', 'HS013', 'BT_68ac922cf3d35', 1.00, 1),
('RES_68b1d1b0ad3bf', 'HS001', 'BT_68ac9ea53c5a6', 0.00, 1),
('RES_68b1d1bec52df', 'HS001', 'BT_68af12d5d8621', 0.00, 1),
('RES_68b1d1c7e8baa', 'HS001', 'BT_68b1c206018d8', 1.00, 1),
('RES_68b47bccf021b', 'HS014', 'BT_68ac8442e2cec', 1.00, 1),
('RES_68b543f0460fc', 'HS001', 'BT_68ac9c0ad8fa6', 1.00, 1),
('RES_68b544132a1ab', 'HS001', 'BT_68ac96525b3a6', 1.00, 1),
('RES_68b5441b55e99', 'HS001', 'BT_68ac98379c993', 1.00, 1),
('RES_68b5442e172f4', 'HS001', 'BT_68ac9a7100c3b', 0.00, 1),
('RES_68b5443783e55', 'HS001', 'BT_68ac9ac636b47', 1.00, 1),
('RES_68b54445cd15d', 'HS001', 'BT_68ac9bbfdec92', 0.00, 1),
('RES_68b5444f95f3a', 'HS001', 'BT_68ac9c64d1e6f', 1.00, 1),
('RES_68b54468ee565', 'HS001', 'BT_68ac9cbe8048b', 0.00, 1),
('RES_68b54474f27dd', 'HS001', 'BT_68ac9d8376f16', 1.00, 1),
('RES_68b5447d81355', 'HS001', 'BT_68ac9dad8026b', 0.00, 1),
('RES_68b5937a80577', 'HS002', 'BT_68ac8358a5715', 0.00, 1),
('RES_68b593805b1b9', 'HS002', 'BT_68ac8366d1469', 0.00, 1),
('RES_68b59385a8e1a', 'HS002', 'BT_68ac8373965bb', 1.00, 1),
('RES_68b5938ba6e5d', 'HS002', 'BT_68ac83847131c', 0.00, 1),
('RES_68b593a942d28', 'HS002', 'BT_68ac8395c2d6a', 1.00, 1),
('RES_68b593b6858b9', 'HS002', 'BT_68ac83afe61d7', 1.00, 1),
('RES_68b5942c6fa37', 'HS002', 'BT_68ac83bd8efdc', 1.00, 1),
('RES_68b5944ce3e3b', 'HS002', 'BT_68ac83cd0a46e', 1.00, 1),
('RES_68b594542adbb', 'HS002', 'BT_68ac83faa0ece', 1.00, 1),
('RES_68b59459280e1', 'HS002', 'BT_68ac840d076e1', 1.00, 1),
('RES_68b5954d7eaa3', 'HS002', 'BT_68ac8421e55e7', 0.00, 1),
('RES_68b59d0ca8964', 'HS002', 'BT_68ac846a6b5ec', 0.00, 1),
('RES_68b59d394f618', 'HS002', 'BT_68ac86590e457', 0.00, 1),
('RES_68b59d9868fa5', 'HS002', 'BT_68ac866f78682', 1.00, 1),
('RES_68b59dc76b171', 'HS002', 'BT_68ac868035cf6', 1.00, 1),
('RES_68b59e27bd40a', 'HS002', 'BT_68ac86b1c6c02', 1.00, 1),
('RES_68b59e773b0f2', 'HS002', 'BT_68ac86c2f3bdc', 1.00, 1),
('RES_68b59e8c3fa92', 'HS002', 'BT_68ac86f7112e7', 1.00, 1),
('RES_68b59f87d60dc', 'HS002', 'BT_68ac872cdfc0c', 1.00, 1),
('RES_68b5c40fece07', 'HS003', 'BT_68ac81bec2894', 0.00, 1),
('RES_68b5c41563172', 'HS003', 'BT_68ac81e2e7e01', 1.00, 1),
('RES_68b5c41ad7b2c', 'HS003', 'BT_68ac81fd5396c', 1.00, 1),
('RES_68b5c422b5f7a', 'HS003', 'BT_68ac82188621c', 1.00, 1),
('RES_68b5c427ea38a', 'HS003', 'BT_68ac82327ef1e', 0.00, 1),
('RES_68b5c432074f0', 'HS003', 'BT_68ac824708a51', 0.00, 1),
('RES_68b5c43991ed2', 'HS003', 'BT_68ac8264bc002', 1.00, 1),
('RES_68b5c43f05bb8', 'HS003', 'BT_68ac8290c7391', 1.00, 1),
('RES_68b5c4464f921', 'HS003', 'BT_68ac82a8e2f3e', 1.00, 1),
('RES_68b5c44bdabcc', 'HS003', 'BT_68ac82be328f5', 1.00, 1),
('RES_68b5c4510810d', 'HS003', 'BT_68ac8311632db', 1.00, 1),
('RES_68b5c45688339', 'HS003', 'BT_68ac83393365d', 1.00, 1),
('RES_68b5c46e4ae83', 'HS003', 'BT_68ac8358a5715', 1.00, 1),
('RES_68b5c47ba6932', 'HS003', 'BT_68ac8366d1469', 1.00, 1),
('RES_68b5c481921fb', 'HS003', 'BT_68ac8373965bb', 1.00, 1),
('RES_68b5c48808021', 'HS003', 'BT_68ac83847131c', 1.00, 1),
('RES_68b5c48d85336', 'HS003', 'BT_68ac8395c2d6a', 1.00, 1),
('RES_68b5c49466313', 'HS003', 'BT_68ac83afe61d7', 1.00, 1),
('RES_68b5c49ae8e42', 'HS003', 'BT_68ac83bd8efdc', 1.00, 1),
('RES_68b5c4a18b09b', 'HS003', 'BT_68ac83cd0a46e', 1.00, 1),
('RES_68b5c4a7347ac', 'HS003', 'BT_68ac83faa0ece', 1.00, 1),
('RES_68b5c4abd4ecb', 'HS003', 'BT_68ac840d076e1', 1.00, 1),
('RES_68b5c4b36a3ba', 'HS003', 'BT_68ac8421e55e7', 1.00, 1),
('RES_68b5c4bc9974b', 'HS003', 'BT_68ac846a6b5ec', 1.00, 1),
('RES_68b5c4c2ef8bc', 'HS003', 'BT_68ac86590e457', 1.00, 1),
('RES_68b5c4c87be45', 'HS003', 'BT_68ac866f78682', 1.00, 1),
('RES_68b5c4ce274ad', 'HS003', 'BT_68ac868035cf6', 1.00, 1),
('RES_68b5c4d52a7f6', 'HS003', 'BT_68ac86b1c6c02', 1.00, 1),
('RES_68b5c4da49d61', 'HS003', 'BT_68ac86c2f3bdc', 1.00, 1),
('RES_68b8eca043dfb', 'HS002', 'BT_68ac8743553d7', 1.00, 1),
('RES_68b8ecaca06c1', 'HS002', 'BT_68ac87678d85d', 1.00, 1),
('RES_68b8ecc491548', 'HS002', 'BT_68ac88108fca9', 1.00, 1),
('RES_68b8f823ef5f5', 'HS022', 'BT_68ac96525b3a6', 1.00, 1),
('RES_68b8f84d8bdd7', 'HS022', 'BT_68ac98379c993', 0.00, 1),
('RES_68b8f8a22be26', 'HS022', 'BT_68ac9ac636b47', 1.00, 1),
('RES_68b8f910ef9e1', 'HS022', 'BT_68ac94be6f1b5', 1.00, 1),
('RES_68b8f98120e89', 'HS022', 'BT_68ac95ef36273', 1.00, 1),
('RES_68b8f9b5900a2', 'HS022', 'BT_68ac9a7100c3b', 1.00, 1),
('RES_68b8fa0faa430', 'HS022', 'BT_68ac9bbfdec92', 1.00, 1),
('RES_68b8fa1e7a038', 'HS022', 'BT_68ac9c0ad8fa6', 1.00, 1),
('RES_68b8fa2d0e89f', 'HS022', 'BT_68ac9c64d1e6f', 1.00, 1),
('RES_68b8fa5e26719', 'HS022', 'BT_68ac9cbe8048b', 0.00, 1),
('RES_68b8fa8e486de', 'HS022', 'BT_68ac9d8376f16', 1.00, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `ID` varchar(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `SDT` varchar(12) DEFAULT NULL,
  `role` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`ID`, `user_name`, `password`, `email`, `SDT`, `role`) VALUES
('GV008', 'Nguyễn Thị Khánh Ly', '$2y$10$QzSsVGeVJji5ab3fq4hMPOxLEQnih9D9G4hZ/TEHe1gsWMi0s/CFS', 'khanhly@gmail.com', '01263547894', 3),
('GV009', 'Hứa Gia Nghĩa', '$2y$10$VTtR/UnqUTeX6.DfY7PY/u9lJkRg55.ArBewCi0PxSrvjni9xOtiK', 'nghiahua@gmail.com', '0913788609', 3),
('GV010', 'Mai Hứa Gia Trang', '$2y$10$t8pj7yoWAOkk5pPL9R8h4OgN4kErp6bGaRUTeHzFft/Lg3W2fbPHi', 'TrangNghia@gmail.com', '0819446876', 3),
('GV011', 'Nguyễn Thị Thanh Thanh', '$2y$10$OITjekC4YWy4uJD02dzqd.dCmg21d.OezgUR5vquoeUtu/RYgVIpO', 'ThanhNguyen@gmail.com', '0937318936', 3),
('GV012', 'Nguyễn Cao Hoàng Phát', '$2y$10$gPsYjVxNK0Ps1VNdGBohoeMS8UqCrNtXzqAHwfvUQK2HVArRuDBgC', 'PhatNguyen@gmail.com', '0937318936', 3),
('GV013', 'Mai Đặng Anh Trân', '$2y$10$wQPiY8QbmFoVvs3Kz1ITU.0YbfXj7f08oomATgXNdu8CcEJGHf2Ca', 'tranmai@gmail.com', '0937318936', 3),
('GV014', 'Âu Dương Chấn Hoa', '$2y$10$FSvWQTnRM/Gf/eYW5gBA7uYpHM1Mi0owqKpO6zzTxP9c4lBmB5rDy', 'chanhoa@gmail.com', '0123543546', 3),
('HS001', 'Nguyễn Nhật Long', '$2y$10$cVVTwm1JnWrHyDksMpl0KOu3KiRg6v3caZBTITsEalVO/Rkqo9Sgu', 'longnguyen@gmail.com', '0913788609', 1),
('HS002', 'Nguyễn Trọng Nguyễn', '$2y$10$v7.NZ1CF4q6cuJ/7DtR7IuFZQy3H1Ew9sqzbtcVqBHrNADEFfH/bO', 'lamnguyenkietco@gmail.com', '0937318936', 1),
('HS003', 'Nguyễn Cao Hoàng Phú', '$2y$10$Kq7GddFq8QYkU9dL.IoKr.MdpKoX1Z2JH1h6WqS11f3jeGYe7ehcm', 'phucao@gmail.com', '09887654', 1),
('HS004', 'Nguyễn Thị Test', '$2y$10$uD5ipdDjTHhuOhgYrkgdE.zffe1gnpDvCqSrHyXRQ1CQEyHayeCMi', 'tes@gmail.com', '0123456789', 1),
('HS005', 'Nguyễn Văn A', '$2y$10$FpWJDgj5rY0CFPSAzmQBJ.UE24qAbp4GlXWpxrq96LsEV5gX39h.i', 'aloha@gmail.com', '0921512465', 1),
('HS006', 'Nguyễn Văn Toàn', '$2y$10$/t9M3JWwr2GTCC/4hjWVE.LscKvh6XLpdM2JjYH7ftmnyeAKbwjDq', 'toan@gmail.com', '0921512465', 1),
('HS007', 'Hứa Văn Cường', '$2y$10$su3VhVccN2BHINZbTtVs8e9WQNMUsaMwTvJQH/ELsCMo86d5d9kEy', 'cuonghua@gmail.com', '093317556', 1),
('HS008', 'Tôn Ngộ Không', '$2y$10$bP5tzXsmXZzlYbDypy5sQuHp0FtFWcBOJYSooQ1lTB5KGuAxc2BLO', 'tayduky@gmail.com', '0819446876', 1),
('HS009', 'Đặng Quốc Tuấn', '$2y$10$BjWRtpBNstSauXAoTtnXJOG9pmFQgCDPA5vE7xrZFbcJ1bU6TLaX6', 'tuandang@gmail.com', '0123456789', 1),
('HS010', 'Trần Hạo Nam', '$2y$10$daRiilO4eCzdjvwztedTduXGQ1ZfHM4d2EVVHvkryF0AN2kVFcZXW', 'namhao@gmail.com', '0921512465', 1),
('HS011', 'Châu Tinh Trì', '$2y$10$6ehgXtR/ejY7DhQx8gRArupM.DiCcZ/JBpgw51BE12Bnl69jVWmJC', 'tinhtinh@gmail.com', '01489474358', 1),
('HS012', 'Châu Nhuận Phát', '$2y$10$pavkLhJ85QA62GLOCPw2IeyZC4K5WY04O4GyPQbVlbNnSD7A4FrGy', 'phatchau@gmail.com', '0957125768', 1),
('HS013', 'Huỳnh Tông Trạch', '$2y$10$Cowb09b8VsRdJOUHVWPS6.WNY9qMCl.pzTq/ABr3lcOrDXWHgJ4wu', 'trachtong@gmail.com', '0921512465', 1),
('HS014', 'Lý Tiểu Long', '$2y$10$73aAxSfgwoE2fORCTaSGa.QNx3va.tUkdMZDkWX/mYVH5RJaIYS8y', 'tieulong@gmail.com', '0487965785', 1),
('HS015', 'Phạm Băng Băng', '$2y$10$JqOUBOXfSqKpGxeGHQC1N.zSqsjBV6/MluoDkT9ZROSOTKUKTh5.K', 'bangpham@gmail.com', '0921512465', 1),
('HS016', 'Học Sinh Lớp 4', '$2y$10$QAWlEiu.0/4y0oKAANp.YOEB3rKKIUkPvXBBakXULIOTtvu3s4fQa', '4lop@gmail.com', '0123456789', 1),
('HS017', 'Lê Thành Duy', '$2y$10$HXtuXSSZVxefQsUS2zUGweWAD9c0XHbG/XWRO19Ump7kBwZ4CeGa2', 'DuyThanh@gmail.com', '0937318936', 1),
('HS018', 'HS lớp 4', '$2y$10$zCE.MR/a0.3mVWigJeseYOZ4YJNrTUP5jwJ50sd47euV9K.ppoyLm', 'lop4@gmail.com', '0123456789', 1),
('HS019', 'Nguyễn Mai Tố Trinh', '$2y$10$cSt5e/UxUNug.E4SloJ1EecGf1fkE8QJueAe6xdj2a2KW8.g7YWry', 'TrinhTo@gmail.com', '0907895415', 1),
('HS020', 'Test HOST', '$2y$10$RzVb1IVCfK/nh5cgfvuDsOGncxuH5IBK2u0h5g2LaA/dDljATrhzK', 'testhost@gmail.com', '09783148215', 1),
('HS021', 'Gia Kiên', '$2y$10$7cE7H9nKEseq.R6W3YUNw.rrwyrh0Dd3Ms7G8Vm6Bf1EwjZis.Cv.', 'kienhaha69@gmail.com', '0907926248', 1),
('HS022', 'NTL', '$2y$10$xyPevmYRzfGefN6It91jBuZoRfHm0htGoHXlX28ATF7C89.KYSyHu', 'Locnguyen2662@gmail.com', '0788075591', 1),
('HS023', 'Nguyễn Minh Nghĩa', '$2y$10$/3WjrnBy1fi3NHVn.bv5j.j4jAJjla4Vh7wszUxIgdEEGDXtp8xaq', 'nghiaminh@gmail.com', '0937318936', 1),
('HS024', 'Cô gái có râu', '$2y$10$Es720Fh384aZr.wqtfqf3.SSpb1OE8uHpnhsuCJakNEoQI5rz/iP.', 'corau@gmail.com', '0987651358', 1),
('HS025', 'Anh ba sài gòn', '$2y$10$k6AFGXZQyitqmuJBWIhmS./1NvCT4.igxMEd6eXFKgMFSgWycx39W', 'a3@gmail.com', '097654664', 1),
('HS026', 'Nguyễn Minh Hiếu', '$2y$10$1uNqFFrsS0d7L/CiMGqcTe4l68QzNOXa7uOLAJyJGjNk3UUlhhUYu', 'hieunguyen@gmail.com', '0985698752', 1),
('HS027', 'Cô ba sài gòn', '$2y$10$zgxTsGfv8LecQtqkb8mWaOE/FXy5oFTV00MCQM1aCfJLeB2Gsfg1y', 'coba@gmail.com', '0937318936', 1),
('HS028', 'Hồ Quốc Đạt', '$2y$10$isKPvDeEx6deAoY1YFuSi./jKLXI2/BhiqB.JQZYdWjlhp/vPWXt6', 'datho@gmail.com', '0397149184', 1),
('PH001', 'Lê Thành Huy', '$2y$10$tLJVfKTHlJq6BTD4fs0LYONz/Dr5P.qdIYogktFSCIXV.Lu567dUW', 'longnguyen@gmail.com', '0913788609', 2),
('PH002', 'Nguyễn Văn Hùng', '$2y$10$v7.NZ1CF4q6cuJ/7DtR7IuFZQy3H1Ew9sqzbtcVqBHrNADEFfH/bO', 'lamnguyenkietco@gmail.com', '0937318936', 2),
('PH003', 'Nguyễn Trọng Nguyễn', '$2y$10$MfePqI6aFwQf0BEp3uCq/.IG5EygtbCyq1J4lLi7u9lDlSu8TiQZ6', 'phucao@gmail.com', '09887654', 2),
('PH004', 'Nguyễn Thị Thử', '$2y$10$sTkYlJfMvl3LS/r9v6JGQe6q.Ytol/Q6GH076xQSN3iVWVmbNuEa6', 'tes@gmail.com', '0123456789', 2),
('PH005', 'Nguyễn Văn B', '$2y$10$Kpe71vdKr8iicL.sEr4R0.ivIKThZ6TbHaD.N1GLBY5ebGix8drI6', 'aloha@gmail.com', '0921512465', 2),
('PH006', 'Nguyễn Văn Phát', '$2y$10$ZLTwc1YVwIzjfB.dyrVqQeNmOeAXU2tUlZU/ZstMOcC7g.8pzWiM.', 'toan@gmail.com', '0921512465', 2),
('PH007', 'Phùng Kính Nghiêu', '$2y$10$lSx3Srp2FGjNq4rFqeCRrugjPGhEBw1jDJXS0p9fg5n/CE5E6UIwi', 'cuonghua@gmail.com', '093317556', 2),
('PH008', 'Đường Tam Tạng', '$2y$10$j9zA5cTxbNofWyivXUbz5OG2.3EnRsYWAkgbVb31rnZMou26qT05O', 'tayduky@gmail.com', '0819446876', 2),
('PH009', 'Đặng Hoàng Mã', '$2y$10$PUWL9Vp1/GIzlMoYOzseh.PVxpEfX4l6JHkpszSXTmWg2cSQiGLxO', 'tuandang@gmail.com', '0123456789', 2),
('PH010', 'Lâm Chấn Khang', '$2y$10$P/34.CHMUcSGTxY/wuk2qumuoW2.AUVW88bGSwRFrK9dFAnaTKkF2', 'namhao@gmail.com', '0921512465', 2),
('PH011', 'Như Hoa Cô Nương', '$2y$10$kvXtU5IhlzWd/qFPZOVrquHRsrL2H8E9os3ld.S.DrkAuLKprccYS', 'tinhtinh@gmail.com', '01489474358', 2),
('PH012', 'Long Tứ', '$2y$10$9t752iHsijC.MJ.zZ5iO.OHRhXoTqaH7Iajab5ou7DYnmFZ.3tZma', 'phatchau@gmail.com', '0957125768', 2),
('PH013', 'Trác Bá Vũ', '$2y$10$eUYCa5DwzkGTb8Jh84X89OZwaitYVJrWQrJBAfn.RHLemkNqo4b1O', 'trachtong@gmail.com', '0921512465', 2),
('PH014', 'Diệp Vấn', '$2y$10$yi.5syv5fRp/3SChvOAVIeBJaJAOSwrwjsP9xHWprIYV06EV0HaGS', 'tieulong@gmail.com', '0487965785', 2),
('PH015', 'Tạ Thiên Hoa', '$2y$10$goAioYc1Cw3VKPpF21Tb/.Nf5N1aafCValmynBNZEtahwEjvKJnV.', 'bangpham@gmail.com', '0921512465', 2),
('PH016', 'baba', '$2y$10$yPbyJp0Hei08kLqJAAF9neCamU9ei4dlkcpr//hAweDT8UZH.hKb.', '4lop@gmail.com', '0123456789', 2),
('PH017', 'Lê Thành Tâm', '$2y$10$.fMK8u3Mne8NVJu7c/g3XuXP3wbOraxFFWoYzJsO.MKcJWzlK6BQS', 'DuyThanh@gmail.com', '0937318936', 2),
('PH018', 'abc', '$2y$10$sGSU77QK0bM2yrDWsXLmuuO7jSmZoYFTfj9TFHaq5Hb3bUQwdmQa2', 'lop4@gmail.com', '0123456789', 2),
('PH019', 'Nguyễn Văn Nam', '$2y$10$UZK.qnTyKDxZJUQZR6njSu7cI2ZN1pRaHk3aa9ks/06JK500AjoFK', 'TrinhTo@gmail.com', '0907895415', 2),
('PH020', 'batest', '$2y$10$EmLFFOERTIOYGPyiZC3dIuA43/5ZMSMeB0UFPnWdb6h1B9WggfmJa', 'testhost@gmail.com', '09783148215', 2),
('PH021', 'Nguyễn Trọng Nguyễn', '$2y$10$7cE7H9nKEseq.R6W3YUNw.rrwyrh0Dd3Ms7G8Vm6Bf1EwjZis.Cv.', 'kienhaha69@gmail.com', '0907926248', 2),
('PH022', 'Đặng Thị Tú Quyên', '$2y$10$5p2njt.8R/W.htdmofrof.L8RmyJZrY1Ye8oVQvz.QXwadG0wdSQe', 'Locnguyen2662@gmail.com', '0788075591', 2),
('PH023', 'nono', '$2y$10$ho25OipUZeNsM6S1BOtUw.oQuuGb4erHcVOUztlQLtdvXgv5J8fbi', 'coba@gmail.com', '0937318936', 2),
('PH024', 'Hồ Quốc Thành', '$2y$10$hnIsrmFKsdDXtUGDEp05VulQ28L/1Hae1HA2wA.ACmo6x9RXgGZCi', 'datho@gmail.com', '0397149184', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  ADD PRIMARY KEY (`ID_BH`),
  ADD KEY `ID_Lop` (`ID_Lop`);

--
-- Chỉ mục cho bảng `baitap`
--
ALTER TABLE `baitap`
  ADD PRIMARY KEY (`ID_BT`),
  ADD KEY `ID_BH` (`ID_BH`),
  ADD KEY `ID_Lop` (`ID_Lop`);

--
-- Chỉ mục cho bảng `baitapph`
--
ALTER TABLE `baitapph`
  ADD PRIMARY KEY (`ID_BT`),
  ADD KEY `ID_BH` (`ID_BH`),
  ADD KEY `ID_HS` (`ID_HS`);

--
-- Chỉ mục cho bảng `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`ID_GV`),
  ADD KEY `ID` (`ID`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`ID_HS`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_Lop` (`ID_Lop`),
  ADD KEY `ID_GV` (`ID_GV`),
  ADD KEY `ID_PH` (`ID_PH`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`ID_KQ`),
  ADD KEY `ID_HS` (`ID_HS`);

--
-- Chỉ mục cho bảng `kq_kt`
--
ALTER TABLE `kq_kt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idHS_FK` (`id_hs`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`ID_Lop`);

--
-- Chỉ mục cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD PRIMARY KEY (`ID_PH`),
  ADD KEY `ID` (`ID`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions_lop2`
--
ALTER TABLE `questions_lop2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions_lop3`
--
ALTER TABLE `questions_lop3`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions_lop4`
--
ALTER TABLE `questions_lop4`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions_lop5`
--
ALTER TABLE `questions_lop5`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`ID_exercise`),
  ADD UNIQUE KEY `uq_user_exercise` (`ID`,`ID_BT`),
  ADD KEY `ID_BT` (`ID_BT`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `game`
--
ALTER TABLE `game`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `kq_kt`
--
ALTER TABLE `kq_kt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `questions_lop2`
--
ALTER TABLE `questions_lop2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `questions_lop3`
--
ALTER TABLE `questions_lop3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `questions_lop4`
--
ALTER TABLE `questions_lop4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `questions_lop5`
--
ALTER TABLE `questions_lop5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  ADD CONSTRAINT `baihoc_ibfk_1` FOREIGN KEY (`ID_Lop`) REFERENCES `lophoc` (`ID_Lop`);

--
-- Ràng buộc cho bảng `baitap`
--
ALTER TABLE `baitap`
  ADD CONSTRAINT `baitap_ibfk_1` FOREIGN KEY (`ID_BH`) REFERENCES `baihoc` (`ID_BH`),
  ADD CONSTRAINT `baitap_ibfk_2` FOREIGN KEY (`ID_Lop`) REFERENCES `lophoc` (`ID_Lop`);

--
-- Ràng buộc cho bảng `baitapph`
--
ALTER TABLE `baitapph`
  ADD CONSTRAINT `baitapph_ibfk_1` FOREIGN KEY (`ID_BH`) REFERENCES `baihoc` (`ID_BH`),
  ADD CONSTRAINT `baitapph_ibfk_2` FOREIGN KEY (`ID_HS`) REFERENCES `hocsinh` (`ID_HS`);

--
-- Ràng buộc cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Ràng buộc cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `hocsinh_ibfk_2` FOREIGN KEY (`ID_Lop`) REFERENCES `lophoc` (`ID_Lop`),
  ADD CONSTRAINT `hocsinh_ibfk_3` FOREIGN KEY (`ID_GV`) REFERENCES `giaovien` (`ID_GV`),
  ADD CONSTRAINT `hocsinh_ibfk_4` FOREIGN KEY (`ID_PH`) REFERENCES `phuhuynh` (`ID_PH`);

--
-- Ràng buộc cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `ketqua_ibfk_1` FOREIGN KEY (`ID_HS`) REFERENCES `hocsinh` (`ID_HS`);

--
-- Ràng buộc cho bảng `kq_kt`
--
ALTER TABLE `kq_kt`
  ADD CONSTRAINT `idHS_FK` FOREIGN KEY (`id_hs`) REFERENCES `hocsinh` (`ID_HS`);

--
-- Ràng buộc cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD CONSTRAINT `phuhuynh_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Ràng buộc cho bảng `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`ID_BT`) REFERENCES `baitap` (`ID_BT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
