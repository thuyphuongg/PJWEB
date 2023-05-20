-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 09:19 AM
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
(1, '1', 'web/CDweb/banner/background-1.jpg'),
(2, '2', 'web/CDweb/banner/background-2.jpg'),
(3, '3', 'web/CDweb/banner/cay-canh-lam-qua-tang-2.jpg'),
(4, '4', 'web/CDweb/banner/cay-sen-da-xanh.jpg'),
(5, '5', 'web/CDweb/banner/hoa-dong-tien.jpg');

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
(1, 'cay-de-ban', 'Cây để bàn'),
(2, 'cay-canh-phong-thuy', 'Cây cảnh phong thủy'),
(3, 'cay-canh-sen-da', 'Cây cảnh sen đá'),
(4, 'cay-canh-van-phong', 'Cây cảnh văn phòng'),
(5, 'cay-day-leo', 'Cây dây leo'),
(6, 'cay-thuy-sinh', 'Cây thủy sinh');

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
(6, 'web/CDweb/cay-canh-de-ban/cay-hanh-phuc-thuy-sinh-255x255.jpg', 6),
(5, 'web/CDweb/cay-canh-de-ban/Cay-kim-ngan-thuy-sinh-to-255x255.jpg', 5),
(4, 'web/CDweb/cay-canh-de-ban/cay-sen-da-kim-cuong-tim-255x255.jpg', 4),
(3, 'web/CDweb/cay-canh-de-ban/cay-nhat-mat-huong-255x255.jpg', 3),
(2, 'web/CDweb/cay-canh-de-ban/duoi-cong-van-vang-dep-255x255.jpg', 2),
(1, 'web/CDweb/cay-canh-de-ban/cay-phu-quy-de-ban-dep-255x255.jpg', 1),
(10, 'web/CDweb/cay-canh-de-ban/sen-da-lien-dai-hong-255x255.jpg', 10),
(9, 'web/CDweb/cay-canh-de-ban/cay-sen-da-giva-255x255.jpg', 9),
(8, 'web/CDweb/cay-canh-de-ban/cay-sen-da-pha-le-420x420.jpg', 8),
(7, 'web/CDweb/cay-canh-de-ban/sen-da-nuda-255x255.jpg', 7);

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
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `active`, `description`, `discount`, `hot_tree`, `new_tree`, `price`, `quantity`, `name`, `category_id`) VALUES
(6, b'1', 'Cây Hạnh Phúc thủy sinh để bàn đang rất được ưa chuộng vì cây thuộc dòng thân gỗ rất dễ sống, lá cây xanh tốt quanh năm. Cây chỉ cần đổ nước khi hết, giúp bàn làm việc không gian nhỏ của bạn luôn xanh nhưng rất sạch sẽ.', 10, b'0', b'1', 120000, 15, 'Cây Hạnh Phúc', 1),
(5, b'1', 'Cây thủy sinh đã và đang được rất nhiều người ưa chuộng và lựa chọn vì dễ sống, dễ chăm sóc và sạch sẽ. Trong số đó loại cây thủy sinh được nhiều người mua nhất là cây Kim Ngân. Cây Kim Ngân thủy sinh lớn mang ý nghĩa phong thủy giúp gia chủ có nhiều tiền bạc. Cây phù hợp làm cây để phòng giám đốc, cây tặng tân gia, khai trương…', 15, b'1', b'0', 200000, 20, 'Cây thủy sinh', 1),
(1, b'1', 'Cây Phú Quý để bàn có kích thước nhỏ gọn, chiều cao cả chậu chỉ khoảng 30-35cm rất phù hợp để bàn làm việc, bàn uống nước, các không gian nhỏ như vách tủ, kệ sách, kệ tivi…\r\n\r\n', 15, b'0', b'1', 300000, 20, 'Cây Phú Quý', 1),
(2, b'1', 'Trong 400 loại cây Đuôi Công hay họ Calathea có một dòng có vân vàng. Màu vàng nhìn rất nổi bật khác hẳn và nổi trội hơn các dòng Đuôi Công khác. Nó được đặt cái tên là cây Đuôi Công vân vàng hay Calathea golden mosaic.\r\n\r\n', 20, b'1', b'0', 120000, 15, 'Cây đuôi công vân vàng', 1),
(3, b'1', 'Cây Nhất Mạt Hương hay còn có tên gọi khác là cây Sen Đá Lá Thơm. Sở dĩ cây có tên như vậy vì cây có chứa tinh dầu thơm trong lá và thân. Khi bạn chạm nhẹ vào cây sẽ tỏa ra mùi hương thơm dễ chịu giống mùi bạc hà. Trong phong thủy cây mang ý nghĩa giúp giữ tài chính, giúp gia chủ chi tiêu hợp lý. Ngoài ra cây còn tác dụng đuổi côn trùng và muỗi.\r\n\r\n', 20, b'0', b'0', 100000, 10, 'Cây Nhất Mạt Hương ', 1),
(4, b'1', 'Khác với những chiếc lá Sen Đá thông thường. Lá cây Sen Đá Kim Cương Tím vát hơn cây có màu tím, hồng và hơi đỏ. Khi ở thời tiết lạnh và nhiều ánh sáng cây sẽ lên màu càng đậm. Nếu ở thời tiết mát, ánh sáng ít thì sẽ có màu xanh nhiều hơn.', 10, b'0', b'1', 200000, 15, 'Sen Đá Kim Cương Tím', 1),
(7, b'1', 'Cây sen đá Nuda có màu xanh, dạng đài, bông thường nhỏ và mọc theo bụi. Cây rất dễ sống và có sức phát triển khỏe, không cần yêu cầu nhiều ánh sáng, phù hợp nơi thoáng mát như ban công, cửa sổ, hiên nhà, quán cà phê…', 10, b'1', b'0', 180000, 18, 'Cây sen đá Nuda', 1),
(8, b'1', 'Là một trong những loại sen đá phổ thông nhưng rất dễ sống mà có màu sắc cực đẹp. Sen đá pha lê luôn được các bạn mê sen đá sở hữu ít nhất một cây cho riêng mình.', 10, b'0', b'1', 190000, 30, 'Sen Đá Pha Lê', 1),
(9, b'1', 'Cây sen đá Giva có dạng đài, lá to và có màu xanh. Những cây có sắc xanh ở lá thường không cần quá nhiều ánh sáng, điều quan trọng là cần sự thoáng mát. Chính vì thế cây sen đá Giva sẽ có thể phù hợp nơi có ít nắng như ban công, cửa sổ, hiên nhà…', 10, b'0', b'1', 180000, 15, 'Sen Đá Giva', 1),
(10, b'1', 'Là một trong những loại được lai Sen Đá Liên Đài Hồng rất khỏe và dễ sống ở khí hậu nóng như miền Bắc và miền Nam. Nếu bạn mới tập chơi và thích loại sen đài có màu sắc nhưng dễ chăm sóc thì có thể cân nhắc sở hữu.', 15, b'0', b'1', 190000, 20, 'Sen Đá Liên Đài Hồng', 1);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
