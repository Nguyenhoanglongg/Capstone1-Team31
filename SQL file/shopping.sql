-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2022 lúc 02:15 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-10-24 09:21:18', '01-11-2022 08:27:55 PM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Books', 'Books', '2022-11-06 04:45:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 12:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 12:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 09:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 12:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 12:21:38', 'COD', NULL),
(7, 4, '21', 1, '2022-11-10 05:22:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 12:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 12:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 12:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 12:50:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 13:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 13:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 13:59:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` double(8,2) DEFAULT NULL,
  `productPriceBeforeDiscount` double(8,2) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900.00, 0.00, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2017-01-30 09:54:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990.00, 0.00, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2017-01-30 09:59:00', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999.00, 0.00, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2017-02-03 21:03:15', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999.00, 0.00, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2017-02-03 21:04:43', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999.00, 0.00, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2017-02-03 21:06:17', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999.00, 0.00, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2017-02-03 21:08:07', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490.00, 0.00, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2017-02-03 21:10:17', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990.00, 0.00, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2017-02-03 21:11:54', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259.00, 0.00, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2017-02-03 21:17:03', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990.00, 0.00, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-03 21:26:17', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999.00, 0.00, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2017-02-03 21:28:17', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990.00, 0.00, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2017-02-03 21:30:24', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990.00, 0.00, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2017-02-03 21:32:15', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205.00, 250.00, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2017-02-03 21:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240.00, 0.00, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2017-02-03 21:36:23', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566.00, 0.00, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2017-02-03 21:40:37', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523.00, 0.00, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2017-02-03 21:42:27', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379.00, 0.00, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2017-03-10 13:16:03', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129.00, 5000.00, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2017-03-10 13:19:22', ''),
(21, 7, 14, 'How To Draw 101 Cute Stuff For Kids: Simple and Easy Step-by-Step Guide Book', 'Sophia Elizabeth', 11.99, 19.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">B09PK9C8CK</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Independently published (January 1, 2022)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">113 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">979-8794266542</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">10.8 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8.5 x 0.26 x 11 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#57 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1860/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Pencil Drawing</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1861/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Drawing Specific Objects</a></span></li></ul></span></li></ul>', 'book1.jpg', 'art2.jpg', 'book1.jpg', 4, 'In Stock', '2022-11-06 05:04:27', NULL),
(22, 7, 14, 'How to Draw Cool Stuff: A Drawing Guide for Teachers and Students ', 'Catherine V Holmes', 9.99, 14.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Library Tales Publishing, Incorporated; Illustrated edition (March 17, 2014)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">253 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">0615991424</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-0615991429</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1.15 pounds</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8 x 0.57 x 10 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#450 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1846/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Illustration and Graphic Design</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#9 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1855/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Drawing (Books)</a></span></li></ul></span></li></ul>', 'art3.1.jpg', 'art3.2.jpg', 'art3.jpg', 4, 'In Stock', '2022-11-06 05:09:52', NULL),
(23, 7, 14, 'How to Draw Cool Stuff: The 5 Minute Workbook', 'Catherine V Holmes', 16.99, 20.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Library Tales Publishing, Inc.; Illustrated edition (July 22, 2020)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">143 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1732888841</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-1732888845</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">10.5 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8 x 0.36 x 10 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#18,425 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#15 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1846/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Illustration and Graphic Design</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#20 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1859/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Pen &amp; Ink Drawing</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#27 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1860/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Pencil Drawing</a></span></li></ul></span></li></ul>', 'art4.jpg', 'art4.1.jpg', 'art4.1.jpg', 4, 'In Stock', '2022-11-06 05:22:49', NULL),
(24, 7, 15, 'Stop Overthinking: 23 Techniques to Relieve Stress, Stop Negative Spirals, Declutter Your Mind, and Focus on the Present (The Path to Calm)', 'Emotinal Mental Health', 11.99, 14.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">B08XLLF3PG</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Independently published (March 1, 2021)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">200 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">979-8715048394</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">7.4 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5 x 0.46 x 8 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#246 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/11170/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Emotional Mental Health</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#3 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/10166950011/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Emotional Self Help</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#5 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li></ul></span></li></ul>', 'business1.jpg', 'business2.jpg', 'business3.jpg', 4, 'In Stock', '2022-11-06 05:41:34', NULL),
(25, 7, 15, 'Dare to Lead: Brave Work. Tough Conversations. Whole Hearts.', 'Brown', 12.99, 14.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">0399592520</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Random House; First Edition (October 9, 2018)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Hardcover ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">320 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8925598914</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-0399592522</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1.06 pounds</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5.76 x 1.01 x 8.5 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#621 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#9 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/11223/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Popular Social Psychology &amp; Interactions</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#17 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#41 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/4745/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Personal Transformation Self-Help</a></span></li></ul></span></li></ul>', 'business4.jpg', 'business4.jpg', 'business4.jpg', 4, 'In Stock', '2022-11-06 05:44:55', NULL),
(26, 7, 15, 'The First 90 Days: Proven Strategies for Getting Up to Speed Faster and Smarter, Updated and Expanded', 'Michael Walkins', 16.99, 19.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Harvard Business Review Press; Updated, Expanded edition (May 14, 2013)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Hardcover ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">304 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1422188612</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-1422188613</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">12.3 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5.75 x 1.25 x 8.5 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#1,049 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#6 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2575/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Job Hunting &amp; Career Guides</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#17 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2683/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Business Management (Books)</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#28 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li></ul></span></li></ul>', 'business5.1.jpg', 'business5.jpg', 'business5.jpg', 4, 'In Stock', '2022-11-06 05:51:17', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(27, 7, 15, 'Give and Take: Why Helping Others Drives Our Success', 'Adam', 13.99, 16.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">0143124986</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Penguin Books; Reprint edition (March 25, 2014)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">320 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">0315782145</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-0315782143</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8.8 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5.46 x 0.69 x 8.41 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#5,486 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#62 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2545/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Business Motivation &amp; Self-Improvement (Books)</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#74 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2685/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Motivational Management &amp; Leadership</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#107 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li></ul></span></li></ul>', 'business6.jpg', 'business6.jpg', 'business6.jpg', 4, 'In Stock', '2022-11-06 06:03:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 09:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 09:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 09:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-03 21:12:40', ''),
(6, 4, 'Laptops', '2017-02-03 21:13:00', ''),
(7, 4, 'Computers', '2017-02-03 21:13:27', ''),
(8, 3, 'Comics', '2017-02-03 21:13:54', ''),
(9, 5, 'Beds', '2017-02-03 21:36:45', ''),
(10, 5, 'Sofas', '2017-02-03 21:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-03 21:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 13:12:59', ''),
(13, 7, 'Science Book', '2022-11-06 04:47:54', NULL),
(14, 7, 'Arts & Photography', '2022-11-06 04:50:27', NULL),
(15, 7, 'Business & Money', '2022-11-06 04:50:35', NULL),
(16, 7, 'Computers & Technology', '2022-11-06 04:50:53', NULL),
(17, 7, 'Comics & Graphic Novels', '2022-11-06 04:51:04', NULL),
(18, 7, 'Education & Teaching', '2022-11-06 04:51:28', NULL),
(19, 7, 'Engineering & Transportation', '2022-11-06 04:51:36', NULL),
(20, 7, 'Health, Fitness & Dieting', '2022-11-06 04:51:48', NULL),
(21, 7, 'Medical Books', '2022-11-06 04:51:57', NULL),
(22, 7, 'Teen & Young Adult', '2022-11-06 04:52:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'long94079@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:15:24', NULL, 0),
(25, 'nguyenhoanglong@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:15:27', NULL, 0),
(26, 'adminpage@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:15:30', NULL, 0),
(27, 'long94079@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:17:09', '10-11-2022 10:59:27 AM', 1),
(28, 'long94079@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 05:29:38', NULL, 1),
(29, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 12:40:05', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'NGUYEN HOANG LONG', 'long94079@gmail.com', 935026703, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-10 05:17:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 11:53:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
