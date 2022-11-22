-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2022 lúc 04:45 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


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
(10, 5, '23', 1, '2022-11-22 03:23:03', 'Internet Banking', NULL);

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
(21, 7, 14, 'How To Draw 101 Cute Stuff For Kids: Simple and Easy Step-by-Step Guide Book', 'Sophia Elizabeth', 11.99, 19.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">B09PK9C8CK</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Independently published (January 1, 2022)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">113 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">979-8794266542</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">10.8 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8.5 x 0.26 x 11 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#57 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1860/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Pencil Drawing</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1861/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Drawing Specific Objects</a></span></li></ul></span></li></ul>', 'book1.jpg', 'art2.jpg', 'book1.jpg', 4, 'In Stock', '2022-11-06 05:04:27', NULL),
(22, 7, 14, 'How to Draw Cool Stuff: A Drawing Guide for Teachers and Students ', 'Catherine V Holmes', 9.99, 14.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Library Tales Publishing, Incorporated; Illustrated edition (March 17, 2014)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">253 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">0615991424</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-0615991429</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1.15 pounds</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8 x 0.57 x 10 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#450 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1846/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Illustration and Graphic Design</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#9 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1855/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Drawing (Books)</a></span></li></ul></span></li></ul>', 'art3.1.jpg', 'art3.2.jpg', 'art3.jpg', 4, 'In Stock', '2022-11-06 05:09:52', NULL),
(23, 7, 14, 'How to Draw Cool Stuff: The 5 Minute Workbook', 'Catherine V Holmes', 16.99, 20.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Library Tales Publishing, Inc.; Illustrated edition (July 22, 2020)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">143 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1732888841</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-1732888845</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">10.5 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8 x 0.36 x 10 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#18,425 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#15 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1846/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Illustration and Graphic Design</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#20 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1859/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Pen &amp; Ink Drawing</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#27 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/1860/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Pencil Drawing</a></span></li></ul></span></li></ul>', 'art4.jpg', 'art4.1.jpg', 'art4.1.jpg', 4, 'In Stock', '2022-11-06 05:22:49', NULL),
(24, 7, 15, 'Stop Overthinking: 23 Techniques to Relieve Stress, Stop Negative Spirals, Declutter Your Mind, and Focus on the Present (The Path to Calm)', 'Emotinal Mental Health', 11.99, 14.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">B08XLLF3PG</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Independently published (March 1, 2021)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Paperback ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">200 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">979-8715048394</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">7.4 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5 x 0.46 x 8 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#246 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#1 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/11170/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Emotional Mental Health</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#3 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/10166950011/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Emotional Self Help</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#5 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li></ul></span></li></ul>', 'business1.jpg', 'business2.jpg', 'business3.jpg', 4, 'In Stock', '2022-11-06 05:41:34', NULL),
(25, 7, 15, 'Dare to Lead: Brave Work. Tough Conversations. Whole Hearts.', 'Brown', 12.99, 14.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ASIN ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">0399592520</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Random House; First Edition (October 9, 2018)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Hardcover ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">320 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">8925598914</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-0399592522</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1.06 pounds</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5.76 x 1.01 x 8.5 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#621 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#9 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/11223/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Popular Social Psychology &amp; Interactions</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#17 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#41 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/4745/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Personal Transformation Self-Help</a></span></li></ul></span></li></ul>', 'business4.jpg', 'business4.jpg', 'business4.jpg', 4, 'In Stock', '2022-11-06 05:44:55', NULL),
(26, 7, 15, 'The First 90 Days: Proven Strategies for Getting Up to Speed Faster and Smarter, Updated and Expanded', 'Michael Walkins', 16.99, 19.99, '<div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Publisher ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">Harvard Business Review Press; Updated, Expanded edition (May 14, 2013)</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Language ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">English</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Hardcover ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">304 pages</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-10 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">1422188612</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">ISBN-13 ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">978-1422188613</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Item Weight ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">12.3 ounces</span></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Dimensions ‏ : ‎&nbsp;</span><span style=\"box-sizing: border-box;\">5.75 x 1.25 x 8.5 inches</span></span></li></ul></div><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"box-sizing: border-box; margin-bottom: 1px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\"><span class=\"a-text-bold\" style=\"box-sizing: border-box; font-weight: 700 !important;\">Best Sellers Rank:&nbsp;</span>#1,049 in Books (<a href=\"https://www.amazon.com/gp/bestsellers/books/ref=pd_zg_ts_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">See Top 100 in Books</a>)<ul class=\"a-unordered-list a-nostyle a-vertical zg_hrsr\" style=\"box-sizing: border-box; margin-left: 14px;\"><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#6 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2575/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Job Hunting &amp; Career Guides</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#17 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2683/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Business Management (Books)</a></span></li><li style=\"box-sizing: border-box; list-style: none; overflow-wrap: break-word; margin: 0px 0px 5.5px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box;\">#28 in&nbsp;<a href=\"https://www.amazon.com/gp/bestsellers/books/2682/ref=pd_zg_hrsr_books\" style=\"box-sizing: border-box; color: rgb(0, 113, 133);\">Leadership &amp; Motivation</a></span></li></ul></span></li></ul>', 'business5.1.jpg', 'business5.jpg', 'business5.jpg', 4, 'In Stock', '2022-11-06 05:51:17', NULL),
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
(29, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 12:40:05', NULL, 0),
(30, 'hieu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-10 14:31:54', NULL, 1),
(31, 'hieu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-15 02:25:13', '15-11-2022 08:02:11 AM', 1),
(32, 'hieu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-15 02:32:45', NULL, 1),
(33, 'hieu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 02:59:51', '22-11-2022 09:09:26 AM', 1),
(34, 'hieu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-22 03:39:40', NULL, 1);

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
(4, 'NGUYEN HOANG LONG', 'long94079@gmail.com', 935026703, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-10 05:17:01', NULL),
(5, 'Văn Minh Hiếu', 'hieu@gmail.com', 12, '202cb962ac59075b964b07152d234b70', '142/H56/8 Điện Biên Phủ, Thanh Khê, Đà Nẵng\r\nPhường Chính Gián', 'Đà Nẵng', 'Quận Thanh Khê', 5555, '142/H56/8 Điện Biên Phủ, Thanh Khê, Đà Nẵng\r\nPhường Chính Gián', 'Đà Nẵng', 'Quận Thanh Khê', 122333, '2022-11-10 14:31:39', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
