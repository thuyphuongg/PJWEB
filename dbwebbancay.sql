-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2023 at 01:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: "dbwebbancay"
--

-- --------------------------------------------------------

--
-- Table structure for table "danhmuc"
--

CREATE TABLE "danhmuc" ;

--
-- Dumping data for table "danhmuc"
--

SET IDENTITY_INSERT "danhmuc" ON ;
INSERT INTO "danhmuc" ("MADANHMUC", "TENDANHMUC", "F3", "F4", "F5") VALUES
('DM01', 'Cây để bàn', '', '', ''),
('DM02', 'Chậu cây', '', '', ''),
('DM03', 'Phụ kiện cây', '', '', ''),
('DM04', 'Phân bón', '', '', '');

SET IDENTITY_INSERT "danhmuc" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "donhang"
--

CREATE TABLE "donhang" ;

--
-- Dumping data for table "donhang"
--

SET IDENTITY_INSERT "donhang" ON ;
INSERT INTO "donhang" ("MADH", "MAGD", "MASP", "SOLUONG", "TRANGTHAI") VALUES
('DH01', 'GD01', 'SP03', '1', 'Đã hoàn thành'),
('DH02', 'GD01', 'SP02', '1', 'Đã hoàn thành'),
('DH03', 'GD01', 'SP03', '1', 'Đã hoàn thành'),
('DH04', 'GD02', 'SP04', '5', 'Đã hoàn thành'),
('DH05', 'GD03', 'SP05', '10', 'Đã hoàn thành'),
('DH06', 'GD04', 'SP06', '1', 'Đã hoàn thành'),
('DH07', 'GD04', 'SP07', '1', 'Đã hoàn thành'),
('DH08', 'GD04', 'SP08', '1', 'Đã hoàn thành'),
('DH09', 'GD04', 'SP105', '2', 'Đã hoàn thành'),
('DH10', 'GD05', 'SP101', '4', 'Đã hoàn thành'),
('DH11', 'GD05', 'SP11', '1', 'Đã hoàn thành'),
('DH12', 'GD06', 'SP12', '3', 'Đã hoàn thành'),
('DH13', 'GD07', 'SP13', '1', 'Đã hoàn thành'),
('DH14', 'GD07', 'SP14', '1', 'Đã hoàn thành'),
('DH15', 'GD07', 'SP15', '1', 'Đã hoàn thành'),
('DH16', 'GD08', 'SP14', '3', 'Đã hoàn thành'),
('DH17', 'GD08', 'SP17', '2', 'Đã hoàn thành'),
('DH18', 'GD09', 'SP18', '1', 'Đã hoàn thành'),
('DH19', 'GD09', 'SP109', '1', 'Đã hoàn thành'),
('DH20', 'GD09', 'SP20', '1', 'Đã hoàn thành'),
('DH21', 'GD10', 'SP21', '5', 'Đã hoàn thành'),
('DH22', 'GD11', 'SP22', '9', 'Đã hoàn thành'),
('DH23', 'GD12', 'SP23', '12', 'Đã hoàn thành'),
('DH24', 'GD13', 'SP42', '1', 'Đã hoàn thành'),
('DH25', 'GD13', 'SP152', '1', 'Đã hoàn thành'),
('DH26', 'GD13', 'SP61', '1', 'Đã hoàn thành'),
('DH27', 'GD13', 'SP120', '1', 'Đã hoàn thành'),
('DH28', 'GD13', 'SP28', '1', 'Đã hoàn thành'),
('DH29', 'GD14', 'SP92', '30', 'Đã hoàn thành'),
('DH30', 'GD15', 'SP30', '1', 'Đã hoàn thành'),
('DH31', 'GD15', 'SP113', '10', 'Đã hoàn thành'),
('DH32', 'GD15', 'SP32', '1', 'Đã hoàn thành'),
('DH33', 'GD16', 'SP133', '1', 'Đã hoàn thành'),
('DH34', 'GD16', 'SP43', '3', 'Đã hoàn thành'),
('DH35', 'GD16', 'SP52', '4', 'Đã hoàn thành'),
('DH36', 'GD16', 'SP106', '5', 'Đã hoàn thành'),
('DH37', 'GD16', 'SP72', '2', 'Đã hoàn thành'),
('DH38', 'GD17', 'SP89', '1', 'Đã hoàn thành'),
('DH39', 'GD17', 'SP10', '3', 'Đã hoàn thành'),
('DH40', 'GD17', 'SP20', '4', 'Đã hoàn thành'),
('DH41', 'GD17', 'SP30', '5', 'Đã hoàn thành'),
('DH42', 'GD18', 'SP42', '6', 'Đã hoàn thành'),
('DH43', 'GD18', 'SP43', '1', 'Đã hoàn thành'),
('DH44', 'GD19', 'SP155', '2', 'Đã hoàn thành'),
('DH45', 'GD20', 'SP109', '1', 'Đã hoàn thành'),
('DH46', 'GD21', 'SP146', '3', 'Đã hoàn thành'),
('DH47', 'GD22', 'SP107', '4', 'Đã hoàn thành'),
('DH48', 'GD23', 'SP104', '2', 'Đã hoàn thành'),
('DH49', 'GD24', 'SP49', '1', 'Đã hoàn thành'),
('DH50', 'GD25', 'SP50', '2', 'Đã hoàn thành'),
('DH51', 'GD26', 'SP51', '3', 'Đã hoàn thành'),
('DH52', 'GD26', 'SP52', '1', 'Đã hoàn thành'),
('DH53', 'GD26', 'SP53', '3', 'Đã hoàn thành'),
('DH54', 'GD26', 'SP53', '4', 'Đã hoàn thành'),
('DH55', 'GD27', 'SP53', '5', 'Đã hoàn thành'),
('DH56', 'GD27', 'SP53', '7', 'Đã hoàn thành'),
('DH57', 'GD28', 'SP53', '8', 'Đã hoàn thành'),
('DH58', 'GD29', 'SP60', '3', 'Đã hoàn thành'),
('DH59', 'GD30', 'SP60', '2', 'Đã hoàn thành'),
('DH60', 'GD31', 'SP60', '1', 'Đã hoàn thành'),
('DH61', 'GD32', 'SP61', '3', 'Đã hoàn thành'),
('DH62', 'GD33', 'SP61', '5', 'Đã hoàn thành'),
('DH63', 'GD33', 'SP61', '6', 'Đã hoàn thành'),
('DH64', 'GD33', 'SP61', '7', 'Đã hoàn thành'),
('DH65', 'GD34', 'SP61', '8', 'Đã hoàn thành'),
('DH66', 'GD34', 'SP66', '9', 'Đã hoàn thành'),
('DH67', 'GD34', 'SP167', '3', 'Đã hoàn thành'),
('DH68', 'GD35', 'SP68', '2', 'Đã hoàn thành'),
('DH69', 'GD35', 'SP68', '4', 'Đã hoàn thành'),
('DH70', 'GD36', 'SP68', '6', 'Đã hoàn thành'),
('DH71', 'GD36', 'SP68', '7', 'Đã hoàn thành'),
('DH72', 'GD37', 'SP72', '8', 'Đã hoàn thành'),
('DH73', 'GD37', 'SP73', '4', 'Đã hoàn thành'),
('DH74', 'GD38', 'SP74', '6', 'Đã hoàn thành'),
('DH75', 'GD39', 'SP74', '7', 'Đã hoàn thành'),
('DH76', 'GD40', 'SP74', '2', 'Đã hoàn thành'),
('DH77', 'GD41', 'SP74', '4', 'Đã hoàn thành'),
('DH78', 'GD41', 'SP78', '6', 'Đã hoàn thành'),
('DH79', 'GD42', 'SP79', '7', 'Đã hoàn thành'),
('DH80', 'GD43', 'SP79', '1', 'Đã hoàn thành'),
('DH81', 'GD44', 'SP79', '4', 'Đã hoàn thành'),
('DH82', 'GD45', 'SP79', '6', 'Đã hoàn thành'),
('DH83', 'GD46', 'SP79', '7', 'Đã hoàn thành'),
('DH84', 'GD46', 'SP79', '8', 'Đã hoàn thành'),
('DH85', 'GD47', 'SP79', '3', 'Đã hoàn thành'),
('DH86', 'GD48', 'SP79', '2', 'Đã hoàn thành'),
('DH87', 'GD49', 'SP87', '1', 'Đã hoàn thành'),
('DH88', 'GD50', 'SP88', '2', 'Đã hoàn thành'),
('DH89', 'GD50', 'SP89', '3', 'Đã hoàn thành'),
('DH90', 'GD50', 'SP90', '4', 'Đã hoàn thành'),
('DH91', 'GD51', 'SP91', '4', 'Đã hoàn thành'),
('DH92', 'GD52', 'SP91', '5', 'Đã hoàn thành'),
('DH93', 'GD53', 'SP91', '4', 'Đã hoàn thành'),
('DH94', 'GD54', 'SP91', '2', 'Đã hoàn thành'),
('DH95', 'GD55', 'SP91', '3', 'Đã hoàn thành'),
('DH96', 'GD55', 'SP91', '4', 'Đã hoàn thành'),
('DH97', 'GD56', 'SP97', '2', 'Đã hoàn thành'),
('DH98', 'GD57', 'SP98', '1', 'Đã hoàn thành'),
('DH99', 'GD58', 'SP99', '1', 'Đã hoàn thành'),
('DH100', 'GD59', 'SP99', '1', 'Đã hoàn thành'),
('DH101', 'GD60', 'SP99', '1', 'Đã hoàn thành'),
('DH102', 'GD60', 'SP99', '2', 'Đã hoàn thành'),
('DH103', 'GD61', 'SP99', '3', 'Đã hoàn thành'),
('DH104', 'GD61', 'SP99', '4', 'Đã hoàn thành'),
('DH105', 'GD61', 'SP99', '5', 'Đã hoàn thành'),
('DH106', 'GD62', 'SP100', '1', 'Chưa Thanh toán'),
('DH107', 'GD62', 'SP100', '1', 'Chưa Thanh toán'),
('DH108', 'GD63', 'SP18', '1', 'Chưa Thanh toán'),
('DH109', 'GD64', 'SP18', '2', 'Đã hủy'),
('DH110', 'GD65', 'SP18', '3', 'Đã thanh toán'),
('DH111', 'GD66', 'SP18', '4', 'Đã hoàn thành'),
('DH112', 'GD66', 'SP18', '1', 'Chưa Thanh toán'),
('DH113', 'GD67', 'SP100', '11', 'Đã hủy'),
('DH114', 'GD68', 'SP100', '2', 'Đã hoàn thành'),
('DH115', 'GD68', 'SP120', '3', 'Đang giao dịch'),
('DH116', 'GD69', 'SP121', '4', 'Đã thanh toán'),
('DH117', 'GD69', 'SP122', '6', 'Chưa Thanh toán'),
('DH118', 'GD70', 'SP123', '7', 'Chưa Thanh toán'),
('DH119', 'GD70', 'SP123', '1', 'Chưa Thanh toán'),
('DH120', 'GD71', 'SP123', '11', 'Đã hủy'),
('DH121', 'GD71', 'SP123', '23', 'Đã hoàn thành'),
('DH122', 'GD71', 'SP123', '11', 'Đã hoàn thành'),
('DH123', 'GD72', 'SP123', '83', 'Đã hoàn thành'),
('DH124', 'GD73', 'SP150', '11', 'Đã hoàn thành'),
('DH125', 'GD74', 'SP150', '21', 'Đã hoàn thành'),
('DH126', 'GD74', 'SP150', '32', 'Chưa Thanh toán'),
('DH127', 'GD74', 'SP150', '11', 'Chưa Thanh toán'),
('DH128', 'GD75', 'SP150', '44', 'Đã hủy'),
('DH129', 'GD75', 'SP100', '1', 'Đang giao dịch'),
('DH130', 'GD76', 'SP100', '3', 'Đã thanh toán'),
('DH131', 'GD76', 'SP100', '4', 'Chưa Thanh toán'),
('DH132', 'GD77', 'SP100', '5', 'Chưa Thanh toán'),
('DH133', 'GD77', 'SP100', '3', 'Chưa Thanh toán'),
('DH134', 'GD77', 'SP100', '2', 'Đã hủy'),
('DH135', 'GD78', 'SP56', '4', 'Đã thanh toán'),
('DH136', 'GD78', 'SP17', '7', 'Đã hoàn thành'),
('DH137', 'GD78', 'SP18', '8', 'Chưa Thanh toán'),
('DH138', 'GD79', 'SP19', '2', 'Đã hủy'),
('DH139', 'GD80', 'SP20', '3', 'Đã hoàn thành'),
('DH140', 'GD80', 'SP90', '5', 'Đang giao dịch'),
('DH141', 'GD81', 'SP50', '7', 'Đã thanh toán'),
('DH142', 'GD82', 'SP50', '1', 'Chưa Thanh toán'),
('DH143', 'GD83', 'SP50', '3', 'Chưa Thanh toán'),
('DH144', 'GD83', 'SP50', '9', 'Chưa Thanh toán'),
('DH145', 'GD84', 'SP50', '6', 'Đã hủy'),
('DH146', 'GD85', 'SP51', '4', 'Đã hoàn thành'),
('DH147', 'GD86', 'SP50', '6', 'Đã hoàn thành'),
('DH148', 'GD86', 'SP123', '3', 'Đã hoàn thành'),
('DH149', 'GD86', 'SP160', '2', 'Đã hoàn thành'),
('DH150', 'GD87', 'SP130', '8', 'Đã hoàn thành'),
('DH151', 'GD87', 'SP119', '9', 'Chưa Thanh toán'),
('DH152', 'GD87', 'SP112', '4', 'Chưa Thanh toán'),
('DH153', 'GD88', 'SP111', '5', 'Đã hủy'),
('DH154', 'GD89', 'SP201', '14', 'Đang giao dịch'),
('DH155', 'GD90', 'SP123', '19', 'Đã thanh toán'),
('DH156', 'GD90', 'SP13', '8', 'Chưa Thanh toán'),
('DH157', 'GD90', 'SP20', '17', 'Chưa Thanh toán'),
('DH158', 'GD91', 'SP126', '3', 'Chưa Thanh toán'),
('DH159', 'GD92', 'SP74', '10', 'Đã hủy'),
('DH160', 'GD93', 'SP128', '1', 'Đã thanh toán'),
('DH161', 'GD93', 'SP129', '19', 'Đã hoàn thành'),
('DH162', 'GD93', 'SP30', '12', 'Chưa Thanh toán'),
('DH163', 'GD94', 'SP20', '17', 'Đã hủy'),
('DH164', 'GD95', 'SP20', '16', 'Đã hoàn thành'),
('DH165', 'GD95', 'SP101', '3', 'Đang giao dịch'),
('DH166', 'GD96', 'SP101', '8', 'Đã thanh toán'),
('DH167', 'GD96', 'SP101', '9', 'Chưa Thanh toán'),
('DH168', 'GD97', 'SP100', '18', 'Chưa Thanh toán'),
('DH169', 'GD97', 'SP90', '11', 'Chưa Thanh toán'),
('DH170', 'GD97', 'SP10', '16', 'Đã hủy'),
('DH171', 'GD97', 'SP110', '6', 'Đã hoàn thành'),
('DH172', 'GD98', 'SP12', '19', 'Đã hoàn thành'),
('DH173', 'GD98', 'SP11', '3', 'Đã hoàn thành'),
('DH174', 'GD99', 'SP20', '2', 'Đã hoàn thành'),
('DH175', 'GD99', 'SP11', '8', 'Đã hoàn thành'),
('DH176', 'GD99', 'SP11', '15', 'Chưa Thanh toán'),
('DH177', 'GD100', 'SP120', '5', 'Đã hủy');

