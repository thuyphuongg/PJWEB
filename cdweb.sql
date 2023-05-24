-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 06:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `name`, `url`) VALUES
(1, '1', 'web/image-product/banner/background-1.jpg'),
(2, '2', 'web/image-product/banner/background-2.jpg'),
(3, '3', 'web/image-product/banner/cay-canh-lam-qua-tang-2.jpg'),
(4, '4', 'web/image-product/banner/cay-sen-da-xanh.jpg'),
(5, '5', 'web/image-product/banner/hoa-dong-tien.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `code`, `name`) VALUES
(1, 'cay-de-ban', 'CÂY ĐỂ BÀN'),
(2, 'cay-canh-phong-thuy', 'CÂY CẢNH PHONG THỦY'),
(3, 'cay-canh-sen-da', 'CÂY CẢNH SEN ĐÁ'),
(4, 'cay-canh-van-phong', 'CÂY CẢNH VĂN PHÒNG'),
(5, 'cay-day-leo', 'CÂY DÂY LEO'),
(6, 'cay-thuy-sinh', 'CÂY THỦY SINH');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `tree_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `confirmation_token`
--

CREATE TABLE `confirmation_token` (
  `token_id` bigint(20) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `tree_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `path`, `tree_id`) VALUES
(4, 'web/image-product/cay-canh-de-ban/cay-hanh-phuc-thuy-sinh-255x255.jpg', 4),
(3, 'web/image-product/cay-canh-de-ban/cay-dua-canh-nen.jpg', 3),
(2, 'web/image-product/cay-canh-de-ban/cay-nhat-mat-huong-255x255.jpg', 2),
(5, 'web/image-product/cay-canh-de-ban/cay-huong-thao.jpg', 5),
(6, 'web/image-product/cay-canh-de-ban/cay-kim-ngan-3-than.jpg', 6),
(9, 'web/image-product/cay-canh-de-ban/cay-sen-da-giva-255x255.jpg', 9),
(10, 'web/image-product/cay-canh-de-ban/cay-sen-da-kim-cuong-tim-255x255.jpg', 10),
(1, 'web/image-product/cay-canh-de-ban/cay-phu-quy-de-ban-dep-255x255.jpg', 1),
(8, 'web/image-product/cay-canh-de-ban/cay-sao-sang-thuy-sinh.jpg', 8),
(7, 'web/image-product/cay-canh-de-ban/cay-cung-dien-vang.jpg', 7),
(11, 'web/image-product/cay-canh-de-ban/chau-cay-kim-tien-dep-mix.jpg', 11),
(12, 'web/image-product/cay-canh-de-ban/cay-sen-da-pha-le-420x420.jpg', 12),
(13, 'web/image-product/cay-canh-de-ban/cay-trang-nguyen.jpg', 13),
(14, 'web/image-product/cay-canh-de-ban/cay-trau-ba-de-vuong.jpg', 14),
(15, 'web/image-product/cay-canh-de-ban/cay-xuong-rong-bong-gon.jpg', 15),
(16, 'web/image-product/cay-canh-de-ban/duoi-cong-van-vang-dep-255x255.jpg', 16),
(17, 'web/image-product/cay-canh-de-ban/sen-da-lien-dai-hong-255x255.jpg', 17),
(18, 'web/image-product/cay-canh-de-ban/sen-da-mat-trang.jpg', 18),
(19, 'web/image-product/cay-canh-de-ban/sen-da-mong-rong.jpg', 19),
(20, 'web/image-product/cay-canh-de-ban/sen-da-nuda-255x255.jpg', 20),
(21, 'web/image-product/cay-canh-phong-thuy/cay-kim-ngan.jpg', 21),
(22, 'web/image-product/cay-canh-phong-thuy/cay-hanh-phuc.jpg', 22),
(23, 'web/image-product/cay-canh-phong-thuy/cay-bang-nhat.jpg', 23),
(24, 'web/image-product/cay-canh-phong-thuy/cay-phat-tai-nui.jpg', 24),
(25, 'web/image-product/cay-canh-phong-thuy/cay-truc-nhat.jpg', 25),
(26, 'web/image-product/cay-canh-phong-thuy/cay-cau-canh.jpg', 26),
(27, 'web/image-product/cay-canh-phong-thuy/cay-cuc-mam-xoi.jpg', 27),
(28, 'web/image-product/cay-canh-phong-thuy/cay-truc-may.jpeg', 28),
(29, 'web/image-product/cay-canh-phong-thuy/cay-chuoi-re-quat.jpg', 29),
(30, 'web/image-product/cay-canh-phong-thuy/cay-truong-sinh.jpg', 30),
(31, 'web/image-product/cay-canh-phong-thuy/cay-phu-quy.jpg', 31),
(32, 'web/image-product/cay-canh-phong-thuy/duoi-cong-van-vang.jpg', 32),
(33, 'web/image-product/cay-canh-phong-thuy/cay-hoa-da-yen-thao.jpg', 33),
(34, 'web/image-product/cay-canh-phong-thuy/cay-nguyet-que.jpg', 34),
(35, 'web/image-product/cay-canh-phong-thuy/cay-bang-cam-thach-la-tim.jpg', 35),
(36, 'web/image-product/cay-canh-phong-thuy/bang-singapore.jpg', 36),
(37, 'web/image-product/cay-canh-phong-thuy/cay-monstera.jpg', 37),
(38, 'web/image-product/cay-canh-phong-thuy/cay-huong-thao.jpg', 38),
(39, 'web/image-product/cay-canh-phong-thuy/cay-tung-thom.jpg', 39),
(40, 'web/image-product/cay-canh-phong-thuy/cay-thuong-xuan.jpg', 40),
(41, 'web/image-product/cay-canh-sen-da/sen-da-xanh.jpg', 41),
(42, 'web/image-product/cay-canh-sen-da/sen-da-vien-hong.jpg', 42),
(43, 'web/image-product/cay-canh-sen-da/sen-da-vang.jpg', 43),
(44, 'web/image-product/cay-canh-sen-da/sen-da-thai.jpg', 44),
(45, 'web/image-product/cay-canh-sen-da/sen-da-tu-phuong.jpg', 45),
(46, 'web/image-product/cay-canh-sen-da/sen-da-phat-ba.jpg', 46),
(47, 'web/image-product/cay-canh-sen-da/sen-da-nau.jpg', 47),
(48, 'web/image-product/cay-canh-sen-da/sen-da-mong-rong-vien-trang.jpg', 48),
(49, 'web/image-product/cay-canh-sen-da/sen-da-mat-trang.jpg', 49),
(50, 'web/image-product/cay-canh-sen-da/sen-da-hoa-cuc.jpg', 50),
(51, 'web/image-product/cay-canh-sen-da/sen-da-dat.jpg', 51),
(52, 'web/image-product/cay-canh-sen-da/sen-da-chuoi-ngoc-bi.jpg', 52),
(53, 'web/image-product/cay-canh-sen-da/sen-da-bong-hong-trang.jpg', 53),
(54, 'web/image-product/cay-canh-sen-da/sen-da-bong-hong-den.jpg', 54),
(55, 'web/image-product/cay-canh-sen-da/sen-da-bap-cai.jpg', 55),
(56, 'web/image-product/cay-canh-sen-da/sen-da-3-mau.jpg', 56),
(57, 'web/image-product/cay-canh-sen-da/sen-da-3d.jpg', 57),
(58, 'web/image-product/cay-canh-sen-da/cay-sen-da-hong-phan.jpg', 58),
(59, 'web/image-product/cay-canh-sen-da/cay-sen-da-hai-ly.jpg', 59),
(60, 'web/image-product/cay-canh-sen-da/cay-sen-da-giva.jpg', 60),
(61, 'web/image-product/cay-canh-van-phong/cay-bang-singapore-nhieu-nhanh.jpg', 61),
(62, 'web/image-product/cay-canh-van-phong/cay-cau-canh.jpg', 62),
(63, 'web/image-product/cay-canh-van-phong/cay-chuoi-re-quat.jpg', 63),
(64, 'web/image-product/cay-canh-van-phong/cay-duoi-cong-tao-xanh.jpg', 64),
(65, 'web/image-product/cay-canh-van-phong/cay-hong-mon.jpg', 65),
(66, 'web/image-product/cay-canh-van-phong/cay-kim-ngan.jpg', 66),
(67, 'web/image-product/cay-canh-van-phong/cay-lan-y.jpg', 67),
(68, 'web/image-product/cay-canh-van-phong/cay-luoi-ho.jpg', 68),
(69, 'web/image-product/cay-canh-van-phong/cay-monstera.jpg', 69),
(70, 'web/image-product/cay-canh-van-phong/cay-ngoc-ngan.jpg', 70),
(71, 'web/image-product/cay-canh-van-phong/cay-tung-thom.jpg', 71),
(72, 'web/image-product/cay-canh-van-phong/cay-thuong-xuan.jpg', 72),
(73, 'web/image-product/cay-canh-van-phong/cay-trau-ba-cot.jpg', 73),
(74, 'web/image-product/cay-canh-van-phong/cay-truc-may.jpeg', 74),
(75, 'web/image-product/cay-canh-van-phong/cay-truong-sinh.jpg', 75),
(76, 'web/image-product/cay-canh-van-phong/cay-van-nien-thanh.jpg', 76),
(77, 'web/image-product/cay-canh-van-phong/cay-xuong-rong-bong-gon.jpg', 77),
(78, 'web/image-product/cay-canh-van-phong/chau-cay-kim-tien-dep-mix.jpg', 78),
(79, 'web/image-product/cay-canh-van-phong/Duong-xi-cam-thach.jpg', 79),
(80, 'web/image-product/cay-canh-van-phong/cay-trang-nguyen.jpg', 80),
(81, 'web/image-product/cay-day-leo/cay-binh-an.jpg', 81),
(82, 'web/image-product/cay-day-leo/cay-cuc-tan-an-do.jpg', 82),
(83, 'web/image-product/cay-day-leo/cay-day-leo-hoa-mai-hoang-yen.jpg', 83),
(84, 'web/image-product/cay-day-leo/cay-day-leo-tam-xuan.jpg', 84),
(85, 'web/image-product/cay-day-leo/cay-giot-suong.jpg', 85),
(86, 'web/image-product/cay-day-leo/cay-hoa-leo-tigon.jpg', 86),
(87, 'web/image-product/cay-day-leo/cay-lan-hat-dua.jpg', 87),
(88, 'web/image-product/cay-day-leo/cay-lan-tim.jpg', 88),
(89, 'web/image-product/cay-day-leo/cay-mini-monstera.jpg', 89),
(90, 'web/image-product/cay-day-leo/cay-hoa-thien-ly.png', 90),
(91, 'web/image-product/cay-day-leo/cay-thuong-xuan.jpg', 91),
(92, 'web/image-product/cay-day-leo/cay-trau-ba.jpg', 92),
(93, 'web/image-product/cay-day-leo/cay-trau-ba-cot.jpg', 93),
(94, 'web/image-product/cay-day-leo/chau-cay-day-nhen.jpg', 94),
(95, 'web/image-product/cay-day-leo/chau-cay-van-nien-thanh.jpg', 95),
(96, 'web/image-product/cay-day-leo/hoa-hong-leo-tuong-vi.jpg', 96),
(97, 'web/image-product/cay-day-leo/hoa-su-quan-tu.jpg', 97),
(98, 'web/image-product/cay-day-leo/hoa-tu-dang.jpg', 98),
(99, 'web/image-product/cay-day-leo/hoa-hoang-thao.jpg', 99),
(100, 'web/image-product/cay-day-leo/cay-thien-ly.jpg', 100),
(101, 'web/image-product/cay-thuy-sinh/cay-van-loc-trong-nuoc.jpg', 101),
(102, 'web/image-product/cay-thuy-sinh/cay-sao-sang-thuy-sinh.jpg', 102),
(103, 'web/image-product/cay-thuy-sinh/cay-thuy-tung.jpg', 103),
(104, 'web/image-product/cay-thuy-sinh/cay-ngoc-ngan-thuy-sinh.jpg', 104),
(105, 'web/image-product/cay-thuy-sinh/cay-phu-quy-thuy-sinh.jpg', 105),
(106, 'web/image-product/cay-thuy-sinh/cay-lan-y-thuy-sinh.jpg', 106),
(107, 'web/image-product/cay-thuy-sinh/co-dong-tien.jpg', 107),
(108, 'web/image-product/cay-thuy-sinh/cay-kim-ngan-thuy-sinh.jpg', 108),
(109, 'web/image-product/cay-thuy-sinh/cay-hanh-phuc-thuy-sinh.jpg', 109),
(110, 'web/image-product/cay-thuy-sinh/cay-troc-bac-thuy-sinh.jpg', 110),
(111, 'web/image-product/cay-thuy-sinh/cay-trau-ba.jpg', 111),
(112, 'web/image-product/cay-thuy-sinh/cay-kim-tien.jpg', 112),
(113, 'web/image-product/cay-thuy-sinh/cay-bach-thuy-tien.jpg', 113),
(114, 'web/image-product/cay-thuy-sinh/cay-thanh-tam.jpg', 114),
(115, 'web/image-product/cay-thuy-sinh/cay-phat-tai-bup-sen.jpg', 115),
(116, 'web/image-product/cay-thuy-sinh/cay-van-nien-thanh.jpg', 116),
(117, 'web/image-product/cay-thuy-sinh/cay-trau-ba.jpg', 117),
(118, 'web/image-product/cay-thuy-sinh/cay-phat-tai.jpg', 118),
(119, 'web/image-product/cay-thuy-sinh/cay-luoi-ho.jpg', 119),
(120, 'web/image-product/cay-thuy-sinh/cay-ngu-gia-bi.jpg', 120);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

