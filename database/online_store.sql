-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 07:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `chi_muc_gio_hang`
--

CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chi_muc_gio_hang`
--

INSERT INTO `chi_muc_gio_hang` (`id`, `so_luong`, `ma_gio_hang`, `ma_san_pham`) VALUES
(18, 1, 3, 64),
(19, 1, 3, 63),
(20, 1, 3, 62);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `don_gia`, `so_luong`, `ma_don_hang`, `ma_san_pham`, `so_luong_dat`, `so_luong_nhan_hang`) VALUES
(1, 13980000, 2, 32, 62, 0, 0),
(2, 25990000, 1, 32, 57, 0, 0),
(3, 22490000, 1, 32, 54, 0, 0),
(4, 67410000, NULL, 38, 64, 9, 9),
(5, 22490000, NULL, 38, 54, 1, 1),
(6, 5490000, NULL, 38, 60, 1, 1),
(7, 49980000, NULL, 38, 56, 2, 2),
(8, 20970000, NULL, 38, 62, 3, 3),
(9, 8998000, NULL, 38, 63, 2, 2),
(10, 7490000, NULL, 39, 64, 1, 1),
(11, 7490000, NULL, 40, 64, 1, 1),
(12, 4499000, NULL, 40, 63, 1, 1),
(13, 6990000, NULL, 40, 62, 1, 1),
(14, 124000000, NULL, 41, 88, 1, 1),
(15, 15000000, NULL, 41, 85, 1, 1),
(16, 5990000, NULL, 41, 61, 1, 1),
(17, 22495000, NULL, 41, 63, 5, 5),
(18, 14980000, NULL, 41, 64, 2, 2),
(19, 34930000, NULL, 41, 59, 7, 7),
(20, 7490000, NULL, 42, 64, 1, 1),
(21, 8998000, NULL, 42, 63, 2, 2),
(22, 6990000, NULL, 42, 62, 1, 1),
(23, 5990000, NULL, 42, 61, 1, 1),
(24, 33990000, NULL, 42, 6, 1, 1),
(25, 33990000, NULL, 42, 5, 1, 1),
(26, 28990000, NULL, 42, 4, 1, 1),
(27, 23990000, NULL, 42, 3, 1, 1),
(28, 49990000, NULL, 42, 8, 1, 1),
(29, 5490000, NULL, 42, 12, 1, 1),
(30, 5490000, NULL, 42, 11, 1, 1),
(31, 6690000, NULL, 42, 14, 1, 1),
(32, 5490000, NULL, 42, 13, 1, 1),
(33, 7490000, NULL, 43, 64, 1, 1),
(34, 8401500, NULL, 44, 89, 3, 0),
(35, 14980000, NULL, 44, 64, 2, 0),
(36, 4499000, NULL, 45, 63, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`) VALUES
(1, 'Laptop'),
(2, 'LINH KIỆN MÁY TÍNH'),
(3, 'PHỤ KIỆN CÁC LOẠI'),
(4, 'THIẾT BỊ VĂN PHÒNG');

-- --------------------------------------------------------