SET IDENTITY_INSERT "donhang" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "giaodich"
--

CREATE TABLE "giaodich" ;

--
-- Dumping data for table "giaodich"
--

SET IDENTITY_INSERT "giaodich" ON ;
INSERT INTO "giaodich" ("IDGD", "IDKHACHHANG", "CONGTHANHTOAN", "GHICHU", "NGAYTAOGD") VALUES
('GD01', 'KH01', 'Momo', 'Mua 2 cây sen đá, chậu cây, phụ kiện cây', '24/1/2021'),
('GD02', 'KH02', 'Paypal', 'Mua cây tài lộc, chậu cây, phụ kiện cây', '25/1/2021'),
('GD03', 'KH03', 'VNPay', 'Mua cây ngọc bích, chậu cây, phụ kiện cây', '26/1/2021'),
('GD04', 'KH04', 'ZaloPay', 'Mua cây lan ý, chậu cây, phụ kiện cây', '27/1/2021'),
('GD05', 'KH05', 'Viettel Money', 'Mua cây cảnh bonsai, chậu cây, phụ kiện cây', '28/1/2021'),
('GD06', 'KH06', 'Paypal', 'Mua cây thủy trúc, chậu cây, phụ kiện cây', '29/1/2021'),
('GD07', 'KH07', 'Momo', 'Mua cây trạng nguyên, chậu cây, phụ kiện cây', '30/1/2021'),
('GD08', 'KH08', 'Paypal', 'Mua cây phú quý, chậu cây, phụ kiện cây', '31/1/2021'),
('GD09', 'KH09', 'Viettel Money', 'Mua cây trúc nhật, chậu cây, phụ kiện cây', '1/2/2021'),
('GD10', 'KH10', 'ZaloPay', 'Mua cây hoa đỗ quyên, chậu cây, phụ kiện cây', '2/2/2021'),
('GD11', 'KH11', 'Paypal', 'Mua cây kim ngân, chậu cây, phụ kiện cây', '3/2/2021'),
('GD12', 'KH12', 'Viettel Money', 'Mua cây phát tài, chậu cây, phụ kiện cây', '4/2/2021'),
('GD13', 'KH13', 'ZaloPay', 'Mua cây sống đời, chậu cây, phụ kiện cây', '5/2/2021'),
('GD14', 'KH14', 'VNPay', 'Mua cây sen đá, chậu cây, phụ kiện cây', '6/2/2021'),
('GD15', 'KH15', 'Momo', 'Mua cây khế bonsai, chậu cây, phụ kiện cây', '7/2/2021'),
('GD16', 'KH16', 'Paypal', 'Mua cây đào, chậu cây, phụ kiện cây', '8/2/2021'),
('GD17', 'KH17', 'Viettel Money', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '9/2/2021'),
('GD18', 'KH18', 'Momo', 'Mua cây hoa hồng, chậu cây, phụ kiện cây', '10/2/2021'),
('GD19', 'KH19', 'VNPay', 'Mua cây sen đá, chậu cây, phụ kiện cây', '11/2/2021'),
('GD20', 'KH20', 'Momo', 'Mua vạn lộc, chậu cây, phụ kiện cây', '12/2/2021'),
('GD21', 'KH21', 'Viettel Money', 'Mua cây phát tài, chậu cây, phụ kiện cây', '13/2/2021'),
('GD22', 'KH22', 'Paypal', 'Mua cây sống đời, chậu cây, phụ kiện cây', '14/2/2021'),
('GD23', 'KH23', 'Momo', 'Mua cây sen đá, chậu cây, phụ kiện cây', '15/2/2021'),
('GD24', 'KH24', 'Paypal', 'Mua cây khế bonsai, chậu cây, phụ kiện cây', '16/2/2021'),
('GD25', 'KH25', 'Viettel Money', 'Mua cây đào, chậu cây, phụ kiện cây', '17/2/2021'),
('GD26', 'KH26', 'ZaloPay', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '18/2/2021'),
('GD27', 'KH27', 'Paypal', 'Mua cây tài lộc, chậu cây, phụ kiện cây', '19/2/2021'),
('GD28', 'KH28', 'ZaloPay', 'Mua cây ngọc bích, chậu cây, phụ kiện cây', '20/2/2021'),
('GD29', 'KH29', 'VNPay', 'Mua cây lan ý, chậu cây, phụ kiện cây', '21/2/2021'),
('GD30', 'KH30', 'Momo', 'Mua cây cảnh bonsai, chậu cây, phụ kiện cây', '22/2/2021'),
('GD31', 'KH31', 'Paypal', 'Mua cây đào, chậu cây, phụ kiện cây', '23/2/2021'),
('GD32', 'KH32', 'Viettel Money', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '24/2/2021'),
('GD33', 'KH33', 'Momo', 'Mua cây hoa hồng, chậu cây, phụ kiện cây', '25/2/2021'),
('GD34', 'KH34', 'Momo', 'Mua cây sen đá, chậu cây, phụ kiện cây', '26/2/2021'),
('GD35', 'KH35', 'Paypal', 'Mua vạn lộc, chậu cây, phụ kiện cây', '27/2/2021'),
('GD36', 'KH36', 'VNPay', 'Mua cây sen đá, chậu cây, phụ kiện cây', '28/2/2021'),
('GD37', 'KH37', 'ZaloPay', 'Mua vạn lộc, chậu cây, phụ kiện cây', '1/3/2021'),
('GD38', 'KH38', 'Viettel Money', 'Mua cây phát tài, chậu cây, phụ kiện cây', '2/3/2021'),
('GD39', 'KH39', 'Paypal', 'Mua cây sống đời, chậu cây, phụ kiện cây', '3/3/2021'),
('GD40', 'KH40', 'Momo', 'Mua cây sen đá, chậu cây, phụ kiện cây', '4/3/2021'),
('GD41', 'KH01', 'Momo', 'Mua cây ngọc bích, chậu cây, phụ kiện cây', '5/3/2021'),
('GD42', 'KH02', 'Paypal', 'Mua cây lan ý, chậu cây, phụ kiện cây', '6/3/2021'),
('GD43', 'KH03', 'VNPay', 'Mua cây cảnh bonsai, chậu cây, phụ kiện cây', '7/3/2021'),
('GD44', 'KH04', 'ZaloPay', 'Mua cây thủy trúc, chậu cây, phụ kiện cây', '8/3/2021'),
('GD45', 'KH05', 'Viettel Money', 'Mua cây trạng nguyên, chậu cây, phụ kiện cây', '9/3/2021'),
('GD46', 'KH06', 'Paypal', 'Mua cây phú quý, chậu cây, phụ kiện cây', '10/3/2021'),
('GD47', 'KH07', 'Momo', 'Mua cây trúc nhật, chậu cây, phụ kiện cây', '11/3/2021'),
('GD48', 'KH08', 'Paypal', 'Mua cây hoa đỗ quyên, chậu cây, phụ kiện cây', '12/3/2021'),
('GD49', 'KH09', 'Viettel Money', 'Mua cây kim ngân, chậu cây, phụ kiện cây', '13/3/2021'),
('GD50', 'KH10', 'ZaloPay', 'Mua cây phát tài, chậu cây, phụ kiện cây', '14/3/2021'),
('GD51', 'KH11', 'Paypal', 'Mua cây sống đời, chậu cây, phụ kiện cây', '15/3/2021'),
('GD52', 'KH12', 'Viettel Money', 'Mua cây sen đá, chậu cây, phụ kiện cây', '16/3/2021'),
('GD53', 'KH13', 'ZaloPay', 'Mua cây khế bonsai, chậu cây, phụ kiện cây', '17/3/2021'),
('GD54', 'KH14', 'VNPay', 'Mua cây đào, chậu cây, phụ kiện cây', '18/3/2021'),
('GD55', 'KH15', 'Momo', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '19/3/2021'),
('GD56', 'KH16', 'Paypal', 'Mua cây hoa hồng, chậu cây, phụ kiện cây', '20/3/2021'),
('GD57', 'KH17', 'VNPay', 'Mua cây sen đá, chậu cây, phụ kiện cây', '21/3/2021'),
('GD58', 'KH18', 'ZaloPay', 'Mua cây ngọc bích, chậu cây, phụ kiện cây', '22/3/2021'),
('GD59', 'KH19', 'Viettel Money', 'Mua cây lan ý, chậu cây, phụ kiện cây', '23/3/2021'),
('GD60', 'KH20', 'Paypal', 'Mua cây cảnh bonsai, chậu cây, phụ kiện cây', '24/3/2021'),
('GD61', 'KH21', 'Momo', 'Mua cây thủy trúc, chậu cây, phụ kiện cây', '25/3/2021'),
('GD62', 'KH22', 'Paypal', 'Mua cây trạng nguyên, chậu cây, phụ kiện cây', '26/3/2021'),
('GD63', 'KH23', 'Viettel Money', 'Mua cây phú quý, chậu cây, phụ kiện cây', '27/3/2021'),
('GD64', 'KH24', 'ZaloPay', 'Mua cây trúc nhật, chậu cây, phụ kiện cây', '28/3/2021'),
('GD65', 'KH25', 'Paypal', 'Mua cây hoa đỗ quyên, chậu cây, phụ kiện cây', '29/3/2021'),
('GD66', 'KH26', 'Viettel Money', 'Mua cây kim ngân, chậu cây, phụ kiện cây', '30/3/2021'),
('GD67', 'KH27', 'ZaloPay', 'Mua cây phát tài, chậu cây, phụ kiện cây', '31/3/2021'),
('GD68', 'KH28', 'VNPay', 'Mua cây sống đời, chậu cây, phụ kiện cây', '1/4/2021'),
('GD69', 'KH29', 'Momo', 'Mua cây sen đá, chậu cây, phụ kiện cây', '2/4/2021'),
('GD70', 'KH30', 'Paypal', 'Mua cây khế bonsai, chậu cây, phụ kiện cây', '3/4/2021'),
('GD71', 'KH31', 'VNPay', 'Mua cây đào, chậu cây, phụ kiện cây', '4/4/2021'),
('GD72', 'KH32', 'ZaloPay', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '5/4/2021'),
('GD73', 'KH33', 'Viettel Money', 'Mua cây hoa hồng, chậu cây, phụ kiện cây', '6/4/2021'),
('GD74', 'KH34', 'Paypal', 'Mua cây sen đá, chậu cây, phụ kiện cây', '7/4/2021'),
('GD75', 'KH35', 'Momo', 'Mua cây hoa đỗ quyên, chậu cây, phụ kiện cây', '8/4/2021'),
('GD76', 'KH36', 'Paypal', 'Mua cây kim ngân, chậu cây, phụ kiện cây', '9/4/2021'),
('GD77', 'KH37', 'Viettel Money', 'Mua cây phát tài, chậu cây, phụ kiện cây', '10/4/2021'),
('GD78', 'KH38', 'ZaloPay', 'Mua cây sống đời, chậu cây, phụ kiện cây', '11/4/2021'),
('GD79', 'KH39', 'Paypal', 'Mua cây sen đá, chậu cây, phụ kiện cây', '12/4/2021'),
('GD80', 'KH40', 'Viettel Money', 'Mua cây khế bonsai, chậu cây, phụ kiện cây', '13/4/2021'),
('GD81', 'KH01', 'ZaloPay', 'Mua cây đào, chậu cây, phụ kiện cây', '14/4/2021'),
('GD82', 'KH02', 'VNPay', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '15/4/2021'),
('GD83', 'KH03', 'ZaloPay', 'Mua cây hoa hồng, chậu cây, phụ kiện cây', '16/4/2021'),
('GD84', 'KH04', 'Viettel Money', 'Mua cây sen đá, chậu cây, phụ kiện cây', '17/4/2021'),
('GD85', 'KH05', 'Paypal', 'Mua vạn lộc, chậu cây, phụ kiện cây', '18/4/2021'),
('GD86', 'KH06', 'Momo', 'Mua cây phát tài, chậu cây, phụ kiện cây', '19/4/2021'),
('GD87', 'KH07', 'Paypal', 'Mua cây sống đời, chậu cây, phụ kiện cây', '20/4/2021'),
('GD88', 'KH08', 'Viettel Money', 'Mua cây sen đá, chậu cây, phụ kiện cây', '21/4/2021'),
('GD89', 'KH09', 'ZaloPay', 'Mua cây khế bonsai, chậu cây, phụ kiện cây', '22/4/2021'),
('GD90', 'KH10', 'Paypal', 'Mua cây đào, chậu cây, phụ kiện cây', '23/4/2021'),
('GD91', 'KH11', 'Viettel Money', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '24/4/2021'),
('GD92', 'KH12', 'ZaloPay', 'Mua cây tài lộc, chậu cây, phụ kiện cây', '25/4/2021'),
('GD93', 'KH13', 'VNPay', 'Mua cây ngọc bích, chậu cây, phụ kiện cây', '26/4/2021'),
('GD94', 'KH14', 'Momo', 'Mua cây lan ý, chậu cây, phụ kiện cây', '27/4/2021'),
('GD95', 'KH15', 'Paypal', 'Mua cây cảnh bonsai, chậu cây, phụ kiện cây', '28/4/2021'),
('GD96', 'KH16', 'Viettel Money', 'Mua cây đào, chậu cây, phụ kiện cây', '29/4/2021'),
('GD97', 'KH17', 'Momo', 'Mua hoa đồng tiền, chậu cây, phụ kiện cây', '30/4/2021'),
('GD98', 'KH18', 'VNPay', 'Mua cây hoa hồng, chậu cây, phụ kiện cây', '1/5/2021'),
('GD99', 'KH19', 'Momo', 'Mua cây sen đá, chậu cây, phụ kiện cây', '2/5/2021'),
('GD100', 'KH20', 'Viettel Money', 'Mua cây đào, chậu cây, phụ kiện cây', '3/5/2021');