CREATE TABLE `ordered` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ordered_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ordered`
--

INSERT INTO `ordered` (`id`, `address`, `name`, `ordered_date`, `phone`, `received_date`, `status`, `total_price`, `user_id`) VALUES
(1, '', '', '2023-05-23 21:39:06', '', NULL, 'ĐANG XỬ LÝ', 160000, 2),
(2, '', '', '2023-05-23 21:39:29', '', NULL, 'ĐANG XỬ LÝ', 130600, 2),
(3, '', '', '2023-05-23 23:34:55', '', NULL, 'ĐANG XỬ LÝ', 175000, 2),
(4, '', '', '2023-05-23 23:35:15', '', NULL, 'ĐANG XỬ LÝ', 419000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_item`
--

CREATE TABLE `ordered_item` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `tree_id` bigint(20) DEFAULT NULL,
  `ordered_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ordered_item`
--

INSERT INTO `ordered_item` (`id`, `quantity`, `total_price`, `tree_id`, `ordered_id`) VALUES
(1, 1, 135000, 21, 1),
(2, 1, 105600, 5, 2),
(3, 1, 150000, 106, 3),
(4, 1, 135000, 103, 4),
(5, 1, 133000, 102, 4),
(6, 1, 126000, 72, 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_token`
--

CREATE TABLE `password_reset_token` (
  `token_id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `series` varchar(255) NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `tree_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `description` text NOT NULL,
  `discount` float DEFAULT 0,
  `hot_tree` bit(1) DEFAULT b'0',
  `new_tree` bit(1) DEFAULT b'0',
  `price` bigint(20) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `quantity_sold` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `active`, `description`, `discount`, `hot_tree`, `new_tree`, `price`, `quantity`, `name`, `category_id`, `quantity_sold`) VALUES
(1, b'1', 'Cây Phú Quý để bàn có kích thước nhỏ gọn, chiều cao cả chậu chỉ khoảng 30-35cm rất phù hợp để bàn làm việc, bàn uống nước, các không gian nhỏ như vách tủ, kệ sách, kệ tivi…', 10, b'0', b'1', 200000, 19, 'Cây Phú Quý\r\n', 1, 5),
(2, b'1', 'Cây Nhất Mạt Hương hay còn có tên gọi khác là cây Sen Đá Lá Thơm. Sở dĩ cây có tên như vậy vì cây có chứa tinh dầu thơm trong lá và thân. Khi bạn chạm nhẹ vào cây sẽ tỏa ra mùi hương thơm dễ chịu giống mùi bạc hà. Trong phong thủy cây mang ý nghĩa giúp giữ tài chính, giúp gia chủ chi tiêu hợp lý. Ngoài ra cây còn tác dụng đuổi côn trùng và muỗi.\r\n', 15, b'1', b'0', 150000, 25, 'Cây Nhất Mạt Hương', 1, 5),
(3, b'1', 'Cây Dứa Cảnh Nến hay còn có tên gọi khác như: Cây Phong Lộc Hoa, Cây Ngôi Sao, Cây Dứa Cánh Sen…Cây có tên khoa học là Tillandsia imperalis thuộc họ thực vật Dứa Bromeliaceae có nguồn gốc từ châu Mỹ, nhiều nhất là các nước Mehico và Equador. Cây được trồng rất phổ biến làm cây cảnh nội thất ở nước ta.', 10, b'1', b'0', 120000, 20, 'Cây Dứa Cảnh Nến', 1, 5),
(4, b'1', 'Cây Hạnh Phúc được nhiều người chọn mua, để tặng sếp hoặc đặt ở những văn phòng lớn, phòng khách lớn, tặng khai trương, tân gia. Với ý nghĩa mang đến hạnh phúc và sự phát triển vững bền.', 15, b'1', b'0', 300000, 22, 'Cây Hạnh Phúc', 1, 5),
(5, b'1', 'Cây Hương Thảo đang được rất nhiều người ưa thích trồng làm cây cảnh, cây gia vị. Cây có mùi thơm dễ chịu giúp tinh thần sảng khoái, đuổi côn trùng.', 12, b'0', b'1', 120000, 13, 'Cây Hương Thảo', 1, 6),
(6, b'1', 'Cây Kim Ngân 3 thân rất gọn nhưng tán lá lại xum xuê. Số ba gọi là tam tài, tam giáo tượng trưng cho thiên, địa, nhân hay người ta có câu là thiên thời địa lợi nhân hòa, cũng có nơi thì quan niệm phong thủy của họ số 3 là tượng trưng cho phước, lộc và thọ. Cây phù hợp để bàn làm việc rộng, quầy thu ngân, tặng khai trương các shop nhỏ, để kệ tivi…', 15, b'1', b'0', 230000, 20, 'Cây Kim Ngân 3 Thân', 1, 5),
(7, b'1', 'Cây Cung Điện Vàng hay còn được gọi là cây Huy Hoàng, Hoàng Mai mini, cây Cung Điện Hoàng Hậu. Cây thuộc họ ráy tương đồng với các loại cây như Cây Ngọc Ngân, Cây Vạn Lộc…Cây Cung Điện Vàng có màu sắc lá rất bắt mắt nên hay được chọn làm cây văn phòng, cây để bàn, cây nội thất, cây phong thủy và cây để trong nhà. Cây phù hợp phong thủy với người mệnh Kim và Mệnh Thủy.', 12, b'1', b'0', 250000, 30, 'Cây Cung Điện Vàng', 1, 5),
(8, b'1', 'Nhờ đặc điểm dễ chăm sóc, không cần ánh nắng nhiều, tán lá nổi bật nên cây Sao Sáng phù hợp làm cây trang trí nội thất, cây phong thủy và làm quà tặng.', 15, b'0', b'0', 120000, 21, 'Cây Sao Sáng Thủy Sinh', 1, 5),
(9, b'1', 'Cây Sen Đá Giva có cánh hơi bầu màu xanh, phù hợp làm cây phong thủy cho người mệnh mộc và hỏa. Cây phù hợp để ban công, cửa sổ, ngoài hiên, quán cà phê.\r\n', 10, b'0', b'0', 50000, 21, 'Cây Sen Đá Giva', 1, 5),
(10, b'1', 'Khác với những chiếc lá Sen Đá thông thường. Lá cây Sen Đá Kim Cương Tím vát hơn cây có màu tím, hồng và hơi đỏ. Khi ở thời tiết lạnh và nhiều ánh sáng cây sẽ lên màu càng đậm. Nếu ở thời tiết mát, ánh sáng ít thì sẽ có màu xanh nhiều hơn.', 12, b'0', b'0', 60000, 30, 'Cây Sen Đá Kim Cương Tím', 1, 5),
(11, b'1', 'Cây Kim Tiền để bàn có chiều cao 30cm – 35cm, với đường kính chậu là 16cm rất phù hợp làm quà tặng hoặc cây để bàn giám đốc, quầy lễ tân, bàn phòng khách, cây trang trí…Cây mang ý nghĩa phong thủy đến tiền bạc và sự may mắn cho gia chủ. Cây lọc khí bụi và khí độc cực tốt.', 15, b'1', b'0', 150000, 20, 'Cây Kim Tiền', 1, 5),
(12, b'1', 'Sen Đá Pha Lê là loại cây mọng nước, có lá hơi nhọn và thuôn dài ở phần đầu giống như những viên pha lê xinh xắn. Biểu tượng cho tình yêu vĩnh cửu và giàu sang phú quý.', 10, b'1', b'0', 80000, 20, 'Sen Đá Pha Lê', 1, 4),
(13, b'1', 'Cây Hoa Trạng Nguyên có ý nghĩa phong thủy mang đến thành công, đỗ đạt và may mắn. Cây phù hợp làm cây cảnh văn phòng, quầy lễ tân, quầy thu ngân, cây cảnh để trước cửa nhà.', 10, b'1', b'0', 90000, 20, 'Cây Trạng Nguyên', 1, 4),
(14, b'1', 'Cây có chiều cao từ 80-90cm độ rộng tán khoảng 80cm. Rất phù hợp với không gian rộng nhưng độ cao từ sàn đến trần thấp. Cây phù hợp tặng khai trương, tân gia, cây cảnh trong nhà, văn phòng...', 10, b'0', b'0', 190000, 10, 'Cây Trầu Bà Đế Vương', 1, 4),
(15, b'1', 'Cây Xương Rồng Bông Gòn hay có tên là Mammillaria Plumosa, là loại xương rồng khá đặc biệt với lớp gai phủ kín mềm nhìn khá giống cục bông.', 10, b'1', b'0', 90000, 20, 'Cây Xương Rồng Bông Gòn', 1, 4),
(16, b'1', 'Cây có chiều cao cả chậu 55cm phù hợp để làm cây quà tặng, cây khai trương, để kệ tivi, bàn uống uống, ban công, trang trí quán cà phê, cây trang trí nội thất...', 10, b'0', b'0', 190000, 20, 'Cây Đuôi Công Vân Vàng', 1, 4),
(17, b'1', 'Sen Đá Liên Đài Hồng thuộc dòng sen đài tuy nhiên lại có sức sống rất mạnh, phù hợp cho các bạn mới chơi thích dòng sen đài chưa biết chăm sóc.\r\n', 10, b'1', b'0', 150000, 20, 'Sen Đá Liên Đài Hồng', 1, 4),
(18, b'1', 'Cây Sen Đá Mặt Trăng phù hợp với người mệnh kim và thổ giúp mang đến tiền tài và danh vọng. Cây phù hợp làm cây để bàn, trang trí quán cà phê, cửa sổ...', 15, b'1', b'0', 100000, 19, 'Sen Đá Mặt Trăng', 1, 4),
(19, b'1', 'Sen đá móng rồng viền trắng hay còn gọi là sen ngựa vằn, lá dài và nhọn ở đầu, mọc xung quanh trục, trên lá còn có các viền trắng nhỏ giống như chú ngựa vằn. Cây phù hợp để bàn làm viêc, bàn học, trang trí bàn cà phê...', 10, b'0', b'0', 100000, 10, 'Sen Đá Móng Rồng Viền Trắng', 1, 4),
(20, b'1', 'Cây sen đá Nuda có màu xanh, dạng đài, bông thường nhỏ và mọc theo bụi. Cây rất dễ sống và có sức phát triển khỏe, không cần yêu cầu nhiều ánh sáng, phù hợp nơi thoáng mát như ban công, cửa sổ, hiên nhà, quán cà phê…', 15, b'0', b'0', 90000, 20, 'Sen Đá Nuda', 1, 4),
(21, b'1', 'Cây Kim Ngân tượng trưng cho sự vững trãi, hiên ngang. Cây có ý nghĩa phong thủy mang đến tiền bạc và sự may mắn cho gia chủ.\r\n\r\nCây có chiều cao khoảng 130cm – 150cm rất phù hợp để phòng sếp, đại sảnh, phòng khách, tặng sếp, tặng tân gia, trang trí các không gian sang trọng và cao cấp.', 10, b'1', b'0', 150000, 20, 'Cây Kim Ngân', 2, 13),
(22, b'1', 'Cây Hạnh Phúc được nhiều người chọn mua, để tặng sếp hoặc đặt ở những văn phòng lớn, phòng khách lớn, tặng khai trương, tân gia. Với ý nghĩa mang đến hạnh phúc và sự phát triển vững bền.', 10, b'0', b'0', 120000, 30, 'Cây Hạnh Phúc', 2, 10),
(23, b'1', 'Cây có chiều cao 1m phù hợp để decor sân vườn, quán cà phê, ban công, hiên nhà. Cây ưa nơi nhiều ánh sáng, dễ sống và chăm sóc.', 20, b'0', b'0', 200000, 20, 'Cây Bàng Nhật', 2, 10),
(24, b'1', 'Cây Phát Tài Núi có hình dáng hùng vĩ, đạt chiều cao lên tới 5m, khi nhìn vào sẽ thấy sự uy nghiêm và độc đáo. Loại cây này có phần thân gỗ với nhiều phân cành từ gốc, rễ phụ mọc từ thân cây.', 10, b'0', b'0', 20, 10, 'Cây Phát Tài Núi', 2, 10),
(25, b'1', 'Cây Trúc Nhật với thân hình mềm mại. Cây mang ý nghĩa phong thủy gặp dữ hóa lành, thăng tiến trong công việc và sự nghiệp nên được tặng trong các dịp như khai trương, sinh nhật hay thăng quan tiến chức.', 10, b'0', b'0', 150000, 30, 'Cây Trúc Nhật', 2, 10),
(26, b'1', 'Cây phù hợp để trước hiên, cạnh cửa sổ, ban công, nơi có nhiều ánh sáng.', 0, b'0', b'0', 160000, 22, 'Cây Cau Cảnh', 2, 11),
(27, b'1', 'Cây cúc mâm xôi với tán rộng 70cm chiều cao 60. Rất hợp chọn làm cây trưng tết đặt ở trước cửa nhà để đón khách. Với ý nghĩa trường thọ và may mắn.', 0, b'0', b'0', 120000, 22, 'Cây Cúc Mâm Xôi', 2, 10),
(28, b'1', 'Cây Trúc Mây có lá rất đẹp, tượng trưng cho sự thăng tiến, một mối quan hệ bền chặt. Thường được dùng để làm quà tặng trọng những dịp đặc biệt như khai trương, thăng chức…', 0, b'0', b'0', 150000, 20, 'Cây Trúc Mây', 2, 11),
(29, b'1', 'Cây Chuối Rẻ Quạt là loại cây có lá to và xanh tốt quanh năm, cây phù hợp trồng biệt thự sân vườn, bể bơi, cây trồng trong nhà, cây trồng văn phòng, sản khách sạn, nhà hàng, quán cafe', 0, b'0', b'0', 120000, 30, 'Cây Chuối Rẻ Quạt', 2, 10),
(30, b'1', 'Cây Trường Sinh có tác dụng làm sạch không khí, hút các bụi bẩn và hấp thụ các chất độc hại. Trong phong thủy cây mang đến sức khỏe, tiền tài, may mắn cho gia chủ. Phù hợp làm cây để bàn làm việc, phòng khách, quầy lễ tân, quà tặng...', 0, b'0', b'0', 150000, 30, 'Cây Trường Sinh', 2, 10),
(31, b'1', 'Cây Phú Quý để bàn có kích thước nhỏ gọn, chiều cao cả chậu chỉ khoảng 30-35cm rất phù hợp để bàn làm việc, bàn uống nước, các không gian nhỏ như vách tủ, kệ sách, kệ tivi…', 0, b'0', b'0', 160000, 22, 'Cây Phú Quý', 2, 11),
(32, b'1', 'Cây có chiều cao cả chậu 55cm phù hợp để làm cây quà tặng, cây khai trương, để kệ tivi, bàn uống uống, ban công, trang trí quán cà phê, cây trang trí nội thất...', 0, b'0', b'0', 120000, 22, 'Cây Đuôi Công Vân Vàng', 2, 10),
(33, b'1', 'Hoa Dạ Yến Thảo còn có các tên gọi khác như: Dã Yến Thảo, Yến Thảo rủ. Cây có nguồn gốc từ Nam Mỹ với đặc điểm dễ sống và nhiều hoa, nên chúng ngày càng phổ biến trên nhiều quốc gia.', 0, b'0', b'0', 100000, 22, 'Hoa Dạ Yến Thảo', 2, 12),
(34, b'1', 'Cây Hoa Nguyệt Quế là cây rất tốt về phong thủy, có mùi thơm nhẹ, là cây thân gỗ, dễ sống, dễ chăm sóc và rất an toàn. Tuy nhiên cây cần có ánh sáng thì mới ra được nhiều hoa. Vì vậy cây thường được trồng ở trước cửa nhà, ban công.\r\n', 0, b'0', b'0', 180000, 40, 'Cây Hoa Nguyệt Quế', 2, 12),
(35, b'1', 'Thuộc dòng cây thân gỗ sống lâu năm. Cây bàng cẩm thạch lá tim ấn tượng với những chiếc lá viền vàng kem và hình trái tim xanh. Cây hợp phong thủy với người mệnh kim và thổ. Phù hợp trồng ở quán cà phê, cạnh cửa sổ, ngoài trời, ban công…', 0, b'0', b'0', 110000, 40, 'Cây Bàng Cẩm Thạch Lá Tim', 2, 20),
(36, b'1', 'Với chiều cao cả chậu 1m cây Bàng Singapore đơn thân gọn gàng, những chiếc lá to tròn mang ý nghĩa phong thủy may mắn và giàu sang. Cây phù hợp để trang trí nhà, các shop muốn để cây xanh nhưng khoảng không gian thừa ít, tặng khai trương, tân gia…', 0, b'0', b'0', 150000, 30, 'Cây Bàng Singapore', 2, 2),
(37, b'1', 'Với lá hình trái tim có nhiều vết xẻ lạ mắt, sống và phát triển tốt ở văn phòng và trong nhà. Chính vì thế cây đang rất được ưa thích làm cây nội thất, cây quà tặng', 0, b'0', b'0', 120000, 21, 'Cây Monstera', 2, 2),
(38, b'1', 'Cây Hương Thảo đang được rất nhiều người ưa thích trồng làm cây cảnh, cây gia vị. Cây có mùi thơm dễ chịu giúp tinh thần sảng khoái, đuổi côn trùng. Hương Thảo có hoa màu tím nhìn cũng rất đẹp, ngoài ra cây còn mang ý nghĩa phong thủy rất tốt.', 0, b'0', b'0', 170000, 22, 'Cây Hương Thảo', 2, 5),
(39, b'1', 'Cây Tùng Thơm hay còn Tùng Hương, Tùng Chanh cây có mùi hương chanh nhẹ dễ chịu, màu sắc cây tươi sáng nhìn rất nổi bật phù hợp làm cây trang trí, để văn phòng, bàn lễ tân...', 0, b'0', b'0', 180000, 30, 'Cây Tùng Thơm', 2, 8),
(40, b'1', 'Cây Thường Xuân mang ý nghĩa phong thủy xua đuổi tà ma, xóa tan âm khí, vượng dương khí mang đến bình an và may mắn cho gia chủ. Cây phù hợp để trang trí quán cà phê, nhà hàng, phòng họp...', 0, b'0', b'0', 190000, 20, 'Cây Thường Xuân', 2, 2),
(41, b'1', 'Cây sen đá xanh mang ý nghĩa cho một tình yêu, tình bạn vĩnh cửu theo thời gian. Cây nhỏ thường từ 10 - 20 cm, phù hợp dùng để trang trí bàn làm việc, góc học tập hoặc góc nhỏ riêng của bạn.', 10, b'1', b'0', 150000, 20, 'Sen Đá Xanh', 3, 5),
(42, b'1', 'Cây sen đá viền hồng phù hợp với việc trang trí bàn làm việc, góc học tập, góc nhỏ trong gia đình. Cây bé thường chỉ cao từ 10 -20 cm, mang ý nghĩa cho tình bạn bền chặt.', 10, b'0', b'1', 120000, 50, 'Sen Đá Viền Hồng', 3, 10),
(43, b'1', 'Sen đá vàng biểu tượng cho sự giàu sang và phú quý. Cây phù hợp để bàn làm việc, bàn làm việc, có thể trồng 3 , 5 cây vào một chậu thì sẽ đẹp hơn và mang đến cho gia chủ tài lộc...', 5, b'0', b'0', 100000, 50, 'Sen Đá Vàng', 3, 10),
(44, b'1', 'Sen đá thái là một trong những cây có rất nhiều lá lá xếp chồng nên nhau, dưới góc lại thường hay mọc các cây con nhỏ nhìn rất thích mắt. Cây mang biểu tượng cho một tình bạn luôn bền vững mãi theo thời gian. Cây phù hợp để bàn làm việc, bàn học, trang trí quán cà phê,..', 5, b'0', b'0', 110000, 50, 'Sen Đá Thái', 3, 11),
(45, b'1', 'Sen đá tứ phương mang ý nghĩa dù bạn có ở bốn phương trời, hay ở đi đâu cũng sẽ được may mắn, cây phù hợp để bàn làm việc, quán cà phê, bàn học...', 12, b'0', b'0', 180000, 25, 'Sen Đá Tứ Phương', 3, 10),
(46, b'1', 'Sen Đá Phật Bà là một trong những loại sen đá có nhiều lá mọng nước mọc xoay tròn đều quanh trục thân rất đẹp như một đóa hoa sen.', 0, b'0', b'0', 140000, 50, 'Sen Đá Phật Bà', 3, 10),
(47, b'1', 'Cây sen đá nâu hay còn gọi là sen chocolate, ý nghĩa cây sẽ mang lại một tình bạn sẽ mãi bền vững và không bao giờ phai nhòa theo thời gian. Cây phù hợp để bàn học, bàn làm việc, cửa sổ,...', 10, b'0', b'0', 90000, 20, 'Sen Đá Nâu', 3, 5),
(48, b'1', 'Sen đá móng rồng viền trắng hay còn gọi là sen ngựa vằn, lá dài và nhọn ở đầu, mọc xung quanh trục, trên lá còn có các viền trắng nhỏ giống như chú ngựa vằn. Cây phù hợp để bàn làm viêc, bàn học, trang trí bàn cà phê...', 0, b'1', b'0', 100000, 50, 'Sen Đá Móng Rồng Viền Trắng', 3, 10),
(49, b'1', 'Cây Sen Đá Mặt Trăng phù hợp với người mệnh kim và thổ giúp mang đến tiền tài và danh vọng. Cây phù hợp làm cây để bàn, trang trí quán cà phê, cửa sổ...', 10, b'0', b'1', 150000, 40, 'Sen Đá Mặt Trăng', 3, 4),
(50, b'1', 'Sen đá hoa cúc phù hợp để bàn làm việc, bàn cưới, quán cà phê,...Khiến cho chiếc bàn của bạn sẽ sang trọng hơn rất nhiều.', 10, b'0', b'1', 150000, 50, 'Sen Đá Hoa Cúc', 3, 10),
(51, b'1', 'Sen đá đất mang ý nghĩa cho một tình yêu, tình bạn vĩnh cửu theo thời gian. Cây có 2 màu xanh lá và xanh dương, rất phù hợp để trang trí bàn lễ tân, khách sạn, quán cà phê, bàn làm việc, bàn học...', 10, b'0', b'1', 90000, 30, 'Sen Đá Đất', 3, 5),
(52, b'1', 'Sen đá chuỗi ngọc bi mang đến sự đầy đủ. Cây phù hợp để ở cửa sổ, hiên trước cửa nhà,...', 5, b'1', b'0', 80000, 50, 'Sen Đá Chuỗi Ngọc Bi', 3, 10),
(53, b'1', 'Cây phù hợp để trang trí bàn làm việc, bàn cà phê, góc học tập, góc riêng của bạn...', 0, b'0', b'0', 90000, 30, 'Sen Đá Bông Hồng Trắng', 3, 3),
(54, b'1', 'Cây phù hợp để bàn làm việc, bàn học, tiểu cảnh,...\r\n', 0, b'0', b'0', 110000, 40, 'Sen Đá Bông Hồng Đen', 3, 5),
(55, b'1', 'Sen đá bắp cải có ý nghĩa cho một tình bạn vĩnh cửu theo thời gian. Ngoài ra về phong thủy nó còn mang ý nghĩa sung túc và đầm ấm trong gia đình. Cây sen bắp cải phù hợp để trang trí quán cà phê, bàn làm việc, góc học tập, cửa sổ....', 0, b'0', b'0', 120000, 22, 'Sen Đá Bắp Cải', 3, 10),
(56, b'1', 'Sen đá 3 màu là một loại sen có rất nhiều màu sắc và bắt mắt cây thường cao khoảng tầm >10 cm, có các cây con bên hông mọc phát triển như cây chính. Cây mang ý nghĩa cho sự sung túc, đuề huề và đầy đủ.', 0, b'0', b'0', 150000, 50, 'Sen Đá 3 Màu', 3, 10),
(57, b'1', 'Cây phù hợp để bàn làm việc, trang trí góc học tập, quán cà phê... Cây có cách chăm sóc khá đơn giản.', 10, b'0', b'0', 100000, 40, 'Sen Đá 3D', 3, 5),
(58, b'1', 'Sen đá hồng phấn có ý nghĩa cho một tình bạn bền vững mãi theo thời gian. Cây phù hợp để làm quà tặng, để bàn làm việc, trang trí quán cà phê, góc học tập...', 0, b'0', b'0', 110000, 29, 'Sen Đá Hồng Phấn', 3, 9),
(59, b'1', 'Loài cây có lớp phấn trắng và thường có thêm một đường kẻ ở giữa lá. Mang đến một cảm giác mới lạ. Cây phù hợp để ban công, ngoài trời.', 0, b'0', b'0', 140000, 20, 'Sen Đá Hải Ly', 3, 3),
(60, b'1', 'Cây Sen Đá Giva có cánh hơi bầu màu xanh, phù hợp làm cây phong thủy cho người mệnh mộc và hỏa. Cây phù hợp để ban công, cửa sổ, ngoài hiên, quán cà phê.\r\n', 0, b'0', b'0', 170000, 30, 'Sen Đá Giva', 3, 8),
(61, b'1', 'Cây có chiều cao khoảng 1m2 và khi vào chậu sứ là cao 1m2 - 1m5 tùy vào khách chọn chậu cao hay chậu thấp. Cây hơp tặng tân gia, khai trương, cây mua để trồng trước cửa, trong nhà...\r\n', 5, b'0', b'0', 300000, 50, 'Cây Bàng Singapore', 4, 10),
(62, b'1', 'Cây phù hợp để trước hiên, cạnh cửa sổ, ban công, nơi có nhiều ánh sáng.', 10, b'0', b'0', 200000, 20, 'Cây Cau Cảnh', 4, 1),
(63, b'1', 'Cây Chuối Rẻ Quạt là loại cây có lá to và xanh tốt quanh năm, cây phù hợp trồng biệt thự sân vườn, bể bơi, cây trồng trong nhà, cây trồng văn phòng, nhà hàng, quán cafe,...\r\n', 5, b'0', b'0', 190000, 30, 'Cây Chuối Rẻ Quạt', 4, 5),
(64, b'1', 'Bạn muốn tìm loại cây ấn tượng bản lá to mà không gian không quá lớn. Thì cây Đuôi Công Táo Xanh là một sự lựa chọn tuyệt vời cho bạn. Cây phù hợp làm cây trang trí kệ tivi, phòng khách, quầy lễ tân, quán cà phê, văn phòng...', 0, b'0', b'0', 160000, 22, 'Cây Đuôi Công Táo Xanh', 4, 10),
(65, b'1', 'Cây Hồng Môn tượng trưng cho lòng hiếu khách, cây phù hợp để bày phòng khách, quầy lễ tân, nơi nhiều người thường xuyên qua lại, hoặc để trang trí nội thất đều rất hợp.', 0, b'0', b'0', 120000, 40, 'Cây Hồng Môn', 4, 10),
(66, b'1', 'Cây có chiều cao cả chậu 1m3 - 1m5 đường kính chậu là 40cm. Phù hợp để phòng sếp, đại sảnh, phòng khách, tặng sếp, tặng tân gia, trang trí các không gian sang trọng và cao cấp.', 10, b'0', b'0', 300000, 50, 'Cây Kim Ngân', 4, 10),
(67, b'1', 'Cây Lan Ý thủy sinh có thể là một trong những loài cây hiếm hoi ra hoa được ở trong điều kiện không quá nhiều ánh sáng. Cây phù hợp để bàn làm việc, bàn học, phòng khách, trang trí quán cà phê, bàn lễ tân, trồng ban công mát, các không gian trống,…\r\n', 0, b'0', b'0', 150000, 30, 'Cây Lan Ý', 4, 8),
(68, b'1', 'Cây có chiều cao cả chậu hơn 1m. Nếu bạn đang tìm 1 loại cây để cho không gian lớn nhưng không muốn nó chiếm nhiều diện tích, quá lòe xòe và tốt cho sức khỏe thì cây Lưỡi Hổ là một sự lựa chọn tuyệt vời', 0, b'0', b'0', 120000, 50, 'Cây Lưỡi Hổ', 4, 11),
(69, b'1', 'Với lá hình trái tim có nhiều vết xẻ lạ mắt, sống và phát triển tốt ở văn phòng và trong nhà. Chính vì thế cây đang rất được ưa thích làm cây nội thất, cây quà tặng', 0, b'0', b'0', 100000, 40, 'Cây Monstera', 4, 8),
(70, b'1', 'Cây có lá khá nổi bật, vì tính tương phản giữa màu xanh thẫm của lá và màu trắng phần giữa lá, nó khiến người xem bị thu hút và thích thú ngay từ cái nhìn đầu tiên. Cây phù hợp để là cây cảnh nội thất, trang trí quán cà phê, văn phòng,…', 0, b'0', b'0', 170000, 40, 'Cây Ngọc Ngân', 4, 15),
(71, b'1', 'Cây Tùng Thơm hay còn Tùng Hương, Tùng Chanh cây có mùi hương chanh nhẹ dễ chịu, màu sắc cây tươi sáng nhìn rất nổi bật phù hợp làm cây trang trí, để văn phòng, bàn lễ tân,...', 10, b'0', b'1', 150000, 20, 'Cây Tùng Thơm', 4, 5),
(72, b'1', 'Cây Thường Xuân mang ý nghĩa phong thủy đem lại may mắn cho gia chủ. Cây phù hợp để trang trí quán cà phê, nhà hàng, phòng họp,...', 10, b'0', b'1', 140000, 49, 'Cây Thường Xuân', 4, 11),
(73, b'1', 'Cây Trầu Bà Cột rất được ưa chuộng vì cây rất dễ sống, lá to mang đến cho bạn một cảm giác xanh, cây phù hợp để phòng khách, tặng tân gia, để phòng sếp, quầy lễ tân,...', 0, b'0', b'0', 150000, 30, 'Cây Trầu Bà Cột', 4, 5),
(74, b'1', 'Cây Trúc Mây có lá rất đẹp, tượng trưng cho sự thăng tiến, một mối quan hệ bền chặt. Thường được dùng để làm quà tặng trọng những dịp đặc biệt như khai trương, thăng chức…\r\n', 10, b'0', b'0', 160000, 22, 'Cây Trúc Mây', 4, 2),
(75, b'1', 'Cây Trường Sinh có tác dụng làm sạch không khí, hút các bụi bẩn và hấp thụ các chất độc hại. Trong phong thủy cây mang đến sức khỏe, tiền tài, may mắn cho gia chủ. Phù hợp làm cây để bàn làm việc, phòng khách, quầy lễ tân, quà tặng,...', 0, b'0', b'0', 120000, 40, 'Cây Trường Sinh', 4, 10),
(76, b'1', 'Cây Vạn Niên Thanh có ý nghĩa phong thủy tăng tài vận cho gia chủ. Người ta quan niệm, trồng vạn niên thanh trong nhà ngày tết mang đến sự sung túc, trong hôn nhân cầu chúc hòa hợp như ý, trong lễ mừng thọ chúc được sống lâu. Cây phù hợp làm cây cảnh trong nhà, cây cảnh văn phòng giúp lọc sạch không khí, mang đến không gian sự tươi mới.', 0, b'0', b'0', 150000, 50, 'Cây Vạn Niên Thanh', 4, 10),
(77, b'1', 'Cây Xương Rồng Bông Gòn hay có tên là Mammillaria Plumosa, là loại xương rồng khá đặc biệt với lớp gai phủ kín mềm nhìn khá giống cục bông', 10, b'0', b'0', 80000, 50, 'Cây Xương Rồng Bông Gòn', 4, 10),
(78, b'1', 'Để cho cây kim tiền của bạn thêm sinh động và là món quà hấp dẫn hơn thì bạn không thể bỏ qua chậu cây kim tiền mix với cẩm nhung hay còn gọi là lá may mắn', 0, b'0', b'0', 190000, 40, 'Cây Kim Tiền', 4, 15),
(79, b'1', 'Cây Dương Xỉ Cẩm Thạch còn hấp thu tốt các chất độc hại đến sức khỏe con người,  đem lại không khí trong lành và tinh thần thoải mái cho con người.', 0, b'0', b'0', 130000, 40, 'Dương Xỉ Cẩm Thạch', 4, 11),
(80, b'1', 'Cây Trạng Nguyên có ý nghĩa phong thủy mang đến thành công, đỗ đạt và may mắn. Cây phù hợp làm cây cảnh văn phòng, quầy lễ tân, quầy thu ngân, cây cảnh để trước cửa nhà.', 0, b'0', b'0', 190000, 40, 'Cây Trạng Nguyên', 4, 12),
(81, b'1', 'Cây Bình An loại cây treo có ý nghĩa phong thủy mang đến sự bình an và may mắn, thường được treo trước cửa nhà để các thành viên trong nhà luôn được may mắn và bình an.', 5, b'0', b'1', 150000, 20, 'Cây Bình An', 5, 5),
(82, b'1', 'Cây cúc tần Ấn Độ thuộc vào họ cây dây leo thân thảo hóa gỗ, là cây sống lâu năm, có chiều dài từ khoảng 3-20m.', 0, b'0', b'0', 120000, 50, 'Cây Cúc Tần Ấn Độ', 5, 10),
(83, b'1', 'Cây mai hoàng yến có nhị đỏ, hoa vàng. Có thể trồng hàng rào, leo tầng, che nắng ban công. Bạn có thể trồng cây giống mai hoàng yến leo trong chậu, hoặc cây lớn trong sân vườn.', 0, b'0', b'0', 150000, 30, 'Hoa Mai Hoàng Yến', 5, 5),
(84, b'1', 'Tầm xuân là một loại cây dây leo, ra hoa đẹp nên thường được nhiều người dùng làm cây cảnh trong sân vườn, trang trí trên ban công, hàng rào, đặc biệt là trang trí Tết.', 0, b'0', b'0', 160000, 22, 'Cây Dây Leo Tầm Xuân', 5, 10),
(85, b'1', 'Cây Sen Đá có hình dáng lạ mắt, thuộc loại rủ rất phù hợp làm cây trang trí\r\n', 10, b'1', b'0', 120000, 22, 'Cây Sen Đá Giọt Sương', 5, 4),
(86, b'1', 'Cây hoa Tigon có mùi thơm nhẹ, thân lá mền mại thích hợp với người thích trồng cây leo nhẹ nhàng. Cây phù hợp trồng cây che nắng sân, cổng, hàng rào và ban công\r\n', 0, b'0', b'0', 150000, 50, 'Cây Hoa Leo Tigon', 5, 10),
(87, b'1', 'Cây Lan Hạt Dưa hay còn có tên gọi khác là Lan Đô La, Lan Hạt Dưa Cẩm Thạch,... Lá cây mọc đối xứng nhau và có nhiều phiên bản khác nhau như lá bản nhỏ như cúc áo, to như đồng xu, lá cũng có nhiều màu xanh đậm, xanh nhạt, hoặc xanh nhạt viền trắng (cẩm thạch).', 0, b'0', b'0', 170000, 50, 'Cây Lan Hạt Dưa', 5, 15),
(88, b'1', 'Cây lan tim có tên khoa học là Dischidia ruscifolia có nguồn gốc từ Thái Lan. Lan tim là loại cây thân thảo với dây leo xanh quanh năm, nhiều nhánh mọc rũ xuống đất, lá hình trái tim mọc đối xứng nhau với màu xanh đậm đẹp mắt. Cây lan tim rất thích hợp trồng trong nhà, trang trí ban công, cửa sổ bằng cách trồng lan tim trong chậu treo, kệ treo…', 0, b'0', b'0', 180000, 40, 'Cây Lan Tim', 5, 18),
(89, b'1', 'Cây Mini Monstera khá nổi bật với những chiếc lá xanh đậm và khuyết. Cây không cần chậu quá to chính vì thế cây rất phù hợp để trang trí những góc nhỏ trong nhà, quán cà phê, quà tặng...', 0, b'0', b'0', 110000, 20, 'Cây Mini Monstera', 5, 2),
(90, b'1', 'Cây Hoa Thiên Lý là dạng cây leo với nhiều tác dụng như: Làm giàn che nắng, làm thuốc chữa bệnh, làm thực phẩm...Cây phù hợp trồng giàn ở sân, cổng, hàng rào, ban công...', 0, b'0', b'0', 80000, 20, 'Cây Hoa Thiên Lý', 5, 4),
(91, b'1', 'Cây Thường Xuân mang ý nghĩa phong thủy mang đến bình an và may mắn cho gia chủ. Cây phù hợp để trang trí quán cà phê, nhà hàng, phòng họp...', 0, b'0', b'0', 150000, 20, 'Cây Thường Xuân', 5, 5),
(92, b'1', 'Cây có chiều cao từ 80-90cm độ rộng tán khoảng 80cm. Rất phù hợp với không gian rộng nhưng độ cao từ sàn đến trần thấp. Cây phù hợp tặng khai trương, tân gia, cây cảnh trong nhà, văn phòng...', 0, b'0', b'0', 120000, 50, 'Cây Trầu Bà', 5, 10),
(93, b'1', 'Cây Trầu Bà Cột rất được ưa chuộng vì cây rất dễ sống, lá to mang đến cho bạn một cảm giác xanh, cây phù hợp để phòng khách, tặng tân gia, để phòng sếp, quầy lễ tân...', 10, b'0', b'0', 150000, 30, 'Cây Trầu Bà Cột', 5, 10),
(94, b'1', 'Cây Cỏ Lan Chi hay còn gọi là cây Dây Nhện, cây Mẫu Tử...Cây có sọc trắng xanh nhìn rất bắt mắt và nổi bật, hợp làm cây phong thủy cho người mệnh Kim và Thủy. Cây Lan Chi phù hợp làm cây để bàn, cây trang trí nội thất, văn phòng, làm cây treo,...', 0, b'0', b'0', 160000, 22, 'Cây Cỏ Lan Chi', 5, 10),
(95, b'1', 'Cây Vạn Niên Thanh có ý nghĩa phong thủy tăng tài vận cho gia chủ. Cây phù hợp làm cây cảnh trong nhà, cây cảnh văn phòng giúp lọc sạch không khí, mang đến không gian tươi mới.', 0, b'0', b'0', 250000, 40, 'Cây Vạn Niên Thanh', 5, 10),
(96, b'1', 'Cây hồng leo cao trung bình từ 1 - 10m, thân leo, thuộc nhóm thân gỗ, các cành buông rũ xuống, rất đẹp. Thân và cành của cây hồng leo có các gai nhọn, cong.\r\n', 0, b'0', b'0', 150000, 50, 'Hoa Hồng Leo', 5, 10),
(97, b'1', 'Hoa sử quân tử (hay còn gọi là hoa giun, hoa trang leo) là một loại thực vật có hoa thuộc họ Trâm Bầu, có tên khoa học là Combretum Indicum. Cây hoa này có nguồn gốc từ các nước châu Á và châu Phi và hiện nay thường mọc tại vùng trung du, miền núi nước ta.', 0, b'0', b'0', 190000, 50, 'Hoa Sử Quân Tử', 5, 20),
(98, b'1', 'Hoa mọc thành chùm trong cành rủ xuống và dài từ 10-80cm rất đẹp, hoa có màu tím, hồng, trắng, tím đỏ hoặc vàng. Hoa tử đằng đặc biệt có mùi thơm nhẹ.', 0, b'0', b'0', 180000, 30, 'Hoa Tử Đằng', 5, 15),
(99, b'1', 'Cây hoa hoàng thảo là một trong những giống cây phát triển nhanh, dễ trồng và dễ chăm sóc, ít sâu bệnh, bạn có thể dễ dàng trồng và chăm sóc. Cây ưa nắng chịu hạn tốt , tuy nhiên là giống cây chịu úng rất kém nên bạn phải lựa chọn vị trí trồng nơi cao ráo.', 0, b'0', b'0', 150000, 20, 'Hoa Hoàng Thảo', 5, 2),
(100, b'1', 'Thiên lý là một loại thực vật dạng dây leo. Trong thiên nhiên, cây thiên lý mọc ở các cánh rừng thưa và nhiều cây bụi. Cây thường được trồng tạo thành giàn vừa giúp tạo bóng mát, vừa tô điểm thêm không gian của ngôi nhà.', 0, b'0', b'0', 100000, 50, 'Hoa Thiên Lý', 5, 10),
(101, b'1', 'Với sắc lá đỏ và sống tốt trong điều kiện thiếu sáng, cây Vạn Lộc thủy sinh cực kỳ phù hợp và cây nội thất, cây trang trí, làm quà tặng và cây phong thủy cho mệnh hỏa và thổ.', 10, b'0', b'1', 200000, 25, 'Cây Vạn Lộc', 6, 5),
(102, b'1', 'Nhờ đặc điểm dễ chăm sóc, không cần ánh nắng nhiều, tán lá nổi bật nên cây Sao Sáng phù hợp làm cây trang trí nội thất, cây phong thủy và làm quà tặng.', 5, b'0', b'1', 140000, 29, 'Cây Sao Sáng Thủy Sinh', 6, 12),
(103, b'1', 'Cây Thủy Tùng trong tự nhiên là loại cây mọc và sống trung gian giữa đất và nước nên bản thân nó mang ý nghĩa của sự hài hòa rất tốt trong ngũ hành phong thủy. Cây phù hợp làm cây để bàn, quầy lễ tân, trang trí nhà, quán cà phê...', 10, b'0', b'0', 150000, 29, 'Cây Thủy Tùng', 6, 6),
(104, b'1', 'Với chiếc bình thủy tinh giúp lộ ra bộ rễ trắng, khiến cây Ngọc Ngân càng nổi bật và sạch sẽ. Cây phù hợp để bàn, để trong nhà, trang trí quán cà phê, bàn tiếp khách...', 0, b'0', b'0', 160000, 22, 'Cây Ngọc Ngân Thủy Sinh', 6, 10),
(105, b'1', 'Cây Phú Quý thủy sinh rất phù hợp để trong văn phòng, trang trí nhà cửa, quán cà phê. Được đựng trong bình thủy tinh nên cây rất sạch sẽ. Cây phù hợp với người mệnh thổ và mệnh hỏa. Cây mang ý nghĩa phong thủy mang đến phú quý, may mắn và giàu sang.', 0, b'0', b'0', 120000, 22, 'Cây Phú Quý Thủy Sinh', 6, 4),
(106, b'1', 'Cây Lan Ý thủy sinh có tác dụng thanh lọc không khí, ngoài ra nó còn có khả năng giúp hấp thụ các bức xạ nhân tạo phát ra từ máy tính, tivi, lò vi sóng, đồ hồ điện tử...Cây phù hợp để bàn làm việc, trang ý quán cà phê, bàn uống nước....', 0, b'0', b'0', 150000, 49, 'Cây Lan Ý Thủy Sinh', 6, 11),
(107, b'1', 'Cây Cỏ Đồng Tiền thủy sinh có ý nghĩa phong thủy giúp tài vận thăng tiến,...', 0, b'0', b'0', 180000, 50, 'Cỏ Đồng Tiền', 6, 25),
(108, b'1', 'Cây có chiều cả cả bình thủy tinh khoảng 45 -50cm, đường kính gốc từ 10 - 11cm. Cây phù hợp để bàn giám đốc, tặng khai trương, tân gia, bàn tiếp khách lớn....', 0, b'0', b'0', 200000, 20, 'Cây Kim Ngân Thủy Sinh', 6, 2),
(109, b'1', 'Cây có chiều cao cả bình khoảng 30cm rất phù hợp để bàn làm việc, sạch sẽ và dễ chăm sóc. Cây phù hợp làm quà tặng, cây để bàn, cây phong thủy.', 0, b'0', b'0', 150000, 20, 'Cây Hạnh Phúc Thủy Sinh', 6, 4),
(110, b'1', 'Khá nổi bật với sự pha trộn đặc sắc của lá giữa mà trắng và màu xanh. Cây đặc biệt dễ chăm sóc có thể thích nghi với mọi môi trường, rất phù hợp với người thích cây mà lười chăm sóc.', 10, b'0', b'0', 150000, 27, 'Cây Tróc Bạc Thủy Sinh', 6, 4),
(111, b'1', 'Cây có phiến lá nhẵn, xanh rất bắt mắt. Là cây thủy sinh đựng trong bình thủy tinh nên rất sạch sẽ. Phù hợp làm cây để bàn, văn phòng, trang trí quán, các góc nhỏ trong nhà...', 10, b'0', b'1', 150000, 21, 'CâyTrầu Bà Đế Vương Xanh', 6, 5),
(112, b'1', 'Cây Kim Tiền thủy sinh để bàn giúp bạn gần như không bao giờ phải tưới nước, và giữ bàn luôn sạch sẽ.', 5, b'0', b'1', 120000, 30, 'Cây Kim Tiền', 6, 11),
(113, b'1', 'Cây bách thủy tiên còn có tên gọi khác là cây thủy Cúc,... Cây có nguồn gốc từ những vùng đất ngập nước ở Mexico, Bắc Mỹ và miền bắc của Nam Mỹ.', 0, b'0', b'0', 190000, 30, 'Cây Bách Thủy Tiên', 6, 5),
(114, b'1', 'Cây Thanh Tâm là loài cây thủy canh, có màu xanh mướt, rễ màu trắng nên rất phù hợp với người mệnh Mộc và Thủy, tuy nhiên do ngũ hành tương sinh nên Thủy sinh Mộc, do đó người mệnh Mộc sẽ được lợi nhiều khi trồng cây này trong nhà hay đặt trong phòng làm việc.', 0, b'0', b'0', 160000, 22, 'Cây Thanh Tâm', 6, 10),
(115, b'1', 'Cây phát tài búp sen sở hữu bộ rễ chùm, trắng muốt, dài và chắc khỏe, phát triển nhanh chóng. Thân cây thẳng đứng, bụi nhỏ một gốc một thân, có chiều cao từ 20 – 30cm. Lá cây mọc quanh thân, xếp lớp tạo hình búp sen, từ đó cây mới có cái tên này.', 0, b'0', b'0', 120000, 40, 'Cây Phát Tài Búp Sen', 6, 10),
(116, b'1', 'Cây Vạn Niên Thanh có ý nghĩa phong thủy tăng tài vận cho gia chủ. Cây phù hợp làm cây cảnh trong nhà, cây cảnh văn phòng giúp lọc sạch không khí, mang đến không gian tươi mới.', 0, b'0', b'0', 150000, 50, 'Cây Vạn Niên Thanh', 6, 10),
(117, b'1', 'Cây Trầu Bà có ý nghĩa phong thủy mang đến cho gia chủ may mắn, thành đạt và bình an. Cây phù hợp để phòng khách, trang trí sảng, treo của sổ, hiên nhà, hoặc để bàn làm việc.', 0, b'0', b'0', 180000, 40, 'Cây Trầu Bà', 6, 5),
(118, b'1', 'Cây phát tài đang được nhiều người nuôi trồng vì nó mang ý nghĩa tốt lành,  mang lại vận khí tốt, may mắn và tài lộc sẽ nhanh chóng đến với bạn', 0, b'0', b'0', 150000, 40, 'Cây Phát Tài', 6, 12),
(119, b'1', 'Cây Lưỡi Hổ thủy sinh cao khoảng 30cm rất phù hợp làm cây để bàn, cây trang trí không gian nhỏ, tặng quà.', 0, b'0', b'0', 120000, 24, 'Cây Lưỡi Hổ', 6, 10),
(120, b'1', 'Cây Ngũ Gia Bì thủy sinh giúp gia chủ phát triển vững vàng, cũng có thể ổn định tài vận, giữ được tiền tài. Cây trồng trong bình thủy tinh nên rất sạch sẽ phù hợp để bàn, trang trí nội thất, bàn làm việc, quán cà phê, bàn lễ tân...', 10, b'0', b'0', 200000, 41, 'Cây Ngũ Gia Bì', 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `address`, `email`, `full_name`, `is_enabled`, `password`, `phone`) VALUES
(2, NULL, 'user@gmail.com', NULL, b'1', '$2a$10$8MSUsc44.uAYSwPiyX/6geQetaE1MV622dc3armSbi0zZxScY3wN.', NULL),
(3, NULL, 'admin@gmail.com', NULL, b'1', '$2a$10$VOGvnFz4xsGfk1Jy72tqy.QqbSN8OpLTq0JBjjOpvy3kK62UrRzpa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(3, 2),
(3, 1),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CATEGORY_UK` (`code`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmation_token`
--
ALTER TABLE `confirmation_token`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `CT_UK` (`confirmation_token`),
  ADD KEY `FKhjrtky9wbd6lbk7mu9tuddqgn` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKbiulouweyg0pg8a1piqsajr9u` (`tree_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjqbh5jbj1olkur6fpmle5r9ev` (`user_id`);

--
-- Indexes for table `ordered_item`
--
ALTER TABLE `ordered_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKd88l2xxcikhau7to4dba440hu` (`tree_id`),
  ADD KEY `FKfyed8s2qkifmpo0ssjkawe322` (`ordered_id`);

--
-- Indexes for table `password_reset_token`
--
ALTER TABLE `password_reset_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1sxgwv5nvek5hcv0or8302xge` (`tree_id`),
  ADD KEY `FK254qp5akhuaaj9n5co4jww3fk` (`user_id`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKucq921hpdhmeeuyooirol127` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USER_UK` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `ordered`
--
ALTER TABLE `ordered`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordered_item`
--
ALTER TABLE `ordered_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