--
-- Table structure for table `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `don_hang`
--

INSERT INTO `don_hang` (`id`, `dia_chi_nhan`, `ghi_chu`, `ho_ten_nguoi_nhan`, `ngay_dat_hang`, `ngay_giao_hang`, `ngay_nhan_hang`, `sdt_nhan_hang`, `trang_thai_don_hang`, `ma_nguoi_dat`, `ma_shipper`, `tong_gia_tri`) VALUES
(31, 'bd', 'asdf', 'aaa', '2018-12-01 14:38:26', NULL, NULL, 'dsf', 'Đang chờ duyệt', NULL, NULL, 0),
(32, 'fadf', 'asdf', 'aaa', '2018-12-05 21:58:24', NULL, NULL, '13', 'created', 2, NULL, 0),
(33, 'Ha Noi', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-11 10:21:27', '2024-06-11 10:26:03', '2024-06-15 13:24:32', '0379114725', 'Hoàn thành', 5, 3, 18979000),
(34, 'Ha Noi', NULL, 'Nguyen Thanh Trung', '2024-06-11 10:21:32', '2024-06-11 10:26:08', NULL, '0379114725', 'Đang giao', 5, 7, 18979000),
(35, 'Ha Noi', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-11 10:21:39', '2024-06-11 10:26:13', '2024-06-15 13:24:37', '0379114725', 'Hoàn thành', 5, 3, 18979000),
(36, 'ha  noi', 'Ghi chú shipper: \nxong', 'Nguyen Thanh Trung', '2024-06-11 15:53:32', '2024-06-11 15:55:54', '2024-06-15 13:24:59', '0379114725', 'Chờ duyệt', 2, 3, 156359000),
(37, 'Ha noi', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-11 16:20:25', '2024-06-15 13:23:55', '2024-06-15 13:24:42', '0379114725', 'Hoàn thành', 2, 3, 175338000),
(38, 'Ha noi', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-11 16:21:01', '2024-06-15 13:23:59', '2024-06-15 13:24:45', '0379114725', 'Hoàn thành', 2, 3, 175338000),
(39, 'hn', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-12 11:07:23', '2024-06-15 13:24:01', '2024-06-15 13:24:48', '0379114725', 'Hoàn thành', 2, 3, 7490000),
(40, 'sa', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-12 11:07:50', '2024-06-15 13:24:04', '2024-06-15 13:24:50', '0379114725', 'Hoàn thành', 2, 3, 18979000),
(41, 'abc', 'Ghi chú shipper: \nxong<br> Ghi chú admin:\nxong', 'Nguyen Thanh Trung', '2024-06-15 13:23:27', '2024-06-15 13:24:06', '2024-06-15 13:24:53', '0379114725', 'Hoàn thành', 1, 3, 217395000),
(42, 'aaa', 'Ghi chú shipper: \nggg<br> Ghi chú admin:\naaa', 'Nguyen Thanh Trung', '2024-06-15 13:37:07', '2024-06-15 13:38:16', '2024-06-15 13:38:30', '0379114725', 'Hoàn thành', 2, 3, 223578000),
(43, '11', 'Ghi chú shipper: \nnhan hang<br> Ghi chú admin:\nthanh cong', 'Nguyen Thanh Trung', '2024-06-19 14:07:08', '2024-06-19 14:20:21', '2024-06-19 14:20:53', '0379114725', 'Hoàn thành', NULL, 3, 7490000),
(44, 'Ha Noi', NULL, 'Nguyen Thanh Trung', '2024-06-19 14:18:25', '2024-06-19 14:19:21', NULL, '0379114725', 'Đang giao', 2, 7, 23381500),
(45, 'ha noi', NULL, 'Nguyen Thanh Trung', '2024-06-28 12:07:40', NULL, NULL, '0379114725', 'Đang chờ giao', 2, NULL, 4499000);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `tong_tien`, `ma_nguoi_dung`) VALUES
(1, NULL, 2),
(2, NULL, 1),
(3, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang_san_xuat`) VALUES
(2, 'Apple'),
(3, 'Asus'),
(4, 'Acer'),
(5, 'Dell'),
(6, 'HP'),
(7, 'Lenovo'),
(8, 'MSI'),
(9, 'Masstel'),
(10, 'Haier');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`id`, `email_lien_he`, `ngay_lien_he`, `ngay_tra_loi`, `noi_dung_lien_he`, `noi_dung_tra_loi`, `trang_thai`, `ma_nguoi_tra_loi`) VALUES
(1, 'jko2k3trung@gmail.com', '2024-06-15 14:25:11', NULL, '12344', NULL, 'Đang chờ trả lời', NULL),
(2, 'jko2k3trung@gmail.com', '2024-06-19 14:28:38', NULL, 'Rat tot', NULL, 'Đang chờ trả lời', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`ma_nguoi_dung`, `ma_vai_tro`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 2),
(5, 2),
(6, 1),
(7, 3),
(8, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `dia_chi`, `email`, `ho_ten`, `password`, `so_dien_thoai`) VALUES
(1, 'Ha Noi', 'admin@gmail.com', 'Vũ Anh Tú', '$2a$10$/VFMNUPBKNVRMjxPFCYKZ.lKahoLQda0EaAxdqoun1w3DqwNLa2me', '123456789'),
(2, 'Ha Noi\nct1 van canh', 'member@gmail.com', 'Trung Nguyen', '$2a$10$j7Upgupou72GBmukz0G6pOATk3wlCAgaoFCEqAhSvLToD/V/1wlpu', '123456789'),
(3, 'Ha Noi', 'shipper@gmail.com', 'Tran Tri', '$2a$10$u2B29HDxuWVYY3fUJ8R2qunNzXngfxij5GpvlFAEtIz3JpK/WFXF2', '0123456789'),
(4, 'Ha Noi', 'jvgiveup@gmail.com', 'Thanh Trung', '$2a$10$ZCqCO9gSWt8A8HNXAWq8luqfNbJm0uG3PsUlzry0aRLwO3VHQZTmy', '123456'),
(5, 'Ha Noi', 'jko2k3trung@gmail.com', 'Nguyen Thanh Trung', '$2a$10$G9xxTBvHOE5uiYeLUAhvgec3WZIxVfcWpjKWq2E/ELGqFVUuzT6Ey', '0379114724'),
(6, 'Ha Noi', 'adtrung@gmail.com', 'Nguyen Thanh Trung', '$2a$10$M2r04oRLmMrreauvA8txt.jmJPWsNd8O4NR6TEO8cGzmIAlLy1g8W', '0379114725'),
(7, 'Ha Noi', 'shiptrung@gmail.com', 'Nguyen Thanh Trung', '$2a$10$5n1kLszyPt06o7qNxGZ.y.rXWslLsX77JURqYM5wlcVzXJcu8Q66W', '0379114725'),
(8, 'Ha Noi', 'haocodon@gmail.com', 'Nguyen Tien Hao', '$2a$10$2PsPqco1wIZ7lHtbfWu2F.uAH6g04BjDGYrFOw2/vq1WrHm7dWvIW', '113'),
(9, 'Quang Ninh', 'vntrung723@gmail.com', 'Nguyen Tien Hao', '$2a$10$9imdT3oL8T26N8sJH4r8Iunrvul5/9FIMi2NnDXVjGBcmbj3d06Mm', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `dung_luong_pin` varchar(255) DEFAULT NULL,
  `he_dieu_hanh` varchar(255) DEFAULT NULL,
  `man_hinh` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thiet_ke` varchar(255) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(3, 'Intel, Core i5, 1.8 Ghz', 23990000, 1, 99, '5800mAh', ' Mac Os', ' 13.3 inch LED-backlit', '8 GB, LPDDR3, 1600 Mhz', 'Macbook Air 13 128GB MQD32SA/A (2017)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(4, ' Intel, Core i5, 1.8 Ghz', 28990000, 1, 99, '6000mAh', 'Mac Os', '13.3 inch LED-backlit', ' 8 GB, LPDDR3, 1600 Mhz', 'Macbook Air 13 256GB MQD42SA/A (2017)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(5, 'Intel, Core M3, 1.2 GHz', 33990000, 1, 149, '6000mAh', 'Mac Os', ' 12 inch LED-backlit', '8 GB, LPDDR3, 1866 MHz', 'Macbook 12 256GB (2017)', 'thiết kế không có thay đổi so với phiên bản 2016 nhưng Apple đã nâng cấp thêm bộ nhớ và giới thiệu bộ vi xử lý Intel thế hệ thứ 7', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 2),
(6, ' Intel, Core i5, 2.3 GHz', 33990000, 1, 199, '6000mAh', 'Mac Os', ' 13.3 inch LED-backlit', ' 8 GB, LPDDR3, 2133MHz', 'Macbook Pro 13 inch 128GB (2017)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(7, 'Intel, Core i5, 2.3GHz', 44990000, 0, 100, '7000mAh', 'Mac Os', '13.3 inch, Retina (2560 x 1600 pixels)', '8 GB, LPDDR3, 2133 MHz', 'Macbook Pro 13 Touch Bar 256 GB (2018)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(8, 'Intel, Core i5, 2.3GHz', 49990000, 1, 149, '7000mAh', 'Mac Os', '13.3 inch, Retina (2560 x 1600 pixels)', '8 GB, LPDDR3, 2133 MHz', 'Macbook Pro 13 Touch Bar 512 GB (2018)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(9, 'Intel, Core i7, 2.2GHz', 59990000, 0, 200, '7000mAh', 'Mac Os', '15.4 inch, Retina (2880 x 1800 pix', '16GB, LPDDR4, 2400MHz', 'Macbook Pro 15 Touch Bar 256 GB (2018)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(10, 'Intel, Core i7, 2.2GHz', 69990000, 0, 120, '7000mAh', 'Mac Os', '15.4 inch, Retina (2880 x 1800 pi', '16GB, LPDDR4, 2400MHz', 'Macbook Pro 15 Touch Bar 512 GB (2018)', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình', 1, 2),
(11, ' Intel Celeron N3350', 5490000, 1, 99, '7000', 'Windows 10', '14 inch HD LED Glare', ' 4 GB DDR3', 'Asus E402NA-GA034T', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Bàn phím chiclet cùng Touchpad thông minh', 1, 3),
(12, 'Intel Celeron N3060', 5490000, 1, 199, '7000', 'Windows 10', '14.0 inch HD Ultra Slim 200nits', '2 GB DDR3L 1600 MHz', 'Asus Vivobook E406SA-BV001T', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Bàn phím chiclet cùng Touchpad thông minh', 1, 3),
(13, 'Intel Celeron N3060', 5490000, 1, 199, '7000', 'Windows 10', '14.0 inch HD Ultra Slim 200nits', '2 GB DDR3 1600 MHz', 'Asus Vivobook E406SA-BV043T', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'gọn,nhẹ, độ bền cao', 1, 3),
(14, 'Intel Celeron N4000', 6690000, 1, 119, '7000', ' Windows 10', '15.6 inch Anti-Glare LED Backlit', ' 4 GB DDR4 2400 MHz', 'Asus Vivobook X507MA-BR208T/Celeron N4000', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(15, 'Intel Pentium N4200', 7290000, 0, 110, '6000', 'Windows 10', '15.6 inch HD LED', ' 4 GB, DDR3L, 1600 MHz', 'Asus X541NA-GO012T/Pentium N4200', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(16, 'Intel, Core i3-6100U', 8990000, 0, 130, '7000', 'Windows 10 Home', '15.6 inch LED Backlight', '4 GB DDR4 2133 MHz', 'Asus X541UA-XX272T/Core i3 6100U', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(17, ' Intel, Core i3, 2.0 GHz', 8990000, 0, 200, '7000', ' Free DOS', '15.6 inchHD LED backlight', '4 GB, DDR4, 2400MHz', 'Asus X541UA-GO1345', 'thiết kế với lớp vỏ bằng nhựa giúp cho máy trở nên nhẹ nhàng hơn', '12 tháng', 'tinh tế đến từng chi tiết', 1, 3),
(18, ' Intel, Core i3, 2.0 GHz', 10490000, 0, 300, '7000', 'Window 10', ' 15.6 inchLED Backlight', ' 4 GB, DDR4, 2400MHz', 'Asus X541UJ-DM544T/Core i3-6006U', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 3),
(19, ' Intel, Celeron, 1.10 GHz', 5990000, 0, 300, '7000', ' Linux', '5.6 inchAcer CineCrystal LED', ' 4 GB DDR3L 1333 MHz', 'Acer AS A315-31-C8GB', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(20, ' Intel Celeron N4000', 6090000, 0, 100, '8000', 'Linux', ' 15.6 inchs HD LED Backlight', '4 GB DDR4 2133 MHz', 'Acer A315-32-C9A4 ', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(21, ' Intel Core i3-7020U', 8990000, 0, 100, '8000', ' Linux', '14.0 inchs HD LED', '4 GB DDR4 2400 MHz', 'Acer E5-476-33BQ', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(22, ' Intel Core i3-6006U', 8990000, 0, 50, '5000', 'Linux', '15.6 inch HD', ' 4 GB DDR4 2133MHz', 'Acer A315-51-3932/Core i3-6006U', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(23, 'Intel Core i3-7020U', 9390000, 0, 300, '6000', 'Linux', '15.6 inchs HD LED Backlight', '4 GB DDR4 2133 MHz', 'Acer AS A315-51-325E', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(24, ' Intel Core i3', 9990000, 0, 130, '5000', 'Linux', '15.6 inch  HD', ' 4 GB DDR4 2133 MHz', 'Acer A315-51-364W', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(25, ' Intel, Core i3, 2.4 Ghz', 10690000, 0, 120, '5000', 'Free DOS', ' 15.6 inchFull HD', ' 4 GB, DDR4, 2133 MHz', 'Acer Aspire E5-575G-39QW', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(26, ' Intel Core i5-8250U', 16990000, 0, 130, '6000', ' Windows 10 Home', '14.0 inchs FHD IPS LCD', ' 4 GB DDR4 2133 MHz', 'Acer Swift SF314-52-55UF', 'thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 4),
(27, ' Intel Pentium N3710', 6990000, 0, 110, '5000', ' Ubuntu', '15.6 inchs HD Truelife', ' 4 GB DDR3 1600 MHz', 'Dell Inspiron N3552', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(28, ' Intel Pentium N3710', 9990000, 0, 100, '5000', 'Ubuntu', '15.6 inchs HD Truelife', ' 4 GB DDR3 1600 MHz', 'Dell Inspiron N3567C', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(29, 'Intel, Core i3, 2.0 GHz', 9990000, 0, 100, '6000', 'Ubuntu 16.04', '14 inchHD Anti-Glare LED', '4 GB, DDR4, 2400MHz', 'Dell Inspiron N3467', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(30, ' Intel Core i3-6006U', 10890000, 0, 120, '7000', 'Linux', '15.6 inchs', ' 4 GB DDR4 2400 MHz', 'Dell Vostro 3568', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(31, ' Intel, Core i3, 2.0 GHz', 11190000, 0, 90, '6000', ' Free DOS', ' 15.6 inchHD LED', ' 4 GB, DDR3L, 1600 Mhz', 'Dell Ins N3567', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(32, ' Intel Core i3-7020U', 11590000, 0, 80, '7000', ' Ubuntu', '15.6 inch HD Anti Glare LED', '4 GB DDR4 2400 MHz', 'Dell Inspiron N3576', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(33, 'Intel Core i3-7020U', 11890000, 0, 110, '8000', ' Windows 10 Home', '15.6 inches Anti-Glare LED', ' 4 GB DDR4 2400 MHz', 'Dell Vostro 3568', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(34, ' Intel, Core i3, 2.40 GHz', 12490000, 0, 100, '8000', 'Free DOS', '14 inchHD Anti-Glare LED', '4 GB, DDR4, 2133 MHz', 'Dell Vostro V5468/i3', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 5),
(35, ' Intel Celeron', 5990000, 0, 100, '5000', 'Linux', ' 15.6 inchs', ' 4 GB DDR3L 1600 MHz', 'HP 15-bs644TU/Celeron-N3060', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(36, ' Intel Celeron N4000', 6190000, 0, 70, '7000', ' Windows 10 Home', ' 15.6 inchs HD HD SVA ', ' 4 GB DDR4 2400 MHz', 'HP 15-da0107TU/Celeron', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(37, ' Intel Penitum N3710', 6990000, 0, 120, '8000', 'Windows 10', '15.6 inch', ' 4GB DDR4', 'HP 15-bs648TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(38, ' Intel, Core i3, 2.0 GHz', 8990000, 0, 80, '8000', ' Free Dos', '15.6 inch LED-backlit', ' 4GB, DDR4, 2133 MHz', 'HP 15-bs555TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(39, ' Intel, Core i3, 2.0 GHz', 10490000, 0, 90, '7000', ' Free DOS', ' 15.6 inchHD SVA BrightView', ' 4 GB, DDR4, 2133 MHz', 'HP 15-bs637TX', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(40, ' Intel Core i3-7100U', 11490000, 0, 90, '6000', ' Free DOS', ' 15.6 inch', ' 4GB DDR4', 'HP Pavilion 15-cc043TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(41, ' Intel, Core i5, 2.50 GHz', 12190000, 0, 100, '8000', 'Free DOS', '15.6 inchHD SVA BrightView', ' 4 GB, DDR4, 2133 MHz', 'HP 15-bs559TU', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(42, ' Intel Core i3-7100U', 12990000, 0, 150, '7000', 'Windows 10 Home Single', ' 11.6 inch HD', ' 4 GB DDR4 2133 MHz', 'HP Pavilion X360 11', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 6),
(43, 'Intel, Celeron, 1.10 GHz', 4990000, 0, 100, '6000', ' Windows 10 EM', ' 11.6 inchHD LED', ' 2 GB, LPDDR4, 2400MHz', 'Lenovo Ideapad 120S-11IAP', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(44, ' Intel, Pentium, 1.60 GHz', 5490000, 0, 120, '5000', ' Free DOS', '14 inchHD LED backlight', ' 4 GB, DDR3L, 1600 MHz', 'Lenovo IdeaPad 110', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(45, ' Intel, Pentium, 1.10 GHz', 7490000, 0, 80, '7000', ' Windows 10', ' 11.6 inchHD TN AG TOUCH', ' 4 GB, DDR3L, 1600 MHz', 'Lenovo Yoga 310-11IAP', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(46, 'Intel Core i3-6006U', 8990000, 0, 120, '7000', 'FreeDOS', ' 14.0 inchs HD LED', ' 4 GB DDR4 2133 MHz', 'Lenovo Ideapad 320-14ISK ', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(47, 'Intel Core i5-8250U', 10990000, 0, 130, '5000', ' Windows 10 Home', ' 14.0 inchs HD LED', '4 GB DDR4 2133 MHz', 'Lenovo Ideapad 330-14IKBR', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(48, ' Intel, Core i5, 2.50 GHz', 11290000, 0, 120, '5000', 'Linux', ' 15.6 inchFull HD', ' 4 GB, DDR4, 2133 MHz', 'Lenovo IdeaPad 310-15IKB', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(49, ' Intel Core i5-8250U', 13490000, 0, 130, '6000', 'Linux', ' 14.0 inchs FHD IPS', '4 GB DDR4 2400 MHz', 'Lenovo Ideapad 330S-14IKBR', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(50, ' Intel, Core i5, 2.50 GHz', 15990000, 0, 200, '7000', 'Windows 10 Single', ' 15.6 inchAnti-Glare LED', ' 4 GB, DDR4, 2133 MHz', 'Lenovo ThinkPad E570', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Thiết kế hoàn mỹ tinh tế và sang trọng', 1, 7),
(51, ' Intel, Core i5, 2.50 GHz', 18990000, 0, 300, '7000', ' Free DOS', ' 15.6 inchWide-View', '4 GB, DDR4, 2133 MHz', 'MSI GL62M 7RDX – 1036XVN', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(52, ' Intel Core i5-8250U', 20990000, 0, 120, '8000', 'Windows 10 Home', '14.0 inchs FHD IPS 72%', ' 8 GB DDR4 2666 MHz', 'MSI PS42 8M-296VN/i5-8250U', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(53, ' Intel Core i5-8300H', 21490000, 0, 130, '7000', ' Windows 10 Home', '15.6 inchs Wideview 94%NTS', '8 GB DDR4 2400MHz', 'MSI GV62 8RC-063VN/i5-8300H', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(54, ' Intel Core i5-8300H', 22490000, 1, 139, '7000', 'Windows 10', '15.6 inchs FullHD IPS 45% ', ' 8 GB DDR4 2666 MHz', 'MSI GF63 8RC-203VN/I5-8300H', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(55, ' Intel, Core i7, 2.8 GHz', 23990000, 0, 150, '8000', '  DOS', '  17.3 inch', ' 8 GB, DDR4, 2400 MHz', 'MSI GL72M 7REX - 1427XVN', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(56, ' Intel, Core i7, 2.80 GHz', 24990000, 2, 108, '7000', ' Free DOS', ' 15.6 inchWide-View', ' 8 GB, DDR4, 2400MHz', 'MSI GF62 7RE-1818XVN', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(57, ' Intel Core i7-8750H', 25990000, 0, 110, '7000', 'Windows 10 Home', '15.6 inchs FullHD IPS 45%', ' 8 GB DDR4 2666 MHz', 'MSI GF63 8RD-218VN/i7-8750H', 'Sỡ hữu phong cách thiết kế truyền thống của MSI', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(58, ' Intel, Core i5, 2.50 GH', 19990000, 0, 100, '8000', 'Free DOS', '15.6 inchWide-View', ' 8 GB, DDR4, 2133 MHz', 'MSI GL62M 7RDX-1817XVN', 'Thiết kế gọn gàng để di chuyển', '12 tháng', 'Lớp vỏ đen nhám được phủ cao su mềm đặc trưng đem đến trải nghiệm cầm nắm tốt hơn. Các thành phần của nắp máy bao gồm vỏ, màn hình và viền màn hình đều được ép chặt để tối ưu trọng lượng chỉ còn 2.2 kg', 1, 8),
(59, 'Intel Celeron N3350 1.10 GHz', 4990000, 7, 93, '5000', 'Windows 10', '13.3 inch FullHD IPS', '3 GB LPDDR3 1600 MHz', 'Masstel L133', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(60, 'Intel Celeron N3350 1.10 GHz', 5490000, 1, 99, '5000', 'Windows 10', '13.3 inch FullHD IPS', '3 GB LPDDR3 1600 MHz', ' Masstel L133/Celeron N3350', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(61, ' Intel Celeron N3350 1.10 GHz', 5990000, 2, 98, '4000', 'Windows 10', ' 13.3 inch FullHD IPS', ' 3 GB LPDDR3 1600 MHz', 'Masstel L133 Celeron N3350', 'Thiết kế gọn gàng để di chuyển', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(62, 'Intel Celeron N4100', 6990000, 5, 45, '4000', 'Windows 10', '13.3 inchs FullHD IPS', '4 GB LPDDR4', 'Masstel L133 Pro/Celeron N4100', 'Thiết kế siêu mỏng nhẹ', '6 tháng', 'thiết kế để giúp bạn làm việc hiệu quả suốt cả ngày dài, kể cả khi bạn đang di chuyển. Máy tính xách tay 13.3 inchs nhỏ gọn và có mức giá hợp lý, trọng lượng chỉ 1.2 Kg và thời lượng pin bền bỉ, phù hợp với những bạn trẻ năng động', 1, 9),
(63, ' Intel Celeron N3350', 4499000, 10, 40, '5000', 'FreeDOS', '13.3 inchs IPS LCD', ' 3 GB DDR3L 1600 MHz', 'Haier S1 HR-13M/Celeron N3350', 'Thiết kế siêu mỏng nhẹ', '6 tháng', 'Một chiếc laptop đời mới thời trang, siêu mỏng nhẹ phục vụ tối ưu cho công việc nhưng lại trong tầm giá rất rẻ', 1, 10),
(64, ' Intel Pentium N4200', 7490000, 15, 45, '4000', 'FreeDOS', '13.3 inchs IPS LCD', ' 6 GB DDR3L 1600 MHz', 'Haier S1 HR-13MZ/Pentium N4200', 'Thiết kế siêu mỏng nhẹ', '6 tháng', 'Một chiếc laptop đời mới thời trang, siêu mỏng nhẹ phục vụ tối ưu cho công việc nhưng lại trong tầm giá rất rẻ', 1, 10),
(65, NULL, 10300999, 0, 100, NULL, NULL, NULL, NULL, 'PC Acer Aspire TC-780 ', NULL, '12 tháng', '-	Bộ vi xử lý Core i5-7400 (3.00GHz,6MB) \r\n-	RAM 4 GB DDR4 2133MHz UDIMM \r\n-	Ổ cứng 1TB 3.5 inch 7200rpm \r\n-	VGA Intel HD Graphics 530', 2, 4),
(66, NULL, 9800000, 0, 80, NULL, NULL, NULL, NULL, 'PC Acer Aspire XC-885 ', NULL, '6 tháng', '-	Bộ vi xử lý : Intel Core i5-7400 (3.00 GHz/6MB) \r\n-	RAM : 4 GB DDR4 2400 MHz \r\n-	Ổ cứng : 1TB SATA 3.5\" 7200RPM \r\n-	VGA : Nvidia GT720 2GB Graphics', 2, 4),
(67, NULL, 90, 0, 90, NULL, NULL, NULL, NULL, 'PC Acer Aspire TC-780 DT.B89SV.009', NULL, '6 tháng', '-	Bộ vi xử lý Pentium G4560(3.50 GHz,3MB) \r\n-	RAM 4 GB DDR4 2133MHz UDIMM \r\n-	Ổ cứng 1TB 3.5 inch 7200rpm \r\n-	VGA Intel HD Graphics', 2, 4),
(68, NULL, 190, 0, 100, NULL, NULL, NULL, NULL, 'PC Acer Aspire TC-780 ', NULL, '6 tháng', '-	Bộ vi xử lý Core i3-7100 (3.90 GHz,3MB) \r\n-	RAM 4 GB DDR4 2133MHz UDIMM \r\n-	Ổ cứng 1TB 3.5 inch 7200rpm \r\n-	VGA Intel HD Graphics', 2, 4),
(69, NULL, 10067840, 0, 90, NULL, NULL, NULL, NULL, 'PC Acer Aspire M230 ', NULL, ' 6 tháng', 'CPU i3-7100 \r\nRAM 4GB \r\nHDD 1TB', 2, 4),
(70, NULL, 19000345, 0, 90, NULL, NULL, NULL, NULL, 'PC Acer Aspire XC-885 DT.BAQSV.002', NULL, '6 tháng', 'CPU i5-8400(6*2.80) \r\nRAM 4G \r\nHDD 1TB \r\nDOS', 2, 4),
(71, NULL, 10000012, 0, 300, NULL, NULL, NULL, NULL, 'PC Dell Optilex 3060SFF', NULL, '6 tháng', 'PC Dell Optilex 3060SFF-8400-1TBKHDD i5 8400/4GB/1TB/DVDRW/K+M/DOS\r\n', 2, 5),
(72, NULL, 15000500, 0, 200, NULL, NULL, NULL, NULL, 'PC Dell Vostro 3670 J84NJ2 i7 ', NULL, '6 tháng', 'Intel Core i5-8400 Processor (9MB, 6T, 2.8GHz, up to 4.0, 65W) \r\nHDD 1TB 7200 rpm SATA \r\n4GB 2666 MHz DDR4', 2, 5),
(73, NULL, 13000000, 0, 100, NULL, NULL, NULL, NULL, 'PC Dell Vostro 3670 J84NJ21 i7 ', NULL, '6 tháng', 'Sức mạnh xử lý: Đảm đương khối lượng công việc của bạn một cách nhanh chóng và hiệu quả với bộ vi xử lý i7-8700 thế hệ thứ 8, bộ nhớ lên đến 8GB DDR4, và card đồ họa GTX 1050. \r\nMở rộng dễ dàng: 1TB dung lượng lưu trữ HDD ', 2, 5),
(74, NULL, 12000000, 0, 50, NULL, NULL, NULL, NULL, 'PC Dell Vostro 3670 ', NULL, '6 tháng', 'Sức mạnh xử lý: Đảm đương khối lượng công việc của bạn một cách nhanh chóng và hiệu quả với bộ vi xử lý i7-8700 thế hệ thứ 8, bộ nhớ lên đến 8GB DDR4, và card đồ họa GTX 1050. \r\nMở rộng dễ dàng: 1TB dung lượng lưu trữ HDD', 2, 5),
(75, NULL, 12000000, 0, 70, NULL, NULL, NULL, NULL, 'PC Dell Optilex 3050SFF', NULL, '6 tháng', 'Intel Core i5-7500 Processor (6MB, 4T, 3.4GHz, 65W) \r\nHDD 1TB 7200 rpm SATA \r\n4GB 2400MHz DDR4', 2, 5),
(76, NULL, 12500600, 0, 70, NULL, NULL, NULL, NULL, 'PC Dell All in One 3277B ', NULL, '6 tháng', 'Intel Pentium 4415U (2.30GHz, 3MB), \r\n4GB DDR4 2400MHz, \r\nHDD 1TB, Intel HD Graphics 620 , \r\n21.5 inch Full HD IPS LED Backlit \r\nWin 10', 2, 5),
(77, NULL, 13400000, 0, 100, NULL, NULL, NULL, NULL, 'PC HP Pavilion 590-p0055d 4LY13AA i5 ', NULL, '6 tháng', 'Bộ Vi xử lý: Core i5-8400(2.80 GHz,9MB) \r\nRAM: 4GB DDR4 \r\nỔ cứng: 1TB HDD \r\nHệ điều hành: Win 10 Home 64', 2, 6),
(78, NULL, 12000670, 0, 100, NULL, NULL, NULL, NULL, 'PC HP 280 G4 MT i7 ', NULL, '6 tháng', 'Máy tính để bàn HP 280 G4 Microtower - 4LU27PA \r\nBộ vi xử lý Core i7-8700(3.20 GHz,12MB) \r\n8GB RAM DDR4, 1TB HDD, DVDRW \r\nĐồ họa Intel UHD Graphics, Keyboard, USB Mouse,FreeDos', 2, 6),
(79, NULL, 12000500, 0, 70, NULL, NULL, NULL, NULL, 'PC HP ProDesk 400 G5 SFF i5', NULL, '6 tháng', 'PC HP ProDesk 400 G5 SFF - 4TT16PA \r\nBộ vi xử lý Intel Core i5 8500 3.0Ghz \r\nRAM 4GB / 500GB / DVDRW', 2, 6),
(80, NULL, 14500500, 0, 80, NULL, NULL, NULL, NULL, 'PC HP 280 G4 MT 4LU29PA i3 ', NULL, '6 tháng', 'Máy tính để bàn HP 280 G4 Microtower - 4LU29PA \r\nBộ vi xử lý Intel Core i3-8100(3.60 GHz,6MB) \r\n4GB RAM DDR4, 1TB HDD, DVDRW \r\nIntel UHD Graphics, Keyboard, USB Mouse, FreeDos', 2, 6),
(81, NULL, 11600000, 0, 90, NULL, NULL, NULL, NULL, 'PC HP 270-p010d i5 ', NULL, '6 tháng', 'Máy tính để bàn HP 280 G4 Microtower - 4LU29PA \r\nBộ vi xử lý Intel Core i3-8100(3.60 GHz,6MB) \r\n4GB RAM DDR4, 1TB HDD, DVDRW \r\nIntel UHD Graphics, Keyboard, USB Mouse, FreeDos', 2, 6),
(82, NULL, 13500000, 0, 80, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00EVA i3', NULL, '6 tháng', 'PC Lenovo V530S - 10TXA001VA \r\nBộ vi xử lý Intel Celeron G4900 3.1Ghz \r\nRAM 4GB/ HDD 500GB/ K+M/ WL/ DOS', 2, 7),
(83, NULL, 12700500, 0, 70, NULL, NULL, NULL, NULL, 'PC Lenovo IdeaCentre 510s-08IKL ', NULL, '6 tháng', '-	Bộ vi xử lý : Intel Core i3-7100 Processor (2 x 3.90GHz) \r\n-	RAM : 4GB DDR4/ 2400MHz \r\n-	Ổ cứng : 1TB SATA3 (7200rpm) \r\n-	VGA : Intel HD Graphics 630', 2, 7),
(84, NULL, 10400000, 0, 90, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 ', NULL, '6 tháng', 'Bộ vi xử lý	Intel G4560 \r\nChipset	Intel B250 Chipset \r\nBộ nhớ trong	4GB DDR4 \r\nSố khe cắm	2 \r\nDung lượng tối đa	32GB \r\nVGA	Intel® HD 610 \r\nỔ cứng	500GB 7200RPM \r\nỔ quang	DVDRW', 2, 7),
(85, NULL, 15000000, 0, 79, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00TVA i7', NULL, '6 tháng', 'CPU i7-7700(3.6GHz/8MB) \r\nRAM 4GB DDR4 \r\nHDD 1TB 7200RPM, \r\nDVDRW, \r\nUSB Calliope Keyboard,USB Mouse', 2, 7),
(86, NULL, 10500000, 0, 90, NULL, NULL, NULL, NULL, 'PC Lenovo IdeaCentre 510', NULL, '6 tháng', '-	Bộ vi xử lý: Intel Core i3-7100 ( 3.90 GHz / 3MB cache ) \r\n-	RAM: 4GB DDR4 2400UDIMM \r\n-	Ổ cứng: 1TB SATA 7200RPM \r\n-	VGA: Intel® HD Graphics 630', 2, 7),
(87, NULL, 10500000, 0, 90, NULL, NULL, NULL, NULL, 'PC Lenovo V530S', NULL, '6 tháng', 'PC Lenovo V530S-07ICB - 10TXA000VN \r\nBộ vi xử lý Intel Core i3 8100 3.6Ghz \r\nRAM 4GB/ HDD 1TB/ K+M/ WL/ Win10', 2, 7),
(88, NULL, 124000000, 0, 79, NULL, NULL, NULL, NULL, 'PC Lenovo ThinkCentre V520 10NKA00TVA i7 ', NULL, '6 tháng', 'CPU i7-7700(3.6GHz/8MB) \r\nRAM 4GB DDR4 \r\nHDD 1TB 7200RPM, \r\nDVDRW, \r\nUSB Calliope Keyboard,USB Mouse', 2, 7),
(89, NULL, 2800500, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe ASUS ROG Strix Fusion 300 Surround 7.1', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nHệ thống Led màu đỏ nổi bật \r\nCó thể sử dụng 3,5mm và USB linh hoạt', 3, 3),
(90, NULL, 3200000, 0, 120, NULL, NULL, NULL, NULL, 'Tai nghe ASUS ROG Strix Fusion Wireless', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(91, NULL, 10000000, 0, 90, NULL, NULL, NULL, NULL, 'Tai nghe ASUS ROG Strix Fusion 500', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nHệ thống Led RGB 16,8 triệu màu \r\nCó thể sử dụng 3,5mm và USB linh hoạt \r\nĐiều chỉnh qua bề mặt cảm ứng của củ tai', 3, 3),
(92, NULL, 4200123, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Asus STRIX 2.0- ROG Gaming Headset', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nHệ thống Led RGB 16,8 triệu màu \r\nCó thể sử dụng 3,5mm và USB linh hoạt \r\nĐiều chỉnh qua bề mặt cảm ứng của củ tai', 3, 3),
(93, NULL, 3200000, 0, 50, NULL, NULL, NULL, NULL, 'Tai nghe Asus Centurion - ROG Gaming Headset', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(94, NULL, 1002356, 0, 60, NULL, NULL, NULL, NULL, 'Tai Nghe Asus CERBERUS V2 - Red / Black', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(95, NULL, 2500000, 0, 70, NULL, NULL, NULL, NULL, 'Tai nghe Asus Gaming Asus Strix Pro', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(96, NULL, 3000000, 0, 100, NULL, NULL, NULL, NULL, 'Tai nghe Asus gaming ROG Strix Wireless', NULL, '6 tháng', 'Tai nghe chơi game cao cấp từ ASUS ROG \r\nMàng loa dài 50mm \r\nGiả lập âm thanh vòm 7.1 \r\nThiết kế trùm tai cho độ thoải mái tối đa \r\nKết nối không dây No-Lag qua USB Receiver', 3, 3),
(97, NULL, 43000000, 0, 100, NULL, NULL, NULL, NULL, 'Màn hình Acer Nitro 23.8\"VG240Y LED IPS', NULL, '6 tháng', 'Kích Thước Màn Hình	23.8 INCH \r\nĐộ Sáng Màn Hình	250 cd/m² \r\nTỉ Lệ Tương Phản Động MEGA	100,000,000:1 \r\nĐộ Phân Giải Màn Hình	1920*1080 \r\nThời Gian Đáp Ứng	1ms \r\nHỗ trợ màu	16.7 million colours \r\nGóc nhìn	178/178', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL,
  `ten_vai_tro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_SHIPPER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  ADD KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`);

--
-- Indexes for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  ADD KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`);

--
-- Indexes for table `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  ADD KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`);

--
-- Indexes for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`);

--
-- Indexes for table `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`);

--
-- Indexes for table `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  ADD KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  ADD KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`);

--
-- Indexes for table `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  ADD CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`);

--
-- Constraints for table `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`);

--
-- Constraints for table `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