SET IDENTITY_INSERT "giaodich" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "khachhang"
--

CREATE TABLE "khachhang" ;

--
-- Dumping data for table "khachhang"
--

SET IDENTITY_INSERT "khachhang" ON ;
INSERT INTO "khachhang" ("MAKH", "USERNAME", "PASSWORD", "HOVATEN", "SDT", "EMAIL", "DIACHI", "NGAYLAPTK") VALUES
('KH01', 'kimanh', 'kimanh', 'Nguyễn Kim Anh', '0362527280', 'kimanh@gmail.com', '731 Trần Hưng Đạo, Q5, TpHCM', '2021-06-28'),
('KH02', 'ngochan', 'ngochan', 'Trần Ngọc Hân', '0382635282', 'ngochan@gmail.com', '23/5 Nguyễn Trãi, Q5, TpHCM', '2021-06-29'),
('KH03', 'ngoclinh', 'ngoclinh', 'Trần Ngọc Linh', '0827267151', 'ngoclinh@gmail.com', '227 Nguyễn Văn Cừ, Q5, TpHCM', '2021-06-20'),
('KH04', 'minhlong', 'minhlong', 'Trần Minh Long', '0373627292', 'minhlong@gmail.com', '45 Nguyễn Trãi, Q1, TpHCM', '2021-07-03'),
('KH05', 'nhatminh', 'nhatminh', 'Lê Nhật Minh', '0374527282', 'nhatminh@gmail.com', '50/34 Lê Đại Hành, Q10, TpHCM', '2021-07-03'),
('KH06', 'hoaithuong', 'hoaithuong', 'Lê Hoài Thương', '0935274527', 'hoaithuong@gmail.com', '34 Trương Định, Q3, TpHCM', '2021-07-03'),
('KH07', 'ngocmai', 'ngocmai', 'Nguyễn Ngọc Mai', '0327484930', 'ngocmai@gmail.com', '32/3 Trần Bình Trọng, Q5, TpHCM', '2021-07-04'),
('KH08', 'thanhnhi', 'thanhnhi', 'Phan Thanh Nhi', '0825272829', 'thanhnhi@gmail.com', '45/2 An Dương Vương, Q5, TpHCM', '2021-07-08'),
('KH09', 'havinh', 'havinh', 'Lê Hà Vinh', '0382926141', 'havinh@gmail.com', '873 Lê Hồng Phong, Q5, TpHCM', '2021-07-10'),
('KH10', 'duyanh', 'duyanh', 'Hà Duy Anh', '0325281916', 'duyanh@gmail.com', '34/34B Nguyễn Trãi, Q1, TpHCM', '2021-07-13'),
('KH11', 'thuylinh', 'thuylinh', 'Nguyễn Thùy Linh', '0372691881', 'thuylinh@gmail.com', '45 Trần Phú, Q2, TpHCM', '2021-07-22'),
('KH12', 'nhuquynh', 'nhuquynh', 'Lê Như Quỳnh', '0871718190', 'nhuquynh@gmail.com', '15 Nguyễn Trãi, Q5, TpHCM', '2021-07-29'),
('KH13', 'nhuy', 'nhuy', 'Phạm Như Ý', '0827262728', 'nhuy@gmail.com', '20 Võ Thị Sáu, Q3, TpHCM', '2021-08-03'),
('KH14', 'hoangnam', 'hoangnam', 'Nguyễn Hoàng Nam', '0372527181', 'hoangnam@gmail.com', '20 Lê Đại Hành, Q5, TpHCM', '2021-08-12'),
('KH15', 'congvinh', 'congvinh', 'Phạm Công Vinh', '0972625171', 'congvinh@gmail.com', '80 Lê Hồng Phong, Q9, TpHCM', '2021-08-17'),
('KH16', 'thuylinh', 'thuylinh', 'Trương Thùy Linh', '0716143346', 'thuylinh@gmail.com', '15 Nguyễn Trãi, Q3, TpHCM', '2021-08-17'),
('KH17', 'thanhngan', 'thanhngan', 'Nguyễn Thanh Ngân', '0354158566', 'thanhngan@gmail.com', '134 Nguyễn Trãi, Q1, TpHCM', '2021-08-17'),
('KH18', 'phuongthao', 'phuongthao', 'Lê Phương Thảo', '0965726655', 'phuongthao@gmail.com', '98 Võ Thị Sáu, Q5, TpHCM', '2021-08-17'),
('KH19', 'thanhtung', 'thanhtung', 'Phạm Thanh Tùng', '0351427417', 'thanhtung@gmail.com', '90/2 An Dương Vương, Q1, TpHCM', '2021-09-17'),
('KH20', 'anhtrung', 'anhtrung', 'Nguyễn Anh Trung', '0364785152', 'anhtrung@gmail.com', '82/5 Trần Bình Trọng, Q3, TpHCM', '2021-09-17');

SET IDENTITY_INSERT "khachhang" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "kho"
--

CREATE TABLE "kho" ;

--
-- Dumping data for table "kho"
--

SET IDENTITY_INSERT "kho" ON ;
INSERT INTO "kho" ("MASANPHAM", "SOLUONG", "NGAYNHAP") VALUES
('SP01', '100', '12/05/2020'),
('SP02', '100', '13/05/2020'),
('SP03', '100', '14/05/2020'),
('SP04', '100', '15/05/2020'),
('SP05', '100', '16/05/2020'),
('SP06', '100', '17/05/2020'),
('SP07', '100', '18/05/2020'),
('SP08', '100', '19/05/2020'),
('SP09', '100', '20/05/2020'),
('SP10', '100', '21/05/2020'),
('SP11', '100', '22/05/2020'),
('SP12', '100', '23/05/2020'),
('SP13', '100', '24/05/2020'),
('SP14', '100', '25/05/2020'),
('SP15', '100', '26/05/2020'),
('SP16', '100', '27/05/2020'),
('SP17', '100', '28/05/2020'),
('SP18', '100', '29/05/2020'),
('SP19', '100', '30/05/2020'),
('SP20', '100', '31/05/2020'),
('SP21', '100', '01/06/2020'),
('SP22', '100', '02/06/2020'),
('SP23', '100', '03/06/2020'),
('SP24', '100', '04/06/2020'),
('SP25', '100', '05/06/2020'),
('SP26', '100', '06/06/2020'),
('SP27', '100', '07/06/2020'),
('SP28', '100', '08/06/2020'),
('SP29', '100', '09/06/2020'),
('SP30', '100', '10/06/2020'),
('SP31', '100', '11/06/2020'),
('SP32', '100', '11/06/2020'),
('SP33', '100', '11/06/2020'),
('SP34', '100', '11/06/2020'),
('SP35', '100', '14/06/2020'),
('SP36', '100', '14/06/2020'),
('SP37', '100', '14/06/2020'),
('SP38', '100', '14/06/2020'),
('SP39', '100', '14/06/2020'),
('SP40', '100', '14/06/2020'),
('SP41', '100', '14/06/2020'),
('SP42', '100', '14/06/2020'),
('SP43', '100', '15/06/2020'),
('SP44', '100', '15/06/2020'),
('SP45', '100', '19/06/2020'),
('SP46', '100', '19/06/2020'),
('SP47', '100', '19/06/2020'),
('SP48', '100', '19/06/2020'),
('SP49', '100', '19/06/2020'),
('SP50', '100', '19/06/2020'),
('SP51', '100', '25/06/2020'),
('SP52', '100', '25/06/2020'),
('SP53', '100', '25/06/2020'),
('SP54', '100', '25/06/2020'),
('SP55', '100', '25/06/2020'),
('SP56', '100', '25/06/2020'),
('SP57', '100', '29/06/2020'),
('SP58', '100', '29/06/2020'),
('SP59', '100', '29/06/2020'),
('SP60', '100', '29/06/2020'),
('SP61', '100', '29/06/2020'),
('SP62', '100', '01/07/2020'),
('SP63', '100', '01/07/2020'),
('SP64', '100', '01/07/2020'),
('SP65', '100', '01/07/2020'),
('SP66', '100', '01/07/2020'),
('SP67', '100', '01/07/2020'),
('SP68', '100', '01/07/2020'),
('SP69', '100', '07/07/2020'),
('SP70', '100', '07/07/2020'),
('SP71', '100', '07/07/2020'),
('SP72', '100', '07/07/2020'),
('SP73', '100', '07/07/2020'),
('SP74', '100', '07/07/2020'),
('SP75', '100', '07/07/2020'),
('SP76', '100', '07/07/2020'),
('SP77', '100', '17/07/2020'),
('SP78', '100', '17/07/2020'),
('SP79', '100', '17/07/2020'),
('SP80', '100', '17/07/2020'),
('SP81', '100', '21/07/2020'),
('SP82', '100', '21/07/2020'),
('SP83', '100', '21/07/2020'),
('SP84', '100', '21/07/2020'),
('SP85', '100', '25/07/2020'),
('SP86', '100', '25/07/2020'),
('SP87', '100', '25/07/2020'),
('SP88', '100', '25/07/2020'),
('SP89', '100', '29/07/2020'),
('SP90', '100', '29/07/2020'),
('SP91', '100', '29/07/2020'),
('SP92', '100', '01/08/2020'),
('SP93', '100', '01/08/2020'),
('SP94', '100', '01/08/2020'),
('SP95', '100', '04/08/2020'),
('SP96', '100', '04/08/2020'),
('SP97', '100', '04/08/2020'),
('SP98', '100', '04/08/2020'),
('SP99', '100', '04/08/2020'),
('SP100', '100', '09/08/2020'),
('SP101', '100', '09/08/2020'),
('SP102', '100', '09/08/2020'),
('SP103', '100', '09/08/2020'),
('SP104', '100', '09/08/2020'),
('SP105', '100', '14/08/2020'),
('SP106', '100', '14/08/2020'),
('SP107', '100', '14/08/2020'),
('SP108', '100', '14/08/2020'),
('SP109', '100', '14/08/2020'),
('SP110', '100', '14/08/2020'),
('SP111', '100', '20/08/2020'),
('SP112', '100', '20/08/2020'),
('SP113', '100', '20/08/2020'),
('SP114', '100', '20/08/2020'),
('SP115', '100', '20/08/2020'),
('SP116', '100', '25/08/2020'),
('SP117', '100', '25/08/2020'),
('SP118', '100', '25/08/2020'),
('SP119', '100', '25/08/2020'),
('SP120', '100', '25/08/2020'),
('SP121', '100', '25/08/2020'),
('SP122', '100', '25/08/2020'),
('SP123', '100', '11/09/2020'),
('SP124', '100', '11/09/2020'),
('SP125', '100', '11/09/2020'),
('SP126', '100', '11/09/2020'),
('SP127', '100', '11/09/2020'),
('SP128', '100', '16/09/2020'),
('SP129', '100', '16/09/2020'),
('SP130', '100', '16/09/2020'),
('SP131', '100', '16/09/2020'),
('SP132', '100', '16/09/2020'),
('SP133', '100', '16/09/2020'),
('SP134', '100', '22/09/2020'),
('SP135', '100', '22/09/2020'),
('SP136', '100', '22/09/2020'),
('SP137', '100', '22/09/2020'),
('SP138', '100', '22/09/2020'),
('SP139', '100', '22/09/2020'),
('SP140', '100', '22/09/2020'),
('SP141', '100', '29/09/2020');

SET IDENTITY_INSERT "kho" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "quantrivien"
--

CREATE TABLE "quantrivien" ;

--
-- Dumping data for table "quantrivien"
--

SET IDENTITY_INSERT "quantrivien" ON ;
INSERT INTO "quantrivien" ("MAQTV", "HOVATEN", "USERNAME", "PASSWORD") VALUES
('QTV01', 'Nguyễn Quang Tuấn', 'admin1', 'admin1'),
('QTV02', 'Hà Kiều Linh', 'admin2', 'admin2'),
('QTV03', 'Phạm Như Quỳnh', 'admin3', 'admin3'),
('QTV04', 'Nguyễn Duy Anh', 'admin4', 'admin4'),
('QTV05', 'Lê Ngọc Hân', 'admin5', 'admin5');

SET IDENTITY_INSERT "quantrivien" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "sanpham"
--

CREATE TABLE "sanpham" ;

--
-- Dumping data for table "sanpham"
--

SET IDENTITY_INSERT "sanpham" ON ;
INSERT INTO "sanpham" ("MASANPHAM", "MADANHMUC", "TENSANPHAM", "DONGIA", "LINKANH1", "NGAYTAO", "LUOTXEM", "TRANGTHAI", "MOTA") VALUES
('SP01', 'DM01', 'Cây kim ngân', 100000, 'images/product-tree/1a-cay-kim-ngan.jpg', '2020-05-12', 343, 'Còn hàng', 'Sẩn phẩm chậu cây để bàn cây Kim Ngân giúp thúc đẩy tài vận thăng tiến mạnh mẽ. Đây sẽ là món quà vô cùng thích hợp trong dịp Tết để cầu chúc sức khỏe, gửi điều may mắn và động viên tinh thần bạn bè, người thân yêu sau những vất vả lo toan của một năm cũ '),
('SP02', 'DM01', 'Cây phát tài – cây kim tiền', 500000, 'images/product-tree/2a-cay-phat-tai.jpg', '2020-05-13', 613, 'Còn hàng', 'Cây Kim Tiền là một trong những loại cây phong thủy về may mắn, tài lộc hàng đầu, là biểu tượng của sự giàu sang, thịnh vượng, đẳng cấp khác biệt. Giúp chúng ta cảm thấy trân trọng cuộc sống và tin tưởng bản thân. Đặc biệt cây có sức bền bỉ cao và rất dễ '),
('SP03', 'DM01', ' Cây thiết mộc lan', 400000, 'images/product-tree/3a-cay-thiet-moc-lan.jpg', '2020-05-14', 759, 'Còn hàng', 'Cây thiết mộc lan còn tượng trưng cho ý nghĩa phát tài – phát lộc được rất nhiều gia đình lựa chọn trồng làm cảnh. Ngoài ra, nhiều công ty, văn phòng cũng đặt mua số lượng lớn cây này để trang trí không gian làm việc, vừa đảm bảo môi trường trong lành cho'),
('SP04', 'DM01', 'Cây ngọc ngân', 300000, 'images/product-tree/4a-cay-ngoc-ngan.jpg', '2020-05-15', 23, 'Còn hàng', 'Cây ngọc ngân là một loại cây thân thảo, chúng mọc thành từng bụi, thân dày. Cây thuộc hàng cây sống lâu năm, có lá thay thế. Cây trưởng thành cao tới 30-50cm. Lá hình bầu dục, mọc không đối xứng, màu xanh đốm trắng trên bề mặt lá. Chiều dài lá khoảng 20-'),
('SP05', 'DM01', 'Cây thanh lan', 150000, 'images/product-tree/5a-cay-thanh-lan.jpg', '2020-05-16', 12, 'Còn hàng', 'Cây thanh lan là cây cảnh trồng trong nhà mang thân gỗ, dáng đứng, lá thuôn dài, có cụm hoa lớn buông rủ thích hợp trang trí tại nhiều không gian khác nhau.'),
('SP06', 'DM01', 'Cây tài lộc', 250000, 'images/product-tree/6a-cay-tai-loc.jpg', '2020-05-17', 123, 'Còn hàng', 'Nếu muốn tìm cho mình một loại cây để bàn trong phòng làm việc mà phải hợp phong thủy, mang lại nhiều sinh khí và may mắn hơn thì chắc hẳn các bạn nên biết đến cây tài lộc. Chúng hội tụ đủ các yếu tố để trở thành cây để bàn đẹp, giúp tăng tài lộc thịnh vư'),
('SP07', 'DM01', 'Cây phất dụ', 28000, 'images/product-tree/7a-cay-phat-du.jpg', '2020-05-18', 187, 'Còn hàng', 'Cây Phất Dụ Mảnh (tên khoa học: Red-Edged Dracaena, Dracaena marginata) là loại cây cảnh thanh lọc không khí có thể loại bỏ khí độc như: xylene, trichloroethylene, formaldehyde vốn có nhiều trong các sản phẩm sơn mài. Cây Phất Dụ Mảnh còn có khả năng hạn '),
('SP08', 'DM01', 'Cây ngọc bích', 200000, 'images/product-tree/8a-cay-ngoc-bich.png', '2020-05-19', 823, 'Còn hàng', 'Cây Ngọc Bích được trồng trong nhà. Dưới một số điều kiện, loài này có thể ra hoa như ngôi sao màu hồng hoặc trắng đầu mùa xuân. Có ý nghĩa trong phong thủy, cành lá tượng trưng cho tài sản, tiền bạc; khi cây ra hoa điều này thể hiện sự giàu sang no ấm.\n'),
('SP09', 'DM01', 'Cây phát lộc hoa – cây dứa cảnh', 230000, 'images/product-tree/9a-cay-phat-loc-hoa-cay-dua-canh.jpeg', '2020-05-19', 430, 'Còn hàng', 'Với sắc đỏ may mắn của cây phong lộc hoa, màu của may mắn và thành công nên được người dân Việt Nam bày trí trong phòng khách, mang lại một không gian thật ấm cúng và ý nghĩa.'),
('SP10', 'DM01', 'Cây tuyết tùng', 550000, 'images/product-tree/10a-cay-tuyet-tung.jpg', '2020-05-20', 408, 'Còn hàng', 'Cây tuyết tùng hay  Thông tuyết, còn gọi là  Hương bách (danh pháp khoa học: Cedrus) là một chi thực vật lá kim trong họ Thông, ngành Thông. Chúng có nguồn gốc từ phía Tây dãy núi Himalaya và khu vực Địa Trung Hải, thường sống ở độ cao 1.500-3.200 m ở dãy'),
('SP11', 'DM01', 'Cây lưỡi hổ', 210000, 'images/product-tree/11a-cay-luoi-ho.jpeg', '2020-05-20', 121, 'Còn hàng', 'Cây Lưỡi Hổ mang ý nghĩa may mắn, giúp gia chủ phát tài, phát lộc, dồi dào tiền bạc. Vì thế nó có thể là một món quà để đem tặng đối tác, bạn bè, người thân vào những dịp đặc biệt như mừng tân gia, mừng năm mới.'),
('SP12', 'DM01', 'Cây sống đời', 120000, 'images/product-tree/12a-cay-song-doi.jpeg', '2020-05-24', 735, 'Còn hàng', 'Loài hoa này mang ý nghĩa cầu chúc cho cả gia đình sức khỏe dồi dào, hạnh phúc, luôn bình yên. Ngoài ra nó còn mang mong muốn về sự gắn kết, sinh sôi giữa các thành viên trong gia đình với nhau. Cây sống đời còn có ý nghĩa một tình yêu mãnh liệt, bền bỉ k'),
('SP13', 'DM01', 'Cây cam ba lá', 320000, 'images/product-tree/13a-cay-hoa-do-quyen.jpg', '2020-05-24', 635, 'Còn hàng', 'Cam ba lá là loại cây có sức sống rất tốt. Cây phát triển và sinh trưởng mạnh ở nhiều điều kiện khí hậu và thổ nhưỡng khác nhau'),
('SP14', 'DM01', 'Cây cafe', 150000, 'images/product-tree/14a-cay-truc-nhat.jpg', '2020-05-24', 806, 'Còn hàng', 'Hoa cà phê ý nghĩa cho sự hạnh phúc trên những thành công của con người Tây Nguyên. Có lẽ rằng, khi nhìn những bông hoa trắng nở rộ khắp khung trời, người dân sẽ thấy hạnh phúc, cảm nhận được rằng một vụ mùa bội thu sắp tới. Công dụng của cà phê có lẽ sẽ '),
('SP15', 'DM01', ' Cây phú quý', 250000, 'images/product-tree/15a-cay-phu-quy.jpg', '2020-05-25', 66, 'Còn hàng', 'Cây phú quý tượng trưng cho sự may mắn, tài lộc và giàu sang nên người ta có câu “ giàu sang phú quý” hay “phú quý cát tường”. Vì vậy cây thường được xem là món quà để tặng cho các dịp tân gia, khai trương, lễ tết,...'),
('SP16', 'DM01', ' Cây ngũ gia bì', 28000, 'images/product-tree/16a-cay-ngu-gia-bi.jpeg', '2020-05-25', 948, 'Còn hàng', 'Cây còn có ý nghĩa động viên tinh thần, có ý nghĩa hòa thuận, đoàn kết các thành viên trong gia đình. Đặc biệt, trong ngũ hành, loại cây này còn rất hợp với người mệnh mộc hoặc tuổi Dần. Vì vậy, nếu trồng một chậu trong nhà, chủ nhân sẽ giữ được tài khí v'),
('SP17', 'DM01', ' Cây lan ý', 200000, 'images/product-tree/17a-cay-lan-y.jpg', '2020-05-26', 882, 'Còn hàng', 'Trong quan niệm phong thủy, cây Lan Ý là biểu tượng cho sự bình yên, mang đến nguồn năng lượng tích cực cho sức khỏe, giúp người sở hữu tránh khỏi các điều xui xẻo. Cây Lan Ý còn có tên gọi khác là Huệ Hòa Bình. Ý nghĩa cũng như tên vậy, nó giúp cho tình '),
('SP18', 'DM01', 'Cây dây nhện', 230000, 'images/product-tree/18a-cay-day-nhen.jpg', '2020-05-26', 465, 'Còn hàng', 'Cây dây nhện là loại cây cảnh để bàn có khả năng hấp thụ ô nhiễm rất lớn, có thể hấp thu, làm sạch hết những khí có hại trong nhà một thời gian ngắn. Cây dây nhện còn được sử dụng như một loại cây xanh văn phòng. Cây có ý nghĩa mang đến may mắn và thành c'),
('SP19', 'DM01', 'Cây hương đào', 550000, 'images/product-tree/19a-cay-huong-dao.jpeg', '2020-05-26', 156, 'Còn hàng', 'Trong phong thủy, cây hương đào có ý nghĩa giúp mang lại nguồn năng lượng tích cực, giúp người ốm đau, bệnh tật trở nên khỏe mạnh hơn, người già hóa trẻ nên cây hương đào còn được gọi là cây thiêng liêng.'),
('SP20', 'DM01', ' Cây nguyệt quế', 210000, 'images/product-tree/20a-cay-nguyet-que.jpg', '2020-05-26', 954, 'Còn hàng', 'Nhiều người trồng cây nguyệt quế với mong muốn là cây sẽ mang lại thành công trên con đường công danh, sự nghiệp, mang lại tiền tài cho gia chủ. Bên cạnh đó, cây còn có khả năng xua đuổi tà khí, ma quỷ và những điều xui xẻo trong cuộc sống, mang đến may m'),
('SP21', 'DM01', 'Cây xương rồng', 130000, 'images/product-tree/21a-cay-xuong-rong.jpg', '2020-06-01', 985, 'Còn hàng', 'Đây là loài hoa mang ý nghĩa ẩn dụ, để nói lên ý chí mạnh mẽ, biết vượt qua hoàn cảnh dù khó khăn nhất của con người. Trong tình cảm, hoa Xương Rồng mang ý nghĩa tượng trưng cho tình yêu bền bỉ, bất diệt, nồng nàn thủy chung bất chấp sự ngăn cấm, khó khăn'),
('SP22', 'DM01', 'Cây đa bonsai', 2000000, 'images/product-tree/22a-cay-da-bonsai.jpg', '2020-06-01', 293, 'Còn hàng', 'Khi được trồng trong nhà, với ý nghĩa may mắn, an lành, đa búp đỏ sẽ mang lại nhiều vượng khí cho gia chủ, cây sẽ bao bọc, che chở giúp công việc được thuận lợi và suôn sẻ. Với màu đỏ chủ đạo, đa búp đỏ phù hợp với người thuộc mệnh Thổ và Hỏa.'),
('SP23', 'DM01', 'Cây vạn thiên thanh', 310000, 'product-tree/23a-cay-van-nien-thanh.jpg', '2020-06-02', 264, 'Còn hàng', 'Theo quan niệm phương Đông, cái tên Vạn Niên Thanh của cây có nghĩa là “100 năm” - tượng trưng cho sự cát tường, trường tồn, bền vững với thời gian. Chính vì thế, cây giúp mang lại tài lộc, may mắn, thịnh vượng cho gia chủ và được sử dụng làm quà tặng tân'),
('SP24', 'DM01', 'Cây trạng nguyên', 450000, 'images/product-tree/24a-cay-trang-nguyen.jpg', '2020-06-03', 320, 'Còn hàng', 'Cây Hoa Trạng Nguyên có ý nghĩa phong thủy mang đến thành công, đỗ đạt và may mắn. Cây phù hợp làm cây cảnh văn phòng, quầy lễ tân, quầy thu ngân, cây cảnh để trước cửa nhà. Cây Trạng Nguyên hay còn có tên gọi là cây Nhất Phẩm Hồng, cây có nguồn gốc ở miề'),
('SP25', 'DM01', 'Cây bách', 830000, 'images/product-tree/25a-cay-bach.jpg', '2020-06-03', 968, 'Còn hàng', 'Trong dân gian, cây Bách là một loại cây thể hiện sự mạnh mẽ, có sức sống mãnh liệt. Bất kể đất đá, cằn cỗi, thiếu dinh dưỡng,… cây vẫn có thể mọc lên. Dù điều kiện thời tiết thế nào thì cây vẫn sống hiên ngang.'),
('SP26', 'DM01', 'Cây môn trường sinh', 210000, 'images/product-tree/26a-cay-mon-truong-sinh.jpg', '2020-06-09', 434, 'Còn hàng', 'Cây trường sinh tượng trưng cho sự trường tồn, vĩnh cửu bởi màu xanh cho thấy sự sống dồi dào, sống được mọi môi trường nên có lẽ vì thế mà người ta đặt cho nó cái tên “trường sinh”. Ngoài ra cây còn mang ý nghĩa may mắn, tốt lành, gia đình hòa thuận, khỏ'),
('SP27', 'DM01', 'Cây lưỡi hổ', 120000, 'images/product-tree/27a-cay-thuy-truc.jpg', '2020-06-09', 509, 'Còn hàng', 'Cây Lưỡi Hổ mang ý nghĩa may mắn, giúp gia chủ phát tài, phát lộc, dồi dào tiền bạc. Vì thế nó có thể là một món quà để đem tặng đối tác, bạn bè, người thân vào những dịp đặc biệt như mừng tân gia, mừng năm mới.'),
('SP28', 'DM01', 'Cây hồng tài phát', 190000, 'images/product-tree/28a-cay-hong-phat-tai.jpg', '2020-06-09', 444, 'Còn hàng', 'Toàn cây Hồng Phát Tài bao trùm lên là sắc tía đỏ là biểu tượng của sức mạnh và mang lại sự ấm áp của mặt trời. Cây còn có ý nghĩa hết sức thiết thực là mang lại sự hòa thuận, bình yên trong gia đình.'),
('SP29', 'DM01', ' Cây thường xuân', 420000, 'images/product-tree/29a-cay-thuong-xuan.jpg', '2020-06-09', 686, 'Còn hàng', 'Theo tương truyền, thường xuân có khả năng xua đuổi tà ma, những vận hạn đen đủi, từ đó mang đến bình an, thịnh vượng cho gia chủ. Cái tên thường xuân cũng mang ý nghĩa tượng trưng cho tài lộc, sinh sôi nảy nở và may mắn. Theo phong thủy, thường xuân mang'),
('SP30', 'DM01', 'Cây dương xỉ', 230000, 'images/product-tree/30a-cay-duong-xi.jpg', '2020-06-09', 905, 'Còn hàng', 'Ý nghĩa cây dương xỉ Cây dương xỉ có màu xanh mang ý nghĩa tượng trưng cho sức sống luôn tươi mới phát triển. Cây mọc um tùm, xum xuê lại dễ trồng và chăm sóc có ý nghĩa tượng trưng cho gia đình đông con nhiều cháu, gia đình sum họp thuận hòa.'),
('SP31', 'DM01', 'Cây tóc thần vệ nữ', 550000, 'images/product-tree/31a-cay-toc-than-ve-nu.jpg', '2020-06-16', 262, 'Còn hàng', 'Chính vì thế cây tóc thần vệ nữ có ý nghĩa mang đến điều may mắn, giúp cho công việc được thuận lợi cùng với một môi trường sống trong xanh cho gia đình bạn. Cây tóc thần vệ nữ phù hợp với những người mệnh Mộc và mệnh Hỏa, nhưng không phù hợp với những ng'),
('SP32', 'DM01', 'Cây cau tiểu trâm', 210000, 'images/product-tree/32a-cay-cau-tieu-tram.jpg', '2020-06-16', 236, 'Còn hàng', 'Cau tiểu trâm mang ý nghĩa vô cùng tích cực, đại diện cho sức sống mạnh mẽ, không ngừng vươn lên nó trở thành quà tặng để khích lệ, động viên trong những dịp đặc biệt như: Thi cử, tân gia, lễ tết, thăng chức, sinh nhật, khai trương… Đặc biệt với những ngư'),
('SP33', 'DM01', 'Cây hồng môn', 130000, 'images/product-tree/33a-cay-hong-mon.jpg', '2020-06-16', 840, 'Còn hàng', 'Trong phong thuỷ, cây hồng môn có ý nghĩa mang lại sự may mắn, tài lộc và thịnh vượng cho gia chủ. Về tên gọi, tên của cây được ghép từ hai chữ “hồng” và “môn”. Trong tiếng Trung, “hồng” là từ chỉ màu đỏ, là màu tượng trưng cho sự may mắn và hạnh phúc. Cò'),
('SP34', 'DM01', 'Cây cọ cảnh', 2000000, 'images/product-tree/34a-cay-co-canh.jpg', '2020-06-16', 907, 'Còn hàng', 'Cây cọ cảnh không chỉ mang lại bóng mát, vẻ đẹp cho khung cảnh sân vườn, nhà ở của gia chủ mà còn mang lại nhiều ý nghĩa về mặt phong thủy. Nó đem đến may mắn và giàu sang cho người trồng bởi tán cây to rộng hút “tài lộc”.'),
('SP35', 'DM01', 'Cây nha đam', 170000, 'images/product-tree/35a-cay-nha-dam.jpg', '2020-06-16', 533, 'Còn hàng', 'Nha đam có ý nghĩa đặc biệt trong phong thủy như may mắn, tài lộc, xua đuổi những điều không tốt cho gia đình. Nên được nhiều người quan tâm trồng trong sân vườn, ban công nhà để hổ trợ phong thủy và mang đến những điều tốt lành cho gia chủ.'),
('SP36', 'DM01', 'Cây hoa cẩm chướng', 470000, 'images/product-tree/36a-cay-hoa-cam-chuong.jpg', '2020-06-14', 657, 'Còn hàng', 'Hoa cẩm chướng cũng có nhiều ý nghĩa rất hay. Hãy cùng tìm hiểu nhé. Ý nghĩa chung: Sự ái mộ - Sự thôi miên, quyến rũ - Tình yêu của phụ nữ - Niềm tự hào - Sắc đẹp - Tình yêu trong sáng và sâu đậm, thiết tha. Hoa cẩm chướng vàng: Sự từ chối, sự khinh thườ'),
('SP37', 'DM01', 'Cây bình an', 540000, 'images/product-tree/37a-cay-binh-an.jpg', '2020-06-14', 894, 'Còn hàng', 'Đúng như với tên gọi của mình, cây Bình An đem đến ý nghĩa tượng trưng cho sự bình yên, hạnh phúc, êm ấm cho gia chủ khi trồng. Do đó mà bạn có thể sử dụng cây để làm quà tặng cho người thân, anh chị em trong gia đình như một lời cầu chúc họ luôn được hạn'),
('SP38', 'DM01', 'Cây trầu bà', 430000, 'images/product-tree/38a-cay-trau-ba.jpg', '2020-06-14', 588, 'Còn hàng', 'Cây trầu bà có đặc tính sinh trưởng tốt, lớn nhanh, lá luôn tươi tốt nên mang ý nghĩa của sự phát triển thịnh vượng, tài lộc sinh sôi, thuận lợi về đường con cái. Cây cũng rất dễ trồng, dễ chăm sóc nên nó tượng trưng cho mọi việc hanh thông, thuận lợi mọi'),
('SP39', 'DM01', 'Cây trúc may', 260000, 'images/product-tree/39a-cay-truc-may.jpg', '2020-06-14', 568, 'Còn hàng', 'Cây trúc mây tượng trưng cho sự mạnh mẽ, sự kiên cường để vượt qua thử thách trong cuộc sống bởi vì đặc tính sinh trưởng và phát triển tốt trong mọi điều kiện khắc nghiệt của bản thân nó, từ đó khi trang trí cây trúc mây bạn sẽ đạt được nhiều thành tựu tr'),
('SP40', 'DM01', 'Cây Si Cảnh', 590000, 'images/product-tree/40a-cay-si-canh.jpg', '2020-06-14', 224, 'Còn hàng', 'Cây Si trong bộ phong thủy Tứ Linh “Đa - Sung - Sanh - Si” đại diện cho sự may mắn, cát tường, mang lại vượng khí cho ngôi nhà và văn phòng.'),
('SP41', 'DM01', 'Cây bạch mã hoàng tử', 610000, 'images/product-tree/41a-cay-bach-ma-hoang-tu.jpg', '2020-06-14', 258, 'Còn hàng', 'Cây bạch mã hoàng tử với vẻ ngoài sang trọng và thanh lịch cùng hướng cây thẳng đứng nên mang ý nghĩa cho sự tiến tới, vươn lên và gặp nhiều thuận lợi trong công việc và cuộc sống. Đồng thời, với tên gọi là bạch mã có ý nghĩa là sự tiến nhanh, thuận buồm '),
('SP42', 'DM01', 'Cây vạn lộc', 480000, 'images/product-tree/42a-cay-van-loc.jpg', '2020-06-14', 886, 'Còn hàng', 'Trong vạn lộc thì từ vạn có nghĩa là nhiều, chỉ một số lượng rất lớn, từ lộc có nghĩa là phúc lộc, tiền bạc và sự may mắn. Kết hợp 2 từ này lại, ta có thể hiểu vạn lộc có ý nghĩa rằng sự may mắn, phúc lộc sẽ đến không bao giờ hết, đặc biệt là khi cây ra h'),
('SP43', 'DM01', 'Cây hoa cát tường', 580000, 'images/product-tree/43a-cay-hoa-cat-tuong.jpg', '2020-06-15', 855, 'Còn hàng', 'Hoa cát tường là một loại hoa chống chịu rất tốt với thời tiết lạnh khắc nghiệt, nên nó là biểu tượng đẹp đẽ của một ý chí sống kiên cường, nhiệt huyết. Ngoài ra, cát tường còn mang ý nghĩa tượng trưng cho một lời cầu chúc cho cuộc sống hạnh phúc và viên '),
('SP44', 'DM01', 'Cây Tùng cổ', 520000, 'images/product-tree/45a-cay-tung-co.jpg', '2020-06-15', 768, 'Còn hàng', 'Cây Tùng có khả năng chịu đất khô cằn, thiếu dinh dưỡng và chịu rét rất tốt, có sức sống dẻo dai, mãnh liệt. Vì vậy, trong dân gian từ xa xưa thì loại cây này đại diện cho sự trường thọ, đại diện cho khí tiết. Ý nghĩa cây tùng trong phong thủy đó là mang '),
('SP45', 'DM01', 'Cây thiên tuế', 340000, 'images/product-tree/44a-cay-thien-tue.jpeg', '2020-06-19', 637, 'Còn hàng', 'Trong phong thủy, cây thiên tuế còn mang ý nghĩa với sức sống bất khuất, có tác dụng cân bằng khí âm dương, được ví như những tráng sĩ đứng canh cho ngôi nhà của bạn. Vì thế mà những ai trồng cây thiên tuế ở nhà sẽ đem đến những may mắn, xua đuổi đi tà kh'),
('SP46', 'DM01', 'Cây lộc vừng', 980000, 'images/product-tree/46a-cay-loc-vung.jpg', '2020-06-19', 368, 'Còn hàng', 'Cây Lộc Vừng mang ý nghĩa phong thủy may mắn, tài lộc, tốt lành cho gia chủ. Những bông hoa lộc vừng đỏ tượng trưng cho hỷ sự và gắn liền ngụ ý phát lộc phát tài. Chính vì vậy mà nó được xếp vào bốn loại cây cảnh quý: sanh, sung, tùng, lộc.'),
('SP47', 'DM01', 'Cây cau cảnh', 870000, 'images/product-tree/47a-cay-cau-canh.jpg', '2020-06-19', 148, 'Còn hàng', 'Cau cảnh mang ý nghĩa phong thủy đem lại may mắn, tài lộc. Với khả năng hấp thu độc tố, cùng với dáng cây bền đẹp, vươn thẳng xanh tốt, cây Cau Cảnh có ý nghĩa xua đi những điều không may mắn, mang lại hạnh phúc, bình an cho gia chủ.'),
('SP48', 'DM01', 'Cây khế bonsai', 920000, 'images/product-tree/48a-cay-khe-bonsai.jpg', '2020-06-19', 840, 'Còn hàng', 'Hầu hết nhiều gia chủ trồng cây khế chỉ biết tính năng phủ mát và ăn quả của ngôi nhà mà không biết nó còn mang ý nghĩa phong thủy. Thực chất cây khế trong phong thủy mang sự may mắn, phát triển thịnh vượng, đầy đủ vì trái chín ngã vàng lại mang hình ngôi'),
('SP49', 'DM01', 'Cây chuối cảnh', 310000, 'images/product-tree/49a-cay-chuoi-canh.jpg', '2020-06-19', 724, 'Còn hàng', 'Cây chuối cảnh mang ý nghĩa là mang lại nhiều tài lộc, sự may mắn cho gia chủ.'),
('SP50', 'DM01', 'Cây phát lộc', 290000, 'images/product-tree/50a-cay-phat-loc.jpg', '2020-06-19', 730, 'Còn hàng', 'Cây phát lộc còn được gọi bởi một số tên khác như cây phất dụ, cây phát tài phát lộc, cây may mắn phát lộc hay trúc may mắn. Nó tượng trưng cho sự may mắn - sức khỏe và sự thịnh vượng. Loài cây xinh đẹp này thu hút và làm tăng dòng chảy năng lượng tích cự'),
('SP51', 'DM01', 'Cây ngô đồng', 199000, 'images/product-tree/51a.jpg', '2020-06-25', 395, 'Còn hàng', 'Cây ngô đồng là cây cảnh quen thuộc được trồng nhiều ở Việt Nam. Cây cao khoảng 100cm có thân màu xám, thân dưới phình to. Cây ngô đồng có hoa đỏ như san hô rất đẹp mắt, thích hợp làm cây trang trí, mang điềm lành cho gia chủ.'),
('SP52', 'DM01', 'Cây thông', 499000, 'images/product-tree/52a.png', '2020-06-25', 495, 'Còn hàng', 'Cây thông hay thường được gọi là cây thông nhựa, thông 2 lá, thông hoàng mai. Cây được trồng rất nhiều tại nước ta, cây được lựa chọn là loại cây công trình mang lại vẻ đẹp cho đường phố hay các khu đô thị'),
('SP53', 'DM01', 'Cây bàng', 170000, 'images/product-tree/53a.jpg', '2020-06-25', 209, 'Còn hàng', 'Cây bàng Singapore là loại cây trồng trong nhà được rất nhiều người ưa chuộng bởi chúng vừa có khả năng thanh lọc không khí cực tốt vừa mang ý nghĩa phong thủy tốt lành.'),
('SP54', 'DM01', 'Cây hoa giấy', 199000, 'images/product-tree/54a.jpg', '2020-06-25', 383, 'Còn hàng', 'Cây hoa giấy cổ thụ đẹp có dáng và hoa đẹp thường dùng trang trí nội thất nhà ở và sân vườn. Cây cho hoa nhiều và rực sắc làm ấm cả khu vườn.'),
('SP55', 'DM01', 'Cây hoa lan', 230000, 'images/product-tree/55a.jpg', '2020-06-25', 375, 'Còn hàng', 'Lan Phalaenopsis có thể ra hoa trong bất cứ thời điểm nào và sẽ không là điều bất thường nếu một cây lan nào đó ra hoa 2 hoặc 3 lần trong một năm, mà hoa vẫn tươi trong nhiều tháng. Tuy nhiên điều quan trọng là cây phải tiếp tục ra lá cùng lúc với việc nở'),
('SP56', 'DM01', 'Cây tùng la hán', 199000, 'images/product-tree/56a.jpg', '2020-06-25', 68, 'Còn hàng', 'Cây tùng la hán hay có tên gọi khác là la hán tùng, thông la hán. Cây được trồng nhiều tại các công trình mang lại không gian xanh, cũng như mang lại ý nghĩa may mắn, phồn vinh.'),
('SP57', 'DM01', 'Cây hương thảo', 70000, 'images/product-tree/57a.jpg', '2020-06-29', 71, 'Còn hàng', 'Cây hương thảo còn có tên gọi khác là Tây Dương Chổi; là loại cây gia vị vô cùng quen thuộc với nhiều tác dụng như: chữa viêm họng; đau nhức cơ; thấp khớp; trầm cảm; cơ thể suy nhược'),
('SP58', 'DM01', 'Cây thủy tùng', 170000, 'images/product-tree/58a.jpg', '2020-06-29', 189, 'Còn hàng', 'Cây Thủy Tùng hay còn gọi là cây Thông Nước có tên khoa học là Asparagus Plumosus, là loại cây dễ thích nghi với nhiều điều kiện môi trường khác nhau nên được ưa chuộng làm cây cảnh văn phòng.'),
('SP59', 'DM01', 'Cây tùng bồng lai', 190000, 'images/product-tree/59a.jpg', '2020-06-29', 80, 'Còn hàng', 'Cây Tùng Bồng Lai để bàn có sức sống bền bỉ, hợp với mọi môi trường sống. Không chỉ dùng để trang trí mà tùng bồng lai còn có khả năng thanh lọc không khí, đuổi muỗi và mang ý nghĩa về sự trường thọ.'),
('SP60', 'DM01', 'Cây tùng thơm', 170000, 'images/product-tree/60a.jpg', '2020-06-29', 939, 'Còn hàng', 'Tùng thơm dạng lá kim dùng để trang trí  bàn làm việc, phòng khách...đặc biệt có mùi thơm thoang thoảng do thân cây có chứa tinh dầu một chất làm giảm stress hiệu quả.'),
('SP61', 'DM01', 'Cây hoa lài', 40000, 'images/product-tree/61a.jpg', '2020-06-29', 56, 'Còn hàng', 'Cây hoa lài ta hay còn được gọi là cây hoa nhài, một loài cây cho hoa thơm đặc trưng rất được yêu thích khi trồng trang trí trong vườn nhà. Chúng đã được trồng từ rất lâu trong nhiều thế kỷ qua. Trong thực tế, nguồn gốc của loài cây hoa lài ta đã bị lãng '),
('SP62', 'DM01', 'cây lúa kiểng', 10000, 'images/product-tree/62b.jpg', '2020-07-01', 327, 'Còn hàng', 'Cây Xanh Phú Quốc chuyên cung cấp chậu lúa non chưng bàn caffee và cho mượn chậu cây cảnh giá rẻ với nhiều mẫu chậu cảnh đẹp bằng các chất liệu Gốm, Sứ, Xi Măng, Gỗ, Sắt, Nhựa Composite cao cấp… phù hợp với mọi nhu cầu của khách hàng. Để nhận được tư vấn '),
('SP63', 'DM01', 'Cây sen đá', 60000, 'images/product-tree/63a.jpg', '2020-07-01', 597, 'Còn hàng', 'Đây là cây lâu năm, mọng nước, có hoa lưỡng tính. Cây sen đá rất đa dạng phong phú về kiểu dáng, màu sắc, kết cấu thân lá, điều đó tạo nên sức hấp dẫn đặc biệt của loại cây này.'),
('SP64', 'DM01', 'Hoa dạ yến thảo', 60000, 'images/product-tree/64a.jpg', '2020-07-01', 337, 'Còn hàng', 'Dạ yên thảo là giống hoa thân thảo cho hoa quanh năm, rất thích hợp trồng chậu treo và được nhiều người ưa chuộng.'),
('SP65', 'DM01', 'Hoa dừa cạn', 50000, 'images/product-tree/65a.jpg', '2020-07-01', 690, 'Còn hàng', 'Cây khỏe, cho nhiều nhánh, dễ trồng và chăm sóc. Hoa to, màu sắc đa dạng, cánh hoa tròn và xếp đều lên nhau.'),
('SP66', 'DM01', 'Hoa hồng leo', 220000, 'images/product-tree/66a.jpg', '2020-07-01', 788, 'Còn hàng', 'Còn có tên gọi khác là hoa hồng dây, tên khoa học của hoa hồng leo là Rosa spp, nguồn gốc từ châu Âu.'),
('SP67', 'DM01', 'Hoa bông tuyết', 120000, 'images/product-tree/67a.jpeg', '2020-07-01', 553, 'Còn hàng', 'Hoa bông tuyết đã được ca ngợi giúp tăng cường khả năng nhận thức và trí nhớ, gia tăng sự nhạy bén, cải thiện sự tỉnh táo và tập trung của não bộ.'),
('SP68', 'DM01', 'Hoa cúc bách nhật', 20000, 'images/product-tree/68a.jpg', '2020-07-01', 615, 'Còn hàng', 'Cũng như tên gọi, cây cúc bách nhật thường xuyên nở hoa. Sau khi hoa khô không hề phai sắc vì thế hoa cúc bách nhật được dùng làm hoa khô để trang trí. Hoa cúc bách nhật là loại cây chịu nóng, cây cho hoa chu yếu vào mùa hè và thu, ở Nam Bộ có thể cho hoa'),
('SP69', 'DM01', 'Hoa mẫu đơn', 350000, 'images/product-tree/69a.jpg', '2020-07-07', 646, 'Còn hàng', 'Ngày xưa nữ hoàng xinh đẹp Võ Tắc Thiên lệnh cho tất cả các loại hoa trong vườn thượng uyển của bà phải nở cùng 1 giờ.Duy chỉ có hoa mẫu đơn ương ngạnh không tuân lệnh... Được mệnh danh là quốc sắc thiên hương, với vẻ đẹp sang trọng, rực rỡ và lâu tàn, hạ'),
('SP70', 'DM01', 'Hoa nhài nhật ', 79000, 'images/product-tree/70a.jpg', '2020-07-07', 969, 'Còn hàng', 'Những loại hoa có thể tự mình biến đổi màu sắc theo thời gian không phải quá hiếm gặp nhưng nó không có nhiều, có thể kể đến như hoa hồng đổi màu, hoa cẩm tú cầu…nhưng một loại hoa nữa mà ta không thể không nhắc đến đó chính là hoa nhài nhật. Đây là một l'),
('SP71', 'DM01', 'Hoa diễm châu', 100000, 'images/product-tree/71a.jpg', '2020-07-07', 308, 'Còn hàng', 'Cây hoa diễm châu cho hoa nhiều màu sắc thích hợp trồng làm cảnh trong sân vườn, công viên, vườn hoa. Cây hoa diễm châu có thể trồng thành bụi, khóm hoa hay thảm hoa đều tạo cảnh đẹp. Cây hoa diễm châu cũng có thể trồng trong chậu đặt riêng lẻ hay nhiều c'),
('SP72', 'DM01', ' Hoa cúc nữ hoàng ', 169000, 'images/product-tree/72a.jpg', '2020-07-07', 309, 'Còn hàng', 'Cây Hoa Cúc Nữ Hoàng là loại cây thân bụi nhỏ được trồng phổ biến tại Việt Nam. Chúng mang vẻ đẹp tươi mới kèm những màu sắc sặc sỡ tạo giúp không gian bừng sáng hẳn lên. Bởi vẻ đẹp này chúng được trồng rất rộng rãi để trang trí nội thất và cảnh quang sân'),
('SP73', 'DM01', 'Hoa đồng tiền', 65000, 'images/product-tree/73a.jpg', '2020-07-07', 995, 'Còn hàng', ' Hoa đồng tiền hồng rất phù hợp làm món quà tặng, đặc biệt cho những cô gái mà bạn muốn thể hiện tình cảm của mình. Chậu hoa đồng tiền hộng còn là cây cảnh hoa trang trí cho không gian văn phòng hay phòng khách của bạn thêm màu sắc. Đồng tiền  được lai gi'),
('SP74', 'DM01', 'Hoa đèn lồng ', 120000, 'images/product-tree/74a.jpg', '2020-07-07', 869, 'Còn hàng', 'Hoa lồng đèn chậu treo dùng trang trí trước hiên nhà, trang trí cửa sổ, ban công, sân thượng, trang trí quán cafe, nhà hàng… hoặc làm chậu treo triển lãm.'),
('SP75', 'DM01', ' Hoa huỳnh anh', 499000, 'images/product-tree/75a.jpeg', '2020-07-07', 966, 'Còn hàng', 'Hoa huỳnh anh là giống cây cảnh thích hợp được trồng làm tường rào mang lại vẻ đẹp sức sống, sinh động cho ngôi nhà của bạn. Hoa quỳnh anh có 2 dạng là thân leo và thân bụi giúp bạn thoải mái lựa chọn.'),
('SP76', 'DM01', 'Hoa sen', 450000, 'images/product-tree/76c.jpg', '2020-07-07', 54, 'Còn hàng', ' Hoa sen trồng trong chậu được trồng làm cây cảnh ngoại thất. Ngoài ra, Chúng còn dùng để trí tiểu cảnh, hòn non bộ, sân thượng,.. rất đẹp.'),
('SP77', 'DM01', 'Hoa cẩm tú cầu', 115000, 'images/product-tree/77a.jpg', '2020-07-17', 693, 'Còn hàng', 'Chậu hoa cẩm tú cầu cao 30cm. Cây thân gỗ dạng bụi, lá xanh quanh năm,hoa mọc từng chùm có nhiều màu sắc rất đẹp tùy theo độ pH của đất( có thể thử độ pH của đất bằng giấy quỳ tím). '),
('SP78', 'DM01', 'Hoa triệu chuông', 50000, 'images/product-tree/78a.jpg', '2020-07-17', 436, 'Còn hàng', 'Hoa Triệu Chuông với vẻ đẹp mong manh nhưng vô cùng quyến rũ. Đây chính là loài hoa cảnh thích hợp trang trí cho mọi ngôi nhà. Với màu sắc rực rỡ, dễ trồng và chăm sóc; quý vị sẽ luôn có những lẵng hoa treo tuyệt đẹp suốt bốn mùa.'),
('SP79', 'DM01', 'Hoa tigon', 75000, 'images/product-tree/79a.jpg', '2020-07-17', 647, 'Còn hàng', 'Hoa tigon hoa leo đẹp sai hoa, hoa tigon là cây hoa leo chống nắng tốt, có khả năng phát triển nhanh.'),
('SP80', 'DM01', 'Hoa pansee', 200000, 'images/product-tree/80a.jpg', '2020-07-17', 311, 'Còn hàng', 'Hoa panse có nhiều màu sắc đa dạng, cây cao trung bình từ 30-50cm, chịu rét tốt, hoa nở từ tháng 11 năm nay đến tháng 5 năm sau. Hoa đẹp, cánh nhỏ, mềm như nhung, hương thơm dịu nhẹ. Rất phù hợp trồng chậu, giỏ treo, trang trí sân vườn. '),
('SP81', 'DM01', 'Hoa Thanh xà', 150000, 'images/product-tree/81b.jpg', '2020-07-21', 449, 'Còn hàng', 'Cánh hoa mềm mịn đung đưa trước gió cùng sắc xanh thướt tha dịu dàng nữ tính đem lại cảm giác yên ả, thanh bình, mát mẻ nơi không gian thư thái của chủ nhân. Nếu sân vườn nhà bạn đủ rộng thì chắc chắn khoe được 90 % vẻ đẹp của cây rồi đấy.'),
('SP82', 'DM01', 'Hoa Mười Giờ Mỹ', 49000, 'images/product-tree/82a.jpg', '2020-07-21', 393, 'Còn hàng', 'Hoa Mười giờ Mỹ ra hoa sớm, hoa nhiều, đồng đều đối với tất cả các màu. Mười giờ nở kép, to, thân cây nhỏ nhưng khỏe. Hoa Mười giờ Mỹ là dạng cây thân thảo mọng nước 1 năm, hoa to 2,5cm, có màu trắng, vàng, đỏ, tím, hồng, cam... có hoa cánh đơn, cánh kép,'),
('SP83', 'DM01', 'Hoa Mõm Sói ', 160000, 'images/product-tree/83a.jpg', '2020-07-21', 82, 'Còn hàng', 'Là loài hoa biểu trưng cho sự mạnh mẽ, may mắn, tương lai tươi sáng, hoa mõm sói có màu sắc rất rực rỡ, xinh đẹp và thường được sử dụng trong những dịp đặc biệt như Tết, tân gia, khai trương, thăng chức, đầy tháng em bé…'),
('SP84', 'DM01', 'Cây hoa Cánh Bướm', 150000, 'images/product-tree/84a.jpg', '2020-07-21', 775, 'Còn hàng', 'Hiện nay, hoa cánh bướm thường xuất hiện khá nhiều tại các công viên, sở thú. Với khả năng sống được ở mọi nơi và có thể trồng ở nhiều loại đất khác nhau, màu sắc đẹp và đa dạng, hoa cánh bướm đang chiếm được sự yêu thích từ nhiều người.'),
('SP85', 'DM01', 'Hoa Thúy Điệp', 120000, 'images/product-tree/85b.jpg', '2020-07-25', 488, 'Còn hàng', 'Hoa Thúy Điệp là loài hoa ưa sáng, nhiệt độ thích hợp để trồng từ 18 – 25 độ C. Đất trồng cần tơi xốp, thoát nước tốt tránh ngập úng. Đây là loài hoa thích hợp để trồng vào đầu xuân nhờ khả năng sinh trưởng nhanh ở nhiệt độ vừa phải.'),
('SP86', 'DM01', ' Hoa Chùm Ớt ', 265000, 'images/product-tree/86a.jpg', '2020-07-25', 35, 'Còn hàng', 'Ai nhìn ngắm giàn hoa leo chùm ớt lần đầu tiên đều cảm thấy choáng ngợp bởi vẻ đẹp thu hút với hàng ngàn bông hoa như trái ớt chen chúc nhau trên giàn. Ấn tượng ấy còn lưu giữ mãi trong tâm trí đến nỗi ai cũng muốn có được một giàn leo rực rỡ tô điểm cho '),
('SP87', 'DM01', 'Hoa Móng Cọp', 90000, 'images/product-tree/87a.jpg', '2020-07-25', 29, 'Còn hàng', 'Tên thường gọi là Red Jade Vine) là loại cây dây leo cho hoa độc đáo và lạ mắt bởi những chùm hoa dài xum xuê, gắn xung quanh chùm là hàng trăm bông hoa với hình dáng như những chiếc móng vuốt cọp dũng mãnh hướng ngược lên trên đầy uy phong.'),
('SP88', 'DM01', 'Hoa Cúc Sao Băng ', 140000, 'images/product-tree/88b.jpg', '2020-07-25', 518, 'Còn hàng', 'Được trồng nhiều ở ban công, sân vườn, vỉa hè, công viên, nhà hàng, vườn hoa, chậu cảnh, chậu treo trước hiên nhà.Mang đến cho người ngắm một cảm giác thoải mái, thư thái đầu óc sau những giây phút căng thẳng với cuộc sống thường nhật.'),
('SP89', 'DM01', ' Cây me', 2200000, 'images/product-tree/89a.jpg', '2020-07-29', 573, 'Còn hàng', 'Cây me chua thường được trồng ở các khu chung cư, sân vườn, đường phố… để cho bóng mát. Bên cạnh đó, me chua còn dùng để trang trí làm đẹp cho ngôi nhà hoặc làm điểm nhấn cho sân vườn… như: cây me chua bonsai, cây me chua cổ thụ…'),
('SP90', 'DM01', 'Cây dâu', 150000, 'images/product-tree/90a.jpg', '2020-07-29', 687, 'Còn hàng', 'Những chậu dâu tây Đà Lạt với vẻ đẹp lung linh sẽ theo xe xuống núi và góp phần làm cho sắc xuân thêm tươi thắm trong những gia đình Việt.'),
('SP91', 'DM01', 'Cây cóc', 135000, 'images/product-tree/91b.jpg', '2020-07-29', 112, 'Còn hàng', 'Cóc Thái được trồng vườn để lấy quả, cây ra hoa quanh năm và sai quả, vị lại ngon, giòn thơm nên rất được ưa chuộng. Ngoài ra, cóc Thái nhỏ cây, trái đẹp nên còn được trồng chậu làm cây cảnh trang trí,…'),
('SP92', 'DM01', 'Cây lê', 150000, 'images/product-tree/92b.jpg', '2020-08-01', 987, 'Còn hàng', 'Lê là tên gọi chung của một nhóm thực vật, chứa các loài cây ăn quả thuộc chi có danh pháp khoa học Pyrus. Các loài lê được phân loại trong phân tông Pyrinae trong phạm vi tông Pyreae. Các loài cây này là cây lâu năm.'),
('SP93', 'DM01', 'Cây Táo', 300000, 'images/product-tree/93a.jpg', '2020-08-01', 502, 'Còn hàng', 'Táo tây, còn gọi là bôm, Táo Lê (phiên âm từ tiếng Pháp: pomme) có danh pháp hai phần là Malus domestica. Loài cây thân gỗ này thuộc họ Hoa hồng (Rosaceae). Đây là một trong những loại cây ăn trái phổ biến nhất.'),
('SP94', 'DM01', ' Việt quất', 150000, 'images/product-tree/94a.jpg', '2020-08-01', 862, 'Còn hàng', 'Việt quất là loại quả được yêu thích trên toàn thế giới không chỉ vì hương vị thơm ngon mà còn có nhiều lợi ích tốt cho sức khỏe như cải thiện trí nhớ, giảm cholesterol, ngăn ngừa bệnh tim, giảm mỡ bụng, chậm quá trình lão hóa, tăng cường hệ miễn dịch… 1.'),
('SP95', 'DM01', ' Nho', 100000, 'images/product-tree/95a.jpg', '2020-08-04', 452, 'Còn hàng', 'Nho Ninh Thuận là loại nho quả tím rất ngon mà dễ trồng có thể trồng kinh tế cũng có thể làm giàn lấy bóng mát. Dưới đây là hướng dẫn cách trồng và chăm sóc cây nho Ninh Thuận đúng kĩ thuật. Địa điểm mua cây giống Nho Ninh Thuận tại Vườn Ươm Nông Nghiệp V'),
('SP96', 'DM01', 'Thanh long', 135000, 'images/product-tree/96a.jpg', '2020-08-04', 40, 'Còn hàng', 'Cây thanh long được trồng vườn làm cây ăn trái và là loại cây có giá trị kinh tế cao. Trái thanh long có hình dáng đẹp, vị quả ngọt thanh hấp dẫn. Cây còn được trồng chậu làm cây cảnh đẹp trang trí sảnh nhà, trang trí sân vườn hay trồng trên sân thượng…'),
('SP97', 'DM01', ' Cây lựu', 135000, 'images/product-tree/97a.jpg', '2020-08-04', 412, 'Còn hàng', 'Dùng để trồng làm cây ăn quả, làm thuốc từ các bộ phận của cây. Ngoài ra, lựu còn được trộng chậu làm cây bonsai, cây cảnh đẹp trang trí văn phòng, trang trí không gian nhà…'),
('SP98', 'DM01', ' Cây xoài', 1680000, 'images/product-tree/98a.jfif', '2020-08-04', 571, 'Còn hàng', 'Cây xoài là một trong những giống cây ăn quả hiện đang được ưa chuộng chọn trồng trong sân vườn. Ngoài việc trồng làm cây ăn trái, cây xoài còn có thể sử dụng làm cây bóng mát, tạo cảnh quan đẹp cho nhiều tiểu cảnh sân vườn, cảnh quan thôn quê của nhiều q'),
('SP99', 'DM01', 'Cây mận Hoàng yến', 3500000, 'images/product-tree/99a.jpg', '2020-08-04', 80, 'Còn hàng', 'Giống mận Hoàng Yến là một trong những giống có hoa trắng nhỏ mọc thành chùm, hầu như tỷ lệ đậu trái, giữ trái tự nhiên vượt trội so với những giống khác. Cho nên tuy trái nhỏ nhưng lại rất siêng trái, một chùm trái có khi lên đến hơn 30 trái. Và có khả n'),
('SP100', 'DM01', 'Hồng đá', 2200000, 'images/product-tree/100a.jpg', '2020-08-09', 110, 'Còn hàng', 'Là cây dạng thân gỗ nhỏ có thể tạo nhiều dáng thế khác nhau kết hợp quả màu vàng cam, đỏ, hồng giòn được các nghệ nhân uốn thành bonsai đẹp mắt trang trí nhà.'),
('SP101', 'DM01', 'Cây na', 75000, 'images/product-tree/101 cay-na.jpg', '2020-08-09', 272, 'Còn hàng', ' Là một lọai trái cây ăn rất ngon, có hương vị đặc trưng riêng, thành phần chủ yếu là chất bột, đường, vitamin C. '),
('SP102', 'DM01', ' Nhót', 75000, 'images/product-tree/102 cay-nhot.jpg', '2020-08-09', 529, 'Còn hàng', 'Cây nhót là cây ăn trái nổi tiếng ở miền Bắc nước ta. Quả nhót có thể dùng lúc sống hoặc đã chín tới, ngoài để ăn chơi thì còn được sử dụng để nấu ăn và làm nước giải khát.'),
('SP103', 'DM01', ' Mâm xôi', 45000, 'images/product-tree/103 mam-xoi.jpg', '2020-08-09', 478, 'Còn hàng', 'Cây nhót là cây ăn trái nổi tiếng ở miền Bắc nước ta. Quả nhót có thể dùng lúc sống hoặc đã chín tới, ngoài để ăn chơi thì còn được sử dụng để nấu ăn và làm nước giải khát.'),
('SP104', 'DM01', 'Cây chanh', 75000, 'images/product-tree/104 cay-chanh.jpg', '2020-08-09', 182, 'Còn hàng', 'Cây cam hoặc cây chanh có nhiều trái chín nặng trĩu tượng trưng cho sự thịnh vượng và tài lộc của gia đình. Những cây này thường được trồng ở trước cổng nhà hoặc cổng công ty trong những ngày đầu năm tượng trưng cho sự bắt đầu phát triển tài lộc'),
('SP105', 'DM01', 'Cây ớt bi', 100000, 'images/product-tree/105 ot-bi.jpg', '2020-08-14', 494, 'Còn hàng', 'Theo quan niệm, cây ớt tượng trưng cho sức mạnh, quyền lực và sự may mắn. Sở một cây ớt cảnh sẽ hỗ trợ gia chủ làm ăn tấn tới. Hình ảnh quả ớt căng mọng sẽ đem đến sự đủ đầy, trọn vẹn, thịnh vượng về công danh, tài lộc. Người xưa còn cho rằng, ớt cũng có '),
('SP106', 'DM01', 'Cây sung', 45000, 'images/product-tree/106 cay-sung.jpg', '2020-08-14', 713, 'Còn hàng', ' loại cây cảnh mang ý nghĩa văn hóa tâm linh, tượng trưng cho sự sung mãn, tròn đầy. Vì vậy, nhà dù nghèo hay giàu Tết đến cũng có cành đào (hoặc mai) và một đĩa trái cây gồm xoài, dừa, đu đủ, mãng cầu và sung. Trong đó chùm sung được coi là vật linh khôn'),
('SP107', 'DM01', 'Cây đào', 90000, 'images/product-tree/107 qua-dao.jpg', '2020-08-14', 941, 'Còn hàng', ' đào được coi là tinh hoa của Ngũ hành, có thể xua đuổi bách quỷ mang đến cho con người cuộc sống bình an, hạnh phúc. Không chỉ vậy, hoa đào còn tượng trưng cho sự sinh sôi nảy nở. Ai cũng mong muốn có một năm an khang thịnh vượng, làm ăn thuận lợi, phát '),
('SP108', 'DM01', 'Cây quất', 35000, 'images/product-tree/108 cay-quat.jpg', '2020-08-14', 797, 'Còn hàng', 'Nếu may mắn chọn được cây có cả quả chín, quả xanh và còn lộc non điều này thể hiện sự đầy đủ, thành công, may mắn. Cây quất còn là biểu tượng của sức khỏe, bình an, trường thọ và sự may mắn trong tình duyên.'),
('SP109', 'DM01', 'Hoa đào', 109000, 'images/product-tree/111 hoa-dao.jpg', '2020-08-14', 172, 'Còn hàng', 'Hoa đào đem đến nguồn sinh khí mới, mọi người trong gia đình dồi dào sức khỏe, vạn sự như ý. Vẻ đẹp của loài hoa này còn tượng trưng cho người con gái xứ Bắc: dịu dàng, e lệ, kiều diễm … Hoa đào còn gợi người ta nhớ tới tình nghĩa thủy chung.'),
('SP110', 'DM01', 'Hoa mai vàng', 200000, 'images/product-tree/109 mai-vang.jpg', '2020-08-14', 491, 'Còn hàng', 'Hoa mai màu vàng biểu tượng cho sự cao thượng , vinh hiển cao sang tượng trưng cho vua thời phong kiến . Hoa Mai đem lại cái may mắn cho năm mới , sức khỏe dồi dào làm ăn phát đạt, giàu sang tấn lộc tấn tài.'),
('SP111', 'DM01', 'Hoa cúc', 30000, 'images/product-tree/110 hoa-cuc.jpg', '2020-08-20', 49, 'Còn hàng', 'Theo các chuyên gia phong thủy, hoa cúc tượng trưng cho sức sống, sự trường thọ và cả phúc lộc, niềm vui. Vì lẽ đó, mỗi độ tết đến xuân về, người ta lại đặt trước cổng hay thềm nhà những chậu cúc vàng với mong muốn một năm mới dồi dào sức khỏe và phúc lộc'),
('SP112', 'DM01', 'Nụ tầm xuân', 260000, 'images/product-tree/112 nu-tam-xuan.jpg', '2020-08-20', 699, 'Còn hàng', 'Nụ tầm xuân mang trong mình ý nghĩa của sự thịnh vượng. Chính vì thế loài cây này rất được yêu thích ở Việt Nam và thường được dùng để trang trí nhà dịp Tết, với mong muốn năm mới thuận lợi, may mắn, nhiều tài lộc. “Tầm xuân” thường được hiểu theo nghĩa l'),
('SP113', 'DM01', 'Hoa đồng tiền', 85000, 'images/product-tree/113 dong-tien.jpg', '2020-08-20', 340, 'Còn hàng', 'Trong những dịp xuân về tết đến, hoa đồng tiền mang trên mình ý nghĩa tài lộc và may mắn. Từ xa xưa, mọi người tin rằng vào ngày Tết nếu có một chậu hoa đồng tiền trong nhà sẽ giúp gia chủ làm ăn phát đạt, gặp nhiều thành công. Bên cạnh đó, nó còn giúp ho'),
('SP114', 'DM01', 'Hoa thủy tiên', 130000, 'images/product-tree/114 hoa-thuy-tien.jpg', '2020-08-20', 582, 'Còn hàng', 'Màu vàng của hoa thủy tiên là biểu tượng cho sự vương giả, cao sang và quyền quý. Hơn nữa, hoa thủy tiên vàng còn thể hiện cho sự vui vẻ và có thể xua tan đi nỗi bực dọc, lo âu trong người. Vì vậy có thể lựa chọn 1 bó hoa thủy tiên vàng đem tặng để thể hi'),
('SP115', 'DM01', 'Hoa lay ơn', 350000, 'images/product-tree/115 hoa-lay-on.jpg', '2020-08-20', 296, 'Còn hàng', 'Theo phong thủy thì sẽ có tác dụng trừ tà, xua đuổi điềm xấu. Thường vào dịp tết, các chị em hay chọn lay ơn đỏ hoặc vàng vì nó tượng trưng cho những điều may mắn trong năm mới. Nhiều người Việt cũng tin rằng, cắm hoa lay ơn ngày Tết chính là đem lại vượn'),
('SP116', 'DM01', 'Hoa ly', 95000, 'images/product-tree/116 hoa-ly.jpg', '2020-08-25', 39, 'Còn hàng', 'Hoa Ly từ lâu đã được mệnh danh là một loài hoa thanh cao và quý phái, nó không những tượng trưng cho sắc đẹp, đức hạnh mà còn là sự kiêu hãnh và cả tình yêu cao thượng, chung thủy. Chính bởi vậy, hoa Ly không chỉ thích hợp để dành tặng mẹ, người yêu mà c'),
('SP117', 'DM01', 'Thược dược', 105000, 'images/product-tree/117 thuoc-duoc.jpg', '2020-08-25', 74, 'Còn hàng', 'Hoa thược dược vàng mang một thông điệp thật ý nghĩa và tích cực: “ Hạnh phúc ngập tràn” như ánh sáng của mặt trời chiếu xuống vạn vật và mang lại sự sống cho tất cả. Hạnh phúc luôn là điều mà tất cả mọi người theo đuổi trong cuộc đời này.'),
('SP118', 'DM01', 'Hoa hồng', 145000, 'images/product-tree/118 hoa-hong.jpg', '2020-08-25', 555, 'Còn hàng', 'Hoa hồng trở thành biểu tượng của tình yêu, trong đó, hoa hồng đỏ vẫn được người đời hiểu rằng đó là thông điệp “Anh yêu em” (Em yêu anh). Từ đấy, cứ mỗi dịp Valentine 14/2 thì hoa hồng trở thành món quà hết sức đặc biệt và ý nghĩa được nhiều người ưa chu'),
('SP119', 'DM01', 'Cây hoa hải đường', 175000, 'images/product-tree/119 hoa-hai-duong.jpg', '2020-08-25', 859, 'Còn hàng', 'Hoa hải đường đỏ mang ý nghĩa tượng trưng cho mùa xuân, sự may mắn, tài lộc, giàu sang, phú quý. Hoa hải đường trắng hay còn gọi là bạch hải đường tượng trưng cho sự trong sạch cao quý, tinh khôi khó lòng làm vấy đục, mang ý nghĩa sự khởi đầu mới mẻ, tràn'),
('SP120', 'DM01', 'Cây phật thủ', 65000, 'images/product-tree/120 cay-phat-thu.jpg', '2020-08-25', 551, 'Còn hàng', 'Theo quan niệm dân gian, phật thủ là loại quả được trưng bày trên bàn thờ tổ tiên bởi hương thơm quyến rũ và màu sắc đẹp mắt. Các yếu tố này giúp giữ chân Phật và gia tiên ở lại trong nhà lâu hơn, nhằm phù hộ cho gia chủ về sức khỏe, công danh và sự nghiệ'),
('SP121', 'DM01', 'Cây đu đủ cảnh', 480000, 'images/product-tree/121 du-du.jpg', '2020-08-25', 652, 'Còn hàng', 'Cây đu đủ là cây trồng lấy quả, hiện được trồng khắp nơi, sau một năm đã cho quả. Cây đu đủ dễ trồng, ưa đất thoát nước. Cây đu đủ cảnh được trồng làm cây cảnh với ý nghĩa sung túc, đầy đủ. Đu đủ thường được ăn xanh như một loại rau (làm nộm và hầm) và ăn'),
('SP122', 'DM01', 'Cây cam cảnh', 175000, 'images/product-tree/122 cay-cam.jpg', '2020-08-25', 62, 'Còn hàng', 'Thông thường, cây cam cảnh sẽ được chăm chút để có nhiều quả, đẹp hơn. Ý nghĩa của cây cam trang trí làm cảnh là giúp ra chủ ăn nên làm ra, tiền tài phú quý. Số lượng trĩu quả trên cây cam ý nghĩa cho thành tựu công việc, luôn đạt hiệu quả. Vị ngọt trong '),
('SP123', 'DM01', 'Hoa tuyết mai', 110000, 'images/product-tree/123 hoa-tuyet-mai.jpg', '2020-09-11', 945, 'Còn hàng', 'Tuyết mai chỉ có một màu trắng tinh khôi, điều này mang ý nghĩa tượng trưng cho sự thanh cao, trong sạch, quý phái. Ngoài ra, cành lá và nụ tuyết mai vô cùng nhiều và xum xuê, điều này tượng trưng cho sự sinh sôi nảy nở, phát tài phát lộc và mang lại nhiề'),
('SP124', 'DM01', 'hoa lê lư', 172000, 'images/product-tree/124 hoa-le-tu.jpg', '2020-09-11', 177, 'Còn hàng', 'Màu trắng của hoa Lê tượng trưng cho vẻ đẹp thuần khiết, trong sáng và tinh khôi giống như tình yêu ban đầu của đôi lứa khi mới yêu nhau. Tình yêu này thật nhẹ nhàng nhưng đầy chân thành và tình cảm.'),
('SP125', 'DM01', 'Hoa loa kèn', 55000, 'images/product-tree/125 hoa-loa-ken.jpg', '2020-09-11', 382, 'Còn hàng', '- Hoa loa kèn trắng: Biểu tượng cho sự trong trắng, tinh khiết, nhẹ nhàng, dịu dàng của người phụ nữ. - Hoa loa kèn đỏ: Biểu tượng cho lòng kiêu hãnh, sự tự hào của con người. - Hoa loa kèn vàng: Biểu tượng cho sự biết ơn và niềm vui trong cuộc sống. - Ho'),
('SP126', 'DM01', 'Cây holly', 450000, 'images/product-tree/126 cay-holly.jpg', '2020-09-11', 419, 'Còn hàng', 'Đối với hầu hết chúng ta, khi chúng ta nghe từ holly chúng ta nghĩ đến Giáng sinh và thời gian mùa đông. Ô rô là một loại cây có liên quan đến thời gian mùa đông và là thứ được sử dụng không chỉ trong mùa đông mà đặc biệt là vào dịp Giáng sinh'),
('SP127', 'DM01', 'Cây tầm gửi', 105000, 'images/product-tree/127 cay-tam-gui.jpg', '2020-09-11', 911, 'Còn hàng', 'Một ý nghĩa của cây tầm gửi đến từ huyền thoại Bắc Âu, nếu đôi nam nữ nào hôn nhau dưới nhành cây tầm gửi trước cửa nhà, tình yêu của họ sẽ kéo dài mãi mãi. Sự tích về cây tầm gửi bắt đầu bằng câu chuyện thần thoại về vị thần Mặt trời mùa hạ tên là Balder'),
('SP128', 'DM01', 'Cây thông Giáng sinh', 258000, 'images/product-tree/128 cay-thong-giang-sinh.jpg', '2020-09-16', 786, 'Còn hàng', 'Cây thông Noel được ví như cây phục sinh. Nó tượng trưng cho sự sống mạnh mẽ, vượt qua tất cả trở ngại, có khả năng xua đuổi tà ma để mang lại cuộc sống phồn vinh, no ấm cho mọi người. Cây thông sống trong môi trường khí hậu khắc nghiệt nhất'),
('SP129', 'DM01', 'Cỏ May Mắn', 160000, 'images/product-tree/129 co-may-man.jpg', '2020-09-16', 833, 'Còn hàng', 'Trong phong thuỷ cỏ May Mắn mang đến tài lộc và sung túc, gia tăng con đường tài vận cho gia chủ, giúp chúng ta luôn có tinh thần thoải mái để đưa ra những quyết định chính xác. Cây cỏ May Mắn nhỏ xinh phù hợp để làm cây cảnh để bàn, quà tặng, trang trí k'),
('SP130', 'DM01', 'Cẩm Nhung', 195000, 'images/product-tree/130 cam-nhung.jpg', '2020-09-16', 266, 'Còn hàng', 'Cây cẩm nhung tượng trưng cho một tình bạn bền vững và luôn quan tâm, chia sẻ những điều trong cuộc sống. Trong tình yêu, cẩm nhung biểu tượng cho tình yêu thuần khiết, trong sáng.'),
('SP131', 'DM01', 'Cây phong lộc lan', 385000, 'images/product-tree/131 cay-phong.jpg', '2020-09-16', 992, 'Còn hàng', 'Lá của loại cây này xanh quanh năm, không thay lá hàng loạt. Do đó, ngoài sở hữu vẻ đẹp cuốn hút, cây còn là biểu tượng cho một sức sống mãnh liệt, giúp cân bằng vượng khí và mang lại tài lộc cho gia chủ. Cùng với đặc tính ưa ánh sáng nhẹ và ánh đèn nội t'),
('SP132', 'DM01', 'Cây hạnh phúc', 375000, 'images/product-tree/132 cay-hanh-phuc.jpg', '2020-09-16', 808, 'Còn hàng', 'Mang sắc xanh chủ đạo, cây hạnh phúc mang ý nghĩa tượng trưng cho niềm tin, hy vọng mãnh liệt với cuộc sống. Trồng cây hạnh phúc trong nhà thể hiện sự tinh tế và độc đáo trong tính cách gia chủ. Cây hạnh phúc là dòng cây cảnh cao và đẹp.'),
('SP133', 'DM01', 'Cây sen dạ quang', 280000, 'images/product-tree/133 cay-sen-da-quan.jpg', '2020-09-16', 446, 'Còn hàng', 'Sen Đá Dạ Quang mang ý nghĩa như một loại hoa về tình bạn bền vững, tình yêu trọn đời, mãi không thay đổi theo thời gian. Trồng cây sẽ giúp bạn có niềm tin rằng bên cạnh mình luôn có người bạn đồng hành trong bất kì hoàn cảnh nào. Ngoài ra, cây tượng trưn'),
('SP134', 'DM01', 'Cây Chà Là', 500000, 'images/product-tree/134 cay-cha-la-kieng.jpg', '2020-09-22', 628, 'Còn hàng', 'Theo ý nghĩa phong thủy, cây chà là có thể giúp loại bỏ được tất cả những độc tố xuất hiện trong không khí nhà bạn. Bạn cũng có thể tham khảo các cây có ý nghĩa phong thủy tốt như: cây cau vua hay cây cau đỏ. Cây chà được sử dụng làm cây nội thất hay cây '),
('SP135', 'DM01', 'CỎ BÔNG LAU', 275000, 'images/product-tree/135 co-bong-lao.jpg', '2020-09-22', 115, 'Còn hàng', 'Qua những mùa sương nắng dày vò, cành cỏ lau mộc mạc hiền hòa, chừng như yếu ớt mong manh, cứ thế mà bám víu, đùm bọc lấy nhau thành vạt, thành đám, mãnh liệt sống và vượt qua tất cả. Có lẽ vì thế mà ông bà ta vẫn thường bảo, cỏ lau là một trong những loà'),
('SP136', 'DM01', 'Cây Sử Quân Tử', 35000, 'images/product-tree/136 su-quan-tu.jpg', '2020-09-22', 280, 'Còn hàng', 'Tên của hoa sử quân tử mang ý nghĩa một người quân tử không làm quan cũng chẳng phải ẩn sĩ. Bên cạnh đó còn nó lên rằng hoa sử quân rất dễ trồng, dù cho có gặp khó khăn đến đâu cũng sẽ cố gắng chịu đựng, vươn lên với ý chí kiên cường giống như người quân '),
('SP137', 'DM01', 'Cây Sử Quân Tử', 35000, 'images/product-tree/136 su-quan-tu.jpg', '2020-09-22', 138, 'Còn hàng', 'Tên của hoa sử quân tử mang ý nghĩa một người quân tử không làm quan cũng chẳng phải ẩn sĩ. Bên cạnh đó còn nó lên rằng hoa sử quân rất dễ trồng, dù cho có gặp khó khăn đến đâu cũng sẽ cố gắng chịu đựng, vươn lên với ý chí kiên cường giống như người quân '),
('SP138', 'DM01', 'Cây Tường Vi Chậu Mũ', 175000, 'images/product-tree/137 tuong-vi.jpg', '2020-09-22', 949, 'Còn hàng', 'Ý nghĩa của cây hoa tường vi thường thể hiện thông qua màu sắc hoa, và hoa tường vi lại có nhiều màu sắc khác nhau mang lại nhiều thông điệp khác nhau nhưng đều đem lại ý nghĩa hướng đến tình yêu với ước mong gia đình đầm ấm, hòa thuận và tràn ngập yêu th'),
('SP139', 'DM01', 'Cỏ Lan Chi', 575000, 'images/product-tree/138 co-lan-chi.jpg', '2020-09-22', 767, 'Còn hàng', 'Theo dân gian, cây lan chi là biểu tượng cho sức sống dẻo dai, kiên cường, bền bỉ theo năm tháng. Đó là sự mạnh mẽ, không chịu khuất phục trước khó khăn cũng như không truy cầu danh lợi. Nếu mong muốn tìm kiếm một loại cây giúp xua đuổi ma quỷ, tà ma hay '),
('SP140', 'DM01', 'Cây Đuôi Phụng', 85000, 'images/product-tree/139 duoi-phung.jpg', '2020-09-22', 709, 'Còn hàng', 'Cây biểu trưng cho sự hưng thịnh và may mắn. Đặc biệt cây Đuôi phụng hợp với những người mệnh Mộc hoặc với mệnh Thủy, những người có mệnh này sẽ được cây giúp đem lại may mắn trong làm ăn, thuận lợi hơn, gia đình hòa thuận yêu thương nhau.'),
('SP141', 'DM01', 'Cây Huỳnh Đệ', 65000, 'images/product-tree/140 huynh-de.jpg', '2020-09-29', 524, 'Còn hàng', 'Cây Huỳnh Đệ màu sắc tươi vui, gần gũi, tạo cảm giác thân thuộc, bình yên đến với không gian trang trí. Màu vàng tươi tắn của hoa biểu trưng cho may mắn luôn theo gia chủ trong cuộc sống.');

SET IDENTITY_INSERT "sanpham" OFF;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
