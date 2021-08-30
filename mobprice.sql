-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jun 17, 2021 at 03:41 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobprice`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

DROP TABLE IF EXISTS `affiliates`;
CREATE TABLE IF NOT EXISTS `affiliates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `total_item` smallint(6) NOT NULL,
  `sorting` smallint(6) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `total_item`, `sorting`, `status`, `revision`) VALUES
(2, 'alcatel', 122, 12, 'Active', 100),
(3, 'Allview', 54, 100, 'Active', 0),
(4, 'Amazon', 10, 100, 'Active', 0),
(6, 'Apple', 35, 2, 'Active', 0),
(7, 'Archos', 24, 100, 'Active', 0),
(8, 'Asus', 104, 14, 'Active', 0),
(11, 'BenQ', 2, 100, 'Active', 0),
(14, 'BlackBerry', 17, 18, 'Active', 0),
(15, 'BLU', 111, 27, 'Active', 0),
(17, 'BQ', 20, 100, 'Active', 0),
(18, 'Casio', 0, 100, 'Active', 0),
(19, 'Cat', 9, 100, 'Active', 0),
(20, 'Celkon', 59, 100, 'Active', 0),
(22, 'Coolpad', 24, 100, 'Active', 0),
(23, 'Dell', 2, 100, 'Active', 0),
(24, 'Emporia', 1, 100, 'Active', 0),
(25, 'Energizer', 18, 100, 'Active', 0),
(30, 'Gigabyte', 8, 23, 'Active', 0),
(31, 'Gionee', 61, 27, 'Active', 0),
(32, 'Google', 3, 12, 'Active', 0),
(34, 'HP', 12, 31, 'Active', 0),
(35, 'HTC', 82, 7, 'Active', 0),
(36, 'Huawei', 146, 9, 'Active', 0),
(39, 'Icemobile', 1, 100, 'Active', 0),
(41, 'iNQ', 0, 100, 'Active', 0),
(42, 'Intex', 11, 100, 'Active', 0),
(43, 'Jolla', 1, 100, 'Active', 0),
(44, 'Karbonn', 12, 100, 'Active', 0),
(45, 'Kyocera', 3, 100, 'Active', 0),
(46, 'Lava', 96, 25, 'Active', 0),
(47, 'LeEco', 9, 29, 'Active', 0),
(48, 'Lenovo', 115, 10, 'Active', 0),
(49, 'LG', 135, 6, 'Active', 0),
(51, 'Maxwest', 1, 34, 'Active', 0),
(52, 'Meizu', 37, 17, 'Active', 0),
(53, 'Micromax', 123, 26, 'Active', 0),
(54, 'Microsoft', 21, 3, 'Active', 0),
(58, 'Motorola', 52, 8, 'Active', 0),
(60, 'NEC', 0, 100, 'Active', 0),
(62, 'NIU', 0, 100, 'Active', 0),
(63, 'Nokia', 81, 4, 'Active', 0),
(64, 'Nvidia', 3, 100, 'Active', 0),
(66, 'OnePlus', 2, 16, 'Active', 0),
(67, 'Oppo', 64, 15, 'Active', 0),
(68, 'Orange', 0, 100, 'Active', 0),
(70, 'Panasonic', 67, 30, 'Active', 0),
(71, 'Pantech', 0, 100, 'Active', 0),
(72, 'Parla', 0, 100, 'Active', 0),
(73, 'Philips', 6, 100, 'Active', 0),
(74, 'Plum', 12, 35, 'Active', 0),
(75, 'Posh', 1, 100, 'Active', 0),
(76, 'Prestigio', 11, 100, 'Active', 0),
(77, 'QMobile', 70, 100, 'Active', 0),
(80, 'Samsung', 274, 1, 'Active', 0),
(83, 'Sharp', 13, 100, 'Active', 0),
(85, 'Sonim', 3, 100, 'Active', 0),
(86, 'Sony', 78, 5, 'Active', 0),
(88, 'Spice', 10, 100, 'Active', 0),
(89, 'T-Mobile', 1, 100, 'Active', 0),
(93, 'Toshiba', 2, 21, 'Active', 0),
(94, 'Unnecto', 0, 100, 'Active', 0),
(95, 'Vertu', 3, 100, 'Active', 0),
(96, 'verykool', 43, 33, 'Active', 0),
(97, 'vivo', 61, 28, 'Active', 0),
(99, 'Vodafone', 21, 22, 'Active', 0),
(100, 'Wiko', 36, 100, 'Active', 0),
(103, 'Xiaomi', 64, 11, 'Active', 0),
(104, 'XOLO', 54, 24, 'Active', 0),
(105, 'Yezz', 1, 100, 'Active', 0),
(106, 'Yota', 2, 100, 'Active', 0),
(107, 'YU', 12, 32, 'Active', 0),
(108, 'ZTE', 118, 20, 'Active', 0),
(114, 'Amoi', 0, 101, 'Active', 0),
(118, 'AT&T', 0, 101, 'Active', 0),
(119, 'Benefon', 0, 101, 'Active', 0),
(121, 'BenQ-Siemens', 0, 101, 'Active', 0),
(122, 'Bird', 0, 101, 'Active', 0),
(124, 'Blackview', 6, 100, 'Active', 0),
(126, 'Bosch', 0, 101, 'Active', 0),
(131, 'Chea', 0, 101, 'Active', 0),
(136, 'Ericsson', 0, 101, 'Active', 0),
(137, 'Eten', 0, 101, 'Active', 0),
(138, 'Fujitsu Siemens', 0, 101, 'Active', 0),
(139, 'Garmin-Asus', 0, 101, 'Active', 0),
(143, 'Haier', 7, 100, 'Active', 0),
(147, 'i-mate', 0, 101, 'Active', 0),
(148, 'i-mobile', 0, 101, 'Active', 0),
(150, 'Innostream', 0, 101, 'Active', 0),
(160, 'Maxon', 0, 101, 'Active', 0),
(165, 'Mitac', 0, 101, 'Active', 0),
(166, 'Mitsubishi', 0, 101, 'Active', 0),
(167, 'Modu', 0, 101, 'Active', 0),
(169, 'MWg', 0, 101, 'Active', 0),
(171, 'Neonode', 0, 101, 'Active', 0),
(175, 'O2', 0, 101, 'Active', 0),
(179, 'Palm', 0, 100, 'Active', 462),
(188, 'Qtek', 0, 101, 'Active', 0),
(189, 'Sagem', 0, 101, 'Active', 0),
(191, 'Sendo', 0, 101, 'Active', 0),
(192, 'Sewon', 0, 101, 'Active', 0),
(194, 'Siemens', 0, 101, 'Active', 0),
(197, 'Sony Ericsson', 0, 101, 'Active', 0),
(200, 'Tel.Me.', 0, 101, 'Active', 0),
(201, 'Telit', 0, 101, 'Active', 0),
(202, 'Thuraya', 0, 101, 'Active', 0),
(208, 'VK Mobile', 0, 101, 'Active', 0),
(211, 'WND', 0, 101, 'Active', 0),
(212, 'XCute', 0, 101, 'Active', 0),
(213, 'Razer', 1, 101, 'Active', 333),
(214, 'Realme', 0, 101, 'Active', 0),
(216, 'Honor', 0, 101, 'Active', 554),
(217, 'Infinix', 0, 101, 'Active', 554),
(218, 'TECNO', 0, 101, 'Active', 554),
(219, 'test', 3, 4, 'Active', 4),
(220, 'ffadf', 4, 3, 'Active', 344),
(222, 'sdfsdfsadf', 4, 4, 'Active', 1),
(224, 'sdfsdfsadf1', 4, 4, 'Active', 1),
(225, 'Waltop Mobile', 200, 45, 'Active', 234),
(226, 'Walton 1', 3, 6, 'Active', 4),
(227, 'Walton 2', 1, 3, 'Active', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
CREATE TABLE IF NOT EXISTS `cameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` enum('Main','Front') NOT NULL,
  `mb_resolution` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cameras`
--

INSERT INTO `cameras` (`id`, `mobile_id`, `title`, `type`, `mb_resolution`, `status`, `created_at`, `updated_at`) VALUES
(1, 34903, '20 MP', 'Main', 20, 'Active', '2021-05-24 00:00:00', '2021-05-24 00:00:00'),
(2, 34903, '32 MP', 'Front', 20, 'Active', '2021-05-24 00:00:00', '2021-05-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `fa_icon` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `product_id`, `fa_icon`, `parent_id`, `status`, `sorting`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Getting Started', 1, 'fa-lightbulb-o', NULL, 'Active', 1, 0, '2019-11-26 07:19:51', '2020-01-05 09:34:24'),
(2, 'Architecture Concepts', 1, 'fa-microchip', NULL, 'Active', 2, 0, '2019-11-26 07:19:51', '2020-01-27 07:59:06'),
(3, 'The Basics', 1, 'fa-wrench', NULL, 'Active', 3, 0, '2019-11-26 07:33:33', '2020-01-27 08:00:14'),
(4, 'Frontend', 1, 'fa-tree', NULL, 'Active', 4, 0, '2019-12-03 00:00:00', '2020-01-27 08:00:14'),
(5, 'Database', 1, 'fa-bug', NULL, 'Active', 5, 0, '2019-11-26 07:33:33', '2020-01-27 08:00:14'),
(6, 'FAQ', 1, 'fa-question-circle-o', NULL, 'Active', 6, 0, '2019-11-26 07:33:33', '2020-01-27 08:00:14'),
(10, 'Configuration', 1, 'fa-circle-o', 1, 'Inactive', 3, 1, '2019-11-26 07:19:38', '2020-01-27 07:59:06'),
(11, 'Directory Structure', 1, 'fa-circle-o', 1, 'Active', 5, 1, '2019-11-26 07:19:38', '2020-03-25 12:09:50'),
(12, 'Deployment', 1, 'fa-circle-o', 1, 'Active', 4, 1, '2019-11-26 07:19:38', '2020-03-25 12:09:50'),
(13, 'Request Lifecycle', 1, 'fa-circle-o', 2, 'Active', 3, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(14, 'Service Container', 1, 'fa-circle-o', 2, 'Active', 4, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(15, 'Service Providers', 1, 'fa-circle-o', 2, 'Active', 5, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(17, 'Facades', 1, 'fa-circle-o', 2, 'Active', 6, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(19, 'Routing', 1, 'fa-circle-o', 3, 'Active', 4, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(20, 'Middleware', 1, 'fa-circle-o', 3, 'Active', 5, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(21, 'CSRF Protection', 1, 'fa-circle-o', 3, 'Active', 6, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(22, 'Controllers', 1, 'fa-circle-o', 3, 'Active', 7, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(23, 'Blade Templates', 1, 'fa-circle-o', 4, 'Active', 7, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(24, 'Query Builder', 1, 'fa-circle-o', 5, 'Active', 6, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(25, 'Pagination', 1, 'fa-circle-o', 5, 'Active', 7, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(26, 'Migrations', 1, 'fa-circle-o', 5, 'Active', 8, 1, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(33, 'Conclusion', 1, 'fa-handshake-o', NULL, 'Active', 7, 0, '2019-11-26 07:19:38', '2020-01-27 08:00:14'),
(93, 'Installation', 1, 'fa-circle-o', 1, 'Active', 2, 1, '2019-12-30 13:38:46', '2020-01-27 08:01:46'),
(94, 'Localization', 1, 'fa-circle-o', 4, 'Active', 5, 1, '2020-01-05 09:43:42', '2020-01-27 08:00:14'),
(95, 'Compiling Assets', 1, 'fa-circle-o', 4, 'Active', 6, 1, '2020-01-05 09:44:18', '2020-01-27 08:00:14'),
(96, 'Getting Started', 4, 'fa-lightbulb-o', NULL, 'Active', 1, 0, '2019-11-26 07:19:51', '2020-01-05 09:34:24'),
(97, 'Architecture Concepts', 4, 'fa-microchip', NULL, 'Active', 4, 0, '2019-11-26 07:19:51', '2020-01-28 07:18:48'),
(98, 'The Basics', 4, 'fa-wrench', NULL, 'Active', 9, 0, '2019-11-26 07:33:33', '2020-01-28 07:18:48'),
(99, 'Frontend', 4, 'fa-tree', NULL, 'Active', 14, 0, '2019-12-03 00:00:00', '2020-01-28 07:18:48'),
(100, 'Database', 4, 'fa-bug', NULL, 'Active', 18, 0, '2019-11-26 07:33:33', '2020-01-28 07:18:48'),
(101, 'FAQ', 4, 'fa-question-circle-o', NULL, 'Active', 22, 0, '2019-11-26 07:33:33', '2020-01-28 07:18:48'),
(102, 'Configuration', 4, 'fa-circle-o', NULL, 'Inactive', 3, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(105, 'Request Lifecycle', 4, 'fa-circle-o', NULL, 'Active', 5, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(106, 'Service Container', 4, 'fa-circle-o', NULL, 'Active', 6, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(107, 'Service Providers', 4, 'fa-circle-o', NULL, 'Active', 7, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(108, 'Facades', 4, 'fa-circle-o', NULL, 'Active', 8, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(109, 'Routing', 4, 'fa-circle-o', NULL, 'Active', 10, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(110, 'Middleware', 4, 'fa-circle-o', NULL, 'Active', 11, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(111, 'CSRF Protection', 4, 'fa-circle-o', NULL, 'Active', 12, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(112, 'Controllers', 4, 'fa-circle-o', NULL, 'Active', 13, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(113, 'Blade Templates', 4, 'fa-circle-o', NULL, 'Active', 17, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(114, 'Query Builder', 4, 'fa-circle-o', NULL, 'Active', 19, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(115, 'Pagination', 4, 'fa-circle-o', NULL, 'Active', 20, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(116, 'Migrations', 4, 'fa-circle-o', NULL, 'Active', 21, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(117, 'Conclusion', 4, 'fa-handshake-o', NULL, 'Active', 23, 0, '2019-11-26 07:19:38', '2020-01-28 07:18:48'),
(118, 'Installation', 4, 'fa-circle-o', NULL, 'Active', 2, 0, '2019-12-30 13:38:46', '2020-01-28 07:18:48'),
(119, 'Localization', 4, 'fa-circle-o', NULL, 'Active', 15, 0, '2020-01-05 09:43:42', '2020-01-28 07:18:48'),
(120, 'Compiling Assets', 4, 'fa-circle-o', NULL, 'Active', 16, 0, '2020-01-05 09:44:18', '2020-01-28 07:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 41, '<h2>Main Header</h2><p>\r\nThe main header contains the logo and navbar. Construction of the navbar differs slightly from Bootstrap because it has components that Bootstrap doesn\'t provide. The navbar can be constructed in two ways. This is an example for the normal navbar and next we will provide an example for the top nav layout.</p>', '2019-12-09 10:56:35', '2019-12-09 10:56:35'),
(3, 1, 45, 'Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle quora plaxo ideeli hulu weebly balihoo', '2019-12-09 10:56:56', '2019-12-09 10:56:56'),
(4, 1, 42, ' Take me to your leader! Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood! ', '2019-12-09 13:56:56', '2019-12-09 10:56:56'),
(5, 1, 45, 'Ut maximus enim dolor. Aenean auctor risus eget tincidunt lobortis. Donec tincidunt bibendum gravida. ', '2019-12-09 14:56:56', '2019-12-09 10:56:56'),
(6, 1, 42, '5 Stars for the UI, Impressed with the screens the way you worked hard to make them look this way, Good luck', '2019-12-09 15:56:56', '2019-12-09 10:56:56'),
(8, 1, 45, 'Take me to your leader!\r\n                            Switzerland is small and neutral!\r\n                            We are more like Germany, ambitious and misunderstood!', '2019-12-10 04:56:56', '2019-12-09 10:56:56'),
(9, 1, 44, '<p>the quick brown fox<br></p>', '2019-12-10 09:32:23', '2019-12-10 09:32:23'),
(10, 1, 45, '<p>the quick brown fox jumps over the lazy dogs<br></p>', '2019-12-10 09:35:51', '2019-12-10 09:35:51'),
(11, 1, 44, '<p>This is another comment for save testing<br></p>', '2019-12-10 09:38:05', '2019-12-10 09:38:05'),
(12, 1, 45, '<p>This is third comments for testing<br></p>', '2019-12-10 09:47:57', '2019-12-10 09:47:57'),
(13, 1, 1, '<p>\r\n<h2><strong>Import WooCommerce Sample Data</strong></h2>\r\n<p>If you don\'t have setup your Woocommerce store yet, setup it first. \r\nYou can download WooCommmerce sample data from the links given below.</p>\r\n<ol>\r\n<li><a target=\"_blank\" rel=\"nofollow\" href=\"https://docs.woocommerce.com/document/importing-woocommerce-sample-data/https://github.com/woocommerce/woocommerce/tree/master/sample-data\">https://docs.woocommerce.com/document/importing-woocommerce-sample-data/</a></li>\r\n<li><a target=\"_blank\" rel=\"nofollow\" href=\"https://docs.woocommerce.com/document/importing-woocommerce-sample-data/https://github.com/woocommerce/woocommerce/tree/master/sample-data\">https://github.com/woocommerce/woocommerce/tree/master/sample-data</a></li>\r\n</ol>\r\n\r\n﻿<br></p>', '2019-12-11 06:38:25', '2019-12-11 06:38:25'),
(14, 18, 1, '<p>Please check now. It should work now</p>', '2020-03-16 03:20:24', '2020-03-16 03:20:24'),
(15, 18, 46, '<p>Still not working<br></p>', '2020-03-16 03:22:22', '2020-03-16 03:22:22'),
(16, 18, 1, '<p>Again check please. Its working from my site.</p>', '2020-03-16 03:38:00', '2020-03-16 03:38:00'),
(38, 26, 1, '<p>this is testings</p><p><img style=\"width: 512px;\" src=\"data:image/png;base64,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\" data-filename=\"cart.png\"><br></p>', '2020-03-19 10:40:49', '2020-03-19 10:40:49'),
(39, 25, 46, '<p>Nice reply with photo</p><p><br></p><p><img style=\"width: 241px;\" src=\"data:image/jpeg;base64,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\" data-filename=\"(JPEG Image, 241&nbsp;×&nbsp;209 pixels).jpg\"><br></p>', '2020-03-19 10:46:44', '2020-03-19 10:46:44'),
(40, 25, 46, '<p>the testing<br></p>', '2020-03-19 10:48:42', '2020-03-19 10:48:42'),
(41, 28, 46, '<p>This is another comment2<br></p>', '2020-08-07 14:12:41', '2020-08-07 14:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('Not Seen','Viewed','Replied') NOT NULL DEFAULT 'Not Seen',
  `replied_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `full_name`, `email`, `subject`, `message`, `status`, `replied_id`, `created_at`, `updated_at`) VALUES
(21, 'Alexander Pierce', 'help@example.com', 'Keffiyeh blog actually fashion axe vegan', 'Hello John,\n\nKeffiyeh blog actually fashion axe vegan, irony biodiesel. Cold-pressed hoodie chillwave put a bird on it aesthetic, bitters brunch meggings vegan iPhone. Dreamcatcher vegan scenester mlkshk. Ethical master cleanse Bushwick, occupy Thundercats banjo cliche ennui farm-to-table mlkshk fanny pack gluten-free. Marfa butcher vegan quinoa, bicycle rights disrupt tofu scenester chillwave 3 wolf moon asymmetrical taxidermy pour-over. Quinoa tote bag fashion axe, Godard disrupt migas church-key tofu blog locavore. Thundercats cronut polaroid Neutra tousled, meh food truck selfies narwhal American Apparel.\n\nRaw denim McSweeney\'s bicycle rights, iPhone trust fund quinoa Neutra VHS kale chips vegan PBR&B literally Thundercats +1. Forage tilde four dollar toast, banjo health goth paleo butcher. Four dollar toast Brooklyn pour-over American Apparel sustainable, lumbersexual listicle gluten-free health goth umami hoodie. Synth Echo Park bicycle rights DIY farm-to-table, retro kogi sriracha dreamcatcher PBR&B flannel hashtag irony Wes Anderson. Lumbersexual Williamsburg Helvetica next level. Cold-pressed slow-carb pop-up normcore Thundercats Portland, cardigan literally meditation lumbersexual crucifix. Wayfarers raw denim paleo Bushwick, keytar Helvetica scenester keffiyeh 8-bit irony mumblecore whatever viral Truffaut.\n\nPost-ironic shabby chic VHS, Marfa keytar flannel lomo try-hard keffiyeh cray. Actually fap fanny pack yr artisan trust fund. High Life dreamcatcher church-key gentrify. Tumblr stumptown four dollar toast vinyl, cold-pressed try-hard blog authentic keffiyeh Helvetica lo-fi tilde Intelligentsia. Lomo locavore salvia bespoke, twee fixie paleo cliche brunch Schlitz blog McSweeney\'s messenger bag swag slow-carb. Odd Future photo booth pork belly, you probably haven\'t heard of them actually tofu ennui keffiyeh lo-fi Truffaut health goth. Narwhal sustainable retro disrupt.\n\nSkateboard artisan letterpress before they sold out High Life messenger bag. Bitters chambray leggings listicle, drinking vinegar chillwave synth. Fanny pack hoodie American Apparel twee. American Apparel PBR listicle, salvia aesthetic occupy sustainable Neutra kogi. Organic synth Tumblr viral plaid, shabby chic single-origin coffee Etsy 3 wolf moon slow-carb Schlitz roof party tousled squid vinyl. Readymade next level literally trust fund. Distillery master cleanse migas, Vice sriracha flannel chambray chia cronut.\n\nThanks,\nJane', 'Replied', NULL, '2020-02-04 06:50:04', '2020-02-04 06:54:16'),
(22, 'Nadim Mahmud', 'nadim@gmail.com', 'This is customer Test message', 'Hello Masum,\nPost-ironic shabby chic VHS, Marfa keytar flannel lomo try-hard keffiyeh cray. Actually fap fanny pack yr artisan trust fund. High Life dreamcatcher church-key gentrify. Tumblr stumptown four dollar toast vinyl, cold-pressed try-hard blog authentic keffiyeh Helvetica lo-fi tilde Intelligentsia. Lomo locavore salvia bespoke, twee fixie paleo cliche brunch Schlitz blog McSweeney\'s messenger bag swag slow-carb. Odd Future photo booth pork belly, you probably haven\'t heard of them actually tofu ennui keffiyeh lo-fi Truffaut health goth. Narwhal sustainable retro disrupt.\n\nSkateboard artisan letterpress before they sold out High Life messenger bag. Bitters chambray leggings listicle, drinking vinegar chillwave synth. Fanny pack hoodie American Apparel twee. American Apparel PBR listicle, salvia aesthetic occupy sustainable Neutra kogi. Organic synth Tumblr viral plaid, shabby chic single-origin coffee Etsy 3 wolf moon slow-carb Schlitz roof party tousled squid vinyl. Readymade next level literally trust fund. Distillery master cleanse migas, Vice sriracha flannel chambray chia cronut.\n\nThanks,\nFiroz', 'Viewed', NULL, '2020-02-04 06:51:41', '2020-03-05 07:20:13'),
(23, 'Support', 'support@helpdesk.com', NULL, 'Hello Alexander,\r\n\r\nRaw denim McSweeney\'s bicycle rights, iPhone trust fund quinoa Neutra VHS kale chips vegan PBR&B literally Thundercats +1. Forage tilde four dollar toast, banjo health goth paleo butcher. Four dollar toast Brooklyn pour-over American Apparel sustainable, lumbersexual listicle gluten-free health goth umami hoodie. Synth Echo Park bicycle rights DIY farm-to-table, retro kogi sriracha dreamcatcher PBR&B flannel hashtag irony Wes Anderson. Lumbersexual Williamsburg Helvetica next level. Cold-pressed slow-carb pop-up normcore Thundercats Portland, cardigan literally meditation lumbersexual crucifix. Wayfarers raw denim paleo Bushwick, keytar Helvetica scenester keffiyeh 8-bit irony mumblecore whatever viral Truffaut.\r\n\r\nPost-ironic shabby chic VHS, Marfa keytar flannel lomo try-hard keffiyeh cray. Actually fap fanny pack yr artisan trust fund. High Life dreamcatcher church-key gentrify. Tumblr stumptown four dollar toast vinyl, cold-pressed try-hard blog authentic keffiyeh Helvetica lo-fi tilde Intelligentsia. Lomo locavore salvia bespoke, twee fixie paleo cliche brunch Schlitz blog McSweeney\'s messenger bag swag slow-carb. Odd Future photo booth pork belly, you probably haven\'t heard of them actually tofu ennui keffiyeh lo-fi Truffaut health goth. Narwhal sustainable retro disrupt.\r\n\r\nSkateboard artisan letterpress before they sold out High Life messenger bag. Bitters chambray leggings listicle, drinking vinegar chillwave synth. Fanny pack hoodie American Apparel twee. American Apparel PBR listicle, salvia aesthetic occupy sustainable Neutra kogi. Organic synth Tumblr viral plaid, shabby chic single-origin coffee Etsy 3 wolf moon slow-carb Schlitz roof party tousled squid vinyl. Readymade next level literally trust fund. Distillery master cleanse migas, Vice sriracha flannel chambray chia cronut.\r\n\r\nThanks,\r\nJolil', 'Not Seen', 21, '2020-02-04 06:54:16', '2020-02-04 06:54:16'),
(24, 'Md Firoz', 'firoz.cse.sust@gmail.com', 'dummy title', 'dummy descriptions', 'Not Seen', NULL, '2021-02-26 10:32:32', '2021-02-26 10:32:32'),
(25, 'Test', 'ahnafahmad2013@gmail.com', 'Test Contact', 'hello vai', 'Replied', NULL, '2021-03-11 10:28:50', '2021-03-11 10:31:06'),
(26, 'Support', 'contact@storola.net', NULL, '<p>khela hobe</p>', 'Not Seen', 25, '2021-03-11 10:31:06', '2021-03-11 10:31:06'),
(27, 'Anil', 'Singh', 'Seofamiliar@gmail.com', 'Hello, \n\nI want to sell mobile apps for PrestaShop, opencart, magento and woocommerce. Will your solution can fulfill my development partner need? \n\nWill it be fully white label? How does it work any manual or videos. \n\nCan we connect o n whatsapp or Skype or Google meet call?', 'Not Seen', NULL, '2021-03-12 18:09:31', '2021-03-12 18:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `country_code` char(2) NOT NULL DEFAULT '',
  `currency_code` char(3) DEFAULT NULL,
  `capital` varchar(30) DEFAULT NULL,
  `continent_name` varchar(100) NOT NULL,
  `continent_code` char(2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `currency_code`, `capital`, `continent_name`, `continent_code`, `status`) VALUES
(1, 'Andorra', 'AD', 'EUR', 'Andorra la Vella', 'Europe', 'EU', 'Active'),
(2, 'United Arab Emirates', 'AE', 'AED', 'Abu Dhabi', 'Asia', 'AS', 'Active'),
(3, 'Afghanistan', 'AF', 'AFN', 'Kabul', 'Asia', 'AS', 'Active'),
(4, 'Antigua and Barbuda', 'AG', 'XCD', 'St. John\'s', 'North America', 'NA', 'Active'),
(5, 'Anguilla', 'AI', 'XCD', 'The Valley', 'North America', 'NA', 'Active'),
(6, 'Albania', 'AL', 'ALL', 'Tirana', 'Europe', 'EU', 'Active'),
(7, 'Armenia', 'AM', 'AMD', 'Yerevan', 'Asia', 'AS', 'Active'),
(8, 'Angola', 'AO', 'AOA', 'Luanda', 'Africa', 'AF', 'Active'),
(9, 'Antarctica', 'AQ', '', '', 'Antarctica', 'AN', 'Active'),
(10, 'Argentina', 'AR', 'ARS', 'Buenos Aires', 'South America', 'SA', 'Active'),
(11, 'American Samoa', 'AS', 'USD', 'Pago Pago', 'Oceania', 'OC', 'Active'),
(12, 'Austria', 'AT', 'EUR', 'Vienna', 'Europe', 'EU', 'Active'),
(13, 'Australia', 'AU', 'AUD', 'Canberra', 'Oceania', 'OC', 'Active'),
(14, 'Aruba', 'AW', 'AWG', 'Oranjestad', 'North America', 'NA', 'Active'),
(15, 'Åland Islands', 'AX', 'EUR', 'Mariehamn', 'Europe', 'EU', 'Active'),
(16, 'Azerbaijan', 'AZ', 'AZN', 'Baku', 'Asia', 'AS', 'Active'),
(17, 'Bosnia and Herzegovina', 'BA', 'BAM', 'Sarajevo', 'Europe', 'EU', 'Active'),
(18, 'Barbados', 'BB', 'BBD', 'Bridgetown', 'North America', 'NA', 'Active'),
(19, 'Bangladesh', 'BD', 'BDT', 'Dhaka', 'Asia', 'AS', 'Active'),
(20, 'Belgium', 'BE', 'EUR', 'Brussels', 'Europe', 'EU', 'Active'),
(21, 'Burkina Faso', 'BF', 'XOF', 'Ouagadougou', 'Africa', 'AF', 'Active'),
(22, 'Bulgaria', 'BG', 'BGN', 'Sofia', 'Europe', 'EU', 'Active'),
(23, 'Bahrain', 'BH', 'BHD', 'Manama', 'Asia', 'AS', 'Active'),
(24, 'Burundi', 'BI', 'BIF', 'Bujumbura', 'Africa', 'AF', 'Active'),
(25, 'Benin', 'BJ', 'XOF', 'Porto-Novo', 'Africa', 'AF', 'Active'),
(26, 'Saint Barthélemy', 'BL', 'EUR', 'Gustavia', 'North America', 'NA', 'Active'),
(27, 'Bermuda', 'BM', 'BMD', 'Hamilton', 'North America', 'NA', 'Active'),
(28, 'Brunei Darussalam', 'BN', 'BND', 'Bandar Seri Begawan', 'Asia', 'AS', 'Active'),
(29, 'Bolivia', 'BO', 'BOB', 'Sucre', 'South America', 'SA', 'Active'),
(30, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'USD', '', 'North America', 'NA', 'Active'),
(31, 'Brazil', 'BR', 'BRL', 'Brasília', 'South America', 'SA', 'Active'),
(32, 'Bahamas', 'BS', 'BSD', 'Nassau', 'North America', 'NA', 'Active'),
(33, 'Bhutan', 'BT', 'BTN', 'Thimphu', 'Asia', 'AS', 'Active'),
(34, 'Bouvet Island', 'BV', 'NOK', '', 'Antarctica', 'AN', 'Active'),
(35, 'Botswana', 'BW', 'BWP', 'Gaborone', 'Africa', 'AF', 'Active'),
(36, 'Belarus', 'BY', 'BYR', 'Minsk', 'Europe', 'EU', 'Active'),
(37, 'Belize', 'BZ', 'BZD', 'Belmopan', 'North America', 'NA', 'Active'),
(38, 'Canada', 'CA', 'CAD', 'Ottawa', 'North America', 'NA', 'Active'),
(39, 'Cocos [Keeling] Islands', 'CC', 'AUD', 'West Island', 'Asia', 'AS', 'Active'),
(40, 'Democratic Republic of the Congo', 'CD', 'COD', 'Kinshasa', 'Africa', 'AF', 'Active'),
(41, 'Central African Republic', 'CF', 'XAF', 'Bangui', 'Africa', 'AF', 'Active'),
(42, 'Republic of the Congo', 'CG', 'XAF', 'Brazzaville', 'Africa', 'AF', 'Active'),
(43, 'Switzerland', 'CH', 'CHF', 'Berne', 'Europe', 'EU', 'Active'),
(44, 'Ivory Coast', 'CI', 'XOF', 'Yamoussoukro', 'Africa', 'AF', 'Active'),
(45, 'Cook Islands', 'CK', 'NZD', 'Avarua', 'Oceania', 'OC', 'Active'),
(46, 'Chile', 'CL', 'CLP', 'Santiago', 'South America', 'SA', 'Active'),
(47, 'Cameroon', 'CM', 'XAF', 'Yaoundé', 'Africa', 'AF', 'Active'),
(48, 'China', 'CN', 'CNY', 'Beijing', 'Asia', 'AS', 'Active'),
(49, 'Colombia', 'CO', 'COP', 'Bogotá', 'South America', 'SA', 'Active'),
(50, 'Costa Rica', 'CR', 'CRC', 'San José', 'North America', 'NA', 'Active'),
(51, 'Cuba', 'CU', 'CUP', 'Havana', 'North America', 'NA', 'Active'),
(52, 'Cape Verde', 'CV', 'CVE', 'Praia', 'Africa', 'AF', 'Active'),
(53, 'Curaçao', 'CW', 'ANG', 'Willemstad', 'North America', 'NA', 'Active'),
(54, 'Christmas Island', 'CX', 'AUD', 'The Settlement', 'Asia', 'AS', 'Active'),
(55, 'Cyprus', 'CY', 'EUR', 'Nicosia', 'Europe', 'EU', 'Active'),
(56, 'Czech Republic', 'CZ', 'CZK', 'Prague', 'Europe', 'EU', 'Active'),
(57, 'Germany', 'DE', 'EUR', 'Berlin', 'Europe', 'EU', 'Active'),
(58, 'Djibouti', 'DJ', 'DJF', 'Djibouti', 'Africa', 'AF', 'Active'),
(59, 'Denmark', 'DK', 'DKK', 'Copenhagen', 'Europe', 'EU', 'Active'),
(60, 'Dominica', 'DM', 'XCD', 'Roseau', 'North America', 'NA', 'Active'),
(61, 'Dominican Republic', 'DO', 'DOP', 'Santo Domingo', 'North America', 'NA', 'Active'),
(62, 'Algeria', 'DZ', 'DZD', 'Algiers', 'Africa', 'AF', 'Active'),
(63, 'Ecuador', 'EC', 'USD', 'Quito', 'South America', 'SA', 'Active'),
(64, 'Estonia', 'EE', 'EUR', 'Tallinn', 'Europe', 'EU', 'Active'),
(65, 'Egypt', 'EG', 'EGP', 'Cairo', 'Africa', 'AF', 'Active'),
(66, 'Western Sahara', 'EH', 'MAD', 'El Aaiún', 'Africa', 'AF', 'Active'),
(67, 'Eritrea', 'ER', 'ERN', 'Asmara', 'Africa', 'AF', 'Active'),
(68, 'Spain', 'ES', 'EUR', 'Madrid', 'Europe', 'EU', 'Active'),
(69, 'Ethiopia', 'ET', 'ETB', 'Addis Ababa', 'Africa', 'AF', 'Active'),
(70, 'Finland', 'FI', 'EUR', 'Helsinki', 'Europe', 'EU', 'Active'),
(71, 'Fiji', 'FJ', 'FJD', 'Suva', 'Oceania', 'OC', 'Active'),
(72, 'Falkland Islands', 'FK', 'FKP', 'Stanley', 'South America', 'SA', 'Active'),
(73, 'Micronesia', 'FM', 'USD', 'Palikir', 'Oceania', 'OC', 'Active'),
(74, 'Faroe Islands', 'FO', 'DKK', 'Tórshavn', 'Europe', 'EU', 'Active'),
(75, 'France', 'FR', 'EUR', 'Paris', 'Europe', 'EU', 'Active'),
(76, 'Gabon', 'GA', 'XAF', 'Libreville', 'Africa', 'AF', 'Active'),
(77, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBP', 'London', 'Europe', 'EU', 'Active'),
(78, 'Grenada', 'GD', 'XCD', 'St. George\'s', 'North America', 'NA', 'Active'),
(79, 'Georgia', 'GE', 'GEL', 'Tbilisi', 'Asia', 'AS', 'Active'),
(80, 'French Guiana', 'GF', 'EUR', 'Cayenne', 'South America', 'SA', 'Active'),
(81, 'Guernsey', 'GG', 'GBP', 'St Peter Port', 'Europe', 'EU', 'Active'),
(82, 'Ghana', 'GH', 'GHS', 'Accra', 'Africa', 'AF', 'Active'),
(83, 'Gibraltar', 'GI', 'GIP', 'Gibraltar', 'Europe', 'EU', 'Active'),
(84, 'Greenland', 'GL', 'DKK', 'Nuuk', 'North America', 'NA', 'Active'),
(85, 'Gambia', 'GM', 'GMD', 'Banjul', 'Africa', 'AF', 'Active'),
(86, 'Guinea', 'GN', 'GNF', 'Conakry', 'Africa', 'AF', 'Active'),
(87, 'Guadeloupe', 'GP', 'EUR', 'Basse-Terre', 'North America', 'NA', 'Active'),
(88, 'Equatorial Guinea', 'GQ', 'XAF', 'Malabo', 'Africa', 'AF', 'Active'),
(89, 'Greece', 'GR', 'EUR', 'Athens', 'Europe', 'EU', 'Active'),
(90, 'South Georgia and the South Sandwich Islands', 'GS', 'GBP', 'Grytviken', 'Antarctica', 'AN', 'Active'),
(91, 'Guatemala', 'GT', 'GTQ', 'Guatemala City', 'North America', 'NA', 'Active'),
(92, 'Guam', 'GU', 'USD', 'Hagåtña', 'Oceania', 'OC', 'Active'),
(93, 'Guinea-Bissau', 'GW', 'XOF', 'Bissau', 'Africa', 'AF', 'Active'),
(94, 'Guyana', 'GY', 'GYD', 'Georgetown', 'South America', 'SA', 'Active'),
(95, 'Hong Kong', 'HK', 'HKD', 'Hong Kong', 'Asia', 'AS', 'Active'),
(96, 'Heard Island and McDonald Islands', 'HM', 'AUD', '', 'Antarctica', 'AN', 'Active'),
(97, 'Honduras', 'HN', 'HNL', 'Tegucigalpa', 'North America', 'NA', 'Active'),
(98, 'Croatia', 'HR', 'HRK', 'Zagreb', 'Europe', 'EU', 'Active'),
(99, 'Haiti', 'HT', 'HTG', 'Port-au-Prince', 'North America', 'NA', 'Active'),
(100, 'Hungary', 'HU', 'HUF', 'Budapest', 'Europe', 'EU', 'Active'),
(101, 'Indonesia', 'ID', 'IDR', 'Jakarta', 'Asia', 'AS', 'Active'),
(102, 'Ireland', 'IE', 'EUR', 'Dublin', 'Europe', 'EU', 'Active'),
(103, 'Israel', 'IL', 'ILS', '', 'Asia', 'AS', 'Active'),
(104, 'Isle of Man', 'IM', 'GBP', 'Douglas', 'Europe', 'EU', 'Active'),
(105, 'India', 'IN', 'INR', 'New Delhi', 'Asia', 'AS', 'Active'),
(106, 'British Indian Ocean Territory', 'IO', 'USD', '', 'Asia', 'AS', 'Active'),
(107, 'Iraq', 'IQ', 'IQD', 'Baghdad', 'Asia', 'AS', 'Active'),
(108, 'Iran', 'IR', 'IRR', 'Tehran', 'Asia', 'AS', 'Active'),
(109, 'Iceland', 'IS', 'ISK', 'Reykjavik', 'Europe', 'EU', 'Active'),
(110, 'Italy', 'IT', 'EUR', 'Rome', 'Europe', 'EU', 'Active'),
(111, 'Jersey', 'JE', 'GBP', 'Saint Helier', 'Europe', 'EU', 'Active'),
(112, 'Jamaica', 'JM', 'JMD', 'Kingston', 'North America', 'NA', 'Active'),
(113, 'Jordan', 'JO', 'JOD', 'Amman', 'Asia', 'AS', 'Active'),
(114, 'Japan', 'JP', 'JPY', 'Tokyo', 'Asia', 'AS', 'Active'),
(115, 'Kenya', 'KE', 'KES', 'Nairobi', 'Africa', 'AF', 'Active'),
(116, 'Kyrgyzstan', 'KG', 'KGS', 'Bishkek', 'Asia', 'AS', 'Active'),
(117, 'Cambodia', 'KH', 'KHR', 'Phnom Penh', 'Asia', 'AS', 'Active'),
(118, 'Kiribati', 'KI', 'AUD', 'Tarawa', 'Oceania', 'OC', 'Active'),
(119, 'Comoros', 'KM', 'KMF', 'Moroni', 'Africa', 'AF', 'Active'),
(120, 'Saint Kitts and Nevis', 'KN', 'XCD', 'Basseterre', 'North America', 'NA', 'Active'),
(121, 'North Korea', 'KP', 'KPW', 'Pyongyang', 'Asia', 'AS', 'Active'),
(122, 'South Korea', 'KR', 'KRW', 'Seoul', 'Asia', 'AS', 'Active'),
(123, 'Kuwait', 'KW', 'KWD', 'Kuwait City', 'Asia', 'AS', 'Active'),
(124, 'Cayman Islands', 'KY', 'KYD', 'George Town', 'North America', 'NA', 'Active'),
(125, 'Kazakhstan', 'KZ', 'KZT', 'Astana', 'Asia', 'AS', 'Active'),
(126, 'Laos', 'LA', 'LAK', 'Vientiane', 'Asia', 'AS', 'Active'),
(127, 'Lebanon', 'LB', 'LBP', 'Beirut', 'Asia', 'AS', 'Active'),
(128, 'Saint Lucia', 'LC', 'XCD', 'Castries', 'North America', 'NA', 'Active'),
(129, 'Liechtenstein', 'LI', 'CHF', 'Vaduz', 'Europe', 'EU', 'Active'),
(130, 'Sri Lanka', 'LK', 'LKR', 'Colombo', 'Asia', 'AS', 'Active'),
(131, 'Liberia', 'LR', 'LRD', 'Monrovia', 'Africa', 'AF', 'Active'),
(132, 'Lesotho', 'LS', 'LSL', 'Maseru', 'Africa', 'AF', 'Active'),
(133, 'Lithuania', 'LT', 'EUR', 'Vilnius', 'Europe', 'EU', 'Active'),
(134, 'Luxembourg', 'LU', 'EUR', 'Luxembourg', 'Europe', 'EU', 'Active'),
(135, 'Latvia', 'LV', 'EUR', 'Riga', 'Europe', 'EU', 'Active'),
(136, 'Libya', 'LY', 'LYD', 'Tripoli', 'Africa', 'AF', 'Active'),
(137, 'Morocco', 'MA', 'MAD', 'Rabat', 'Africa', 'AF', 'Active'),
(138, 'Monaco', 'MC', 'EUR', 'Monaco', 'Europe', 'EU', 'Active'),
(139, 'Moldova', 'MD', 'MDL', 'Chişinău', 'Europe', 'EU', 'Active'),
(140, 'Montenegro', 'ME', 'EUR', 'Podgorica', 'Europe', 'EU', 'Active'),
(141, 'Saint Martin', 'MF', 'EUR', 'Marigot', 'North America', 'NA', 'Active'),
(142, 'Madagascar', 'MG', 'MGA', 'Antananarivo', 'Africa', 'AF', 'Active'),
(143, 'Marshall Islands', 'MH', 'USD', 'Majuro', 'Oceania', 'OC', 'Active'),
(144, 'North Macedonia', 'MK', 'MKD', 'Skopje', 'Europe', 'EU', 'Active'),
(145, 'Mali', 'ML', 'XOF', 'Bamako', 'Africa', 'AF', 'Active'),
(146, 'Myanmar [Burma]', 'MM', 'MMK', 'Nay Pyi Taw', 'Asia', 'AS', 'Active'),
(147, 'Mongolia', 'MN', 'MNT', 'Ulan Bator', 'Asia', 'AS', 'Active'),
(148, 'Macao', 'MO', 'MOP', 'Macao', 'Asia', 'AS', 'Active'),
(149, 'Northern Mariana Islands', 'MP', 'USD', 'Saipan', 'Oceania', 'OC', 'Active'),
(150, 'Martinique', 'MQ', 'EUR', 'Fort-de-France', 'North America', 'NA', 'Active'),
(151, 'Mauritania', 'MR', 'MRO', 'Nouakchott', 'Africa', 'AF', 'Active'),
(152, 'Montserrat', 'MS', 'XCD', 'Plymouth', 'North America', 'NA', 'Active'),
(153, 'Malta', 'MT', 'EUR', 'Valletta', 'Europe', 'EU', 'Active'),
(154, 'Mauritius', 'MU', 'MUR', 'Port Louis', 'Africa', 'AF', 'Active'),
(155, 'Maldives', 'MV', 'MVR', 'Malé', 'Asia', 'AS', 'Active'),
(156, 'Malawi', 'MW', 'MWK', 'Lilongwe', 'Africa', 'AF', 'Active'),
(157, 'Mexico', 'MX', 'MXN', 'Mexico City', 'North America', 'NA', 'Active'),
(158, 'Malaysia', 'MY', 'MYR', 'Kuala Lumpur', 'Asia', 'AS', 'Active'),
(159, 'Mozambique', 'MZ', 'MZN', 'Maputo', 'Africa', 'AF', 'Active'),
(160, 'Namibia', 'NA', 'NAD', 'Windhoek', 'Africa', 'AF', 'Active'),
(161, 'New Caledonia', 'NC', 'XPF', 'Noumea', 'Oceania', 'OC', 'Active'),
(162, 'Niger', 'NE', 'XOF', 'Niamey', 'Africa', 'AF', 'Active'),
(163, 'Norfolk Island', 'NF', 'AUD', 'Kingston', 'Oceania', 'OC', 'Active'),
(164, 'Nigeria', 'NG', 'NGN', 'Abuja', 'Africa', 'AF', 'Active'),
(165, 'Nicaragua', 'NI', 'NIO', 'Managua', 'North America', 'NA', 'Active'),
(166, 'Netherlands', 'NL', 'EUR', 'Amsterdam', 'Europe', 'EU', 'Active'),
(167, 'Norway', 'NO', 'NOK', 'Oslo', 'Europe', 'EU', 'Active'),
(168, 'Nepal', 'NP', 'NPR', 'Kathmandu', 'Asia', 'AS', 'Active'),
(169, 'Nauru', 'NR', 'AUD', '', 'Oceania', 'OC', 'Active'),
(170, 'Niue', 'NU', 'NZD', 'Alofi', 'Oceania', 'OC', 'Active'),
(171, 'New Zealand', 'NZ', 'NZD', 'Wellington', 'Oceania', 'OC', 'Active'),
(172, 'Oman', 'OM', 'OMR', 'Muscat', 'Asia', 'AS', 'Active'),
(173, 'Panama', 'PA', 'PAB', 'Panama City', 'North America', 'NA', 'Active'),
(174, 'Peru', 'PE', 'PEN', 'Lima', 'South America', 'SA', 'Active'),
(175, 'French Polynesia', 'PF', 'XPF', 'Papeete', 'Oceania', 'OC', 'Active'),
(176, 'Papua New Guinea', 'PG', 'PGK', 'Port Moresby', 'Oceania', 'OC', 'Active'),
(177, 'Philippines', 'PH', 'PHP', 'Manila', 'Asia', 'AS', 'Active'),
(178, 'Pakistan', 'PK', 'PKR', 'Islamabad', 'Asia', 'AS', 'Active'),
(179, 'Poland', 'PL', 'PLN', 'Warsaw', 'Europe', 'EU', 'Active'),
(180, 'Saint Pierre and Miquelon', 'PM', 'EUR', 'Saint-Pierre', 'North America', 'NA', 'Active'),
(181, 'Pitcairn Islands', 'PN', 'NZD', 'Adamstown', 'Oceania', 'OC', 'Active'),
(182, 'Puerto Rico', 'PR', 'USD', 'San Juan', 'North America', 'NA', 'Active'),
(183, 'Palestine', 'PS', 'ILS', '', 'Asia', 'AS', 'Active'),
(184, 'Portugal', 'PT', 'EUR', 'Lisbon', 'Europe', 'EU', 'Active'),
(185, 'Palau', 'PW', 'USD', 'Melekeok - Palau State Capital', 'Oceania', 'OC', 'Active'),
(186, 'Paraguay', 'PY', 'PYG', 'Asunción', 'South America', 'SA', 'Active'),
(187, 'Qatar', 'QA', 'QAR', 'Doha', 'Asia', 'AS', 'Active'),
(188, 'Réunion', 'RE', 'EUR', 'Saint-Denis', 'Africa', 'AF', 'Active'),
(189, 'Romania', 'RO', 'RON', 'Bucharest', 'Europe', 'EU', 'Active'),
(190, 'Serbia', 'RS', 'RSD', 'Belgrade', 'Europe', 'EU', 'Active'),
(191, 'Russia', 'RU', 'RUB', 'Moscow', 'Europe', 'EU', 'Active'),
(192, 'Rwanda', 'RW', 'RWF', 'Kigali', 'Africa', 'AF', 'Active'),
(193, 'Saudi Arabia', 'SA', 'SAR', 'Riyadh', 'Asia', 'AS', 'Active'),
(194, 'Solomon Islands', 'SB', 'SBD', 'Honiara', 'Oceania', 'OC', 'Active'),
(195, 'Seychelles', 'SC', 'SCR', 'Victoria', 'Africa', 'AF', 'Active'),
(196, 'Sudan', 'SD', 'SDG', 'Khartoum', 'Africa', 'AF', 'Active'),
(197, 'Sweden', 'SE', 'SEK', 'Stockholm', 'Europe', 'EU', 'Active'),
(198, 'Singapore', 'SG', 'SGD', 'Singapore', 'Asia', 'AS', 'Active'),
(199, 'Saint Helena', 'SH', 'SHP', 'Jamestown', 'Africa', 'AF', 'Active'),
(200, 'Slovenia', 'SI', 'EUR', 'Ljubljana', 'Europe', 'EU', 'Active'),
(201, 'Svalbard and Jan Mayen', 'SJ', 'NOK', 'Longyearbyen', 'Europe', 'EU', 'Active'),
(202, 'Slovakia', 'SK', 'EUR', 'Bratislava', 'Europe', 'EU', 'Active'),
(203, 'Sierra Leone', 'SL', 'SLL', 'Freetown', 'Africa', 'AF', 'Active'),
(204, 'San Marino', 'SM', 'EUR', 'San Marino', 'Europe', 'EU', 'Active'),
(205, 'Senegal', 'SN', 'XOF', 'Dakar', 'Africa', 'AF', 'Active'),
(206, 'Somalia', 'SO', 'SOS', 'Mogadishu', 'Africa', 'AF', 'Active'),
(207, 'Suriname', 'SR', 'SRD', 'Paramaribo', 'South America', 'SA', 'Active'),
(208, 'South Sudan', 'SS', 'SSP', 'Juba', 'Africa', 'AF', 'Active'),
(209, 'São Tomé and Príncipe', 'ST', 'STD', 'São Tomé', 'Africa', 'AF', 'Active'),
(210, 'El Salvador', 'SV', 'USD', 'San Salvador', 'North America', 'NA', 'Active'),
(211, 'Sint Maarten', 'SX', 'ANG', 'Philipsburg', 'North America', 'NA', 'Active'),
(212, 'Syria', 'SY', 'SYP', 'Damascus', 'Asia', 'AS', 'Active'),
(213, 'Swaziland', 'SZ', 'SZL', 'Mbabane', 'Africa', 'AF', 'Active'),
(214, 'Turks and Caicos Islands', 'TC', 'USD', 'Cockburn Town', 'North America', 'NA', 'Active'),
(215, 'Chad', 'TD', 'XAF', 'N\'Djamena', 'Africa', 'AF', 'Active'),
(216, 'French Southern Territories', 'TF', 'EUR', 'Port-aux-Français', 'Antarctica', 'AN', 'Active'),
(217, 'Togo', 'TG', 'XOF', 'Lomé', 'Africa', 'AF', 'Active'),
(218, 'Thailand', 'TH', 'THB', 'Bangkok', 'Asia', 'AS', 'Active'),
(219, 'Tajikistan', 'TJ', 'TJS', 'Dushanbe', 'Asia', 'AS', 'Active'),
(220, 'Tokelau', 'TK', 'NZD', '', 'Oceania', 'OC', 'Active'),
(221, 'East Timor', 'TL', 'USD', 'Dili', 'Oceania', 'OC', 'Active'),
(222, 'Turkmenistan', 'TM', 'TMT', 'Ashgabat', 'Asia', 'AS', 'Active'),
(223, 'Tunisia', 'TN', 'TND', 'Tunis', 'Africa', 'AF', 'Active'),
(224, 'Tonga', 'TO', 'TOP', 'Nuku\'alofa', 'Oceania', 'OC', 'Active'),
(225, 'Turkey', 'TR', 'TRY', 'Ankara', 'Asia', 'AS', 'Active'),
(226, 'Trinidad and Tobago', 'TT', 'TTD', 'Port of Spain', 'North America', 'NA', 'Active'),
(227, 'Tuvalu', 'TV', 'AUD', 'Funafuti', 'Oceania', 'OC', 'Active'),
(228, 'Taiwan', 'TW', 'TWD', 'Taipei', 'Asia', 'AS', 'Active'),
(229, 'Tanzania', 'TZ', 'TZS', 'Dodoma', 'Africa', 'AF', 'Active'),
(230, 'Ukraine', 'UA', 'UAH', 'Kyiv', 'Europe', 'EU', 'Active'),
(231, 'Uganda', 'UG', 'UGX', 'Kampala', 'Africa', 'AF', 'Active'),
(232, 'U.S. Minor Outlying Islands', 'UM', 'USD', '', 'Oceania', 'OC', 'Active'),
(233, 'United States', 'US', 'USD', 'Washington', 'North America', 'NA', 'Active'),
(234, 'Uruguay', 'UY', 'UYU', 'Montevideo', 'South America', 'SA', 'Active'),
(235, 'Uzbekistan', 'UZ', 'UZS', 'Tashkent', 'Asia', 'AS', 'Active'),
(236, 'Vatican City', 'VA', 'EUR', 'Vatican', 'Europe', 'EU', 'Active'),
(237, 'Saint Vincent and the Grenadines', 'VC', 'XCD', 'Kingstown', 'North America', 'NA', 'Active'),
(238, 'Venezuela', 'VE', 'VEF', 'Caracas', 'South America', 'SA', 'Active'),
(239, 'British Virgin Islands', 'VG', 'USD', 'Road Town', 'North America', 'NA', 'Active'),
(240, 'U.S. Virgin Islands', 'VI', 'USD', 'Charlotte Amalie', 'North America', 'NA', 'Active'),
(241, 'Vietnam', 'VN', 'VND', 'Hanoi', 'Asia', 'AS', 'Active'),
(242, 'Vanuatu', 'VU', 'VUV', 'Port Vila', 'Oceania', 'OC', 'Active'),
(243, 'Wallis and Futuna', 'WF', 'XPF', 'Mata-Utu', 'Oceania', 'OC', 'Active'),
(244, 'Samoa', 'WS', 'WST', 'Apia', 'Oceania', 'OC', 'Active'),
(245, 'Kosovo', 'XK', 'EUR', 'Pristina', 'Europe', 'EU', 'Active'),
(246, 'Yemen', 'YE', 'YER', 'Sanaa', 'Asia', 'AS', 'Active'),
(247, 'Mayotte', 'YT', 'EUR', 'Mamoutzou', 'Africa', 'AF', 'Active'),
(248, 'South Africa', 'ZA', 'ZAR', 'Pretoria', 'Africa', 'AF', 'Active'),
(249, 'Zambia', 'ZM', 'ZMW', 'Lusaka', 'Africa', 'AF', 'Active'),
(250, 'Zimbabwe', 'ZW', 'ZWL', 'Harare', 'Africa', 'AF', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `code` varchar(5) NOT NULL,
  `rate` float(10,3) NOT NULL,
  `default_currency` int(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `rate`, `default_currency`, `sorting`) VALUES
(1, 'Euro', 'EUR', 1.000, 0, 0),
(2, 'US Dollar', 'USD', 1.190, 0, 0),
(3, 'Indian Rupee', 'INR', 80.850, 1, 0),
(4, 'Taka', 'BDT', 100.740, 0, 0),
(5, 'Saudi Riyal', 'SAR', 4.200, 0, 0),
(6, 'UAE Dirham', 'AED', 4.110, 0, 0),
(7, 'Egyptian Pound', 'EGP', 18.710, 0, 0),
(8, 'Kuwaiti Dinar', 'KWD', 0.340, 0, 0),
(9, 'Qatari Rial', 'QAR', 4.080, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_logs`
--

DROP TABLE IF EXISTS `event_logs`;
CREATE TABLE IF NOT EXISTS `event_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `end_point` varchar(100) NOT NULL,
  `changes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=484 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_logs`
--

INSERT INTO `event_logs` (`id`, `user_id`, `end_point`, `changes`, `created_at`, `updated_at`) VALUES
(1, 1, 'modules.destroy', 'Delete item: Brands', '2020-02-17 14:30:07', '2020-02-17 14:30:07'),
(2, 1, 'modules.create', 'Create new item: Tickets', '2020-02-17 14:31:25', '2020-02-17 14:31:25'),
(3, 1, 'modules.create', 'Create new item: Categories', '2020-02-17 14:33:35', '2020-02-17 14:33:35'),
(4, 1, 'modules.create', 'Create new item: Articles', '2020-02-17 14:34:28', '2020-02-17 14:34:28'),
(5, 1, 'modules.create', 'Create new item: Departments', '2020-02-17 14:35:27', '2020-02-17 14:35:27'),
(6, 1, 'modules.create', 'Create new item: Products', '2020-02-17 14:36:16', '2020-02-17 14:36:16'),
(7, 1, 'modules.create', 'Create new item: Tags', '2020-02-17 14:38:08', '2020-02-17 14:38:08'),
(8, 1, 'modules.create', 'Create new item: Testimonials', '2020-02-17 14:38:47', '2020-02-17 14:38:47'),
(9, 1, 'modules.create', 'Create new item: Services', '2020-02-17 14:40:31', '2020-02-17 14:40:31'),
(10, 1, 'modules.create', 'Create new item: Modules', '2020-02-17 14:42:39', '2020-02-17 14:42:39'),
(11, 1, 'modules.create', 'Create new item: Roles', '2020-02-17 14:43:03', '2020-02-17 14:43:03'),
(12, 1, 'modules.create', 'Create new item: Permissions', '2020-02-17 14:43:45', '2020-02-17 14:43:45'),
(13, 1, 'modules.create', 'Create new item: Users', '2020-02-17 14:44:06', '2020-02-17 14:44:06'),
(14, 1, 'modules.create', 'Create new item: event_logs', '2020-02-17 14:45:03', '2020-02-17 14:45:03'),
(15, 1, 'modules.create', 'Create new item: Settings', '2020-03-03 11:04:58', '2020-03-03 11:04:58'),
(16, 1, 'modules.create', 'Create new item: Countries', '2020-03-03 11:12:14', '2020-03-03 11:12:14'),
(17, 1, 'modules.create', 'Create new item: contact_us', '2020-03-03 11:53:48', '2020-03-03 11:53:48'),
(18, 1, 'tickets.create', '', '2020-03-19 10:11:02', '2020-03-19 10:11:02'),
(19, 1, 'articles.create', 'Create new item: This is a test articles 1', '2020-03-19 10:21:29', '2020-03-19 10:21:29'),
(20, 1, 'articles.update', 'details: <b><p>the quick brown fox jumps over the lazy dogs.</p><p><br></p><p><img style=\"width: 512px;\" src=\"data:image/png;base64,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\" data-filename=\"cart.png\"><br></p></b> change to <b><p>the quick brown fox jumps over the lazy dogs.</p><p><br></p><p><img style=\"width: 50%;\" src=\"data:image/png;base64,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\" data-filename=\"cart.png\"><br></p></b>', '2020-03-19 10:22:55', '2020-03-19 10:22:55'),
(21, 1, 'products.create', 'Create new item: Another Test products', '2020-03-19 10:32:09', '2020-03-19 10:32:09'),
(22, 1, 'products.update', 'description: <b><p>\r\n    <img alt=\"ChaTicket - Smart WordPress Support System Plugin - 1\"\r\n         src=\"https://camo.envatousercontent.com/79b7061669c9e00393f5a990b86d8114fb6ad9a2/687474703a2f2f6368617469636b65742e70726f2f74662f30315f732e676966\">\r\n    <img alt=\"ChaTicket - Smart WordPress Support System Plugin - 2\"\r\n         src=\"https://camo.envatousercontent.com/1f83e26a325e58e76546a05898bf639c77d286d3/687474703a2f2f6368617469636b65742e70726f2f74662f30325f732e6a7067\">\r\n    <img alt=\"ChaTicket - Smart WordPress Support System Plugin - 3\"\r\n         src=\"https://camo.envatousercontent.com/17155165416fd6bc84c1336f9362b2994b45ed8d/687474703a2f2f6368617469636b65742e70726f2f74662f66656174757265732e6a7067\">\r\n</p>\r\n<p>\r\n\r\n    ChaTicket is a ticketing system you can use it to provide support for almost any type of products,\r\n    ChaTicket is a unique mix of live chat app and ticket system platform that includes all the\r\n    necessary features like ticket department, statue, auto agent assignment, mail notifications,\r\n    public and private tickets, search tickets, and it’s also support Envato items with auto purchase\r\n    code checker, ChaTicket can be used as micro service support system thanks to our design\r\n    architecture tickets are stored in custom database away from your main database.</p>\r\n\r\nChaTicket is completely restful you can access your tickets, create and answer them throw AJAX requests\r\nfrom any other domain or server, ChaTicket is not your grandpapa support system it’s the future of\r\nmaking your customers more happy !\r\n<h2 id=\"item-description__features\">Features:</h2>\r\n<ul>\r\n    <li>Unlimited Support Tickets</li>\r\n    <li>Unlimited Customers &amp; Agents</li>\r\n    <li>Unlimited Products &amp; Departments</li>\r\n    <li>Restful API</li>\r\n    <li><strong>Built with React + Redux</strong></li>\r\n    <li>Envato API Integration</li>\r\n    <li>Envato Purchases checker</li>\r\n    <li>View Envato Support Period</li>\r\n    <li>Live Notifications</li>\r\n    <li>Live FavIcon Notifications Counter</li>\r\n    <li>Mail Notifications</li>\r\n    <li>Auto Assign Agents</li>\r\n    <li><strong>WebSocket Supported</strong></li>\r\n    <li>Online/Offline indicator</li>\r\n    <li>+20 Color control</li>\r\n    <li>Live Preview Throw Customizer</li>\r\n    <li>Works with any theme</li>\r\n    <li>Works without theme</li>\r\n    <li>Built-in Login Page</li>\r\n    <li>Built-in Register Page</li>\r\n    <li>Responsive Works on Small Screens</li>\r\n    <li>Ticket Attachments</li>\r\n    <li>Fast as Rocket</li>\r\n    <li>Solid Performance</li>\r\n    <li>Translation ready</li>\r\n    <li>RTL Support</li>\r\n    <li>In depth <a href=\"http://chaticket.pro/docs/\" rel=\"nofollow\">documentation</a></li>\r\n</ul>\r\n<h2 id=\"item-description__system-requirements\">System REQUIREMENTS:</h2>\r\n<ul>\r\n    <li>PHP 5.6 ( Recommended PHP &gt; 7 )</li>\r\n    <li>WordPress 5 and above</li>\r\n    <li>Apache ( 2.4 and above ) or Nginx</li>\r\n    <li>MySQL Database</li>\r\n</ul>\r\n<h2 id=\"item-description__credits\">Credits:</h2>\r\n<ul>\r\n    <li>Roboto <a href=\"https://fonts.google.com/specimen/Roboto\" rel=\"nofollow\">Goolge font</a>\r\n    </li>\r\n    <li>Material UI <a href=\"https://material-ui.com/\" rel=\"nofollow\">React UI Framework</a>\r\n    </li>\r\n</ul>\r\n<h4 id=\"item-description__1-0-6\">1.0.6</h4>\r\n<pre>Added: New endpoint to get total number of all, open and closed tickets\r\nAdded: Total number of tickets on the app sidebar\r\nAdded: Scrollbar for the app main sidebar\r\nAdded: Support for attachment upload\r\nUpdated: Plugin translation file ( .pot )\r\nImprovement: CSS minor changes\r\n</pre>\r\n<h4 id=\"item-description__1-0-5\">1.0.5</h4>\r\n<pre>Added: Support for ChaForms ( tickets form builder )\r\nImprovement: For ticket create page\r\nUpdated: React to version 16.12.0\r\nUpdated: React-redux to version 7.1.3\r\nUpdated: Material-ui/core to version 4.8.2\r\nUpdated: Material-ui/styles to version 4.8.2\r\nUpdated: Material-ui/icons to version 4.5.1\r\n</pre>\r\n<h4 id=\"item-description__1-0-4\">1.0.4</h4>\r\n<pre>Added: HTTPS support\r\nAdded: Automatically log user to the APP if already logged to WP\r\nAdded: New Rest API endpoint to generate token\r\nimprovement: For WebSocket handle\r\n</pre>\r\n<h4 id=\"item-description__1-0-3\">1.0.3</h4>\r\n<pre>Fixed: Bug with empty WebSocket link\r\nimprovement: Minor performance optimization \r\nimprovement: Added support to WordPress 5.3 and PHP 7.4\r\n</pre>\r\n<h4 id=\"item-description__1-0-2\">1.0.2</h4>\r\n<pre>Added: Support for old browsers IE11 and IE10\r\nimprovement: Preformance Bundle file size reduced to half \r\nUpdated: redux-promise-middleware to Version 6.1.1\r\nUpdated: babel-loader to version 8.0.6\r\nUpdated: @babel/core to version 7.6.4\r\nUpdated: core-js to version 3.3.3\r\n</pre>\r\n<h4 id=\"item-description__1-0-1\">1.0.1</h4>\r\n<pre>Added: New control for agents and managers to create ticket for users\r\nAdded: RTL Support \r\nimprovement: APP Header Scale on mobile screens\r\nimprovement: Minor css changes\r\nimprovement: Security improvement against XSS injection\r\nUpdated: React to Version 16.10.2\r\nUpdated: React Dom to Version 16.10.2\r\nUpdated: React Cookie to Version 4.0.1\r\nUpdated: Material-UI Core to Version 4.5.1\r\nUpdated: Material-UI Styles to Version 4.5.0\r\nUpdated: Axios to Version 0.19.0\r\n</pre></b> change to <b><p>\r\n    \r\n    \r\n    \r\n</p>\r\n<p>\r\n\r\n    ChaTicket is a ticketing system you can use it to provide support for almost any type of products,\r\n    ChaTicket is a unique mix of live chat app and ticket system platform that includes all the\r\n    necessary features like ticket department, statue, auto agent assignment, mail notifications,\r\n    public and private tickets, search tickets, and it’s also support Envato items with auto purchase\r\n    code checker, ChaTicket can be used as micro service support system thanks to our design\r\n    architecture tickets are stored in custom database away from your main database.</p>\r\n\r\nChaTicket is completely restful you can access your tickets, create and answer them throw AJAX requests\r\nfrom any other domain or server, ChaTicket is not your grandpapa support system it’s the future of\r\nmaking your customers more happy !\r\n<h2 id=\"item-description__features\">Features:</h2>\r\n<ul>\r\n    <li>Unlimited Support Tickets</li>\r\n    <li>Unlimited Customers &amp; Agents</li>\r\n    <li>Unlimited Products &amp; Departments</li>\r\n    <li>Restful API</li>\r\n    <li><strong>Built with React + Redux</strong></li>\r\n    <li>Envato API Integration</li>\r\n    <li>Envato Purchases checker</li>\r\n    <li>View Envato Support Period</li>\r\n    <li>Live Notifications</li>\r\n    <li>Live FavIcon Notifications Counter</li>\r\n    <li>Mail Notifications</li>\r\n    <li>Auto Assign Agents</li>\r\n    <li><strong>WebSocket Supported</strong></li>\r\n    <li>Online/Offline indicator</li>\r\n    <li>+20 Color control</li>\r\n    <li>Live Preview Throw Customizer</li>\r\n    <li>Works with any theme</li>\r\n    <li>Works without theme</li>\r\n    <li>Built-in Login Page</li>\r\n    <li>Built-in Register Page</li>\r\n    <li>Responsive Works on Small Screens</li>\r\n    <li>Ticket Attachments</li>\r\n    <li>Fast as Rocket</li>\r\n    <li>Solid Performance</li>\r\n    <li>Translation ready</li>\r\n    <li>RTL Support</li>\r\n    <li>In depth <a href=\"http://chaticket.pro/docs/\" rel=\"nofollow\">documentation</a></li>\r\n</ul>\r\n<h2 id=\"item-description__system-requirements\">System REQUIREMENTS:</h2>\r\n<ul>\r\n    <li>PHP 5.6 ( Recommended PHP &gt; 7 )</li>\r\n    <li>WordPress 5 and above</li>\r\n    <li>Apache ( 2.4 and above ) or Nginx</li>\r\n    <li>MySQL Database</li>\r\n</ul>\r\n<h2 id=\"item-description__credits\">Credits:</h2>\r\n<ul>\r\n    <li>Roboto <a href=\"https://fonts.google.com/specimen/Roboto\" rel=\"nofollow\">Goolge font</a>\r\n    </li>\r\n    <li>Material UI <a href=\"https://material-ui.com/\" rel=\"nofollow\">React UI Framework</a>\r\n    </li>\r\n</ul>\r\n<h4 id=\"item-description__1-0-6\">1.0.6</h4>\r\n<pre>Added: New endpoint to get total number of all, open and closed tickets\r\nAdded: Total number of tickets on the app sidebar\r\nAdded: Scrollbar for the app main sidebar\r\nAdded: Support for attachment upload\r\nUpdated: Plugin translation file ( .pot )\r\nImprovement: CSS minor changes\r\n</pre>\r\n<h4 id=\"item-description__1-0-5\">1.0.5</h4>\r\n<pre>Added: Support for ChaForms ( tickets form builder )\r\nImprovement: For ticket create page\r\nUpdated: React to version 16.12.0\r\nUpdated: React-redux to version 7.1.3\r\nUpdated: Material-ui/core to version 4.8.2\r\nUpdated: Material-ui/styles to version 4.8.2\r\nUpdated: Material-ui/icons to version 4.5.1\r\n</pre>\r\n<h4 id=\"item-description__1-0-4\">1.0.4</h4>\r\n<pre>Added: HTTPS support\r\nAdded: Automatically log user to the APP if already logged to WP\r\nAdded: New Rest API endpoint to generate token\r\nimprovement: For WebSocket handle\r\n</pre>\r\n<h4 id=\"item-description__1-0-3\">1.0.3</h4>\r\n<pre>Fixed: Bug with empty WebSocket link\r\nimprovement: Minor performance optimization \r\nimprovement: Added support to WordPress 5.3 and PHP 7.4\r\n</pre>\r\n<h4 id=\"item-description__1-0-2\">1.0.2</h4>\r\n<pre>Added: Support for old browsers IE11 and IE10\r\nimprovement: Preformance Bundle file size reduced to half \r\nUpdated: redux-promise-middleware to Version 6.1.1\r\nUpdated: babel-loader to version 8.0.6\r\nUpdated: @babel/core to version 7.6.4\r\nUpdated: core-js to version 3.3.3\r\n</pre>\r\n<h4 id=\"item-description__1-0-1\">1.0.1</h4>\r\n<pre>Added: New control for agents and managers to create ticket for users\r\nAdded: RTL Support \r\nimprovement: APP Header Scale on mobile screens\r\nimprovement: Minor css changes\r\nimprovement: Security improvement against XSS injection\r\nUpdated: React to Version 16.10.2\r\nUpdated: React Dom to Version 16.10.2\r\nUpdated: React Cookie to Version 4.0.1\r\nUpdated: Material-UI Core to Version 4.5.1\r\nUpdated: Material-UI Styles to Version 4.5.0\r\nUpdated: Axios to Version 0.19.0\r\n</pre></b>', '2020-03-25 12:21:48', '2020-03-25 12:21:48');
INSERT INTO `event_logs` (`id`, `user_id`, `end_point`, `changes`, `created_at`, `updated_at`) VALUES
(23, 1, 'products.update', 'description: <b><p>\r\n    \r\n    \r\n    \r\n</p>\r\n<p>\r\n\r\n    ChaTicket is a ticketing system you can use it to provide support for almost any type of products,\r\n    ChaTicket is a unique mix of live chat app and ticket system platform that includes all the\r\n    necessary features like ticket department, statue, auto agent assignment, mail notifications,\r\n    public and private tickets, search tickets, and it’s also support Envato items with auto purchase\r\n    code checker, ChaTicket can be used as micro service support system thanks to our design\r\n    architecture tickets are stored in custom database away from your main database.</p>\r\n\r\nChaTicket is completely restful you can access your tickets, create and answer them throw AJAX requests\r\nfrom any other domain or server, ChaTicket is not your grandpapa support system it’s the future of\r\nmaking your customers more happy !\r\n<h2 id=\"item-description__features\">Features:</h2>\r\n<ul>\r\n    <li>Unlimited Support Tickets</li>\r\n    <li>Unlimited Customers &amp; Agents</li>\r\n    <li>Unlimited Products &amp; Departments</li>\r\n    <li>Restful API</li>\r\n    <li><strong>Built with React + Redux</strong></li>\r\n    <li>Envato API Integration</li>\r\n    <li>Envato Purchases checker</li>\r\n    <li>View Envato Support Period</li>\r\n    <li>Live Notifications</li>\r\n    <li>Live FavIcon Notifications Counter</li>\r\n    <li>Mail Notifications</li>\r\n    <li>Auto Assign Agents</li>\r\n    <li><strong>WebSocket Supported</strong></li>\r\n    <li>Online/Offline indicator</li>\r\n    <li>+20 Color control</li>\r\n    <li>Live Preview Throw Customizer</li>\r\n    <li>Works with any theme</li>\r\n    <li>Works without theme</li>\r\n    <li>Built-in Login Page</li>\r\n    <li>Built-in Register Page</li>\r\n    <li>Responsive Works on Small Screens</li>\r\n    <li>Ticket Attachments</li>\r\n    <li>Fast as Rocket</li>\r\n    <li>Solid Performance</li>\r\n    <li>Translation ready</li>\r\n    <li>RTL Support</li>\r\n    <li>In depth <a href=\"http://chaticket.pro/docs/\" rel=\"nofollow\">documentation</a></li>\r\n</ul>\r\n<h2 id=\"item-description__system-requirements\">System REQUIREMENTS:</h2>\r\n<ul>\r\n    <li>PHP 5.6 ( Recommended PHP &gt; 7 )</li>\r\n    <li>WordPress 5 and above</li>\r\n    <li>Apache ( 2.4 and above ) or Nginx</li>\r\n    <li>MySQL Database</li>\r\n</ul>\r\n<h2 id=\"item-description__credits\">Credits:</h2>\r\n<ul>\r\n    <li>Roboto <a href=\"https://fonts.google.com/specimen/Roboto\" rel=\"nofollow\">Goolge font</a>\r\n    </li>\r\n    <li>Material UI <a href=\"https://material-ui.com/\" rel=\"nofollow\">React UI Framework</a>\r\n    </li>\r\n</ul>\r\n<h4 id=\"item-description__1-0-6\">1.0.6</h4>\r\n<pre>Added: New endpoint to get total number of all, open and closed tickets\r\nAdded: Total number of tickets on the app sidebar\r\nAdded: Scrollbar for the app main sidebar\r\nAdded: Support for attachment upload\r\nUpdated: Plugin translation file ( .pot )\r\nImprovement: CSS minor changes\r\n</pre>\r\n<h4 id=\"item-description__1-0-5\">1.0.5</h4>\r\n<pre>Added: Support for ChaForms ( tickets form builder )\r\nImprovement: For ticket create page\r\nUpdated: React to version 16.12.0\r\nUpdated: React-redux to version 7.1.3\r\nUpdated: Material-ui/core to version 4.8.2\r\nUpdated: Material-ui/styles to version 4.8.2\r\nUpdated: Material-ui/icons to version 4.5.1\r\n</pre>\r\n<h4 id=\"item-description__1-0-4\">1.0.4</h4>\r\n<pre>Added: HTTPS support\r\nAdded: Automatically log user to the APP if already logged to WP\r\nAdded: New Rest API endpoint to generate token\r\nimprovement: For WebSocket handle\r\n</pre>\r\n<h4 id=\"item-description__1-0-3\">1.0.3</h4>\r\n<pre>Fixed: Bug with empty WebSocket link\r\nimprovement: Minor performance optimization \r\nimprovement: Added support to WordPress 5.3 and PHP 7.4\r\n</pre>\r\n<h4 id=\"item-description__1-0-2\">1.0.2</h4>\r\n<pre>Added: Support for old browsers IE11 and IE10\r\nimprovement: Preformance Bundle file size reduced to half \r\nUpdated: redux-promise-middleware to Version 6.1.1\r\nUpdated: babel-loader to version 8.0.6\r\nUpdated: @babel/core to version 7.6.4\r\nUpdated: core-js to version 3.3.3\r\n</pre>\r\n<h4 id=\"item-description__1-0-1\">1.0.1</h4>\r\n<pre>Added: New control for agents and managers to create ticket for users\r\nAdded: RTL Support \r\nimprovement: APP Header Scale on mobile screens\r\nimprovement: Minor css changes\r\nimprovement: Security improvement against XSS injection\r\nUpdated: React to Version 16.10.2\r\nUpdated: React Dom to Version 16.10.2\r\nUpdated: React Cookie to Version 4.0.1\r\nUpdated: Material-UI Core to Version 4.5.1\r\nUpdated: Material-UI Styles to Version 4.5.0\r\nUpdated: Axios to Version 0.19.0\r\n</pre></b> change to <b><p>\r\n    \r\n    \r\n    \r\n</p>\r\n<p>\r\n\r\n    </p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/45.jpg\"><br></p><p>ChaTicket is a ticketing system you can use it to provide support for almost any type of products,\r\n    ChaTicket is a unique mix of live chat app and ticket system platform that includes all the\r\n    necessary features like ticket department, statue, auto agent assignment, mail notifications,\r\n    public and private tickets, search tickets, and it’s also support Envato items with auto purchase\r\n    code checker, ChaTicket can be used as micro service support system thanks to our design\r\n    architecture tickets are stored in custom database away from your main database.</p>\r\n\r\nChaTicket is completely restful you can access your tickets, create and answer them throw AJAX requests\r\nfrom any other domain or server, ChaTicket is not your grandpapa support system it’s the future of\r\nmaking your customers more happy !\r\n<h2 id=\"item-description__features\">Features:</h2>\r\n<ul>\r\n    <li>Unlimited Support Tickets</li>\r\n    <li>Unlimited Customers &amp; Agents</li>\r\n    <li>Unlimited Products &amp; Departments</li>\r\n    <li>Restful API</li>\r\n    <li><strong>Built with React + Redux</strong></li>\r\n    <li>Envato API Integration</li>\r\n    <li>Envato Purchases checker</li>\r\n    <li>View Envato Support Period</li>\r\n    <li>Live Notifications</li>\r\n    <li>Live FavIcon Notifications Counter</li>\r\n    <li>Mail Notifications</li>\r\n    <li>Auto Assign Agents</li>\r\n    <li><strong>WebSocket Supported</strong></li>\r\n    <li>Online/Offline indicator</li>\r\n    <li>+20 Color control</li>\r\n    <li>Live Preview Throw Customizer</li>\r\n    <li>Works with any theme</li>\r\n    <li>Works without theme</li>\r\n    <li>Built-in Login Page</li>\r\n    <li>Built-in Register Page</li>\r\n    <li>Responsive Works on Small Screens</li>\r\n    <li>Ticket Attachments</li>\r\n    <li>Fast as Rocket</li>\r\n    <li>Solid Performance</li>\r\n    <li>Translation ready</li>\r\n    <li>RTL Support</li>\r\n    <li>In depth <a href=\"http://chaticket.pro/docs/\" rel=\"nofollow\">documentation</a></li>\r\n</ul>\r\n<h2 id=\"item-description__system-requirements\">System REQUIREMENTS:</h2>\r\n<ul>\r\n    <li>PHP 5.6 ( Recommended PHP &gt; 7 )</li>\r\n    <li>WordPress 5 and above</li>\r\n    <li>Apache ( 2.4 and above ) or Nginx</li>\r\n    <li>MySQL Database</li>\r\n</ul>\r\n<h2 id=\"item-description__credits\">Credits:</h2>\r\n<ul>\r\n    <li>Roboto <a href=\"https://fonts.google.com/specimen/Roboto\" rel=\"nofollow\">Goolge font</a>\r\n    </li>\r\n    <li>Material UI <a href=\"https://material-ui.com/\" rel=\"nofollow\">React UI Framework</a>\r\n    </li>\r\n</ul>\r\n<h4 id=\"item-description__1-0-6\">1.0.6</h4>\r\n<pre>Added: New endpoint to get total number of all, open and closed tickets\r\nAdded: Total number of tickets on the app sidebar\r\nAdded: Scrollbar for the app main sidebar\r\nAdded: Support for attachment upload\r\nUpdated: Plugin translation file ( .pot )\r\nImprovement: CSS minor changes\r\n</pre>\r\n<h4 id=\"item-description__1-0-5\">1.0.5</h4>\r\n<pre>Added: Support for ChaForms ( tickets form builder )\r\nImprovement: For ticket create page\r\nUpdated: React to version 16.12.0\r\nUpdated: React-redux to version 7.1.3\r\nUpdated: Material-ui/core to version 4.8.2\r\nUpdated: Material-ui/styles to version 4.8.2\r\nUpdated: Material-ui/icons to version 4.5.1\r\n</pre>\r\n<h4 id=\"item-description__1-0-4\">1.0.4</h4>\r\n<pre>Added: HTTPS support\r\nAdded: Automatically log user to the APP if already logged to WP\r\nAdded: New Rest API endpoint to generate token\r\nimprovement: For WebSocket handle\r\n</pre>\r\n<h4 id=\"item-description__1-0-3\">1.0.3</h4>\r\n<pre>Fixed: Bug with empty WebSocket link\r\nimprovement: Minor performance optimization \r\nimprovement: Added support to WordPress 5.3 and PHP 7.4\r\n</pre>\r\n<h4 id=\"item-description__1-0-2\">1.0.2</h4>\r\n<pre>Added: Support for old browsers IE11 and IE10\r\nimprovement: Preformance Bundle file size reduced to half \r\nUpdated: redux-promise-middleware to Version 6.1.1\r\nUpdated: babel-loader to version 8.0.6\r\nUpdated: @babel/core to version 7.6.4\r\nUpdated: core-js to version 3.3.3\r\n</pre>\r\n<h4 id=\"item-description__1-0-1\">1.0.1</h4>\r\n<pre>Added: New control for agents and managers to create ticket for users\r\nAdded: RTL Support \r\nimprovement: APP Header Scale on mobile screens\r\nimprovement: Minor css changes\r\nimprovement: Security improvement against XSS injection\r\nUpdated: React to Version 16.10.2\r\nUpdated: React Dom to Version 16.10.2\r\nUpdated: React Cookie to Version 4.0.1\r\nUpdated: Material-UI Core to Version 4.5.1\r\nUpdated: Material-UI Styles to Version 4.5.0\r\nUpdated: Axios to Version 0.19.0\r\n<img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/44.jpg\"></pre></b>', '2020-03-25 17:49:21', '2020-03-25 17:49:21'),
(24, 1, 'products.update', 'description: <b><p>\r\n    \r\n    \r\n    \r\n</p>\r\n<p>\r\n\r\n    </p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/45.jpg\"><br></p><p>ChaTicket is a ticketing system you can use it to provide support for almost any type of products,\r\n    ChaTicket is a unique mix of live chat app and ticket system platform that includes all the\r\n    necessary features like ticket department, statue, auto agent assignment, mail notifications,\r\n    public and private tickets, search tickets, and it’s also support Envato items with auto purchase\r\n    code checker, ChaTicket can be used as micro service support system thanks to our design\r\n    architecture tickets are stored in custom database away from your main database.</p>\r\n\r\nChaTicket is completely restful you can access your tickets, create and answer them throw AJAX requests\r\nfrom any other domain or server, ChaTicket is not your grandpapa support system it’s the future of\r\nmaking your customers more happy !\r\n<h2 id=\"item-description__features\">Features:</h2>\r\n<ul>\r\n    <li>Unlimited Support Tickets</li>\r\n    <li>Unlimited Customers &amp; Agents</li>\r\n    <li>Unlimited Products &amp; Departments</li>\r\n    <li>Restful API</li>\r\n    <li><strong>Built with React + Redux</strong></li>\r\n    <li>Envato API Integration</li>\r\n    <li>Envato Purchases checker</li>\r\n    <li>View Envato Support Period</li>\r\n    <li>Live Notifications</li>\r\n    <li>Live FavIcon Notifications Counter</li>\r\n    <li>Mail Notifications</li>\r\n    <li>Auto Assign Agents</li>\r\n    <li><strong>WebSocket Supported</strong></li>\r\n    <li>Online/Offline indicator</li>\r\n    <li>+20 Color control</li>\r\n    <li>Live Preview Throw Customizer</li>\r\n    <li>Works with any theme</li>\r\n    <li>Works without theme</li>\r\n    <li>Built-in Login Page</li>\r\n    <li>Built-in Register Page</li>\r\n    <li>Responsive Works on Small Screens</li>\r\n    <li>Ticket Attachments</li>\r\n    <li>Fast as Rocket</li>\r\n    <li>Solid Performance</li>\r\n    <li>Translation ready</li>\r\n    <li>RTL Support</li>\r\n    <li>In depth <a href=\"http://chaticket.pro/docs/\" rel=\"nofollow\">documentation</a></li>\r\n</ul>\r\n<h2 id=\"item-description__system-requirements\">System REQUIREMENTS:</h2>\r\n<ul>\r\n    <li>PHP 5.6 ( Recommended PHP &gt; 7 )</li>\r\n    <li>WordPress 5 and above</li>\r\n    <li>Apache ( 2.4 and above ) or Nginx</li>\r\n    <li>MySQL Database</li>\r\n</ul>\r\n<h2 id=\"item-description__credits\">Credits:</h2>\r\n<ul>\r\n    <li>Roboto <a href=\"https://fonts.google.com/specimen/Roboto\" rel=\"nofollow\">Goolge font</a>\r\n    </li>\r\n    <li>Material UI <a href=\"https://material-ui.com/\" rel=\"nofollow\">React UI Framework</a>\r\n    </li>\r\n</ul>\r\n<h4 id=\"item-description__1-0-6\">1.0.6</h4>\r\n<pre>Added: New endpoint to get total number of all, open and closed tickets\r\nAdded: Total number of tickets on the app sidebar\r\nAdded: Scrollbar for the app main sidebar\r\nAdded: Support for attachment upload\r\nUpdated: Plugin translation file ( .pot )\r\nImprovement: CSS minor changes\r\n</pre>\r\n<h4 id=\"item-description__1-0-5\">1.0.5</h4>\r\n<pre>Added: Support for ChaForms ( tickets form builder )\r\nImprovement: For ticket create page\r\nUpdated: React to version 16.12.0\r\nUpdated: React-redux to version 7.1.3\r\nUpdated: Material-ui/core to version 4.8.2\r\nUpdated: Material-ui/styles to version 4.8.2\r\nUpdated: Material-ui/icons to version 4.5.1\r\n</pre>\r\n<h4 id=\"item-description__1-0-4\">1.0.4</h4>\r\n<pre>Added: HTTPS support\r\nAdded: Automatically log user to the APP if already logged to WP\r\nAdded: New Rest API endpoint to generate token\r\nimprovement: For WebSocket handle\r\n</pre>\r\n<h4 id=\"item-description__1-0-3\">1.0.3</h4>\r\n<pre>Fixed: Bug with empty WebSocket link\r\nimprovement: Minor performance optimization \r\nimprovement: Added support to WordPress 5.3 and PHP 7.4\r\n</pre>\r\n<h4 id=\"item-description__1-0-2\">1.0.2</h4>\r\n<pre>Added: Support for old browsers IE11 and IE10\r\nimprovement: Preformance Bundle file size reduced to half \r\nUpdated: redux-promise-middleware to Version 6.1.1\r\nUpdated: babel-loader to version 8.0.6\r\nUpdated: @babel/core to version 7.6.4\r\nUpdated: core-js to version 3.3.3\r\n</pre>\r\n<h4 id=\"item-description__1-0-1\">1.0.1</h4>\r\n<pre>Added: New control for agents and managers to create ticket for users\r\nAdded: RTL Support \r\nimprovement: APP Header Scale on mobile screens\r\nimprovement: Minor css changes\r\nimprovement: Security improvement against XSS injection\r\nUpdated: React to Version 16.10.2\r\nUpdated: React Dom to Version 16.10.2\r\nUpdated: React Cookie to Version 4.0.1\r\nUpdated: Material-UI Core to Version 4.5.1\r\nUpdated: Material-UI Styles to Version 4.5.0\r\nUpdated: Axios to Version 0.19.0\r\n<img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/44.jpg\"></pre></b> change to <b><br></b>', '2020-03-26 08:07:42', '2020-03-26 08:07:42'),
(25, 1, 'products.update', 'description: <b><br></b> change to <b><p><img style=\"width: 525px;\" src=\"http://helpdesk.loc/storage/media/products/3.png\"><br></p></b>', '2020-03-26 10:11:18', '2020-03-26 10:11:18'),
(26, 1, 'products.update', '', '2020-03-26 13:02:58', '2020-03-26 13:02:58'),
(27, 1, 'products.update', 'description: <b><p>The quik brown fox jumps over the lazy dogs</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/1.jpg\"></p><p><br></p><p>this is second photo</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/2.jpg\"></p><p><br></p><p>This is third photo</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/3.jpg\"><br></p></b> change to <b><p>The quik brown fox jumps over the lazy dogs</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/1.jpg\"></p><p><br></p><p>this is second photo</p><p></p><p><br></p><p>This is third photo</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/3.jpg\"><br></p></b>', '2020-03-26 13:47:57', '2020-03-26 13:47:57'),
(28, 1, 'products.update', 'description: <b><p>The quik brown fox jumps over the lazy dogs</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/1.jpg\"></p><p><br></p><p>this is second photo</p><p></p><p><br></p><p>This is third photo</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/3.jpg\"><br></p></b> change to <b><p>1.</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/4.jpg\"></p><p><br></p><p>2.</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/5.jpg\"></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b>', '2020-03-26 13:50:23', '2020-03-26 13:50:23'),
(29, 1, 'products.update', '', '2020-03-26 13:58:41', '2020-03-26 13:58:41'),
(30, 1, 'products.update', 'description: <b><p>1.</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/4.jpg\"></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b> change to <b><p>1.</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/4.jpg\"></p><p><br></p><p>2.</p><p></p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/7.jpg\"><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b>', '2020-03-26 13:58:54', '2020-03-26 13:58:54'),
(31, 1, 'products.update', 'description: <b><p>1.</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/4.jpg\"></p><p><br></p><p>2.</p><p></p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/7.jpg\"><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b> change to <b><p>1.</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/4.jpg\"></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b>', '2020-03-26 13:59:36', '2020-03-26 13:59:36'),
(32, 1, 'products.update', 'description: <b><p>1.</p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/4.jpg\"></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b>', '2020-03-26 14:00:39', '2020-03-26 14:00:39'),
(33, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/6.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><br></p></b>', '2020-03-26 14:00:58', '2020-03-26 14:00:58'),
(34, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/8.jpg\"><br></p><p>2.</p><p></p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/9.jpg\"><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/10.jpg\"><br></p></b>', '2020-03-26 14:01:31', '2020-03-26 14:01:31'),
(35, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/8.jpg\"><br></p><p>2.</p><p></p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/9.jpg\"><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/10.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/8.jpg\"><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/10.jpg\"><br></p></b>', '2020-03-26 14:03:49', '2020-03-26 14:03:49'),
(36, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/8.jpg\"><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/10.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><img style=\"width: 688px;\" src=\"http://helpdesk.loc/storage/media/products/10.jpg\"><br></p></b>', '2020-03-26 14:05:29', '2020-03-26 14:05:29'),
(37, 1, 'products.update', '', '2020-03-26 14:08:53', '2020-03-26 14:08:53'),
(38, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/11.jpg\"><br></p><p>2.</p><p></p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/12.jpg\"><br></p><p>3.</p><p><img style=\"width: 354px;\" src=\"http://helpdesk.loc/storage/media/products/13.jpg\"><br></p></b>', '2020-03-26 14:09:32', '2020-03-26 14:09:32'),
(39, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/11.jpg\"><br></p><p>2.</p><p></p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/12.jpg\"><br></p><p>3.</p><p><img style=\"width: 354px;\" src=\"http://helpdesk.loc/storage/media/products/13.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/11.jpg\"><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><br></p></b>', '2020-03-26 14:09:59', '2020-03-26 14:09:59'),
(40, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/11.jpg\"><br></p><p>2.</p><p></p><p><br></p><p>3.</p><p><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/11.jpg\"><br></p><p>2.</p><p><img style=\"width: 772.25px;\" src=\"http://helpdesk.loc/storage/media/products/14.jpg\"></p><p>3.</p><p><img style=\"width: 512px;\" src=\"http://helpdesk.loc/storage/media/products/15.png\"><br></p></b>', '2020-03-26 14:11:32', '2020-03-26 14:11:32'),
(41, 1, 'products.update', '', '2020-03-26 14:14:34', '2020-03-26 14:14:34'),
(42, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/11.jpg\"><br></p><p>2.</p><p></p><p>3.</p><p><br></p></b> change to <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p>3.</p><p><br></p></b>', '2020-03-26 14:14:41', '2020-03-26 14:14:41'),
(43, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><br></p><p>2.</p><p></p><p>3.</p><p><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/16.jpg\"><br></p><p>2.</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/17.jpg\"><br></p><p></p><p>3.</p><p><img style=\"width: 259px;\" src=\"http://helpdesk.loc/storage/media/products/18.jpg\"><br></p></b>', '2020-03-26 14:15:38', '2020-03-26 14:15:38'),
(44, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/16.jpg\"><br></p><p>2.</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/17.jpg\"><br></p><p></p><p>3.</p><p><img style=\"width: 259px;\" src=\"http://helpdesk.loc/storage/media/products/18.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/16.jpg\"><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><img style=\"width: 259px;\" src=\"http://helpdesk.loc/storage/media/products/18.jpg\"><br></p></b>', '2020-03-26 14:16:19', '2020-03-26 14:16:19'),
(45, 1, 'products.update', '', '2020-03-26 14:16:47', '2020-03-26 14:16:47'),
(46, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/16.jpg\"><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><img style=\"width: 259px;\" src=\"http://helpdesk.loc/storage/media/products/18.jpg\"><br></p></b> change to <b><p>1.</p><p></p><p><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><br></p></b>', '2020-03-26 14:19:27', '2020-03-26 14:19:27'),
(47, 1, 'products.update', '', '2020-03-26 14:22:06', '2020-03-26 14:22:06'),
(48, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/19.jpg\"><br></p><p>2.</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/20.jpg\"><br></p><p></p><p>3.</p><p><img style=\"width: 590px;\" src=\"http://helpdesk.loc/storage/media/products/22.png\"><br></p></b>', '2020-03-26 14:33:46', '2020-03-26 14:33:46'),
(49, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/19.jpg\"><br></p><p>2.</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/products/20.jpg\"><br></p><p></p><p>3.</p><p><img style=\"width: 590px;\" src=\"http://helpdesk.loc/storage/media/products/22.png\"><br></p></b> change to <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/19.jpg\"><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><img style=\"width: 590px;\" src=\"http://helpdesk.loc/storage/media/products/22.png\"><br></p></b>', '2020-03-26 14:34:24', '2020-03-26 14:34:24'),
(50, 1, 'products.update', 'description: <b><p>1.</p><p></p><p><img style=\"width: 225px;\" src=\"http://helpdesk.loc/storage/media/products/19.jpg\"><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><img style=\"width: 590px;\" src=\"http://helpdesk.loc/storage/media/products/22.png\"><br></p></b> change to <b><p>1.</p><p></p><p><br></p><p>2.</p><p><br></p><p></p><p>3.</p><p><br></p></b>', '2020-03-27 09:45:07', '2020-03-27 09:45:07'),
(51, 1, 'tickets.create', '', '2020-03-27 10:37:20', '2020-03-27 10:37:20'),
(52, 1, 'modules.create', 'Create new item: Dashboard', '2020-04-01 12:04:19', '2020-04-01 12:04:19'),
(53, 1, 'groups.create', 'Create new item: Pricing', '2020-07-31 03:50:37', '2020-07-31 03:50:37'),
(54, 1, 'orders.update', 'transaction_id: <b>5f2f9770031b2</b> change to <b>5f2f9770031b23</b>', '2020-08-09 07:34:49', '2020-08-09 07:34:49'),
(55, 1, 'orders.update', 'status: <b>Processing</b> change to <b>Completed</b>, transaction_id: <b>5f2f9770031b23</b> change to <b>5f2f9770031b2</b>', '2020-08-09 07:35:05', '2020-08-09 07:35:05'),
(56, 1, 'orders.destroy', '', '2020-08-09 07:35:27', '2020-08-09 07:35:27'),
(57, 1, 'orders.update', 'status: <b>Processing</b> change to <b>Completed</b>', '2020-08-09 07:48:37', '2020-08-09 07:48:37'),
(58, 1, 'orders.update', 'status: <b>Completed</b> change to <b>Processing</b>', '2020-08-09 07:48:47', '2020-08-09 07:48:47'),
(59, 1, 'orders.update', 'status: <b>Processing</b> change to <b>Completed</b>', '2020-08-09 09:04:20', '2020-08-09 09:04:20'),
(60, 1, 'orders.update', 'status: <b>Processing</b> change to <b>Completed</b>', '2020-08-09 09:07:03', '2020-08-09 09:07:03'),
(61, 1, 'orders.update', 'status: <b>Processing</b> change to <b>Completed</b>', '2020-08-09 09:27:27', '2020-08-09 09:27:27'),
(62, 1, 'orders.update', 'status: <b>Completed</b> change to <b>Processing</b>', '2020-08-09 09:28:31', '2020-08-09 09:28:31'),
(63, 1, 'orders.update', 'status: <b>Processing</b> change to <b>Completed</b>', '2020-08-09 09:42:46', '2020-08-09 09:42:46'),
(64, 1, 'products.destroy', 'Delete item: Another Test products', '2020-08-16 09:22:39', '2020-08-16 09:22:39'),
(65, 1, 'products.destroy', 'Delete item: Innolytic Android Woocommerce', '2020-08-16 09:22:44', '2020-08-16 09:22:44'),
(66, 1, 'products.destroy', 'Delete item: Cattle Management System', '2020-08-16 09:22:48', '2020-08-16 09:22:48'),
(67, 1, 'products.destroy', 'Delete item: Helpdesk and  Support Tiket System', '2020-08-16 09:23:39', '2020-08-16 09:23:39'),
(68, 1, 'products.destroy', 'Delete item: Parikkha', '2020-08-16 09:24:48', '2020-08-16 09:24:48'),
(69, 1, 'products.destroy', 'Delete item: Mobile Price', '2020-08-16 09:25:52', '2020-08-16 09:25:52'),
(70, 1, 'products.destroy', 'Delete item: Garage Master', '2020-08-16 09:26:16', '2020-08-16 09:26:16'),
(71, 1, 'products.create', 'Create new item: Storola Fashion', '2020-08-16 09:41:48', '2020-08-16 09:41:48'),
(72, 1, 'products.create', 'Create new item: Storola Furniture', '2020-08-16 09:53:01', '2020-08-16 09:53:01'),
(73, 1, 'products.create', 'Create new item: Storola Fashion', '2020-08-16 09:55:53', '2020-08-16 09:55:53'),
(74, 1, 'products.create', 'Create new item: Storola Furniture', '2020-08-16 09:57:04', '2020-08-16 09:57:04'),
(75, 1, 'products.create', 'Create new item: Storola Grocery', '2020-08-16 10:02:01', '2020-08-16 10:02:01'),
(76, 1, 'products.create', 'Create new item: Storola Eye Glass', '2020-08-16 10:02:38', '2020-08-16 10:02:38'),
(77, 1, 'products.create', 'Create new item: Storola Jewelry', '2020-08-16 10:05:10', '2020-08-16 10:05:10'),
(78, 1, 'products.create', 'Create new item: Storola Organic', '2020-08-16 10:05:48', '2020-08-16 10:05:48'),
(79, 1, 'products.create', 'Create new item: Storola Shoe', '2020-08-16 10:06:24', '2020-08-16 10:06:24'),
(80, 1, 'products.create', 'Create new item: Storola Watch', '2020-08-16 10:06:53', '2020-08-16 10:06:53'),
(81, 1, 'products.create', 'Create new item: Storola Auto Parts', '2020-08-16 10:07:35', '2020-08-16 10:07:35'),
(82, 1, 'products.create', 'Create new item: Storola Electronics One', '2020-08-16 10:09:12', '2020-08-16 10:09:12'),
(83, 1, 'products.create', 'Create new item: Storola Electronics Two', '2020-08-16 10:09:37', '2020-08-16 10:09:37'),
(84, 1, 'products.create', 'Create new item: Storola Electronics Three', '2020-08-16 10:10:09', '2020-08-16 10:10:09'),
(85, 1, 'products.create', 'Create new item: Storola Electronics Four', '2020-08-16 10:13:43', '2020-08-16 10:13:43'),
(86, 1, 'products.create', 'Create new item: Storola Electronics Five', '2020-08-16 10:14:43', '2020-08-16 10:14:43'),
(87, 1, 'products.create', 'Create new item: Storola Electronics Six', '2020-08-16 10:15:18', '2020-08-16 10:15:18'),
(88, 1, 'products.create', 'Create new item: Storola Electronics Seven', '2020-08-16 10:15:48', '2020-08-16 10:15:48'),
(89, 1, 'products.update', 'short_description: <b>Woocommerce them for your store</b> change to <b>Woocommerce theme for your store</b>', '2020-08-16 10:18:55', '2020-08-16 10:18:55'),
(90, 1, 'products.update', '', '2020-08-16 10:19:23', '2020-08-16 10:19:23'),
(91, 1, 'products.update', 'title: <b>Storola Furniture</b> change to <b>Woocommerce Furniture</b>, short_description: <b>Woocommerce theme for your store</b> change to <b>Woocommerce Fashion is a beautiful, responsive and customizable theme</b>', '2020-08-16 10:28:54', '2020-08-16 10:28:54'),
(92, 1, 'products.update', 'title: <b>Woocommerce Furniture</b> change to <b>WC Furniture</b>, short_description: <b>Woocommerce Fashion is a beautiful, responsive and customizable theme</b> change to <b>WC Furniture is a beautiful, responsive and customizable theme</b>', '2020-08-16 10:29:30', '2020-08-16 10:29:30'),
(93, 1, 'products.update', 'short_description: <b>WC Furniture is a beautiful, responsive and customizable theme</b> change to <b>WC Furniture is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:32:24', '2020-08-16 10:32:24'),
(94, 1, 'products.update', 'title: <b>Storola Fashion</b> change to <b>WC Fashion</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Fashion is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:33:40', '2020-08-16 10:33:40'),
(95, 1, 'products.update', 'title: <b>Storola Electronics Six</b> change to <b>WC Electronics Six</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics Six is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:34:15', '2020-08-16 10:34:15'),
(96, 1, 'products.update', 'title: <b>Storola Electronics Seven</b> change to <b>WC Electronics Seven</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics Seven is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:34:49', '2020-08-16 10:34:49'),
(97, 1, 'products.update', 'title: <b>Storola Electronics Five</b> change to <b>WC Electronics Five</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics Five is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:35:51', '2020-08-16 10:35:51'),
(98, 1, 'products.update', 'title: <b>Storola Electronics Four</b> change to <b>WC Electronics Four</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics Four is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:36:45', '2020-08-16 10:36:45'),
(99, 1, 'products.update', 'title: <b>Storola Electronics Three</b> change to <b>WC Electronics Three</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics Three is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:37:29', '2020-08-16 10:37:29'),
(100, 1, 'products.update', 'title: <b>Storola Electronics One</b> change to <b>WC Electronics One</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics One is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:37:55', '2020-08-16 10:37:55'),
(101, 1, 'products.update', 'title: <b>Storola Electronics Two</b> change to <b>WC Electronics Two</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Electronics Two is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:39:31', '2020-08-16 10:39:31'),
(102, 1, 'products.update', 'title: <b>Storola Auto Parts</b> change to <b>WC Auto Parts</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Auto Parts is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:40:05', '2020-08-16 10:40:05'),
(103, 1, 'products.update', 'title: <b>Storola Shoe</b> change to <b>WC Shoe</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Shoe is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:40:31', '2020-08-16 10:40:31'),
(104, 1, 'products.update', 'title: <b>Storola Watch</b> change to <b>WC Watch</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Watch is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:43:04', '2020-08-16 10:43:04'),
(105, 1, 'products.update', 'title: <b>Storola Jewelry</b> change to <b>WC Jewelry</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Jewelry is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:43:40', '2020-08-16 10:43:40'),
(106, 1, 'products.update', 'title: <b>Storola Organic</b> change to <b>WC Organic</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Organic is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:44:45', '2020-08-16 10:44:45'),
(107, 1, 'products.update', 'title: <b>Storola Grocery</b> change to <b>WC Grocery</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Grocery is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:45:44', '2020-08-16 10:45:44'),
(108, 1, 'products.update', 'title: <b>Storola Eye Glass</b> change to <b>WC Eye Glass</b>, short_description: <b>Woocommerce them for your store</b> change to <b>WC Eye Glass is a beautiful, responsive and elementor supported customizable theme</b>', '2020-08-16 10:46:21', '2020-08-16 10:46:21'),
(109, 1, 'products.update', 'description: <b><ul>\r\n				<li>\r\n					Countless themes:\r\n					Pick the theme that works for you. WooCommerce is designed\r\n					to work seamlessly with themes you know and love, including\r\n					each year’s default WordPress themes and many popular themes\r\n					from around the web.\r\n				</li>\r\n				<li>\r\n					Unrestricted customization:\r\n					Edit any part of your site – from the homepage layout to the\r\n					buy button – to stand out from the crowd.\r\n				</li>\r\n				<li>\r\n					Built-in blogging:\r\n					Publish great content and build a strong brand. Use\r\n					WooCommerce to integrate eCommerce with the world\'s most\r\n					popular content publishing platform.\r\n				</li>\r\n				<li>\r\n					Embed products, checkout and more on any page:\r\n					Use shortcodes to add your products to blog posts, or create\r\n					landing pages that go straight to checkout.\r\n				</li>\r\n				<li>\r\n					\r\n						Categories, tags and attributes make products easier to\r\n						find:\r\n					\r\n					Help customers find what they want by adding tags to\r\n					describe a product. Add attributes like size so customers\r\n					can search for items most relevant to them.\r\n				</li>\r\n				<li>\r\n					Product ratings and reviews:\r\n					Show customer feedback directly on the product page,\r\n					including a ‘Verified Owner’ label.\r\n				</li>\r\n				<li>\r\n					Customize for your location:\r\n					Set the currency, language and measurement units (inches,\r\n					centimeters or anything else) that’s right for you.\r\n				</li>\r\n				<li>\r\n					Product sorting and filtering:\r\n					Let customers sort products by popularity, newness, rating,\r\n					price or attribute to find the right fit.\r\n				</li>\r\n				<li>\r\n					Unlimited images and galleries:\r\n					Include any number of photos to show off your products. Set\r\n					a featured image to highlight the best photo site-wide.\r\n				</li>\r\n				<li>\r\n					Unlimited products:\r\n					Add as many products as you want to sell - your only\r\n					restriction is your inventory.&nbsp; &nbsp; &nbsp;</li></ul></b> change to <b><ul>\r\n				<li><div id=\"features\" class=\"review-page__header\"><h3>Overview of WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul></div></li></ul></b>', '2020-08-16 10:51:50', '2020-08-16 10:51:50'),
(110, 1, 'products.update', 'description: <b><ul>\r\n				<li><div id=\"features\" class=\"review-page__header\"><h3>Overview of WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul></div></li></ul></b> change to <b><ul>\r\n				<li><div id=\"features\" class=\"review-page__header\"><h3>WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul></div></li></ul></b>', '2020-08-16 10:53:03', '2020-08-16 10:53:03'),
(111, 1, 'products.update', 'description: <b><ul>\r\n				<li><div id=\"features\" class=\"review-page__header\"><h3>WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul></div></li></ul></b> change to <b><ul>\r\n				<li><div id=\"features\" class=\"review-page__header\"><h3>Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul></div></li></ul></b>', '2020-08-16 10:53:50', '2020-08-16 10:53:50'),
(112, 1, 'products.update', 'description: <b><ol><li>\r\n        <ul class=\"review-page__features-list\">\r\n<ol><li>Features</li><li>Modern and clean interface</li><li>Improved experience for store owners</li><li>WordPress Content Integration</li><li>Pre-installed payment gateways</li><li>Total control of the checkout process</li><li>Set Default Currency</li><li>Geo-location Support</li><li>Automatic Taxes</li><li>Cart Behavior</li><li>Reduce Page Loading</li><li>Add/Manage Products</li><li>Product Types</li><li>Product Variables</li><li>Inventory Management</li><li>Shipping Calculations</li><li>Cart Calculator</li><li>Flexible Shipping Destinations</li><li>Shipping Prices</li><li>Restrict Sales</li><li>Multiple Shipping Methods</li><li>Custom Tax Calculations</li><li>Geo-location enabled taxes</li><li>Select Customer Address</li><li>Tax rate definition</li><li>Search Engine Optimization</li><li>Simplified Coupon System</li><li>Discount Coupons and codes</li><li>Product Reviews</li><li>Owner Verification</li><li>Reporting</li><li>Dashboard</li><li>Analyze Products and Orders</li><li>CRM/Store Management</li><li>Support/Hosting</li></ol>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</ul></li></ol></b> change to <b><div>qq</div></b>', '2020-08-16 10:58:25', '2020-08-16 10:58:25'),
(113, 1, 'products.update', 'description: <b><div>qq</div></b> change to <b><div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li></ul></div></b>', '2020-08-16 10:58:43', '2020-08-16 10:58:43');
INSERT INTO `event_logs` (`id`, `user_id`, `end_point`, `changes`, `created_at`, `updated_at`) VALUES
(114, 1, 'products.update', 'description: <b><div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li></ul></div></b> change to <b><div class=\"review-page__features\">\r\n        <ol class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li></ol></div></b>', '2020-08-16 10:59:35', '2020-08-16 10:59:35'),
(115, 1, 'products.update', 'description: <b><div class=\"review-page__features\">\r\n        <ol class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li></ol></div></b> change to <b><ol>\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li></ol></b>', '2020-08-16 11:00:09', '2020-08-16 11:00:09'),
(116, 1, 'products.update', '', '2020-08-16 11:02:19', '2020-08-16 11:02:19');
INSERT INTO `event_logs` (`id`, `user_id`, `end_point`, `changes`, `created_at`, `updated_at`) VALUES
(117, 1, 'products.update', 'description: <b><ol>\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li></ol></b> change to <b><div class=\"review-page__tab-content\">\r\n    <div id=\"review-toc\" class=\"review-page__toc\">\r\n        <ul>\r\n            <li><a href=\"#what-is\">What is WooCommerce?</a></li>\r\n            <li><a href=\"#benefits\">WooCommerce benefits</a></li>\r\n            <li><a href=\"#features\">Overview of WooCommerce features</a></li>\r\n                            <li><a href=\"#problems\">What Problems Will WooCommerce Solve?</a></li>\r\n                                    <li><a href=\"#pricing\">WooCommerce pricing</a></li>\r\n            <li><a href=\"#user-sat\">User satisfaction</a></li>\r\n                            <li><a href=\"#video\">Video</a></li>\r\n                                    <li><a href=\"#technical\">Technical details</a></li>\r\n            <li><a href=\"#support\">Support details</a></li>\r\n                            <li><a href=\"#user-rev\">User reviews</a></li>\r\n                    </ul>\r\n    </div>\r\n    <div class=\"review-page__imgs\">\r\n        <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\" ls-is-cached lazyloaded\" alt=\"Logo of WooCommerce\" sizes=\"(max-width: 300px) 100vw, 300px\" data-srcset=\"https://s.financesonline.com/uploads/2015/07/woo-300x155.png 300w, https://s.financesonline.com/uploads/2015/07/woo-232x120.png 232w, https://s.financesonline.com/uploads/2015/07/woo-93x48.png 93w, https://s.financesonline.com/uploads/2015/07/woo-281x145.png 281w, https://s.financesonline.com/uploads/2015/07/woo.png 500w\" srcset=\"https://s.financesonline.com/uploads/2015/07/woo-300x155.png 300w, https://s.financesonline.com/uploads/2015/07/woo-232x120.png 232w, https://s.financesonline.com/uploads/2015/07/woo-93x48.png 93w, https://s.financesonline.com/uploads/2015/07/woo-281x145.png 281w, https://s.financesonline.com/uploads/2015/07/woo.png 500w\" width=\"300\" height=\"155\">                    <a href=\"#\" data-modal=\"#verified-quality\" data-dynamic=\"yes\" data-id=\"16210\">\r\n                <img src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/seal-new.png\" data-src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/seal-new.png\" class=\" ls-is-cached lazyloaded\" alt=\"Verified Quality\">\r\n            </a>\r\n            </div>\r\n    <div class=\"clearfix\"></div>\r\n\r\n    <div id=\"what-is\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--what-is\"></span>\r\n        <h3>What is WooCommerce?</h3>\r\n    </div>\r\n    <p>WooCommerce is a powerful eCommerce toolkit. The first place&nbsp;in this category is held by Wix which has a total score of 9.8/10 and is the winner of our <strong>Best Shopping Cart Software Award</strong> <strong>for 2019</strong>. You can <a href=\"https://financesonline.com/see/wixcart-trial/\">try out Wix for free here</a>.</p>\r\n<p>It was developed to transform any WordPress website into a beautiful online store. Designed and constructed using WordPress best practices on the front and back end, WooCommerce comes a very reliable and robust eCommerce plugin that boasts of enterprise-level quality and features. WooCommerce is a perfect plugin if you want to build an stand-alone online store from the ground up or if you wish to start selling products using an existing WordPress blog or website. It is a free plugin but priced upgrades and updates are also offered for those who want to experience the best from WooCommerce.</p>\r\n\r\n    <div id=\"benefits\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--benefits\"></span>\r\n        <h3>Overview of WooCommerce Benefits</h3>\r\n    </div>\r\n    <p>WooCommerce is a great choice for businesses and individuals who want to launch their own online store, whether building it from scratch or using their existing WordPress website or blog. Here are some of the many benefits WooCommerce brings to the table:</p>\r\n<ul>\r\n<li>It is a free eCommerce plugin that comes with a robust set of tools and features that you need to get started.</li>\r\n<li>Full support from the WooCommerce team as well as from user communities that include software experts and actual business owners.</li>\r\n</ul>\r\n<p><strong>Open source codebase:</strong> WooCommerce is fully open sourced, meaning the code is freely available for anyone to view, modify, and contribute towards. The open source nature of WooCommerce encourages an active community of contributors to the project.</p>\r\n<p><strong>Powered by WordPress:</strong> Powering approximately 24% of the internet, WooCommerce enables these website owners to sell online using a platform they already know and love.</p>\r\n<p><strong>Intuitive and powerful interfaces:</strong> WooCommerce focuses on making the process of setting up your online store as quick and easy as possible. It offers an onboarding wizard to guide you through the setup in under five minutes.</p>\r\n<p><strong>Extension library:</strong> WooCommerce boasts a wide range of official extensions (add-on features) such as payment gateways and shipping calculators for your specific country, advanced tax calculators, membership system management, subscription management, anti-fraud and many many more. This library is also backed by a large collection of actively-developed community extensions.</p>\r\n\r\n    <div id=\"features\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--features\"></span>\r\n        <h3>Overview of WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>SHipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Enginer Optimizatiom</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul>\r\n    </div>\r\n\r\n            <div class=\"review-page__gray\">\r\n            <div id=\"problems\" class=\"review-page__header\">\r\n                <span class=\"rev-icon rev-icon--problems-solve\"></span>\r\n                <h3>What Problems Will WooCommerce Solve?</h3>\r\n            </div>\r\n            <p><strong>1. Scalable:</strong> When growing their online presence, companies often run into scaling issues with their platform of choice. Powered by WordPress, and with savvy developers behind the project, WooCommerce is able to scale as rapidly as your business.</p>\r\n<p><strong>2. Customizable:</strong> Your store operates out of Spain and requires a Spanish payment gateway to be connected. You also require a shipping rates calculator connected to the small local shipping company you’ve decided to work with. Being open source and extendable, it is easy for developers to craft customized integrations with just about any service provider.</p>\r\n<p><strong>3. Logically feature rich:</strong> WooCommerce core includes all of the core features required to run an online store, with none of the bloat. From the simple action of adding and managing products, to advanced stock controls, tax rates calculations, and order management, WooCommerce handles all of this swiftly.</p>\r\n        </div>\r\n    \r\n    \r\n    \r\n<div class=\"review-page__gray\">\r\n    <div class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--top3\"></span>\r\n        <h3>WooCommerce Position In Our Categories</h3>\r\n    </div>\r\n            <p>\r\n            Since companies have distinct business-related requirements, it is practical that they abstain from preferring a one-size-fits-all, “perfect” software product. Nonetheless, it is futile to discover such a software product even among popular software products. The logical thing to do would be to take note of the numerous major aspects that need analysis such as crucial features, plans, technical skill competence of staff, company size, etc. After which, you should double down on the product research thoroughly. Go over these WooCommerce evaluations and check out each of the solutions in your shortlist more closely. Such comprehensive product investigation ascertains you drop unfit apps and buy the one that meets all the function your business requires.        </p>\r\n                \r\n<p><strong>Position of WooCommerce in our main categories:</strong></p>\r\n\r\n<div class=\"review-page__main-cats\">\r\n            <div class=\"col col--50 col--mb\">\r\n            <div class=\"review-page__pos\">\r\n                <span>TOP</span>\r\n                <span>20</span>\r\n            </div>\r\n            <p>WooCommerce is one of the  <strong>top 20</strong> <a href=\"https://ecommerce.financesonline.com\">eCommerce Software</a> products</p>\r\n        </div>\r\n            <div class=\"col col--50 col--mb\">\r\n            <div class=\"review-page__pos\">\r\n                <span>TOP</span>\r\n                <span>10</span>\r\n            </div>\r\n            <p>WooCommerce is one of the <strong>10</strong> <a href=\"https://shopping-cart-software.financesonline.com\">Shopping Cart Software</a> products</p>\r\n        </div>\r\n            <div class=\"col col--50 col--mb\">\r\n            <div class=\"review-page__pos\">\r\n                <span>TOP</span>\r\n                <span>10</span>\r\n            </div>\r\n            <p>WooCommerce is one of the  <strong>top 10</strong> <a href=\"https://website-builder.financesonline.com\">Website Builder Software</a> products</p>\r\n        </div>\r\n    \r\n    <div class=\"clearfix\"></div>\r\n</div>\r\n\r\n\r\n<p>If you are interested in WooCommerce it may also be sensible \r\n                    to check out other subcategories of Shopping Cart Software collected in our base \r\n                    of SaaS software reviews.</p><p>There are trendy and widely used applications in each software category. But are they essentially the best fit for your company’s special needs? A market-leading software product may have thousands of subscribers, but does it provide what you require? For this reason, do not blindly shell out for popular systems. Read at least a few WooCommerce Shopping Cart Software reviews and consider the factors that you wish to have in the software such as the fees, main features, available integrations etc. Then, shortlist a few systems that fit your wants. Try out the free trials of these products, read online reviews, get information from the seller, and do your investigation meticulously. This in-depth groundwork is sure to help you select the finest software solution for your organization’s unique requirements.</p>\r\n    </div>\r\n    <div id=\"pricing\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--pricing-details\"></span>\r\n        <h3>How Much Does WooCommerce Cost?</h3>\r\n    </div>\r\n    <p><strong>WooCommerce Pricing Plans:</strong></p>\r\n    <div class=\"review-page__scroll-box\">\r\n        <div class=\"review-page__table\">\r\n            <div class=\"review-page__table__row\">\r\n                <span>Free Trial</span>\r\n                                    <p><span class=\"icon icon--checked\"></span></p>\r\n                            </div>\r\n                                <div class=\"review-page__table__row\">\r\n                        <span>Woocommerce</span>\r\n                        <p>Free</p>\r\n                    </div>\r\n                                                </div>\r\n\r\n        <p>Woocommerce is a free shopping cart plugin. For those who want more than the basics, Woocommerce offers priced license upgrades, extensions, and updates.</p>\r\n    </div>\r\n\r\n    <div class=\"review-page__gray\">\r\n        <div id=\"user-sat\" class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--user-satisfaction\"></span>\r\n            <h3>User Satisfaction</h3>\r\n        </div>\r\n        <div class=\"review-page__mentions\">\r\n            <div class=\"review-page__mentions-item\">\r\n                <span class=\"icon icon--user-sat\"></span>\r\n                Positive Social Media Mentions\r\n                <span class=\"count\">\r\n                    90                </span>\r\n            </div>\r\n            <div class=\"review-page__mentions-item\">\r\n                <span class=\"icon icon--user-sat reverse\"></span>\r\n                Negative Social Media Mentions\r\n                <span class=\"count\">\r\n                    3                </span>\r\n            </div>\r\n        </div>\r\n        <p>\r\n            </p><p>We realize that when you make a decision to buy Shopping Cart Software it’s important not only to see how experts evaluate it in their reviews, but also to find out if the real people and companies that buy it are actually satisfied with the product. That’s why we’ve created our behavior-based <a class=\"qtip\" data-modal=\"#user-modal\" data-dynamic=\"yes\" href=\"#\">Customer Satisfaction Algorithm™</a> that gathers customer reviews, comments and WooCommerce reviews across a wide range of social media sites. The data is then presented in an easy to digest form showing how many people had positive and negative experience with WooCommerce. With that information at hand you should be equipped to make an informed buying decision that you won’t regret.</p>\r\n        <p></p>\r\n    </div>\r\n\r\n            <div id=\"video\" class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--video\"></span>\r\n            <h3>Video</h3>\r\n        </div>\r\n        <iframe title=\"video\" data-src=\"https://www.youtube.com/embed/1KahlicghaE?feature=oembed&amp;controls=1&amp;showinfo=0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" class=\" lazyloaded\" width=\"640\" height=\"360\" frameborder=\"0\"></iframe>    \r\n    \r\n    <div id=\"technical\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--technical-details\"></span>\r\n        <h3>Technical details</h3>\r\n    </div>\r\n    <div class=\"review-page__technical\">\r\n        <div class=\"col col--33\">\r\n            <p>Devices Supported</p>\r\n                            <ul class=\"ul-normal\">\r\n                    <li>iPhone/iPad</li><li>Web-based</li>                </ul>\r\n                        <p>Deployment</p>\r\n                    </div>\r\n        <div class=\"col col--33\">\r\n            <p>Language Support</p>\r\n                            <ul class=\"ul-normal\">\r\n                    <li>English</li>                </ul>\r\n                    </div>\r\n        <div class=\"col col--33\">\r\n            <p>Pricing Model</p>\r\n                            <ul class=\"ul-normal\">\r\n                    <li>Quote-based</li>                </ul>\r\n                        <p>Customer Types</p>\r\n                            <ul class=\"ul-normal\">\r\n                    <li>Small Business</li><li>Medium Business</li>                </ul>\r\n                    </div>\r\n        <div class=\"clearfix\"></div>\r\n    </div>\r\n\r\n    <div id=\"support\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--support\"></span>\r\n        <h3>What Support Does This Vendor Offer?</h3>\r\n    </div>\r\n    <div class=\"review-page__support\">\r\n                <ul>\r\n            <li class=\"ok\"><span class=\"icon icon--checked\"></span>email</li><li><span></span>phone</li><li><span></span>live support</li><li><span></span>training</li><li class=\"ok\"><span class=\"icon icon--checked\"></span>tickets</li>        </ul>\r\n    </div>\r\n\r\n    \r\n            <div class=\"review-page__gray\">\r\n            <div class=\"review-page__header\">\r\n                <span class=\"rev-icon rev-icon--resources\"></span>\r\n                <h3>Useful WooCommerce Resources</h3>\r\n            </div>\r\n                        <ul class=\"ul-normal\">\r\n                                    <li><a href=\"https://financesonline.com/comparison-15-leading-ecommerce-software-systems/\" title=\"Comparison of 15 Leading eCommerce Software Companies\">Comparison of 15 Leading eCommerce Software Companies</a></li>\r\n                                    <li><a href=\"https://financesonline.com/top-10-alternatives-magento-leading-shopping-cart-software-solutions/\" title=\"Top 10 Alternatives to Magento: Leading Shopping Cart Software Solutions\">Top 10 Alternatives to Magento: Leading Shopping Cart Software Solutions</a></li>\r\n                                    <li><a href=\"https://financesonline.com/top-10-alternatives-shopify-popular-shopping-cart-software-systems/\" title=\"Top 10 Alternatives to Shopify: Popular Shopping Cart Software Systems\">Top 10 Alternatives to Shopify: Popular Shopping Cart Software Systems</a></li>\r\n                            </ul>\r\n        </div>\r\n    \r\n            <div class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--top-alternatives\"></span>\r\n            <h3>Popular WooCommerce Alternatives</h3>\r\n        </div>\r\n        <div class=\"products-table\">\r\n            <div class=\"products-table__head\">\r\n                <div class=\"products-table__left\">Product name:</div>\r\n                <div class=\"products-table__right\">\r\n                    Our Score:\r\n                    <a href=\"#\" data-modal=\"#score-modal\" data-dynamic=\"yes\" class=\"icon icon--question\"></a>\r\n                </div>\r\n            </div>\r\n            <div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"https://alternatives.financesonline.com/p/shopify-plus/\" title=\"Shopify Plus Competitors\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\" lazyloaded\" alt=\"Shopify Plus Competitors\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2.png 186w\" srcset=\"https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://alternatives.financesonline.com/p/shopify-plus/\" title=\"Shopify Plus Competitors\">Shopify Plus Alternatives</a>\r\n                            </div>\r\n                            <div class=\"products-table__right\">9.5</div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"https://alternatives.financesonline.com/p/magento/\" title=\"Magento Competitors\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\" lazyloaded\" alt=\"Magento Competitors\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/Magento-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/Magento-logo2.png 186w\" srcset=\"https://s.financesonline.com/uploads/2019/09/Magento-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/Magento-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://alternatives.financesonline.com/p/magento/\" title=\"Magento Competitors\">Magento Alternatives</a>\r\n                            </div>\r\n                            <div class=\"products-table__right\">9.0</div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"https://alternatives.financesonline.com/p/stitch/\" title=\"Stitch Competitors\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\" lazyloaded\" alt=\"Stitch Competitors\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/stitch-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/stitch-logo2.png 186w\" srcset=\"https://s.financesonline.com/uploads/2019/09/stitch-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/stitch-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://alternatives.financesonline.com/p/stitch/\" title=\"Stitch Competitors\">Stitch Alternatives</a>\r\n                            </div>\r\n                            <div class=\"products-table__right\">8.5</div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"https://alternatives.financesonline.com/p/carthook/\" title=\"CartHook Competitors\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\" lazyloaded\" alt=\"CartHook Competitors\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/CartHook-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/CartHook-logo2.png 186w\" srcset=\"https://s.financesonline.com/uploads/2019/09/CartHook-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/CartHook-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://alternatives.financesonline.com/p/carthook/\" title=\"CartHook Competitors\">CartHook Alternatives</a>\r\n                            </div>\r\n                            <div class=\"products-table__right\">8.4</div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"https://alternatives.financesonline.com/p/oscommerce/\" title=\"osCommerce Competitors\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"osCommerce Competitors\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/oscommerce-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/oscommerce-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://alternatives.financesonline.com/p/oscommerce/\" title=\"osCommerce Competitors\">osCommerce Alternatives</a>\r\n                            </div>\r\n                            <div class=\"products-table__right\">8.2</div>\r\n                        </div>        </div>\r\n    \r\n            <div class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--best-competitors-price\"></span>\r\n            <h3>Top Competitors To WooCommerce By Price</h3>\r\n        </div>\r\n        <div class=\"products-table\">\r\n            <div class=\"products-table__head\">\r\n                <div class=\"products-table__left\">Product name:</div>\r\n                <div class=\"products-table__right\">Price:</div>\r\n            </div>\r\n            <div class=\"products-table__row\">\r\n                        <div class=\"products-table__left\">\r\n                            <a href=\"/p/prestashop/\" title=\"PrestaShop\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"PrestaShop\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/Prestashop-logo2-93x46.png 93w, https://s.financesonline.com/uploads/2019/09/Prestashop-logo2.png 196w\" width=\"93\" height=\"46\"></a>\r\n                            <a href=\"/p/prestashop/\" title=\"PrestaShop\">PrestaShop Pricing</a>\r\n                        </div>\r\n                        <div class=\"products-table__right\">by quote</div>\r\n                    </div><div class=\"products-table__row\">\r\n                        <div class=\"products-table__left\">\r\n                            <a href=\"/p/shopify-plus/\" title=\"Shopify Plus\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Shopify Plus\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                            <a href=\"/p/shopify-plus/\" title=\"Shopify Plus\">Shopify Plus Pricing</a>\r\n                        </div>\r\n                        <div class=\"products-table__right\">by quote</div>\r\n                    </div><div class=\"products-table__row\">\r\n                        <div class=\"products-table__left\">\r\n                            <a href=\"/p/shopify/\" title=\"Shopify\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Shopify\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/08/shopifyth1-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/shopifyth1.png 186w\" width=\"93\" height=\"48\"></a>\r\n                            <a href=\"/p/shopify/\" title=\"Shopify\">Shopify Pricing</a>\r\n                        </div>\r\n                        <div class=\"products-table__right\">$13</div>\r\n                    </div><div class=\"products-table__row\">\r\n                        <div class=\"products-table__left\">\r\n                            <a href=\"/p/magento/\" title=\"Magento\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Magento\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/Magento-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/Magento-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                            <a href=\"/p/magento/\" title=\"Magento\">Magento Pricing</a>\r\n                        </div>\r\n                        <div class=\"products-table__right\">$2,000</div>\r\n                    </div><div class=\"products-table__row\">\r\n                        <div class=\"products-table__left\">\r\n                            <a href=\"/p/paykickstart/\" title=\"PayKickstart\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"PayKickstart\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/08/PayKickstart-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/PayKickstart-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                            <a href=\"/p/paykickstart/\" title=\"PayKickstart\">PayKickstart Pricing</a>\r\n                        </div>\r\n                        <div class=\"products-table__right\">$22</div>\r\n                    </div>        </div>\r\n    \r\n            <div class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--best-competitors-satisfaction\"></span>\r\n            <h3>Trending Shopping Cart Software Reviews</h3>\r\n        </div>\r\n        <div class=\"products-table\">\r\n            <div class=\"products-table__head\">\r\n                <div class=\"products-table__left\">Product name:</div>\r\n                <div class=\"products-table__right products-table__right--bigger\">\r\n                    <div class=\"col col--50\">\r\n                        Score:\r\n                        <a href=\"#\" data-modal=\"#score-modal\" data-dynamic=\"yes\" class=\"icon icon--question\"></a>\r\n                    </div>\r\n                    <div class=\"col col--50 no-padding-left\">\r\n                        Satisfaction:\r\n                        <a href=\"#\" data-modal=\"#user-modal\" data-dynamic=\"yes\" class=\"icon icon--question\"></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"/p/3dcart/\" title=\"3dcart reviews\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"3dcart reviews\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/08/3dcard-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/3dcard-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"/p/3dcart/\" title=\"3dcart reviews\">3dcart Review</a>\r\n                            </div>\r\n                            <div class=\"products-table__right products-table__right--bigger\">\r\n                                <div class=\"col col--50\">9.5</div>\r\n                                <div class=\"col col--50\">98%</div>\r\n                            </div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"/p/shopify-plus/\" title=\"Shopify Plus reviews\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Shopify Plus reviews\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/08/shopify-plus-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"/p/shopify-plus/\" title=\"Shopify Plus reviews\">Shopify Plus Review</a>\r\n                            </div>\r\n                            <div class=\"products-table__right products-table__right--bigger\">\r\n                                <div class=\"col col--50\">9.5</div>\r\n                                <div class=\"col col--50\">99%</div>\r\n                            </div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"/p/business-catalyst/\" title=\"Business Catalyst reviews\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Business Catalyst reviews\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/Business-Catalyst-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/Business-Catalyst-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"/p/business-catalyst/\" title=\"Business Catalyst reviews\">Business Catalyst Review</a>\r\n                            </div>\r\n                            <div class=\"products-table__right products-table__right--bigger\">\r\n                                <div class=\"col col--50\">8.4</div>\r\n                                <div class=\"col col--50\">97%</div>\r\n                            </div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"/p/ohoshop/\" title=\"Ohoshop reviews\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Ohoshop reviews\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/11/Ohoshop-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/11/Ohoshop-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"/p/ohoshop/\" title=\"Ohoshop reviews\">Ohoshop Review</a>\r\n                            </div>\r\n                            <div class=\"products-table__right products-table__right--bigger\">\r\n                                <div class=\"col col--50\">8.0</div>\r\n                                <div class=\"col col--50\">N/A</div>\r\n                            </div>\r\n                        </div><div class=\"products-table__row\">\r\n                            <div class=\"products-table__left\">\r\n                                <a href=\"/p/magento/\" title=\"Magento reviews\" class=\"mini-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Magento reviews\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/Magento-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/Magento-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"/p/magento/\" title=\"Magento reviews\">Magento Review</a>\r\n                            </div>\r\n                            <div class=\"products-table__right products-table__right--bigger\">\r\n                                <div class=\"col col--50\">9.0</div>\r\n                                <div class=\"col col--50\">90%</div>\r\n                            </div>\r\n                        </div>        </div>\r\n    \r\n            <div class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--comparisons\"></span>\r\n            <h3>WooCommerce Comparisons</h3>\r\n        </div>\r\n        <div class=\"products-table products-table--comparisons\">\r\n            <div class=\"products-table__head\">Product name:</div>\r\n            <div class=\"products-table__row\"><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-loaded-commerce\" title=\"Comparison of WooCommerce vs. Loaded Commerce\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. Loaded Commerce\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2020/01/Loaded-Commerce-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2020/01/Loaded-Commerce-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-loaded-commerce\" title=\"Comparison of WooCommerce vs. Loaded Commerce\">WooCommerce vs. Loaded Commerce</a>\r\n                            </div><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-yokart\" title=\"Comparison of WooCommerce vs. Yo!Kart\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. Yo!Kart\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/YoKart-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/YoKart-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-yokart\" title=\"Comparison of WooCommerce vs. Yo!Kart\">WooCommerce vs. Yo!Kart</a>\r\n                            </div></div><div class=\"products-table__row\"><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-foxycart\" title=\"Comparison of WooCommerce vs. Foxycart\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. Foxycart\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2015/07/foxyl-93x48.png 93w, https://s.financesonline.com/uploads/2015/07/foxyl.png 120w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-foxycart\" title=\"Comparison of WooCommerce vs. Foxycart\">WooCommerce vs. Foxycart</a>\r\n                            </div><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-nexternal\" title=\"Comparison of WooCommerce vs. Nexternal\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. Nexternal\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/10/nexternal-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/10/nexternal-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-nexternal\" title=\"Comparison of WooCommerce vs. Nexternal\">WooCommerce vs. Nexternal</a>\r\n                            </div></div><div class=\"products-table__row\"><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-instantestore\" title=\"Comparison of WooCommerce vs. InstanteStore\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. InstanteStore\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/11/InstanteStore-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/11/InstanteStore-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-instantestore\" title=\"Comparison of WooCommerce vs. InstanteStore\">WooCommerce vs. InstanteStore</a>\r\n                            </div><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-zen-cart\" title=\"Comparison of WooCommerce vs. Zen Cart\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. Zen Cart\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/zen-cart-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/zen-cart-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-zen-cart\" title=\"Comparison of WooCommerce vs. Zen Cart\">WooCommerce vs. Zen Cart</a>\r\n                            </div></div><div class=\"products-table__row\"><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-ashop-commerce\" title=\"Comparison of WooCommerce vs. AShop Commerce\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. AShop Commerce\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2020/01/AShop-Commerce-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2020/01/AShop-Commerce-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-ashop-commerce\" title=\"Comparison of WooCommerce vs. AShop Commerce\">WooCommerce vs. AShop Commerce</a>\r\n                            </div><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-oscommerce\" title=\"Comparison of WooCommerce vs. osCommerce\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. osCommerce\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/oscommerce-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/oscommerce-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-oscommerce\" title=\"Comparison of WooCommerce vs. osCommerce\">WooCommerce vs. osCommerce</a>\r\n                            </div></div><div class=\"products-table__row\"><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-x-cart-cloud\" title=\"Comparison of WooCommerce vs. X-Cart\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. X-Cart\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/09/x-cart-logo2-93x48.png 93w, https://s.financesonline.com/uploads/2019/09/x-cart-logo2.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-x-cart-cloud\" title=\"Comparison of WooCommerce vs. X-Cart\">WooCommerce vs. X-Cart</a>\r\n                            </div><div class=\"col col--50 col--mb\">\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-avactis\" title=\"Comparison of WooCommerce vs. Avactis\" class=\"mb-hide\"><img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" class=\"lazyload\" alt=\"Comparison of WooCommerce vs. Avactis\" sizes=\"(max-width: 93px) 100vw, 93px\" data-srcset=\"https://s.financesonline.com/uploads/2019/12/Avactis-logo2-1-93x48.png 93w, https://s.financesonline.com/uploads/2019/12/Avactis-logo2-1.png 186w\" width=\"93\" height=\"48\"></a>\r\n                                <a href=\"https://comparisons.financesonline.com/woocommerce-vs-avactis\" title=\"Comparison of WooCommerce vs. Avactis\">WooCommerce vs. Avactis</a>\r\n                            </div></div>        </div>\r\n    \r\n            <div id=\"user-rev\" class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--user-reviews\"></span>\r\n            <h3>WooCommerce user reviews</h3>\r\n        </div>\r\n                    <div class=\"user-reviews__review\">\r\n                <div class=\"user-reviews__review-txt border-top\">\r\n                    <p class=\"quote quote--small\">WooCommerce is a diverse, user-orientated platform</p>\r\n                    <a href=\"/p/woocommerce/woocommerce-is-a-diverse-user-orientated-platform-38627/\" title=\"Read review\">Read full review &gt;</a>\r\n                </div>\r\n                <div class=\"user-reviews__review-header\">\r\n                    <div class=\"user-left\">\r\n                                                    <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" data-src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/svg/user-avatar.svg\" alt=\"Joanne\" class=\"lazyload\" onerror=\"this.classList.add(\'placeholder\')\">\r\n                                                <div class=\"user-info\">\r\n                            <p>Joanne</p>\r\n                                                    </div>\r\n                    </div>\r\n                    <div class=\"user-right\">\r\n                        <div class=\"stars stars--blue\">\r\n                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Overall impression</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Customer Support</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Value for Money</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Ease of Use</p>\r\n        </div>                        </div>\r\n                    </div>\r\n                    <div class=\"clearfix\"></div>\r\n                    <div class=\"user-bottom\">\r\n                        <span><span class=\"icon icon--published\"></span><strong>Published on:</strong> 02.10.2019</span>\r\n                        <span><span class=\"icon icon--comp-size\"></span><strong>Company Size:</strong> More than 100 Employees</span>\r\n                        <span><span class=\"icon icon--industry\"></span><strong>Industry:</strong> Media Production</span>\r\n                    </div>\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                    <div class=\"user-reviews__review\">\r\n                <div class=\"user-reviews__review-txt border-top\">\r\n                    <p class=\"quote quote--small\">Highly flexible and customizable solution for your online store</p>\r\n                    <a href=\"/p/woocommerce/highly-flexible-and-customizable-solution-for-your-online-store-69306/\" title=\"Read review\">Read full review &gt;</a>\r\n                </div>\r\n                <div class=\"user-reviews__review-header\">\r\n                    <div class=\"user-left\">\r\n                                                    <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" data-src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/svg/user-avatar.svg\" alt=\"Adrian\" class=\"lazyload\" onerror=\"this.classList.add(\'placeholder\')\">\r\n                                                <div class=\"user-info\">\r\n                            <p>Adrian</p>\r\n                                                    </div>\r\n                    </div>\r\n                    <div class=\"user-right\">\r\n                        <div class=\"stars stars--blue\">\r\n                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Overall impression</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Customer Support</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Value for Money</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Ease of Use</p>\r\n        </div>                        </div>\r\n                    </div>\r\n                    <div class=\"clearfix\"></div>\r\n                    <div class=\"user-bottom\">\r\n                        <span><span class=\"icon icon--published\"></span><strong>Published on:</strong> 15.09.2019</span>\r\n                        <span><span class=\"icon icon--comp-size\"></span><strong>Company Size:</strong> More than 100 Employees</span>\r\n                        <span><span class=\"icon icon--industry\"></span><strong>Industry:</strong> Computer Software</span>\r\n                    </div>\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                    <div class=\"user-reviews__review\">\r\n                <div class=\"user-reviews__review-txt border-top\">\r\n                    <p class=\"quote quote--small\">E-Commerce Leader for every business</p>\r\n                    <a href=\"/p/woocommerce/e-commerce-leader-for-every-business-38625/\" title=\"Read review\">Read full review &gt;</a>\r\n                </div>\r\n                <div class=\"user-reviews__review-header\">\r\n                    <div class=\"user-left\">\r\n                                                    <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" data-src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/svg/user-avatar.svg\" alt=\"Mike\" class=\"lazyload\" onerror=\"this.classList.add(\'placeholder\')\">\r\n                                                <div class=\"user-info\">\r\n                            <p>Mike</p>\r\n                                                    </div>\r\n                    </div>\r\n                    <div class=\"user-right\">\r\n                        <div class=\"stars stars--blue\">\r\n                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Overall impression</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Customer Support</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Value for Money</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Ease of Use</p>\r\n        </div>                        </div>\r\n                    </div>\r\n                    <div class=\"clearfix\"></div>\r\n                    <div class=\"user-bottom\">\r\n                        <span><span class=\"icon icon--published\"></span><strong>Published on:</strong> 02.09.2019</span>\r\n                        <span><span class=\"icon icon--comp-size\"></span><strong>Company Size:</strong> More than 100 Employees</span>\r\n                        <span><span class=\"icon icon--industry\"></span><strong>Industry:</strong> Insurance</span>\r\n                    </div>\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                    <div class=\"user-reviews__review\">\r\n                <div class=\"user-reviews__review-txt border-top\">\r\n                    <p class=\"quote quote--small\">Perfect solution for selling your services and products</p>\r\n                    <a href=\"/p/woocommerce/perfect-solution-for-selling-your-services-and-products-2-69266/\" title=\"Read review\">Read full review &gt;</a>\r\n                </div>\r\n                <div class=\"user-reviews__review-header\">\r\n                    <div class=\"user-left\">\r\n                                                    <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" data-src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/svg/user-avatar.svg\" alt=\"Joey\" class=\"lazyload\" onerror=\"this.classList.add(\'placeholder\')\">\r\n                                                <div class=\"user-info\">\r\n                            <p>Joey</p>\r\n                                                    </div>\r\n                    </div>\r\n                    <div class=\"user-right\">\r\n                        <div class=\"stars stars--blue\">\r\n                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Overall impression</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Customer Support</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Value for Money</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\" class=\"full\"></span>\r\n            <span class=\"score\">5/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Ease of Use</p>\r\n        </div>                        </div>\r\n                    </div>\r\n                    <div class=\"clearfix\"></div>\r\n                    <div class=\"user-bottom\">\r\n                        <span><span class=\"icon icon--published\"></span><strong>Published on:</strong> 15.10.2018</span>\r\n                        <span><span class=\"icon icon--comp-size\"></span><strong>Company Size:</strong> 11-50 Employees</span>\r\n                        <span><span class=\"icon icon--industry\"></span><strong>Industry:</strong> Internet</span>\r\n                    </div>\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                    <div class=\"user-reviews__review\">\r\n                <div class=\"user-reviews__review-txt border-top\">\r\n                    <p class=\"quote quote--small\">Great tool, I’d like to see it even more professional</p>\r\n                    <a href=\"/p/woocommerce/great-tool-id-like-to-see-it-even-more-professional-38632/\" title=\"Read review\">Read full review &gt;</a>\r\n                </div>\r\n                <div class=\"user-reviews__review-header\">\r\n                    <div class=\"user-left\">\r\n                                                    <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==\" data-src=\"https://reviews.financesonline.com/media/themes/fot/dist/img/svg/user-avatar.svg\" alt=\"Silvia\" class=\"lazyload\" onerror=\"this.classList.add(\'placeholder\')\">\r\n                                                <div class=\"user-info\">\r\n                            <p>Silvia</p>\r\n                                                    </div>\r\n                    </div>\r\n                    <div class=\"user-right\">\r\n                        <div class=\"stars stars--blue\">\r\n                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Overall impression</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Customer Support</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Value for Money</p>\r\n        </div>                            \r\n        <div class=\"stars__item\">\r\n            <span data-star=\"1\" class=\"full\"></span><span data-star=\"2\" class=\"full\"></span><span data-star=\"3\" class=\"full\"></span><span data-star=\"4\" class=\"full\"></span><span data-star=\"5\"></span>\r\n            <span class=\"score\">4/5</span>\r\n            <div class=\"clearfix\"></div>\r\n            <p>Ease of Use</p>\r\n        </div>                        </div>\r\n                    </div>\r\n                    <div class=\"clearfix\"></div>\r\n                    <div class=\"user-bottom\">\r\n                        <span><span class=\"icon icon--published\"></span><strong>Published on:</strong> 07.10.2018</span>\r\n                        <span><span class=\"icon icon--comp-size\"></span><strong>Company Size:</strong> 1-10 Employees</span>\r\n                        <span><span class=\"icon icon--industry\"></span><strong>Industry:</strong> Apparel &amp; Fashion </span>\r\n                    </div>\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                </div></b>', '2020-08-16 11:10:23', '2020-08-16 11:10:23');
INSERT INTO `event_logs` (`id`, `user_id`, `end_point`, `changes`, `created_at`, `updated_at`) VALUES
(118, 1, 'products.update', 'description: <b><div class=\"review-page__tab-content\">\r\n    <div id=\"review-toc\" class=\"review-page__toc\">\r\n        <div><span style=\"color: inherit; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 24px;\">What is WooCommerce?</span><br></div></div>\r\n    <p>WooCommerce is a powerful eCommerce toolkit. The first place&nbsp;in this category is held by Wix which has a total score of 9.8/10 and is the winner of our <strong>Best Shopping Cart Software Award</strong> <strong>for 2019</strong>.&nbsp;</p>\r\n<p>It was developed to transform any WordPress website into a beautiful online store. Designed and constructed using WordPress best practices on the front and back end, WooCommerce comes a very reliable and robust eCommerce plugin that boasts of enterprise-level quality and features. WooCommerce is a perfect plugin if you want to build an stand-alone online store from the ground up or if you wish to start selling products using an existing WordPress blog or website. It is a free plugin but priced upgrades and updates are also offered for those who want to experience the best from WooCommerce.</p>\r\n\r\n    <div id=\"benefits\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--benefits\"></span>\r\n        <h3>Overview of WooCommerce Benefits</h3>\r\n    </div>\r\n    <p>WooCommerce is a great choice for businesses and individuals who want to launch their own online store, whether building it from scratch or using their existing WordPress website or blog. Here are some of the many benefits WooCommerce brings to the table:</p>\r\n<ul>\r\n<li>It is a free eCommerce plugin that comes with a robust set of tools and features that you need to get started.</li>\r\n<li>Full support from the WooCommerce team as well as from user communities that include software experts and actual business owners.</li>\r\n</ul>\r\n<p><strong>Open source codebase:</strong> WooCommerce is fully open sourced, meaning the code is freely available for anyone to view, modify, and contribute towards. The open source nature of WooCommerce encourages an active community of contributors to the project.</p>\r\n<p><strong>Powered by WordPress:</strong> Powering approximately 24% of the internet, WooCommerce enables these website owners to sell online using a platform they already know and love.</p>\r\n<p><strong>Intuitive and powerful interfaces:</strong> WooCommerce focuses on making the process of setting up your online store as quick and easy as possible. It offers an onboarding wizard to guide you through the setup in under five minutes.</p>\r\n<p><strong>Extension library:</strong> WooCommerce boasts a wide range of official extensions (add-on features) such as payment gateways and shipping calculators for your specific country, advanced tax calculators, membership system management, subscription management, anti-fraud and many many more. This library is also backed by a large collection of actively-developed community extensions.</p>\r\n\r\n    <div id=\"features\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--features\"></span>\r\n        <h3>Overview of WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>SHipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Enginer Optimizatiom</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul>\r\n    </div>\r\n\r\n            <div class=\"review-page__gray\">\r\n            <div id=\"problems\" class=\"review-page__header\">\r\n                <span class=\"rev-icon rev-icon--problems-solve\"></span>\r\n                <h3>What Problems Will WooCommerce Solve?</h3>\r\n            </div>\r\n            <p><strong>1. Scalable:</strong> When growing their online presence, companies often run into scaling issues with their platform of choice. Powered by WordPress, and with savvy developers behind the project, WooCommerce is able to scale as rapidly as your business.</p>\r\n<p><strong>2. Customizable:</strong> Your store operates out of Spain and requires a Spanish payment gateway to be connected. You also require a shipping rates calculator connected to the small local shipping company you’ve decided to work with. Being open source and extendable, it is easy for developers to craft customized integrations with just about any service provider.</p>\r\n<p><strong>3. Logically feature rich:</strong> WooCommerce core includes all of the core features required to run an online store, with none of the bloat. From the simple action of adding and managing products, to advanced stock controls, tax rates calculations, and order management, WooCommerce handles all of this swiftly.</p>\r\n        </div>\r\n    \r\n    \r\n    \r\n<div class=\"review-page__gray\">\r\n    <div class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--top3\"></span>\r\n        <h3>WooCommerce Position In Our Categories</h3>\r\n    </div>\r\n            <p>\r\n            Since companies have distinct business-related requirements, it is practical that they abstain from preferring a one-size-fits-all, “perfect” software product. Nonetheless, it is futile to discover such a software product even among popular software products. The logical thing to do would be to take note of the numerous major aspects that need analysis such as crucial features, plans, technical skill competence of staff, company size, etc. After which, you should double down on the product research thoroughly. Go over these WooCommerce evaluations and check out each of the solutions in your shortlist more closely. Such comprehensive product investigation ascertains you drop unfit apps and buy the one that meets all the function your business requires.        </p>\r\n                \r\n<p><strong>Position of WooCommerce in our main categories:</strong></p>\r\n\r\n<div class=\"review-page__main-cats\">\r\n            <div class=\"col col--50 col--mb\">\r\n            <div class=\"review-page__pos\">\r\n                <span>TOP</span>\r\n                <span>20</span>\r\n            </div>\r\n            <p>WooCommerce is one of the  <strong>top 20</strong> <a href=\"https://ecommerce.financesonline.com\">eCommerce Software</a> products</p>\r\n        </div>\r\n            <div class=\"col col--50 col--mb\">\r\n            <div class=\"review-page__pos\">\r\n                <span>TOP</span>\r\n                <span>10</span>\r\n            </div>\r\n            <p>WooCommerce is one of the <strong>10</strong> <a href=\"https://shopping-cart-software.financesonline.com\">Shopping Cart Software</a> products</p>\r\n        </div>\r\n            <div class=\"col col--50 col--mb\">\r\n            <div class=\"review-page__pos\">\r\n                <span>TOP</span>\r\n                <span>10</span>\r\n            </div>\r\n            <p>WooCommerce is one of the  <strong>top 10</strong> <a href=\"https://website-builder.financesonline.com\">Website Builder Software</a> products</p>\r\n        </div>\r\n    \r\n    <div class=\"clearfix\"></div>\r\n</div>\r\n\r\n\r\n<p>If you are interested in WooCommerce it may also be sensible \r\n                    to check out other subcategories of Shopping Cart Software collected in our base \r\n                    of SaaS software reviews.</p><p>There are trendy and widely used applications in each software category. But are they essentially the best fit for your company’s special needs? A market-leading software product may have thousands of subscribers, but does it provide what you require? For this reason, do not blindly shell out for popular systems. Read at least a few WooCommerce Shopping Cart Software reviews and consider the factors that you wish to have in the software such as the fees, main features, available integrations etc. Then, shortlist a few systems that fit your wants. Try out the free trials of these products, read online reviews, get information from the seller, and do your investigation meticulously. This in-depth groundwork is sure to help you select the finest software solution for your organization’s unique requirements.</p>\r\n    </div>\r\n    <div id=\"pricing\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--pricing-details\"></span>\r\n        <h3>How Much Does WooCommerce Cost?</h3>\r\n    </div>\r\n    <p><strong>WooCommerce Pricing Plans:</strong></p>\r\n    <div class=\"review-page__scroll-box\">\r\n        <div class=\"review-page__table\">\r\n            <div class=\"review-page__table__row\">\r\n                <span>Free Trial</span>\r\n                                    <p><span class=\"icon icon--checked\"></span></p>\r\n                            </div>\r\n                                <div class=\"review-page__table__row\">\r\n                        <span>Woocommerce</span>\r\n                        <p>Free</p>\r\n                    </div>\r\n                                                </div>\r\n\r\n        <p>Woocommerce is a free shopping cart plugin. For those who want more than the basics, Woocommerce offers priced license upgrades, extensions, and updates.</p>\r\n    </div>\r\n\r\n    <div class=\"review-page__gray\">\r\n        <div id=\"user-sat\" class=\"review-page__header\">\r\n            <span class=\"rev-icon rev-icon--user-satisfaction\"></span>\r\n            <h3>User Satisfaction</h3>\r\n        </div>\r\n        <div class=\"review-page__mentions\">\r\n            <div class=\"review-page__mentions-item\">\r\n                <span class=\"icon icon--user-sat\"></span>\r\n                Positive Social Media Mentions\r\n                <span class=\"count\">\r\n                    90                </span>\r\n            </div>\r\n            <div class=\"review-page__mentions-item\">\r\n                <span class=\"icon icon--user-sat reverse\"></span>\r\n                Negative Social Media Mentions\r\n                <span class=\"count\">\r\n                    3                </span>\r\n            </div>\r\n        </div>\r\n        <p>\r\n            </p><p>We realize that when you make a decision to buy Shopping Cart Software it’s important not only to see how experts evaluate it in their reviews, but also to find out if the real people and companies that buy it are actually satisfied with the product. That’s why we’ve created our behavior-based <a class=\"qtip\" data-modal=\"#user-modal\" data-dynamic=\"yes\" href=\"#\">Customer Satisfaction Algorithm™</a> that gathers customer reviews, comments and WooCommerce reviews across a wide range of social media sites. The data is then presented in an easy to digest form showing how many people had positive and negative experience with WooCommerce. With that information at hand you should be equipped to make an informed buying decision that you won’t regret.</p></div><div class=\"products-table products-table--comparisons\"><div class=\"products-table__row\"></div></div><div class=\"user-reviews__review\"><div class=\"user-reviews__review-header\">\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                </div></b> change to <b><div class=\"review-page__tab-content\">\r\n    <div id=\"review-toc\" class=\"review-page__toc\">\r\n        <div><span style=\"color: inherit; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 24px;\">What is WooCommerce?</span><br></div></div>\r\n    <p>WooCommerce is a powerful eCommerce toolkit. The first place&nbsp;in this category is held by Wix which has a total score of 9.8/10 and is the winner of our <strong>Best Shopping Cart Software Award</strong> <strong>for 2019</strong>.&nbsp;</p>\r\n<p>It was developed to transform any WordPress website into a beautiful online store. Designed and constructed using WordPress best practices on the front and back end, WooCommerce comes a very reliable and robust eCommerce plugin that boasts of enterprise-level quality and features. WooCommerce is a perfect plugin if you want to build an stand-alone online store from the ground up or if you wish to start selling products using an existing WordPress blog or website. It is a free plugin but priced upgrades and updates are also offered for those who want to experience the best from WooCommerce.</p>\r\n\r\n    <div id=\"benefits\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--benefits\"></span>\r\n        <h3>Overview of WooCommerce Benefits</h3>\r\n    </div>\r\n    <p>WooCommerce is a great choice for businesses and individuals who want to launch their own online store, whether building it from scratch or using their existing WordPress website or blog. Here are some of the many benefits WooCommerce brings to the table:</p>\r\n<ul>\r\n<li>It is a free eCommerce plugin that comes with a robust set of tools and features that you need to get started.</li>\r\n<li>Full support from the WooCommerce team as well as from user communities that include software experts and actual business owners.</li>\r\n</ul>\r\n<p><b>Open source code base:</b> WooCommerce is fully open sourced, meaning the code is freely available for anyone to view, modify, and contribute towards. The open source nature of WooCommerce encourages an active community of contributors to the project.</p>\r\n<p><strong>Powered by WordPress:</strong> Powering approximately 24% of the internet, WooCommerce enables these website owners to sell online using a platform they already know and love.</p>\r\n<p><strong>Intuitive and powerful interfaces:</strong> WooCommerce focuses on making the process of setting up your online store as quick and easy as possible. It offers an on-boarding wizard to guide you through the setup in under five minutes.</p>\r\n<p><strong>Extension library:</strong> WooCommerce boasts a wide range of official extensions (add-on features) such as payment gateways and shipping calculators for your specific country, advanced tax calculators, membership system management, subscription management, anti-fraud and many many more. This library is also backed by a large collection of actively-developed community extensions.</p>\r\n\r\n    <div id=\"features\" class=\"review-page__header\">\r\n        <span class=\"rev-icon rev-icon--features\"></span>\r\n        <h3>Overview of WooCommerce Features</h3>\r\n    </div>\r\n    <div class=\"review-page__features\">\r\n        <ul class=\"review-page__features-list\">\r\n<li>Modern and clean interface</li>\r\n<li>Improved experience for store owners</li>\r\n<li>WordPress Content Integration</li>\r\n<li>Pre-installed payment gateways</li>\r\n<li>Total control of the checkout process</li>\r\n<li>Set Default Currency</li>\r\n<li>Geo-location Support</li>\r\n<li>Automatic Taxes</li>\r\n<li>Cart Behavior</li>\r\n<li>Reduce Page Loading</li>\r\n<li>Add/Manage Products</li>\r\n<li>Product Types</li>\r\n<li>Product Variables</li>\r\n<li>Inventory Management</li>\r\n<li>Shipping Calculations</li>\r\n<li>Cart Calculator</li>\r\n<li>Flexible Shipping Destinations</li>\r\n<li>Shipping Prices</li>\r\n<li>Restrict Sales</li>\r\n<li>Multiple Shipping Methods</li>\r\n<li>Custom Tax Calculations</li>\r\n<li>Geo-location enabled taxes</li>\r\n<li>Select Customer Address</li>\r\n<li>Tax rate definition</li>\r\n<li>Search Engine Optimization</li>\r\n<li>Simplified Coupon System</li>\r\n<li>Discount Coupons and codes</li>\r\n<li>Product Reviews</li>\r\n<li>Owner Verification</li>\r\n<li>Reporting</li>\r\n<li>Dashboard</li>\r\n<li>Analyze Products and Orders</li>\r\n<li>CRM/Store Management</li>\r\n<li>Support/Hosting</li>\r\n</ul>\r\n    </div>\r\n\r\n            <div class=\"review-page__gray\">\r\n            <div id=\"problems\" class=\"review-page__header\">\r\n                <span class=\"rev-icon rev-icon--problems-solve\"></span>\r\n                <h3>What Problems Will WooCommerce Solve?</h3>\r\n            </div>\r\n            <p><strong>1. Scalable:</strong> When growing their online presence, companies often run into scaling issues with their platform of choice. Powered by WordPress, and with savvy developers behind the project, WooCommerce is able to scale as rapidly as your business.</p>\r\n<p><strong>2. Customizable:</strong> Your store operates out of Spain and requires a Spanish payment gateway to be connected. You also require a shipping rates calculator connected to the small local shipping company you’ve decided to work with. Being open source and extendable, it is easy for developers to craft customized integrations with just about any service provider.</p>\r\n<p><strong>3. Logically feature rich:</strong> WooCommerce core includes all of the core features required to run an online store, with none of the bloat. From the simple action of adding and managing products, to advanced stock controls, tax rates calculations, and order management, WooCommerce handles all of this swiftly.</p></div><div class=\"products-table products-table--comparisons\"><div class=\"products-table__row\"></div></div><div class=\"user-reviews__review\"><div class=\"user-reviews__review-header\">\r\n                    <div class=\"arrow\"></div>\r\n                </div>\r\n            </div>\r\n                </div></b>', '2020-08-16 11:15:18', '2020-08-16 11:15:18'),
(119, 1, 'products.update', '', '2020-08-16 14:13:35', '2020-08-16 14:13:35'),
(120, 1, 'products.update', '', '2020-08-16 14:16:24', '2020-08-16 14:16:24'),
(121, 1, 'products.update', '', '2020-08-16 14:17:07', '2020-08-16 14:17:07'),
(122, 1, 'products.update', '', '2020-08-16 14:17:50', '2020-08-16 14:17:50'),
(123, 1, 'products.update', '', '2020-08-16 14:18:11', '2020-08-16 14:18:11'),
(124, 1, 'products.update', '', '2020-08-16 14:18:23', '2020-08-16 14:18:23'),
(125, 1, 'products.update', '', '2020-08-16 14:18:35', '2020-08-16 14:18:35'),
(126, 1, 'products.update', '', '2020-08-16 14:18:46', '2020-08-16 14:18:46'),
(127, 1, 'products.update', '', '2020-08-16 14:18:57', '2020-08-16 14:18:57'),
(128, 1, 'products.update', '', '2020-08-16 14:19:33', '2020-08-16 14:19:33'),
(129, 1, 'products.update', '', '2020-08-16 14:20:05', '2020-08-16 14:20:05'),
(130, 1, 'products.update', '', '2020-08-16 14:20:55', '2020-08-16 14:20:55'),
(131, 1, 'products.update', '', '2020-08-16 14:21:49', '2020-08-16 14:21:49'),
(132, 1, 'products.update', '', '2020-08-16 14:22:30', '2020-08-16 14:22:30'),
(133, 1, 'products.update', '', '2020-08-16 14:23:05', '2020-08-16 14:23:05'),
(134, 1, 'products.update', '', '2020-08-16 14:25:00', '2020-08-16 14:25:00'),
(135, 1, 'products.create', 'Create new item: Android App', '2020-08-23 10:55:04', '2020-08-23 10:55:04'),
(136, 1, 'products.update', 'title: <b>Android App</b> change to <b>FlatShop Android App</b>', '2020-08-23 10:56:53', '2020-08-23 10:56:53'),
(137, 1, 'products.update', 'type: <b>Woocommerce</b> change to <b>Android</b>', '2020-08-23 11:04:13', '2020-08-23 11:04:13'),
(138, 46, 'orders.destroy', '', '2020-08-31 08:44:05', '2020-08-31 08:44:05'),
(139, 55, 'orders.update', 'status: <b>Pending</b> change to <b>Completed</b>', '2020-12-03 06:58:22', '2020-12-03 06:58:22'),
(140, 55, 'orders.update', 'status: <b>Pending</b> change to <b>Completed</b>', '2020-12-03 06:58:34', '2020-12-03 06:58:34'),
(141, 143, 'products.update', 'title: <b> Flatshop - Woocommerce (Android)</b> change to <b>Flatshop - Woocommerce (Android)</b>, thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/7aTaHOv52eFSsftp4iAmrleJaUB8OUDPOijEKuUD.png</b>', '2021-01-02 05:35:51', '2021-01-02 05:35:51'),
(142, 143, 'products.update', 'title: <b>Flatshop - Opencart (Android)\r\n\r\n</b> change to <b>Flatshop - Opencart (Android)</b>, thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/UxLhJiECJ1bTU2Qun1aQcljDcpKyMTB2b8feBj2n.png</b>', '2021-01-02 05:41:13', '2021-01-02 05:41:13'),
(143, 143, 'products.update', 'title: <b>Flatshop - Prestashop (Android)\r\n\r\n\r\n</b> change to <b>Flatshop - Prestashop (Android)</b>, thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/BcuU6bUVzRRGLgbUfDHpjo60V80NmRkGRim7WBfh.png</b>', '2021-01-02 05:41:40', '2021-01-02 05:41:40'),
(144, 143, 'products.update', 'thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/2fvAD0sJbBetE5AwM6QC1ZgqKzY3gcj4vhwDA6sI.png</b>', '2021-01-02 05:42:13', '2021-01-02 05:42:13'),
(145, 143, 'products.update', 'thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/lVtjOGtFhHaA9w8VpLkfZ64x6POdzfCceSgE2J3m.png</b>', '2021-01-02 05:43:20', '2021-01-02 05:43:20'),
(146, 143, 'products.update', 'thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/8Sxf3ZIaHHmZ4XD8PfvIthRB3ttZFHgLynXBOv1r.png</b>', '2021-01-02 06:14:52', '2021-01-02 06:14:52'),
(147, 143, 'products.update', 'thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/gzN1cLFZIF5UVxeHap600X6Syw2W5WOpXScqtHw8.png</b>', '2021-01-02 06:26:32', '2021-01-02 06:26:32'),
(148, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/oeHhn1jvNjhsojZtvwhxmdok46BB6Il5GTNuj6Dr.png</b>', '2021-01-02 11:06:21', '2021-01-02 11:06:21'),
(149, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/wgK52GHcR58uZX6JG0SOGxYJTM1t7hSG5ps9XpMR.png</b>', '2021-01-02 11:07:01', '2021-01-02 11:07:01'),
(150, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/ertQ73l3RcPb80EoWKfiVXF1ND00acu74wS3Pgni.png</b>', '2021-01-02 11:07:18', '2021-01-02 11:07:18'),
(151, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/YDi8aD3Var6lGfFd9Pnfix0ehamCjYwrTuCqnRBl.png</b>', '2021-01-02 11:07:36', '2021-01-02 11:07:36'),
(152, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/HjzzfR1IKlVoAJ5RMhBJPAxQZJmFtlHaS7evDyVV.png</b>', '2021-01-02 11:07:45', '2021-01-02 11:07:45'),
(153, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/uiS7LhPmByU5LaIoJEnK7NerO58XK23cX4KJRM5f.png</b>', '2021-01-02 11:07:55', '2021-01-02 11:07:55'),
(154, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/ahRmOLybwthyUVYDqEfUq0lmOoR7oewMDLmIgdhO.png</b>', '2021-01-02 11:08:06', '2021-01-02 11:08:06'),
(155, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/6yNGUCRXDuK9DdX7bIZcOBMfdYuTXQuXqLuOCXAW.png</b>', '2021-01-02 11:08:16', '2021-01-02 11:08:16'),
(156, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/nwOEuQDu4wm65hLW6sVmG36qAIIM5iaYCp9vJtcZ.png</b>', '2021-01-02 11:08:29', '2021-01-02 11:08:29'),
(157, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/cEEb88Hfwow2s9NHSt1DRMdaIKnPwbtdYzUIV9tD.png</b>', '2021-01-02 11:08:41', '2021-01-02 11:08:41'),
(158, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/UwD0BP8yP5BvKP1MvMDMTEe8lHKANtt91WTwQvR2.png</b>', '2021-01-02 11:08:51', '2021-01-02 11:08:51'),
(159, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/7GHQteSSBbjBGTJqlp4qQW2xmLvFhIY94pxlWpR6.png</b>', '2021-01-02 11:09:02', '2021-01-02 11:09:02'),
(160, 143, 'products.update', 'thumb_image: <b>uploads/ocplaceholder.png</b> change to <b>uploads/Awsbglkp190ZeaaaDsAKMfGGaYO5eP8hibmTkf95.png</b>', '2021-01-02 11:09:14', '2021-01-02 11:09:14'),
(161, 20, 'orders.update', 'status: <b>Pending</b> change to <b>Processing</b>', '2021-01-23 08:54:24', '2021-01-23 08:54:24'),
(162, 20, 'orders.update', 'status: <b>Pending</b> change to <b>Processing</b>', '2021-01-23 08:54:47', '2021-01-23 08:54:47'),
(163, 20, 'products.update', 'thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/rCG9MWabNfz2ZKEZsNqwP4rxsNIx8FWtvJFpSeyF.png</b>', '2021-02-07 11:46:38', '2021-02-07 11:46:38'),
(164, 20, 'products.update', 'thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/xyOBFgfl9aZJtcms00WkU4WreS78bt6dSEiPThps.png</b>', '2021-02-07 11:46:57', '2021-02-07 11:46:57'),
(165, 20, 'products.update', 'title: <b> Flatshop - Magento (iOS)</b> change to <b>Flatshop - Magento (iOS)</b>, thumb_image: <b>uploads/ys7DjE7KTwz6LXOZy3vCvoeCnxLpgkKpS73ZPA2w.png</b> change to <b>uploads/PYSpndA2ITpYm25nt8nQjhzwWm3f8EFsBDHlwdwb.png</b>', '2021-02-07 11:47:17', '2021-02-07 11:47:17'),
(166, 20, 'products.update', 'thumb_image: <b>uploads/rCG9MWabNfz2ZKEZsNqwP4rxsNIx8FWtvJFpSeyF.png</b> change to <b>uploads/2rnQCpefjl2DOyOaBIIoaE4qvmRIIylPugoGkkti.png</b>', '2021-02-07 11:51:29', '2021-02-07 11:51:29'),
(167, 20, 'storages.create', 'Create new item: 8GB Storage', '2021-05-06 09:28:02', '2021-05-06 09:28:02'),
(168, 20, 'storages.update', 'mb_amount: <b>8</b> change to <b>9</b>', '2021-05-06 09:28:09', '2021-05-06 09:28:09'),
(169, 20, 'regions.create', 'Create new item: United State', '2021-05-06 09:35:59', '2021-05-06 09:35:59'),
(170, 20, 'rams.create', 'Create new item: 8GB Ram', '2021-05-06 09:49:51', '2021-05-06 09:49:51'),
(171, 20, 'rams.update', 'mb_amount: <b>7</b> change to <b>8</b>', '2021-05-06 09:49:58', '2021-05-06 09:49:58'),
(172, 20, 'variation_prices.create', '', '2021-05-06 09:50:35', '2021-05-06 09:50:35'),
(173, 20, 'mobile.storeCost', '', '2021-05-11 08:11:16', '2021-05-11 08:11:16'),
(174, 20, 'mobile.storeCost', '', '2021-05-11 08:24:32', '2021-05-11 08:24:32'),
(175, 20, 'variation_prices.update', 'affiliate_url: <b>Storola.net</b> change to <b>storo.net</b>', '2021-05-11 08:24:59', '2021-05-11 08:24:59'),
(176, 20, 'mobile.storeCost', '', '2021-05-11 08:28:37', '2021-05-11 08:28:37'),
(177, 20, 'mobile.storeCost', '', '2021-05-11 08:29:14', '2021-05-11 08:29:14'),
(178, 20, 'mobile.storeCost', '', '2021-05-11 08:30:25', '2021-05-11 08:30:25'),
(179, 20, 'mobile.storeCost', '', '2021-05-11 08:31:26', '2021-05-11 08:31:26'),
(180, 20, 'mobile.storeCost', '', '2021-05-11 08:31:56', '2021-05-11 08:31:56'),
(181, 20, 'mobile.storeCost', '', '2021-05-11 08:32:58', '2021-05-11 08:32:58'),
(182, 20, 'mobile.storeCost', '', '2021-05-11 08:34:30', '2021-05-11 08:34:30'),
(183, 20, 'mobile.storeCost', '', '2021-05-11 08:35:48', '2021-05-11 08:35:48'),
(184, 20, 'mobile.storeCost', '', '2021-05-11 08:36:21', '2021-05-11 08:36:21'),
(185, 20, 'mobile.storeCost', '', '2021-05-11 08:37:08', '2021-05-11 08:37:08'),
(186, 20, 'mobile.destroyCost', '', '2021-05-11 08:41:27', '2021-05-11 08:41:27'),
(187, 20, 'mobile.destroyCost', '', '2021-05-11 08:44:55', '2021-05-11 08:44:55'),
(188, 20, 'variation_prices.update', '', '2021-05-11 08:49:04', '2021-05-11 08:49:04'),
(189, 20, 'mobile.storeCost', '', '2021-05-11 09:12:35', '2021-05-11 09:12:35'),
(190, 20, 'mobile.storeCost', '', '2021-05-11 09:13:04', '2021-05-11 09:13:04'),
(191, 20, 'mobile.storeCost', '', '2021-05-11 09:15:34', '2021-05-11 09:15:34'),
(192, 20, 'mobile.storeCost', '', '2021-05-11 09:18:04', '2021-05-11 09:18:04'),
(193, 20, 'mobile.storeCost', '', '2021-05-11 09:18:56', '2021-05-11 09:18:56'),
(194, 20, 'mobile.storeCost', '', '2021-05-11 09:22:26', '2021-05-11 09:22:26'),
(195, 20, 'mobile.storeCost', '', '2021-05-11 09:22:53', '2021-05-11 09:22:53'),
(196, 20, 'mobile.storeCost', '', '2021-05-11 09:28:26', '2021-05-11 09:28:26'),
(197, 20, 'mobile.storeCost', '', '2021-05-11 09:29:25', '2021-05-11 09:29:25'),
(198, 20, 'variation_prices.update', '', '2021-05-11 09:29:55', '2021-05-11 09:29:55'),
(199, 20, 'filter_groups.create', 'Create new item: Availability', '2021-05-13 12:02:11', '2021-05-13 12:02:11'),
(200, 20, 'filter_groups.update', 'code: <b>a</b> change to <b>availability</b>', '2021-05-13 12:08:02', '2021-05-13 12:08:02'),
(201, 20, 'filter_groups.create', 'Create new item: Network', '2021-05-13 12:08:59', '2021-05-13 12:08:59'),
(202, 20, 'filter_groups.create', 'Create new item: SIM Size', '2021-05-13 12:10:24', '2021-05-13 12:10:24'),
(203, 20, 'filter_groups.update', 'code: <b>SIM_size</b> change to <b>sim_size</b>', '2021-05-13 12:10:34', '2021-05-13 12:10:34'),
(204, 20, 'filter_groups.create', 'Create new item: SIM Quantity', '2021-05-13 12:11:25', '2021-05-13 12:11:25'),
(205, 20, 'filter_groups.create', 'Create new item: Weight', '2021-05-13 12:12:50', '2021-05-13 12:12:50'),
(206, 20, 'filter_groups.create', 'Create new item: Color', '2021-05-13 12:13:35', '2021-05-13 12:13:35'),
(207, 20, 'filter_groups.create', 'Create new item: Price', '2021-05-13 12:13:56', '2021-05-13 12:13:56'),
(208, 20, 'filter_groups.create', 'Create new item: OS', '2021-05-13 12:20:45', '2021-05-13 12:20:45'),
(209, 20, 'filter_groups.create', 'Create new item: RAM', '2021-05-13 12:22:17', '2021-05-13 12:22:17'),
(210, 20, 'filter_groups.create', 'Create new item: Storage', '2021-05-13 12:22:50', '2021-05-13 12:22:50'),
(211, 20, 'filter_groups.create', 'Create new item: Card Slot', '2021-05-13 12:23:32', '2021-05-13 12:23:32'),
(212, 20, 'filter_groups.create', 'Create new item: Resolution', '2021-05-13 12:24:27', '2021-05-13 12:24:27'),
(213, 20, 'filter_groups.create', 'Create new item: Display Size', '2021-05-13 12:24:59', '2021-05-13 12:24:59'),
(214, 20, 'filter_groups.create', 'Create new item: Display Density', '2021-05-13 12:26:14', '2021-05-13 12:26:14'),
(215, 20, 'filter_groups.create', 'Create new item: Display Technology', '2021-05-13 12:28:31', '2021-05-13 12:28:31'),
(216, 20, 'filter_groups.create', 'Create new item: Notch', '2021-05-13 12:29:06', '2021-05-13 12:29:06'),
(217, 20, 'filter_groups.create', 'Create new item: Main Camera Resolution', '2021-05-13 12:31:09', '2021-05-13 12:31:09'),
(218, 20, 'filter_groups.update', 'title: <b>Resolution</b> change to <b>Display Resolution</b>, code: <b>resolution</b> change to <b>display_resolution</b>', '2021-05-15 04:42:22', '2021-05-15 04:42:22'),
(219, 20, 'filter_groups.create', 'Create new item: Main Camera Quantity', '2021-05-15 04:59:48', '2021-05-15 04:59:48'),
(220, 20, 'filter_groups.create', 'Create new item: Main Camera Video', '2021-05-15 05:00:51', '2021-05-15 05:00:51'),
(221, 20, 'filter_groups.create', 'Create new item: Selfie Camera Resolution', '2021-05-15 05:01:35', '2021-05-15 05:01:35'),
(222, 20, 'filter_groups.create', 'Create new item: Selfie Camera Quantity', '2021-05-15 05:01:57', '2021-05-15 05:01:57'),
(223, 20, 'filter_groups.create', 'Create new item: Selfie Camera Video', '2021-05-15 05:02:12', '2021-05-15 05:02:12'),
(224, 20, 'filter_groups.create', 'Create new item: Audio', '2021-05-15 05:07:49', '2021-05-15 05:07:49'),
(225, 20, 'filter_groups.create', 'Create new item: Sensors', '2021-05-15 05:09:32', '2021-05-15 05:09:32'),
(226, 20, 'filter_groups.create', 'Create new item: Fingerprint', '2021-05-15 05:12:26', '2021-05-15 05:12:26'),
(227, 20, 'filter_groups.create', 'Create new item: Connectivity', '2021-05-15 05:14:37', '2021-05-15 05:14:37'),
(228, 20, 'filter_groups.create', 'Create new item: Battery Capacity', '2021-05-15 05:19:42', '2021-05-15 05:19:42'),
(229, 20, 'filter_groups.create', 'Create new item: Battery Charging Speed', '2021-05-15 05:21:21', '2021-05-15 05:21:21'),
(230, 20, 'filter_groups.create', 'Create new item: Battery Wireless Chargin', '2021-05-15 05:27:09', '2021-05-15 05:27:09'),
(231, 20, 'filter_groups.create', 'Create new item: Order', '2021-05-15 05:29:41', '2021-05-15 05:29:41'),
(232, 20, 'filter_groups.update', 'title: <b>Availability</b> change to <b>Market Status</b>, code: <b>availability</b> change to <b>market_status</b>, sorting: <b>1</b> change to <b>0</b>', '2021-05-16 13:54:35', '2021-05-16 13:54:35'),
(233, 20, 'filter_options.create', 'Create new item: Available', '2021-05-16 13:55:13', '2021-05-16 13:55:13'),
(234, 20, 'filter_options.create', 'Create new item: Upcoming', '2021-05-16 13:55:36', '2021-05-16 13:55:36'),
(235, 20, 'filter_options.create', 'Create new item: Rumoured', '2021-05-16 13:55:55', '2021-05-16 13:55:55'),
(236, 20, 'filter_groups.update', 'title: <b>Network</b> change to <b>Launched Within</b>, code: <b>network</b> change to <b>launched_within</b>', '2021-05-16 13:57:35', '2021-05-16 13:57:35'),
(237, 20, 'filter_options.create', 'Create new item: Last 3 Months', '2021-05-16 14:04:33', '2021-05-16 14:04:33'),
(238, 20, 'filter_options.create', 'Create new item: Last 6 Months', '2021-05-16 14:06:37', '2021-05-16 14:06:37'),
(239, 20, 'filter_options.create', 'Create new item: Last 1 Year', '2021-05-16 14:08:33', '2021-05-16 14:08:33'),
(240, 20, 'filter_options.create', 'Create new item: Next 1 Month', '2021-05-16 14:09:05', '2021-05-16 14:09:05'),
(241, 20, 'filter_options.create', 'Create new item: Next 2 Months', '2021-05-16 14:09:34', '2021-05-16 14:09:34'),
(242, 20, 'filter_options.create', 'Create new item: Next 2 Months', '2021-05-16 14:10:10', '2021-05-16 14:10:10'),
(243, 20, 'filter_options.update', 'title: <b>Next 2 Months</b> change to <b>Next 3 Months</b>, code: <b>next_2_months</b> change to <b>next_3_months</b>', '2021-05-16 14:10:38', '2021-05-16 14:10:38'),
(244, 20, 'filter_groups.update', 'title: <b>SIM Size</b> change to <b>Network Type</b>, code: <b>sim_size</b> change to <b>network_type</b>', '2021-05-16 14:11:45', '2021-05-16 14:11:45'),
(245, 20, 'filter_options.create', 'Create new item: 2G', '2021-05-16 14:13:28', '2021-05-16 14:13:28'),
(246, 20, 'filter_options.create', 'Create new item: 3G', '2021-05-16 14:13:53', '2021-05-16 14:13:53'),
(247, 20, 'filter_options.create', 'Create new item: 4G', '2021-05-16 14:14:11', '2021-05-16 14:14:11'),
(248, 20, 'filter_options.create', 'Create new item: 5G', '2021-05-16 14:14:34', '2021-05-16 14:14:34'),
(249, 20, 'filter_groups.update', 'title: <b>SIM Quantity</b> change to <b>SIM Size</b>, code: <b>sim_quantity</b> change to <b>sim_size</b>', '2021-05-16 14:15:26', '2021-05-16 14:15:26'),
(250, 20, 'filter_options.create', 'Create new item: Mini-SIM', '2021-05-16 14:16:08', '2021-05-16 14:16:08'),
(251, 20, 'filter_options.create', 'Create new item: Micro-SIM', '2021-05-16 14:16:41', '2021-05-16 14:16:41'),
(252, 20, 'filter_options.update', 'code: <b>mini-sim</b> change to <b>mini_sim</b>', '2021-05-16 14:16:52', '2021-05-16 14:16:52'),
(253, 20, 'filter_options.create', 'Create new item: Nano-SIM', '2021-05-16 14:17:20', '2021-05-16 14:17:20'),
(254, 20, 'filter_options.create', 'Create new item: eSIM', '2021-05-16 14:17:44', '2021-05-16 14:17:44'),
(255, 20, 'filter_groups.update', '', '2021-05-16 14:18:41', '2021-05-16 14:18:41'),
(256, 20, 'filter_groups.update', 'title: <b>Weight</b> change to <b>SIM Support</b>, code: <b>weight</b> change to <b>sim_support</b>, sorting: <b>5</b> change to <b>6</b>', '2021-05-16 14:19:19', '2021-05-16 14:19:19'),
(257, 20, 'filter_options.create', 'Create new item: Dual SIM', '2021-05-16 14:19:57', '2021-05-16 14:19:57'),
(258, 20, 'filter_options.create', 'Create new item: Triple SIM', '2021-05-16 14:20:52', '2021-05-16 14:20:52'),
(259, 20, 'filter_options.create', 'Create new item: Quad SIM', '2021-05-16 14:21:24', '2021-05-16 14:21:24'),
(260, 20, 'filter_groups.update', 'title: <b>Color</b> change to <b>Battery Capacity</b>, code: <b>color</b> change to <b>battery_capacity</b>, sorting: <b>5</b> change to <b>50</b>', '2021-05-16 14:22:32', '2021-05-16 14:22:32'),
(261, 20, 'filter_groups.update', 'title: <b>Battery Capacity</b> change to <b>Other</b>, code: <b>battery_capacity</b> change to <b>battery_other</b>', '2021-05-16 14:28:01', '2021-05-16 14:28:01'),
(262, 20, 'filter_options.create', 'Create new item: Fast Charging', '2021-05-16 14:28:35', '2021-05-16 14:28:35'),
(263, 20, 'filter_options.create', 'Create new item: Wireless Charging', '2021-05-16 14:29:20', '2021-05-16 14:29:20'),
(264, 20, 'filter_options.create', 'Create new item: Removable Battery', '2021-05-16 14:30:06', '2021-05-16 14:30:06'),
(265, 20, 'filter_groups.update', 'title: <b>Other</b> change to <b>Battery Other</b>', '2021-05-16 14:30:27', '2021-05-16 14:30:27'),
(266, 20, 'filter_options.create', 'Create new item: Non-removable Battery', '2021-05-16 14:31:20', '2021-05-16 14:31:20'),
(267, 20, 'filter_groups.update', 'sorting: <b>50</b> change to <b>7</b>', '2021-05-16 14:32:04', '2021-05-16 14:32:04'),
(268, 20, 'filter_groups.update', 'title: <b>Battery Other</b> change to <b>Battery Others</b>, code: <b>battery_other</b> change to <b>battery_others</b>', '2021-05-16 14:32:40', '2021-05-16 14:32:40'),
(269, 20, 'filter_groups.update', 'title: <b>Price</b> change to <b>Screen Size</b>, code: <b>price</b> change to <b>screen_size</b>, sorting: <b>7</b> change to <b>80</b>', '2021-05-16 14:33:30', '2021-05-16 14:33:30'),
(270, 20, 'filter_options.create', 'Create new item: Below 5.2 inch', '2021-05-16 14:35:07', '2021-05-16 14:35:07'),
(271, 20, 'filter_options.create', 'Create new item: 5.2 inch - 5.5 inch', '2021-05-16 14:35:46', '2021-05-16 14:35:46'),
(272, 20, 'filter_options.update', 'code: <b>below_5_2_inch</b> change to <b>below_52_inch</b>', '2021-05-16 14:35:56', '2021-05-16 14:35:56'),
(273, 20, 'filter_options.create', 'Create new item: 5.5 inch - 6.0 inch', '2021-05-16 14:36:34', '2021-05-16 14:36:34'),
(274, 20, 'filter_options.create', 'Create new item: 6.0 inch - 6.5 inch', '2021-05-16 14:37:07', '2021-05-16 14:37:07'),
(275, 20, 'filter_options.create', 'Create new item: 6.5 inch & Above', '2021-05-16 14:37:44', '2021-05-16 14:37:44'),
(276, 20, 'filter_groups.update', 'sorting: <b>80</b> change to <b>8</b>', '2021-05-16 14:40:17', '2021-05-16 14:40:17'),
(277, 20, 'filter_groups.update', 'title: <b>OS</b> change to <b>Pixel Density</b>, code: <b>os</b> change to <b>pixel_density</b>, sorting: <b>8</b> change to <b>90</b>', '2021-05-16 14:40:40', '2021-05-16 14:40:40'),
(278, 20, 'filter_options.create', 'Create new item: 300 ppi & Above', '2021-05-16 14:41:58', '2021-05-16 14:41:58'),
(279, 20, 'filter_options.create', 'Create new item: 400 ppi & Above', '2021-05-16 14:42:39', '2021-05-16 14:42:39'),
(280, 20, 'filter_options.create', 'Create new item: 500 ppi & Above', '2021-05-16 14:43:10', '2021-05-16 14:43:10'),
(281, 20, 'filter_groups.update', 'title: <b>RAM</b> change to <b>Screen Features</b>, code: <b>ram</b> change to <b>screen_features</b>, sorting: <b>9</b> change to <b>100</b>', '2021-05-16 14:44:16', '2021-05-16 14:44:16'),
(282, 20, 'filter_groups.update', 'sorting: <b>90</b> change to <b>9</b>', '2021-05-16 14:44:22', '2021-05-16 14:44:22'),
(283, 20, 'filter_options.create', 'Create new item: Gorilla Glass', '2021-05-16 14:45:00', '2021-05-16 14:45:00'),
(284, 20, 'filter_options.create', 'Create new item: AMOLED', '2021-05-16 14:46:02', '2021-05-16 14:46:02'),
(285, 20, 'filter_options.create', 'Create new item: Super AMOLED', '2021-05-16 14:47:39', '2021-05-16 14:47:39'),
(286, 20, 'filter_options.create', 'Create new item: IPS LCD', '2021-05-16 14:48:09', '2021-05-16 14:48:09'),
(287, 20, 'filter_options.create', 'Create new item: Notch', '2021-05-16 14:49:27', '2021-05-16 14:49:27'),
(288, 20, 'filter_groups.update', 'title: <b>Storage</b> change to <b>Screen Resolution</b>, code: <b>storage</b> change to <b>screen_resolution</b>, sorting: <b>10</b> change to <b>110</b>', '2021-05-16 14:50:10', '2021-05-16 14:50:10'),
(289, 20, 'filter_groups.update', 'sorting: <b>100</b> change to <b>10</b>', '2021-05-16 14:50:16', '2021-05-16 14:50:16'),
(290, 20, 'filter_options.create', 'Create new item: Full HD Screen', '2021-05-16 14:52:28', '2021-05-16 14:52:28'),
(291, 20, 'filter_options.create', 'Create new item: 2k (QHD)', '2021-05-16 14:52:48', '2021-05-16 14:52:48'),
(292, 20, 'filter_options.create', 'Create new item: 4k (UHD)', '2021-05-16 14:53:58', '2021-05-16 14:53:58'),
(293, 20, 'filter_groups.update', 'title: <b>Card Slot</b> change to <b>Refresh Rate</b>, code: <b>card_slot</b> change to <b>refresh_rate</b>, sorting: <b>11</b> change to <b>120</b>', '2021-05-16 14:55:02', '2021-05-16 14:55:02'),
(294, 20, 'filter_groups.update', 'sorting: <b>110</b> change to <b>11</b>', '2021-05-16 14:55:10', '2021-05-16 14:55:10'),
(295, 20, 'filter_options.create', 'Create new item: 90 Hz', '2021-05-16 14:56:02', '2021-05-16 14:56:02'),
(296, 20, 'filter_options.create', 'Create new item: 120 Hz', '2021-05-16 14:56:40', '2021-05-16 14:56:40'),
(297, 20, 'filter_groups.update', 'title: <b>Display Resolution</b> change to <b>Processor Speed</b>, code: <b>display_resolution</b> change to <b>processor_speed</b>, sorting: <b>12</b> change to <b>130</b>', '2021-05-16 14:58:26', '2021-05-16 14:58:26'),
(298, 20, 'filter_groups.update', 'sorting: <b>120</b> change to <b>12</b>', '2021-05-16 14:58:35', '2021-05-16 14:58:35'),
(299, 20, 'filter_options.create', 'Create new item: 1.4 GHz & Above', '2021-05-16 14:59:02', '2021-05-16 14:59:02'),
(300, 20, 'filter_options.create', 'Create new item: 2 GHz & Above', '2021-05-16 14:59:28', '2021-05-16 14:59:28'),
(301, 20, 'filter_options.create', 'Create new item: 2.3 GHz & Above', '2021-05-16 14:59:44', '2021-05-16 14:59:44'),
(302, 20, 'filter_groups.update', 'title: <b>Display Size</b> change to <b>System On Chip</b>, code: <b>display_size</b> change to <b>system_on_chip</b>, sorting: <b>13</b> change to <b>140</b>', '2021-05-16 15:00:30', '2021-05-16 15:00:30'),
(303, 20, 'filter_groups.update', 'sorting: <b>130</b> change to <b>13</b>', '2021-05-16 15:00:40', '2021-05-16 15:00:40'),
(304, 20, 'filter_options.create', 'Create new item: Snapdragon', '2021-05-16 15:01:05', '2021-05-16 15:01:05'),
(305, 20, 'filter_options.create', 'Create new item: Mediatek', '2021-05-16 15:01:20', '2021-05-16 15:01:20'),
(306, 20, 'filter_options.create', 'Create new item: Exynos', '2021-05-16 15:01:49', '2021-05-16 15:01:49'),
(307, 20, 'filter_options.create', 'Create new item: Kirin', '2021-05-16 15:02:39', '2021-05-16 15:02:39'),
(308, 20, 'filter_groups.update', 'title: <b>Display Density</b> change to <b>Processor Cores</b>, code: <b>display_density</b> change to <b>processor_cores</b>, sorting: <b>14</b> change to <b>15</b>', '2021-05-16 15:03:13', '2021-05-16 15:03:13'),
(309, 20, 'filter_groups.update', 'sorting: <b>140</b> change to <b>14</b>', '2021-05-16 15:03:28', '2021-05-16 15:03:28'),
(310, 20, 'filter_options.create', 'Create new item: Quad Core', '2021-05-16 15:03:48', '2021-05-16 15:03:48'),
(311, 20, 'filter_options.create', 'Create new item: Octa Core', '2021-05-16 15:04:19', '2021-05-16 15:04:19'),
(312, 20, 'filter_options.create', 'Create new item: Deca Core', '2021-05-16 15:04:35', '2021-05-16 15:04:35'),
(313, 20, 'filter_groups.update', 'title: <b>Display Technology</b> change to <b>Camera Resolution</b>, code: <b>display_technology</b> change to <b>mc_resolution</b>', '2021-05-16 15:05:39', '2021-05-16 15:05:39'),
(314, 20, 'filter_options.create', 'Create new item: Below 12 MP', '2021-05-16 15:06:13', '2021-05-16 15:06:13'),
(315, 20, 'filter_options.create', 'Create new item: 12 MP & Above', '2021-05-16 15:06:28', '2021-05-16 15:06:28'),
(316, 20, 'filter_options.create', 'Create new item: 16 MP & Above', '2021-05-16 15:06:42', '2021-05-16 15:06:42'),
(317, 20, 'filter_options.create', 'Create new item: 20 MP & Above', '2021-05-16 15:06:57', '2021-05-16 15:06:57'),
(318, 20, 'filter_options.create', 'Create new item: 48 MP & Above', '2021-05-16 15:07:12', '2021-05-16 15:07:12'),
(319, 20, 'filter_options.create', 'Create new item: 64 MP & Above', '2021-05-16 15:07:38', '2021-05-16 15:07:38'),
(320, 20, 'filter_groups.update', 'title: <b>Notch</b> change to <b>Number of Cameras</b>, code: <b>notch</b> change to <b>number_of_cameras</b>', '2021-05-16 15:08:37', '2021-05-16 15:08:37'),
(321, 20, 'filter_groups.update', 'code: <b>number_of_cameras</b> change to <b>mc_quantity</b>', '2021-05-16 15:09:20', '2021-05-16 15:09:20'),
(322, 20, 'filter_options.create', 'Create new item: Single', '2021-05-16 15:09:40', '2021-05-16 15:09:40'),
(323, 20, 'filter_options.create', 'Create new item: Dual', '2021-05-16 15:09:59', '2021-05-16 15:09:59'),
(324, 20, 'filter_options.create', 'Create new item: Triple', '2021-05-16 15:10:21', '2021-05-16 15:10:21'),
(325, 20, 'filter_options.create', 'Create new item: Quad', '2021-05-16 15:11:00', '2021-05-16 15:11:00'),
(326, 20, 'filter_groups.update', 'code: <b>mc_quantity</b> change to <b>mc_number</b>', '2021-05-16 15:11:40', '2021-05-16 15:11:40'),
(327, 20, 'filter_groups.update', 'title: <b>Main Camera Resolution</b> change to <b>Camera Features</b>, code: <b>mc_resolution</b> change to <b>mc_features</b>', '2021-05-16 15:12:11', '2021-05-16 15:12:11'),
(328, 20, 'filter_options.create', 'Create new item: Optical Image Stabilization', '2021-05-16 15:12:42', '2021-05-16 15:12:42'),
(329, 20, 'filter_options.create', 'Create new item: Wide Angle', '2021-05-16 15:12:57', '2021-05-16 15:12:57'),
(330, 20, 'filter_options.create', 'Create new item: Macro', '2021-05-16 15:13:20', '2021-05-16 15:13:20'),
(331, 20, 'filter_options.create', 'Create new item: Depth Sensor', '2021-05-16 15:13:38', '2021-05-16 15:13:38'),
(332, 20, 'filter_options.create', 'Create new item: Fash Auto Focus', '2021-05-16 15:14:08', '2021-05-16 15:14:08'),
(333, 20, 'filter_options.create', 'Create new item: Flash', '2021-05-16 15:14:22', '2021-05-16 15:14:22'),
(334, 20, 'filter_options.create', 'Create new item: Portrait Mode', '2021-05-16 15:14:41', '2021-05-16 15:14:41'),
(335, 20, 'filter_options.create', 'Create new item: Optical Zoom', '2021-05-16 15:14:57', '2021-05-16 15:14:57'),
(336, 20, 'filter_groups.update', 'title: <b>Main Camera Quantity</b> change to <b>Video Recording</b>, code: <b>mc_quantity</b> change to <b>mc_video</b>', '2021-05-16 15:15:41', '2021-05-16 15:15:41'),
(337, 20, 'filter_options.create', 'Create new item: Full-HD Resolution', '2021-05-16 15:16:30', '2021-05-16 15:16:30'),
(338, 20, 'filter_options.create', 'Create new item: 4k Resolution', '2021-05-16 15:16:47', '2021-05-16 15:16:47'),
(339, 20, 'filter_options.create', 'Create new item: Slow Motion', '2021-05-16 15:17:01', '2021-05-16 15:17:01'),
(340, 20, 'filter_options.create', 'Create new item: Super Slow Motion', '2021-05-16 15:17:15', '2021-05-16 15:17:15'),
(341, 20, 'filter_groups.update', 'title: <b>Main Camera Video</b> change to <b>Camera Resolution</b>, code: <b>mc_video</b> change to <b>sc_resolution</b>', '2021-05-16 15:17:59', '2021-05-16 15:17:59'),
(342, 20, 'filter_options.create', 'Create new item: Below 8 MP', '2021-05-16 15:19:17', '2021-05-16 15:19:17'),
(343, 20, 'filter_options.create', 'Create new item: 8 MP & Above', '2021-05-16 15:19:35', '2021-05-16 15:19:35'),
(344, 20, 'filter_options.create', 'Create new item: 12 MP & Above', '2021-05-16 15:19:54', '2021-05-16 15:19:54'),
(345, 20, 'filter_options.create', 'Create new item: 16 MP & Above', '2021-05-16 15:20:10', '2021-05-16 15:20:10'),
(346, 20, 'filter_options.create', 'Create new item: 32 MP & Above', '2021-05-16 15:20:26', '2021-05-16 15:20:26'),
(347, 20, 'filter_groups.update', 'title: <b>Selfie Camera Resolution</b> change to <b>Number of Cameras</b>, code: <b>sc_resolution</b> change to <b>sc_camers</b>', '2021-05-17 06:10:29', '2021-05-17 06:10:29'),
(348, 20, 'filter_groups.update', 'code: <b>sc_camers</b> change to <b>sc_number</b>', '2021-05-17 06:10:42', '2021-05-17 06:10:42'),
(349, 20, 'filter_options.create', 'Create new item: Single', '2021-05-17 06:11:15', '2021-05-17 06:11:15'),
(350, 20, 'filter_options.create', 'Create new item: Dual', '2021-05-17 06:11:40', '2021-05-17 06:11:40'),
(351, 20, 'filter_options.update', 'code: <b>Dual</b> change to <b>Single</b>', '2021-05-17 06:12:00', '2021-05-17 06:12:00'),
(352, 20, 'filter_groups.update', 'title: <b>Selfie Camera Quantity</b> change to <b>Camera Features</b>, code: <b>sc_quantity</b> change to <b>sc_features</b>', '2021-05-17 06:12:51', '2021-05-17 06:12:51'),
(353, 20, 'filter_options.create', 'Create new item: Front Flash', '2021-05-17 06:13:20', '2021-05-17 06:13:20'),
(354, 20, 'filter_options.create', 'Create new item: Front Auto Focus', '2021-05-17 06:13:50', '2021-05-17 06:13:50'),
(355, 20, 'filter_options.create', 'Create new item: Pop-up Camera', '2021-05-17 06:14:07', '2021-05-17 06:14:07'),
(356, 20, 'filter_options.create', 'Create new item: Portrait Mode', '2021-05-17 06:14:23', '2021-05-17 06:14:23'),
(357, 20, 'filter_options.create', 'Create new item: Wide Angle', '2021-05-17 06:14:39', '2021-05-17 06:14:39'),
(358, 20, 'filter_groups.update', 'title: <b>Selfie Camera Video</b> change to <b>Connectivity</b>, code: <b>sc_video</b> change to <b>connectivity</b>', '2021-05-17 06:16:13', '2021-05-17 06:16:13'),
(359, 20, 'filter_options.create', 'Create new item: Wi-Fi 6', '2021-05-17 06:16:40', '2021-05-17 06:16:40'),
(360, 20, 'filter_options.create', 'Create new item: NFC', '2021-05-17 06:16:54', '2021-05-17 06:16:54'),
(361, 20, 'filter_options.create', 'Create new item: GPS', '2021-05-17 06:17:09', '2021-05-17 06:17:09'),
(362, 20, 'filter_options.create', 'Create new item: FM Radio', '2021-05-17 06:17:26', '2021-05-17 06:17:26');
INSERT INTO `event_logs` (`id`, `user_id`, `end_point`, `changes`, `created_at`, `updated_at`) VALUES
(363, 20, 'filter_options.create', 'Create new item: Bluetooth', '2021-05-17 06:17:41', '2021-05-17 06:17:41'),
(364, 20, 'filter_options.create', 'Create new item: USB Type-C', '2021-05-17 06:17:58', '2021-05-17 06:17:58'),
(365, 20, 'filter_options.create', 'Create new item: Face Unlock', '2021-05-17 06:18:14', '2021-05-17 06:18:14'),
(366, 20, 'filter_options.create', 'Create new item: Infrared', '2021-05-17 06:18:29', '2021-05-17 06:18:29'),
(367, 20, 'filter_groups.update', 'title: <b>Audio</b> change to <b>Sensors</b>, code: <b>audio</b> change to <b>Sensors</b>', '2021-05-17 06:18:52', '2021-05-17 06:18:52'),
(368, 20, 'filter_options.create', 'Create new item: Accelerometer', '2021-05-17 06:19:18', '2021-05-17 06:19:18'),
(369, 20, 'filter_options.create', 'Create new item: Gyro', '2021-05-17 06:19:35', '2021-05-17 06:19:35'),
(370, 20, 'filter_options.create', 'Create new item: Compass', '2021-05-17 06:19:51', '2021-05-17 06:19:51'),
(371, 20, 'filter_options.create', 'Create new item: Proximity', '2021-05-17 06:20:07', '2021-05-17 06:20:07'),
(372, 20, 'filter_options.create', 'Create new item: Barometer', '2021-05-17 06:20:20', '2021-05-17 06:20:20'),
(373, 20, 'filter_options.create', 'Create new item: Heart Rate', '2021-05-17 06:20:38', '2021-05-17 06:20:38'),
(374, 20, 'filter_options.create', 'Create new item: Fingerprint', '2021-05-17 06:21:03', '2021-05-17 06:21:03'),
(375, 20, 'filter_groups.update', 'title: <b>Sensors</b> change to <b>OS</b>, code: <b>sensors</b> change to <b>os</b>', '2021-05-17 06:21:50', '2021-05-17 06:21:50'),
(376, 20, 'filter_groups.update', 'sorting: <b>24</b> change to <b>25</b>', '2021-05-17 06:22:01', '2021-05-17 06:22:01'),
(377, 20, 'filter_groups.update', 'title: <b>OS</b> change to <b>Android</b>, code: <b>os</b> change to <b>android</b>', '2021-05-17 06:22:37', '2021-05-17 06:22:37'),
(378, 20, 'filter_options.create', 'Create new item: Android 11', '2021-05-17 06:23:27', '2021-05-17 06:23:27'),
(379, 20, 'filter_options.create', 'Create new item: Android 10', '2021-05-17 06:23:54', '2021-05-17 06:23:54'),
(380, 20, 'filter_options.create', 'Create new item: Android 9.0 (Pie)', '2021-05-17 06:24:12', '2021-05-17 06:24:12'),
(381, 20, 'filter_options.create', 'Create new item: Android 8.1 (Oreo)', '2021-05-17 06:24:30', '2021-05-17 06:24:30'),
(382, 20, 'filter_options.create', 'Create new item: Android 8.0 (Oreo)', '2021-05-17 06:24:47', '2021-05-17 06:24:47'),
(383, 20, 'filter_options.create', 'Create new item: Android 7.1 (Nougat)', '2021-05-17 06:25:03', '2021-05-17 06:25:03'),
(384, 20, 'filter_options.create', 'Create new item: Android 7.0 (Nougat)', '2021-05-17 06:25:22', '2021-05-17 06:25:22'),
(385, 20, 'filter_options.create', 'Create new item: Android 6.0 (Marshmallow)', '2021-05-17 06:25:39', '2021-05-17 06:25:39'),
(386, 20, 'filter_groups.update', 'title: <b>Fingerprint</b> change to <b>iOS</b>, code: <b>fingerprint</b> change to <b>ios</b>', '2021-05-17 06:26:27', '2021-05-17 06:26:27'),
(387, 20, 'filter_options.create', 'Create new item: iOS 13', '2021-05-17 06:26:48', '2021-05-17 06:26:48'),
(388, 20, 'filter_options.create', 'Create new item: iOS 12', '2021-05-17 06:27:14', '2021-05-17 06:27:14'),
(389, 20, 'filter_options.create', 'Create new item: iOS 11', '2021-05-17 06:27:30', '2021-05-17 06:27:30'),
(390, 20, 'filter_options.create', 'Create new item: iOS 10', '2021-05-17 06:27:48', '2021-05-17 06:27:48'),
(391, 20, 'filter_options.create', 'Create new item: iOS 9', '2021-05-17 06:28:04', '2021-05-17 06:28:04'),
(392, 20, 'filter_options.create', 'Create new item: iOS 8', '2021-05-17 06:28:36', '2021-05-17 06:28:36'),
(393, 20, 'filter_options.create', 'Create new item: iOS 7', '2021-05-17 06:28:52', '2021-05-17 06:28:52'),
(394, 20, 'filter_groups.update', 'title: <b>Connectivity</b> change to <b>Others</b>, code: <b>connectivity</b> change to <b>os_others</b>', '2021-05-17 06:29:58', '2021-05-17 06:29:58'),
(395, 20, 'filter_options.create', 'Create new item: Windows', '2021-05-17 06:30:21', '2021-05-17 06:30:21'),
(396, 20, 'filter_options.create', 'Create new item: Firefox', '2021-05-17 06:30:39', '2021-05-17 06:30:39'),
(397, 20, 'filter_groups.destroy', 'Delete item: Order', '2021-05-17 06:30:56', '2021-05-17 06:30:56'),
(398, 20, 'filter_groups.destroy', 'Delete item: Battery Wireless Chargin', '2021-05-17 06:31:05', '2021-05-17 06:31:05'),
(399, 20, 'filter_groups.destroy', 'Delete item: Battery Charging Speed', '2021-05-17 06:31:11', '2021-05-17 06:31:11'),
(400, 20, 'filter_groups.destroy', 'Delete item: Battery Capacity', '2021-05-17 06:31:18', '2021-05-17 06:31:18'),
(401, 20, 'filter_groups.create', 'Create new item: Price', '2021-05-17 06:33:03', '2021-05-17 06:33:03'),
(402, 20, 'filter_groups.update', '', '2021-05-17 06:33:12', '2021-05-17 06:33:12'),
(403, 20, 'filter_options.create', 'Create new item: Price Range', '2021-05-17 06:34:05', '2021-05-17 06:34:05'),
(404, 20, 'filter_groups.create', 'Create new item: RAM', '2021-05-17 06:35:18', '2021-05-17 06:35:18'),
(405, 20, 'filter_groups.update', 'code: <b>price</b> change to <b>price_range</b>', '2021-05-17 06:35:55', '2021-05-17 06:35:55'),
(406, 20, 'filter_groups.create', 'Create new item: Memory', '2021-05-17 06:36:46', '2021-05-17 06:36:46'),
(407, 20, 'filter_groups.update', 'sorting: <b>29</b> change to <b>30</b>', '2021-05-17 06:37:03', '2021-05-17 06:37:03'),
(408, 20, 'filter_groups.create', 'Create new item: Weight', '2021-05-17 06:37:35', '2021-05-17 06:37:35'),
(409, 20, 'filter_groups.create', 'Create new item: Battery Capacity', '2021-05-17 06:38:20', '2021-05-17 06:38:20'),
(410, 20, 'filter_options.create', 'Create new item: Ram Range', '2021-05-17 06:40:35', '2021-05-17 06:40:35'),
(411, 20, 'filter_options.create', 'Create new item: Memory Range', '2021-05-17 06:41:39', '2021-05-17 06:41:39'),
(412, 20, 'filter_options.create', 'Create new item: Weight Range', '2021-05-17 06:42:57', '2021-05-17 06:42:57'),
(413, 20, 'filter_options.create', 'Create new item: Battery Capacity', '2021-05-17 06:43:50', '2021-05-17 06:43:50'),
(414, 20, 'filter_tabs.create', 'Create new item: Brands', '2021-05-17 07:06:26', '2021-05-17 07:06:26'),
(415, 20, 'filter_tabs.create', 'Create new item: Price', '2021-05-17 07:06:43', '2021-05-17 07:06:43'),
(416, 20, 'filter_tabs.create', 'Create new item: Availablity', '2021-05-17 07:07:10', '2021-05-17 07:07:10'),
(417, 20, 'filter_tabs.create', 'Create new item: RAM', '2021-05-17 07:07:32', '2021-05-17 07:07:32'),
(418, 20, 'filter_tabs.create', 'Create new item: Memory', '2021-05-17 07:07:49', '2021-05-17 07:07:49'),
(419, 20, 'filter_tabs.create', 'Create new item: Weight', '2021-05-17 07:08:04', '2021-05-17 07:08:04'),
(420, 20, 'filter_tabs.create', 'Create new item: Network', '2021-05-17 07:08:34', '2021-05-17 07:08:34'),
(421, 20, 'filter_tabs.create', 'Create new item: Battery', '2021-05-17 07:08:49', '2021-05-17 07:08:49'),
(422, 20, 'filter_tabs.create', 'Create new item: Display', '2021-05-17 07:09:02', '2021-05-17 07:09:02'),
(423, 20, 'filter_tabs.create', 'Create new item: Processor', '2021-05-17 07:09:18', '2021-05-17 07:09:18'),
(424, 20, 'filter_tabs.create', 'Create new item: Main Camera', '2021-05-17 07:10:07', '2021-05-17 07:10:07'),
(425, 20, 'filter_tabs.create', 'Create new item: Selfie Camera', '2021-05-17 07:10:23', '2021-05-17 07:10:23'),
(426, 20, 'filter_tabs.create', 'Create new item: Connectivity', '2021-05-17 07:10:37', '2021-05-17 07:10:37'),
(427, 20, 'filter_tabs.create', 'Create new item: Sensors', '2021-05-17 07:10:54', '2021-05-17 07:10:54'),
(428, 20, 'filter_tabs.create', 'Create new item: OS', '2021-05-17 07:11:08', '2021-05-17 07:11:08'),
(429, 20, 'filter_sections.create', '', '2021-05-17 08:53:11', '2021-05-17 08:53:11'),
(430, 20, 'filter_sections.update', 'type: <b>Checkbox</b> change to <b>Slider</b>, sorting: <b>28</b> change to <b>2</b>', '2021-05-17 08:54:07', '2021-05-17 08:54:07'),
(431, 20, 'filter_sections.update', 'sorting: <b>1</b> change to <b>3</b>', '2021-05-17 08:55:07', '2021-05-17 08:55:07'),
(432, 20, 'filter_sections.update', 'sorting: <b>2</b> change to <b>4</b>', '2021-05-17 08:55:38', '2021-05-17 08:55:38'),
(433, 20, 'filter_sections.update', 'type: <b>Checkbox</b> change to <b>Slider</b>, sorting: <b>29</b> change to <b>5</b>', '2021-05-17 08:59:28', '2021-05-17 08:59:28'),
(434, 20, 'filter_sections.update', 'type: <b>Checkbox</b> change to <b>Slider</b>, sorting: <b>30</b> change to <b>6</b>', '2021-05-17 09:02:58', '2021-05-17 09:02:58'),
(435, 20, 'filter_sections.update', 'type: <b>Checkbox</b> change to <b>Slider</b>, sorting: <b>31</b> change to <b>7</b>', '2021-05-17 09:03:58', '2021-05-17 09:03:58'),
(436, 20, 'filter_sections.update', 'sorting: <b>50</b> change to <b>8</b>', '2021-05-17 09:05:31', '2021-05-17 09:05:31'),
(437, 20, 'filter_sections.update', 'sorting: <b>40</b> change to <b>10</b>', '2021-05-17 09:06:15', '2021-05-17 09:06:15'),
(438, 20, 'filter_sections.update', 'sorting: <b>10</b> change to <b>9</b>', '2021-05-17 09:06:24', '2021-05-17 09:06:24'),
(439, 20, 'filter_sections.update', 'sorting: <b>60</b> change to <b>10</b>', '2021-05-17 09:06:54', '2021-05-17 09:06:54'),
(440, 20, 'filter_sections.update', 'type: <b>Checkbox</b> change to <b>Slider</b>, sorting: <b>32</b> change to <b>11</b>', '2021-05-17 09:08:14', '2021-05-17 09:08:14'),
(441, 20, 'filter_sections.update', 'label: <b>Battery Others</b> change to <b>Others</b>, sorting: <b>70</b> change to <b>12</b>', '2021-05-17 09:09:24', '2021-05-17 09:09:24'),
(442, 20, 'filter_sections.update', 'sorting: <b>80</b> change to <b>13</b>', '2021-05-17 09:14:16', '2021-05-17 09:14:16'),
(443, 20, 'filter_sections.update', 'sorting: <b>90</b> change to <b>14</b>', '2021-05-17 09:14:41', '2021-05-17 09:14:41'),
(444, 20, 'filter_sections.update', 'sorting: <b>100</b> change to <b>16</b>', '2021-05-17 09:23:40', '2021-05-17 09:23:40'),
(445, 20, 'filter_sections.update', 'filter_tab_id: <b>13</b> change to <b>9</b>', '2021-05-17 09:26:52', '2021-05-17 09:26:52'),
(446, 20, 'filter_sections.update', 'sorting: <b>110</b> change to <b>17</b>', '2021-05-17 09:27:28', '2021-05-17 09:27:28'),
(447, 20, 'filter_sections.update', 'sorting: <b>120</b> change to <b>18</b>', '2021-05-17 09:28:00', '2021-05-17 09:28:00'),
(448, 20, 'filter_sections.update', 'sorting: <b>130</b> change to <b>19</b>', '2021-05-17 09:29:13', '2021-05-17 09:29:13'),
(449, 20, 'filter_sections.update', 'sorting: <b>140</b> change to <b>20</b>', '2021-05-17 09:29:39', '2021-05-17 09:29:39'),
(450, 20, 'filter_sections.update', 'sorting: <b>150</b> change to <b>21</b>', '2021-05-17 09:29:59', '2021-05-17 09:29:59'),
(451, 20, 'filter_sections.update', 'sorting: <b>160</b> change to <b>22</b>', '2021-05-17 09:31:31', '2021-05-17 09:31:31'),
(452, 20, 'filter_sections.update', 'sorting: <b>170</b> change to <b>23</b>', '2021-05-17 09:32:00', '2021-05-17 09:32:00'),
(453, 20, 'filter_sections.update', 'sorting: <b>180</b> change to <b>24</b>', '2021-05-17 09:32:18', '2021-05-17 09:32:18'),
(454, 20, 'filter_sections.update', 'sorting: <b>190</b> change to <b>25</b>', '2021-05-17 09:32:45', '2021-05-17 09:32:45'),
(455, 20, 'filter_sections.update', 'sorting: <b>200</b> change to <b>26</b>', '2021-05-17 09:34:48', '2021-05-17 09:34:48'),
(456, 20, 'filter_sections.update', 'sorting: <b>210</b> change to <b>27</b>', '2021-05-17 09:35:05', '2021-05-17 09:35:05'),
(457, 20, 'filter_sections.update', 'sorting: <b>220</b> change to <b>28</b>', '2021-05-17 09:35:23', '2021-05-17 09:35:23'),
(458, 20, 'filter_sections.update', 'show_label: <b>Yes</b> change to <b>No</b>, sorting: <b>230</b> change to <b>29</b>', '2021-05-17 09:35:51', '2021-05-17 09:35:51'),
(459, 20, 'filter_sections.update', 'show_label: <b>Yes</b> change to <b>No</b>, sorting: <b>240</b> change to <b>30</b>', '2021-05-17 09:36:19', '2021-05-17 09:36:19'),
(460, 20, 'filter_sections.update', 'sorting: <b>25</b> change to <b>31</b>', '2021-05-17 09:36:48', '2021-05-17 09:36:48'),
(461, 20, 'filter_sections.update', 'sorting: <b>26</b> change to <b>32</b>', '2021-05-17 09:37:02', '2021-05-17 09:37:02'),
(462, 20, 'filter_sections.update', 'sorting: <b>27</b> change to <b>33</b>', '2021-05-17 09:37:22', '2021-05-17 09:37:22'),
(463, 20, 'filter_options.create', 'Create new item: brand_id', '2021-05-18 09:17:46', '2021-05-18 09:17:46'),
(464, 20, 'filter_sections.update', 'sorting: <b>1</b> change to <b>0</b>', '2021-05-18 09:30:14', '2021-05-18 09:30:14'),
(465, 20, 'filter_sections.update', 'sorting: <b>2</b> change to <b>0</b>', '2021-05-18 09:30:25', '2021-05-18 09:30:25'),
(466, 20, 'filter_sections.update', '', '2021-05-18 09:31:35', '2021-05-18 09:31:35'),
(467, 20, 'filter_sections.update', 'sorting: <b>1</b> change to <b>2</b>', '2021-05-18 09:31:59', '2021-05-18 09:31:59'),
(468, 20, 'filter_sections.update', '', '2021-05-18 09:32:05', '2021-05-18 09:32:05'),
(469, 20, 'filter_options.update', '', '2021-05-18 10:26:41', '2021-05-18 10:26:41'),
(470, 20, 'filter_options.update', '', '2021-05-18 10:26:57', '2021-05-18 10:26:57'),
(471, 20, 'filter_sections.update', 'sorting: <b>2</b> change to <b>0</b>', '2021-05-18 10:28:35', '2021-05-18 10:28:35'),
(472, 20, 'filter_sections.update', '', '2021-05-18 10:28:42', '2021-05-18 10:28:42'),
(473, 20, 'filter_options.update', '', '2021-05-18 10:29:37', '2021-05-18 10:29:37'),
(474, 20, 'filter_options.update', 'sorting: <b>4</b> change to <b>3</b>', '2021-05-18 10:29:50', '2021-05-18 10:29:50'),
(475, 20, 'filter_options.update', '', '2021-05-18 10:30:01', '2021-05-18 10:30:01'),
(476, 20, 'filter_options.update', '', '2021-05-18 10:30:40', '2021-05-18 10:30:40'),
(477, 20, 'filter_options.update', 'filter_section_id: <b>1</b> change to <b>2</b>', '2021-05-18 10:31:20', '2021-05-18 10:31:20'),
(478, 20, 'filter_options.update', 'filter_section_id: <b>2</b> change to <b>1</b>', '2021-05-18 10:32:07', '2021-05-18 10:32:07'),
(479, 20, 'filter_options.update', '', '2021-05-18 10:32:18', '2021-05-18 10:32:18'),
(480, 20, 'filter_options.update', 'sorting: <b>2</b> change to <b>1</b>', '2021-05-18 10:33:33', '2021-05-18 10:33:33'),
(481, 20, 'filter_options.update', 'sorting: <b>1</b> change to <b>2</b>', '2021-05-18 10:33:42', '2021-05-18 10:33:42'),
(482, 20, 'filter_options.update', 'value: <b>1</b> change to <b>0</b>', '2021-05-18 11:44:36', '2021-05-18 11:44:36'),
(483, 20, 'mobile.storeVariationPrices', '', '2021-05-22 07:01:25', '2021-05-22 07:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `file_types`
--

DROP TABLE IF EXISTS `file_types`;
CREATE TABLE IF NOT EXISTS `file_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_types`
--

INSERT INTO `file_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'jpg', 'Active', '2019-06-22 08:43:39', '2019-06-22 08:43:39'),
(2, 'jpeg', 'Active', '2019-06-22 08:43:54', '2019-06-22 08:43:54'),
(3, 'png', 'Active', '2019-06-22 08:44:05', '2019-06-22 08:44:05'),
(4, 'gif', 'Active', '2019-06-22 08:44:14', '2019-06-22 08:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

DROP TABLE IF EXISTS `filter_options`;
CREATE TABLE IF NOT EXISTS `filter_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_section_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `sorting` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `filter_section_id`, `name`, `value`, `status`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 1, 'Available', 'Available', 'Active', 1, '2021-05-16 13:55:13', '2021-05-18 10:33:33'),
(2, 1, 'Upcoming', 'Coming soon', 'Active', 2, '2021-05-16 13:55:36', '2021-05-18 10:33:42'),
(3, 1, 'Rumoured', 'Rumored', 'Active', 3, '2021-05-16 13:55:55', '2021-05-18 10:32:18'),
(4, 2, 'Last 3 Months', '-3 month', 'Active', 0, '2021-05-16 14:04:33', '2021-05-16 14:04:33'),
(5, 2, 'Last 6 Months', '-6 month', 'Active', 0, '2021-05-16 14:06:37', '2021-05-16 14:06:37'),
(6, 2, 'Last 1 Year', '-1 year', 'Active', 0, '2021-05-16 14:08:33', '2021-05-16 14:08:33'),
(7, 2, 'Next 1 Month', '1 month', 'Active', 0, '2021-05-16 14:09:05', '2021-05-16 14:09:05'),
(8, 2, 'Next 2 Months', '2 month', 'Active', 0, '2021-05-16 14:09:34', '2021-05-16 14:09:34'),
(9, 2, 'Next 3 Months', '3 month', 'Active', 0, '2021-05-16 14:10:10', '2021-05-16 14:10:38'),
(10, 3, '2G', 'GSM', 'Active', 1, '2021-05-16 14:13:28', '2021-05-18 10:26:41'),
(11, 3, '3G', 'HSPA', 'Active', 2, '2021-05-16 14:13:53', '2021-05-18 10:26:57'),
(12, 3, '4G', 'LTE', 'Active', 3, '2021-05-16 14:14:11', '2021-05-18 10:29:50'),
(13, 3, '5G', '5G', 'Active', 4, '2021-05-16 14:14:34', '2021-05-18 10:30:01'),
(14, 4, 'Mini-SIM', 'Mini-SIM', 'Active', 1, '2021-05-16 14:16:08', '2021-05-16 14:16:52'),
(15, 4, 'Micro-SIM', 'Micro-SIM', 'Active', 2, '2021-05-16 14:16:41', '2021-05-16 14:16:41'),
(16, 4, 'Nano-SIM', 'Nano-SIM', 'Active', 3, '2021-05-16 14:17:20', '2021-05-16 14:17:20'),
(17, 4, 'eSIM', 'eSIM', 'Active', 4, '2021-05-16 14:17:43', '2021-05-16 14:17:43'),
(18, 5, 'Dual SIM', 'Dual SIM', 'Active', 1, '2021-05-16 14:19:57', '2021-05-16 14:19:57'),
(19, 5, 'Triple SIM', 'Triple SIM', 'Active', 2, '2021-05-16 14:20:52', '2021-05-16 14:20:52'),
(20, 5, 'Quad SIM', 'Quad SIM', 'Active', 3, '2021-05-16 14:21:23', '2021-05-16 14:21:23'),
(21, 6, 'Fast Charging', 'Fast charging', 'Active', 1, '2021-05-16 14:28:35', '2021-05-16 14:28:35'),
(22, 6, 'Wireless Charging', 'wireless charging', 'Active', 2, '2021-05-16 14:29:20', '2021-05-16 14:29:20'),
(25, 7, 'Below 5.2 inch', '0-5.2', 'Active', 1, '2021-05-16 14:35:07', '2021-05-16 14:35:56'),
(26, 7, '5.2 inch - 5.5 inch', '5.2-5.5', 'Active', 2, '2021-05-16 14:35:45', '2021-05-16 14:35:45'),
(27, 7, '5.5 inch - 6.0 inch', '5.5-6.0', 'Active', 3, '2021-05-16 14:36:34', '2021-05-16 14:36:34'),
(28, 7, '6.0 inch - 6.5 inch', '6.0-6.5', 'Active', 4, '2021-05-16 14:37:07', '2021-05-16 14:37:07'),
(29, 7, '6.5 inch & Above', '6.5-75.0', 'Active', 5, '2021-05-16 14:37:44', '2021-05-16 14:37:44'),
(30, 8, '300 ppi & Above', '300', 'Active', 1, '2021-05-16 14:41:57', '2021-05-16 14:41:57'),
(31, 8, '400 ppi & Above', '400', 'Active', 2, '2021-05-16 14:42:39', '2021-05-16 14:42:39'),
(32, 8, '500 ppi & Above', '500', 'Active', 3, '2021-05-16 14:43:10', '2021-05-16 14:43:10'),
(33, 9, 'Gorilla Glass', 'Gorilla Glass', 'Active', 1, '2021-05-16 14:45:00', '2021-05-16 14:45:00'),
(34, 9, 'AMOLED', 'AMOLED', 'Active', 2, '2021-05-16 14:46:02', '2021-05-16 14:46:02'),
(35, 9, 'Super AMOLED', 'Super AMOLED', 'Active', 3, '2021-05-16 14:47:39', '2021-05-16 14:47:39'),
(36, 9, 'IPS LCD', 'IPS LCD', 'Active', 4, '2021-05-16 14:48:09', '2021-05-16 14:48:09'),
(38, 10, 'HD Screen', '720-1079', 'Active', 1, '2021-05-16 14:52:28', '2021-05-16 14:52:28'),
(39, 10, '2k (QHD)', '1440-1663', 'Active', 3, '2021-05-16 14:52:48', '2021-05-16 14:52:48'),
(40, 10, '4k (UHD)', '1664-4800', 'Active', 4, '2021-05-16 14:53:58', '2021-05-16 14:53:58'),
(41, 11, 'Below 90 Hz', '0-89', 'Active', 1, '2021-05-16 14:56:02', '2021-05-16 14:56:02'),
(42, 11, '90 Hz & Above', '90-512', 'Active', 2, '2021-05-16 14:56:39', '2021-05-16 14:56:39'),
(43, 12, '1.4 GHz & Above', '1400-10000', 'Active', 2, '2021-05-16 14:59:02', '2021-05-16 14:59:02'),
(44, 12, '2 GHz & Above', '2000-10000', 'Active', 3, '2021-05-16 14:59:28', '2021-05-16 14:59:28'),
(45, 12, '2.3 GHz & Above', '2300-10000', 'Active', 4, '2021-05-16 14:59:44', '2021-05-16 14:59:44'),
(46, 13, 'Snapdragon', 'Snapdragon', 'Active', 1, '2021-05-16 15:01:05', '2021-05-16 15:01:05'),
(47, 13, 'Mediatek', 'Mediatek', 'Active', 2, '2021-05-16 15:01:20', '2021-05-16 15:01:20'),
(48, 13, 'Exynos', 'Exynos', 'Active', 3, '2021-05-16 15:01:49', '2021-05-16 15:01:49'),
(49, 13, 'Kirin', 'Kirin', 'Active', 4, '2021-05-16 15:02:39', '2021-05-16 15:02:39'),
(50, 14, 'Quad Core', 'Quad-core', 'Active', 1, '2021-05-16 15:03:48', '2021-05-16 15:03:48'),
(51, 14, 'Octa Core', 'Octa-core', 'Active', 3, '2021-05-16 15:04:19', '2021-05-16 15:04:19'),
(52, 14, 'Deca Core', 'Deca-core', 'Active', 4, '2021-05-16 15:04:35', '2021-05-16 15:04:35'),
(53, 15, 'Below 12 MP', '0-11', 'Active', 1, '2021-05-16 15:06:13', '2021-05-16 15:06:13'),
(54, 15, '12 MP & Above', '12-512', 'Active', 2, '2021-05-16 15:06:28', '2021-05-16 15:06:28'),
(55, 15, '16 MP & Above', '16-512', 'Active', 3, '2021-05-16 15:06:42', '2021-05-16 15:06:42'),
(56, 15, '20 MP & Above', '20-512', 'Active', 4, '2021-05-16 15:06:57', '2021-05-16 15:06:57'),
(57, 15, '48 MP & Above', '48-512', 'Active', 5, '2021-05-16 15:07:11', '2021-05-16 15:07:11'),
(58, 15, '64 MP & Above', '64-512', 'Active', 6, '2021-05-16 15:07:37', '2021-05-16 15:07:37'),
(59, 16, 'Single', 'Single', 'Active', 1, '2021-05-16 15:09:40', '2021-05-16 15:09:40'),
(60, 16, 'Dual', 'Dual', 'Active', 2, '2021-05-16 15:09:59', '2021-05-16 15:09:59'),
(61, 16, 'Triple', 'Triple', 'Active', 3, '2021-05-16 15:10:21', '2021-05-16 15:10:21'),
(62, 16, 'Quad', 'Quad', 'Active', 4, '2021-05-16 15:11:00', '2021-05-16 15:11:00'),
(63, 17, 'Panorama', 'panorama', 'Active', 8, '2021-05-16 15:12:42', '2021-05-16 15:12:42'),
(64, 17, 'Wide-angle', 'wide', 'Active', 7, '2021-05-16 15:12:57', '2021-05-16 15:12:57'),
(65, 17, 'Ultrawide', 'ultrawide', 'Active', 6, '2021-05-16 15:13:20', '2021-05-16 15:13:20'),
(66, 17, 'Depth Sensor', 'depth', 'Active', 5, '2021-05-16 15:13:38', '2021-05-16 15:13:38'),
(67, 17, 'HDR', 'HDR', 'Active', 1, '2021-05-16 15:14:07', '2021-05-16 15:14:07'),
(68, 17, 'Flash', 'flash', 'Active', 2, '2021-05-16 15:14:22', '2021-05-16 15:14:22'),
(70, 17, 'Optical Zoom', 'telephoto', 'Active', 3, '2021-05-16 15:14:57', '2021-05-16 15:14:57'),
(71, 18, 'Full-HD Resolution', '1080p', 'Active', 2, '2021-05-16 15:16:29', '2021-05-16 15:16:29'),
(72, 18, '4k Resolution', '4k', 'Active', 3, '2021-05-16 15:16:47', '2021-05-16 15:16:47'),
(73, 18, 'HD Resolution', '720p', 'Active', 1, '2021-05-16 15:17:01', '2021-05-16 15:17:01'),
(75, 19, 'Below 8 MP', '0-7', 'Active', 1, '2021-05-16 15:19:17', '2021-05-16 15:19:17'),
(76, 19, '8 MP & Above', '8-512', 'Active', 2, '2021-05-16 15:19:35', '2021-05-16 15:19:35'),
(77, 19, '12 MP & Above', '12-512', 'Active', 3, '2021-05-16 15:19:54', '2021-05-16 15:19:54'),
(78, 19, '16 MP & Above', '16-512', 'Active', 4, '2021-05-16 15:20:10', '2021-05-16 15:20:10'),
(79, 19, '32 MP & Above', '32-512', 'Active', 5, '2021-05-16 15:20:26', '2021-05-16 15:20:26'),
(80, 20, 'Single', 'Single', 'Active', 1, '2021-05-17 06:11:14', '2021-05-17 06:12:00'),
(81, 20, 'Dual', 'Dual', 'Active', 2, '2021-05-17 06:11:40', '2021-05-17 06:11:40'),
(82, 21, 'Front Flash', 'flash', 'Active', 1, '2021-05-17 06:13:20', '2021-05-17 06:13:20'),
(83, 21, 'HDR', 'HDR', 'Active', 2, '2021-05-17 06:13:50', '2021-05-17 06:13:50'),
(84, 21, 'Pop-up Camera', 'pop-up|flip-up', 'Active', 3, '2021-05-17 06:14:07', '2021-05-17 06:14:07'),
(85, 21, 'Macro', 'macro', 'Active', 4, '2021-05-17 06:14:23', '2021-05-17 06:14:23'),
(86, 21, 'Wide Angle', 'wide', 'Active', 5, '2021-05-17 06:14:38', '2021-05-17 06:14:38'),
(87, 22, 'Wi-Fi', 'Wi-Fi', 'Active', 1, '2021-05-17 06:16:40', '2021-05-17 06:16:40'),
(88, 22, 'NFC', 'NFC', 'Active', 2, '2021-05-17 06:16:54', '2021-05-17 06:16:54'),
(89, 22, 'GPS', 'GPS', 'Active', 3, '2021-05-17 06:17:09', '2021-05-17 06:17:09'),
(90, 22, 'FM Radio', 'Radio', 'Active', 4, '2021-05-17 06:17:25', '2021-05-17 06:17:25'),
(91, 22, 'Bluetooth', 'Bluetooth', 'Active', 5, '2021-05-17 06:17:41', '2021-05-17 06:17:41'),
(92, 22, 'USB Type-C', 'USB Type-C', 'Active', 6, '2021-05-17 06:17:58', '2021-05-17 06:17:58'),
(94, 22, 'Infrared', 'Infrared', 'Active', 7, '2021-05-17 06:18:29', '2021-05-17 06:18:29'),
(95, 23, 'Accelerometer', 'accelerometer', 'Active', 1, '2021-05-17 06:19:18', '2021-05-17 06:19:18'),
(96, 23, 'Gyro', 'gyro', 'Active', 2, '2021-05-17 06:19:35', '2021-05-17 06:19:35'),
(97, 23, 'Compass', 'compass', 'Active', 3, '2021-05-17 06:19:51', '2021-05-17 06:19:51'),
(98, 23, 'Proximity', 'proximity', 'Active', 4, '2021-05-17 06:20:07', '2021-05-17 06:20:07'),
(99, 23, 'Barometer', 'barometer', 'Active', 5, '2021-05-17 06:20:20', '2021-05-17 06:20:20'),
(100, 23, 'Heart Rate', 'heart rate', 'Active', 6, '2021-05-17 06:20:38', '2021-05-17 06:20:38'),
(101, 23, 'Fingerprint', 'Fingerprint', 'Active', 7, '2021-05-17 06:21:03', '2021-05-17 06:21:03'),
(102, 24, 'Android 11', 'Android 11', 'Active', 2, '2021-05-17 06:23:27', '2021-05-17 06:23:27'),
(103, 24, 'Android 10', 'Android 10', 'Active', 3, '2021-05-17 06:23:54', '2021-05-17 06:23:54'),
(104, 24, 'Android 9.0 (Pie)', 'Android 9.0', 'Active', 4, '2021-05-17 06:24:12', '2021-05-17 06:24:12'),
(105, 24, 'Android 8.1 (Oreo)', 'Android 8.1', 'Active', 5, '2021-05-17 06:24:30', '2021-05-17 06:24:30'),
(106, 24, 'Android 8.0 (Oreo)', 'Android 8.0', 'Active', 6, '2021-05-17 06:24:47', '2021-05-17 06:24:47'),
(110, 25, 'iOS 13', 'iOS 13', 'Active', 2, '2021-05-17 06:26:48', '2021-05-17 06:26:48'),
(111, 25, 'iOS 12', 'iOS 12', 'Active', 3, '2021-05-17 06:27:14', '2021-05-17 06:27:14'),
(112, 25, 'iOS 11', 'iOS 11', 'Active', 4, '2021-05-17 06:27:30', '2021-05-17 06:27:30'),
(113, 25, 'iOS 10', 'iOS 10', 'Active', 5, '2021-05-17 06:27:48', '2021-05-17 06:27:48'),
(114, 25, 'iOS 9', 'iOS 9', 'Active', 6, '2021-05-17 06:28:04', '2021-05-17 06:28:04'),
(115, 25, 'iOS 8', 'iOS 8', 'Active', 7, '2021-05-17 06:28:36', '2021-05-17 06:28:36'),
(117, 26, 'Windows', 'Windows', 'Active', 1, '2021-05-17 06:30:21', '2021-05-17 06:30:21'),
(118, 26, 'Firefox', 'Firefox', 'Active', 2, '2021-05-17 06:30:38', '2021-05-17 06:30:38'),
(119, 31, 'Price Range', '0|999999|500', 'Active', 0, '2021-05-17 06:34:05', '2021-05-17 06:34:05'),
(120, 32, 'Ram Range', '0|999999|1', 'Active', 0, '2021-05-17 06:40:35', '2021-05-17 06:40:35'),
(121, 33, 'Memory Range', '0|999999|1', 'Active', 0, '2021-05-17 06:41:39', '2021-05-17 06:41:39'),
(122, 34, 'Weight Range', '0|999999|5', 'Active', 0, '2021-05-17 06:42:56', '2021-05-17 06:42:56'),
(123, 35, 'Battery Capacity', '0|999999|200', 'Active', 0, '2021-05-17 06:43:50', '2021-05-17 06:43:50'),
(124, 36, 'brand_id', '0', 'Active', 0, '2021-05-18 09:17:46', '2021-05-18 11:44:36'),
(125, 10, 'Full HD Screen', '1080-1439', 'Active', 2, '2021-05-16 14:52:28', '2021-05-16 14:52:28'),
(126, 12, 'Below 1.4 GHz', '0-1399', 'Active', 1, '2021-05-16 14:59:02', '2021-05-16 14:59:02'),
(127, 14, 'Hexa Core', 'Hexa-core', 'Active', 2, '2021-05-16 15:04:35', '2021-05-16 15:04:35'),
(128, 17, 'Macro', 'macro', 'Active', 4, '2021-05-16 15:14:41', '2021-05-16 15:14:41'),
(129, 21, 'Depth Sensor', 'depth', 'Active', 6, '2021-05-17 06:14:38', '2021-05-17 06:14:38'),
(130, 21, 'Ultrawide', 'ultrawide', 'Active', 7, '2021-05-17 06:14:38', '2021-05-17 06:14:38'),
(131, 21, 'Panorama', 'panorama', 'Active', 8, '2021-05-17 06:14:38', '2021-05-17 06:14:38'),
(132, 24, 'Android 12', 'Android 12', 'Active', 1, '2021-05-17 06:23:27', '2021-05-17 06:23:27'),
(133, 25, 'iOS 14', 'iOS 14', 'Active', 1, '2021-05-17 06:26:48', '2021-05-17 06:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `filter_sections`
--

DROP TABLE IF EXISTS `filter_sections`;
CREATE TABLE IF NOT EXISTS `filter_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_tab_id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `field` varchar(100) NOT NULL,
  `type` enum('Checkbox','TableBrands','Radio','Slider') NOT NULL DEFAULT 'Checkbox',
  `show_label` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `sorting` int(11) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filter_sections`
--

INSERT INTO `filter_sections` (`id`, `filter_tab_id`, `label`, `field`, `type`, `show_label`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Market Status', 'market_status', 'Checkbox', 'Yes', 3, 'Active', '2021-05-13 12:02:11', '2021-05-17 08:55:07'),
(2, 3, 'Launched Within', 'launched_within', 'Radio', 'Yes', 4, 'Active', '2021-05-13 12:08:59', '2021-05-17 08:55:38'),
(3, 7, 'Network Type', 'network_type', 'Checkbox', 'Yes', 8, 'Active', '2021-05-13 12:10:24', '2021-05-17 09:05:31'),
(4, 7, 'SIM Size', 'sim_size', 'Checkbox', 'Yes', 9, 'Active', '2021-05-13 12:11:25', '2021-05-17 09:06:24'),
(5, 7, 'SIM Support', 'sim_support', 'Checkbox', 'Yes', 10, 'Active', '2021-05-13 12:12:50', '2021-05-17 09:06:54'),
(6, 8, 'Others', 'battery_others', 'Checkbox', 'Yes', 12, 'Active', '2021-05-13 12:13:35', '2021-05-17 09:09:24'),
(7, 9, 'Screen Size', 'screen_size', 'Checkbox', 'Yes', 13, 'Active', '2021-05-13 12:13:56', '2021-05-17 09:14:15'),
(8, 9, 'Pixel Density', 'pixel_density', 'Radio', 'Yes', 14, 'Active', '2021-05-13 12:20:45', '2021-05-17 09:14:41'),
(9, 9, 'Screen Features', 'screen_features', 'Checkbox', 'Yes', 15, 'Active', '2021-05-13 12:22:17', '2021-05-17 09:26:52'),
(10, 9, 'Screen Resolution', 'screen_resolution', 'Checkbox', 'Yes', 16, 'Active', '2021-05-13 12:22:50', '2021-05-17 09:27:28'),
(11, 9, 'Refresh Rate', 'refresh_rate', 'Radio', 'Yes', 17, 'Active', '2021-05-13 12:23:32', '2021-05-17 09:28:00'),
(12, 10, 'Processor Speed', 'processor_speed', 'Radio', 'Yes', 18, 'Active', '2021-05-13 12:24:26', '2021-05-17 09:29:13'),
(13, 10, 'System On Chip', 'system_on_chip', 'Checkbox', 'Yes', 19, 'Active', '2021-05-13 12:24:59', '2021-05-17 09:29:39'),
(14, 10, 'Processor Cores', 'processor_cores', 'Checkbox', 'Yes', 20, 'Active', '2021-05-13 12:26:14', '2021-05-17 09:29:59'),
(15, 11, 'Camera Resolution', 'mc_resolution', 'Radio', 'Yes', 21, 'Active', '2021-05-13 12:28:31', '2021-05-17 09:31:31'),
(16, 11, 'Number of Cameras', 'mc_number', 'Checkbox', 'Yes', 22, 'Active', '2021-05-13 12:29:05', '2021-05-17 09:32:00'),
(17, 11, 'Camera Features', 'mc_features', 'Checkbox', 'Yes', 23, 'Active', '2021-05-13 12:31:09', '2021-05-17 09:32:18'),
(18, 11, 'Video Recording', 'mc_video', 'Checkbox', 'Yes', 24, 'Active', '2021-05-15 04:59:48', '2021-05-17 09:32:45'),
(19, 12, 'Camera Resolution', 'sc_resolution', 'Radio', 'Yes', 25, 'Active', '2021-05-15 05:00:51', '2021-05-17 09:34:48'),
(20, 12, 'Number of Cameras', 'sc_number', 'Checkbox', 'Yes', 26, 'Active', '2021-05-15 05:01:35', '2021-05-17 09:35:05'),
(21, 12, 'Camera Features', 'sc_features', 'Checkbox', 'Yes', 27, 'Active', '2021-05-15 05:01:57', '2021-05-17 09:35:23'),
(22, 13, 'Connectivity', 'connectivity', 'Checkbox', 'No', 28, 'Active', '2021-05-15 05:02:12', '2021-05-17 09:35:51'),
(23, 14, 'Sensors', 'sensors', 'Checkbox', 'No', 29, 'Active', '2021-05-15 05:07:49', '2021-05-17 09:36:19'),
(24, 15, 'Android', 'android', 'Checkbox', 'Yes', 30, 'Active', '2021-05-15 05:09:32', '2021-05-17 09:36:48'),
(25, 15, 'iOS', 'ios', 'Checkbox', 'Yes', 31, 'Active', '2021-05-15 05:12:26', '2021-05-17 09:37:02'),
(26, 15, 'Others', 'os_others', 'Checkbox', 'Yes', 32, 'Active', '2021-05-15 05:14:37', '2021-05-17 09:37:22'),
(31, 2, 'Price', 'price_range', 'Slider', 'No', 2, 'Active', '2021-05-17 06:33:03', '2021-05-18 10:28:42'),
(32, 4, 'RAM', 'ram_range', 'Slider', 'No', 5, 'Active', '2021-05-17 06:35:18', '2021-05-17 08:59:28'),
(33, 5, 'Memory', 'storage_range', 'Slider', 'No', 6, 'Active', '2021-05-17 06:36:45', '2021-05-17 09:02:58'),
(34, 6, 'Weight', 'weight_range', 'Slider', 'No', 7, 'Active', '2021-05-17 06:37:35', '2021-05-17 09:03:58'),
(35, 8, 'Battery Capacity', 'battery_capacity', 'Slider', 'Yes', 11, 'Active', '2021-05-17 06:38:20', '2021-05-17 09:08:14'),
(36, 1, 'Brands', 'brands', 'TableBrands', 'No', 1, 'Active', '2021-05-17 08:53:11', '2021-05-18 09:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `filter_tabs`
--

DROP TABLE IF EXISTS `filter_tabs`;
CREATE TABLE IF NOT EXISTS `filter_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `sorting` int(11) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filter_tabs`
--

INSERT INTO `filter_tabs` (`id`, `title`, `sorting`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Brands', 1, 'Active', '2021-05-17 07:06:26', '2021-05-17 07:06:26'),
(2, 'Price', 2, 'Active', '2021-05-17 07:06:43', '2021-05-17 07:06:43'),
(3, 'Availablity', 3, 'Active', '2021-05-17 07:07:10', '2021-05-17 07:07:10'),
(4, 'RAM', 4, 'Active', '2021-05-17 07:07:32', '2021-05-17 07:07:32'),
(5, 'Memory', 5, 'Active', '2021-05-17 07:07:48', '2021-05-17 07:07:48'),
(6, 'Weight', 6, 'Active', '2021-05-17 07:08:04', '2021-05-17 07:08:04'),
(7, 'Network', 7, 'Active', '2021-05-17 07:08:33', '2021-05-17 07:08:33'),
(8, 'Battery', 8, 'Active', '2021-05-17 07:08:49', '2021-05-17 07:08:49'),
(9, 'Display', 9, 'Active', '2021-05-17 07:09:02', '2021-05-17 07:09:02'),
(10, 'Processor', 10, 'Active', '2021-05-17 07:09:17', '2021-05-17 07:09:17'),
(11, 'Main Camera', 11, 'Active', '2021-05-17 07:10:07', '2021-05-17 07:10:07'),
(12, 'Selfie Camera', 12, 'Active', '2021-05-17 07:10:22', '2021-05-17 07:10:22'),
(13, 'Connectivity', 13, 'Active', '2021-05-17 07:10:37', '2021-05-17 07:10:37'),
(14, 'Sensors', 14, 'Active', '2021-05-17 07:10:54', '2021-05-17 07:10:54'),
(15, 'OS', 15, 'Active', '2021-05-17 07:11:08', '2021-05-17 07:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `fa_icon` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `short_description` text,
  `sorting` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title`, `slug`, `fa_icon`, `status`, `short_description`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'General', 'general', 'fa-globe', 'Active', 'The general settings of site', 1, '2020-01-14 05:34:56', '2020-01-14 06:38:03'),
(2, 'Google Login', 'google-login', 'fa-google', 'Active', 'Enable logging into the site via google.', 9, '2020-01-14 05:39:50', '2020-01-14 06:39:30'),
(3, 'Facebook Login', 'facebook-login', 'fa-facebook', 'Active', 'Enable logging into the site via facebook.', 10, '2020-01-14 05:40:48', '2020-01-14 06:38:43'),
(4, 'Envato Login', 'envato-login', 'fa-envira', 'Active', 'Manage envato integration module and login', 12, '2020-01-14 05:44:59', '2020-01-14 06:40:21'),
(5, 'Uploading', 'uploading', 'fa-upload', 'Active', 'Configure size and type of files that users are able to upload.', 13, '2020-01-14 05:48:26', '2020-01-14 06:41:38'),
(6, 'Ticketing', 'ticketing', 'fa-ticket', 'Active', 'Toggle email functionality for tickets, change mail handler, secret key and more.', 2, '2020-01-14 05:52:59', '2020-01-14 05:52:59'),
(8, 'Social Media Links', 'social-media-links', 'fa-share-alt', 'Active', 'Social media links', 14, '2020-01-14 07:57:26', '2020-01-14 07:58:38'),
(9, 'Twitter Login', 'twitter-login', 'fa-twitter', 'Active', 'Manage twitter integration module and login', 11, '2020-01-14 05:44:59', '2020-01-14 06:40:21'),
(10, 'Articles', 'article', 'fa-book', 'Active', 'How documentation articles are viewed', 3, '2020-01-22 09:30:55', '2020-01-22 11:28:56'),
(11, 'Our Projects', 'our-projects', 'fa-cube', 'Active', 'Our Product Sections', 4, '2020-01-22 10:57:58', '2020-01-22 11:29:24'),
(12, 'Our Services', 'our-services', 'fa-cog', 'Active', 'Our service section', 5, '2020-01-22 11:17:15', '2020-01-22 11:29:11'),
(13, 'Our Support Team', 'our-support-team', 'fa-user-secret', 'Active', 'Our Support Team', 6, '2020-01-22 11:28:10', '2020-01-22 11:28:10'),
(14, 'Testimonials', 'testimonials', 'fa-quote-left', 'Active', 'Testimonials', 7, '2020-01-22 11:37:24', '2020-01-22 11:37:24'),
(15, 'Contact Us', 'contact-us', 'fa-envelope', 'Active', 'Contact Us', 8, '2020-01-22 11:45:20', '2020-01-22 11:45:20'),
(16, 'Pricing', 'pricing', 'fa-money', 'Active', NULL, 1, '2020-07-31 03:50:36', '2020-07-31 03:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `full_page` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) DEFAULT NULL,
  `file_dir` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) NOT NULL,
  `file_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `filename`, `file_dir`, `original_filename`, `file_type_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'media/tickets/', '(JPEG Image, 241 × 209 pixels).jpg', 1, 1, '2020-03-27 10:37:16', '2020-03-27 10:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `media_maps`
--

DROP TABLE IF EXISTS `media_maps`;
CREATE TABLE IF NOT EXISTS `media_maps` (
  `media_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_field` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_maps`
--

INSERT INTO `media_maps` (`media_id`, `item_id`, `item_field`, `created_at`, `updated_at`) VALUES
(1, 27, 'tickets.message', '2020-03-27 10:37:20', '2020-03-27 10:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_15_062636_entrust_setup_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
CREATE TABLE IF NOT EXISTS `mobiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` int(11) NOT NULL,
  `detail_url` varchar(255) DEFAULT NULL,
  `technology` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `announced` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `dimensions` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `weight` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sim` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `resolution` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `multitouch` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `os` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `chipset` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cpu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `card_slot` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `internal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ram` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `storage` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `main_camera` varchar(255) NOT NULL,
  `mc_filter` int(11) NOT NULL,
  `mc_features` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mc_video` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `selfie_camera` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sc_filter` int(11) NOT NULL,
  `sc_features` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sc_video` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alert_types` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `loudspeaker` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jack_3_5mm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wlan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bluetooth` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gps` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `radio` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `usb` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sensors` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `messaging` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `battery` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `battery_filter` int(11) NOT NULL,
  `colors` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ext` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `images` int(11) NOT NULL,
  `pixel_density` int(11) NOT NULL,
  `protection` varchar(255) DEFAULT NULL,
  `px_resolution` int(11) NOT NULL DEFAULT '0',
  `hz_refresh_rate` int(11) NOT NULL DEFAULT '0',
  `mhz_processor_speed` int(11) NOT NULL DEFAULT '0',
  `nfc` varchar(255) DEFAULT NULL,
  `infrared` varchar(255) DEFAULT NULL,
  `revision` int(11) NOT NULL,
  `origin_id` int(11) NOT NULL,
  `sorting` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `detail_url` (`detail_url`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34904 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `brand_id`, `title`, `price`, `detail_url`, `technology`, `announced`, `status`, `dimensions`, `weight`, `sim`, `type`, `size`, `resolution`, `multitouch`, `os`, `chipset`, `cpu`, `card_slot`, `internal`, `ram`, `storage`, `main_camera`, `mc_filter`, `mc_features`, `mc_video`, `selfie_camera`, `sc_filter`, `sc_features`, `sc_video`, `alert_types`, `loudspeaker`, `jack_3_5mm`, `wlan`, `bluetooth`, `gps`, `radio`, `usb`, `sensors`, `messaging`, `battery`, `battery_filter`, `colors`, `ext`, `images`, `pixel_density`, `protection`, `px_resolution`, `hz_refresh_rate`, `mhz_processor_speed`, `nfc`, `infrared`, `revision`, `origin_id`, `sorting`, `created`, `active`) VALUES
(34752, 114, '1c (2019)1', 230, 'https://www.gsmarena.com/alcatel_1c_(2019)-9511.php', 'GSM / HSPA', '2019, January', 'Coming soon. Exp. release 2019, Q1', '136.6 x 65.3 x 10 mm', '148', 'Mini-SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '480 x 960 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Spreadtrum SC7731E', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'LED flash, HDR', '720p@30fps', 'Single: 2 MP', 2, 'LED flash', '720p@30fps', '', 'Yes', 'Yes', 'Wi-Fi', 'Yes', 'Yes', 'Yes', 'USB Type-C', 'accelerometer', '', '2000 mAh battery', 2000, 'Enamel Blue, Blush Pink, Volcano Black', '.jpg', 3, 300, 'Gorilla Glass 5.0', 0, 0, 0, 'Yes', 'Yes', -1, 9511, 1546300800, '2021-04-23 05:20:44', 1),
(34753, 3, 'A10 Lite 2019', 99, 'https://www.gsmarena.com/allview_a10_lite_2019-9504.php', 'GSM / HSPA', '2018, October', 'Available. Released 2018, October', '145.5 x 71.8 x 9.9 mm', '152', 'Triple SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.34', '480 x 960 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6580M (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 8 MP', 8, 'LED flash, HDR', '720p', 'Single: 2 MP', 2, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Li-Ion 2150 mAh battery', 2150, 'Black, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9504, 1538352000, '2019-02-24 05:20:54', 1),
(34756, 3, 'A10 Plus', 75, 'https://www.gsmarena.com/allview_a10_plus-9471.php', 'GSM / HSPA', '2018, November', 'Available. Released 2018, November', '151 x 71.8 x 9.6 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.34', '480 x 960 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 8 MP', 8, 'LED flash, HDR', '720p', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Li-Ion 2200 mAh battery', 2200, 'Gray', '.jpg', 0, 0, '', 720, 0, 0, NULL, NULL, 554, 9471, 1541030400, '2019-02-24 05:20:54', 1),
(34757, 7, 'Diamond', 300, 'https://www.gsmarena.com/archos_diamond-9593.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, May', '158.7 x 74.1 x 8.6 mm', '166', 'Dual SIM', 'AMOLED capacitive touchscreen, 16M colors', '6.39', '1080 x 2340 pixels', '', 'Android 9.0 (Pie)', 'Mediatek Helio P70 (12nm)', 'Octa-core', 'microSD, up to 512 GB', '128 GB, 4 GB RAM', '4 GB', '128 GB', 'Dual: 16 MP + 5 MP', 16, 'Dual-LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3400 mAh battery', 3400, 'Dark Blue', '.jpg', 0, 0, '', 1445, 0, 0, NULL, NULL, -1, 9593, 1548979200, '2019-02-24 05:21:08', 1),
(34758, 7, 'Oxygen 68XL', 150, 'https://www.gsmarena.com/archos_oxygen_68xl-9594.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, May', '173.5 x 81.6 x 9 mm', '214', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.85', '640 x 1352 pixels', '', 'Android 9.0 (Pie)', 'Mediatek MT6762 Helio P22 (12 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Dual: 8 MP + 0.3 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Ion 5000 mAh battery', 5000, 'Dark Blue', '.jpg', 0, 0, '', 0, 144, 0, NULL, NULL, -1, 9594, 1548979200, '2019-02-24 05:21:08', 1),
(34759, 7, 'Oxygen 63', 130, 'https://www.gsmarena.com/archos_oxygen_63-9595.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, May', '159.2 x 75.8 x 9.3 mm', '162', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.26', '720 x 1520 pixels', '', 'iOS 13', 'Unisoc SC9863', 'Octa-core', 'microSD', '64 GB, 4 GB RAM', '4 GB', '64 GB', 'Dual: 8 MP + 0.3 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Removable Li-Ion 3000 mAh battery', 3000, 'Dark Blue', '.jpg', 0, 0, '', 0, 0, 1300, NULL, NULL, -1, 9595, 1548979200, '2019-02-24 05:21:08', 1),
(34760, 7, 'Oxygen 57', 100, 'https://www.gsmarena.com/archos_oxygen_57-9596.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, May', '147.8 x 70.7 x 9.3 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.71', '720 x 1520 pixels', '', 'Android 9.0 (Pie)', 'Unisoc SC9863', 'Octa-core', 'microSD', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Dual: 8 MP + 0.3 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Removable Li-Ion 2800 mAh battery', 2800, 'Dark Violet', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9596, 1548979200, '2019-02-24 05:21:08', 1),
(34761, 8, 'Zenfone Max Pro (M1) ZB601KL/ZB602K', 160, 'https://www.gsmarena.com/asus_zenfone_max_pro_(m1)_zb601kl_zb602k-9173.php', 'GSM / HSPA / LTE', '2018, April', 'Available. Released 2018, May', '159 x 76 x 8.5 mm', '180', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.99', '1080 x 2160 pixels', '', 'Android 8.1 (Oreo)', 'Qualcomm SDM636 Snapdragon 636 (14 nm)', 'Octa-core', 'microSD, up to 512 GB', '64 GB, 4/6 GB RAM or 32 GB, 3 GB RAM', '3 GB/6 GB/4 GB', '32 GB/64 GB', 'Dual: 13 MP + 5 MP + 16 MP + 5 MP', 13, 'LED flash, HDR, panorama', '2160p@30fps, 1080p@30/60fps', 'Single: 8 MP or 16 MP', 8, 'LED flash', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 5000 mAh battery', 5000, 'Meteor Silver, Deepsea Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9173, 1525132800, '2019-02-24 05:21:12', 1),
(34762, 15, 'C5L', 56, 'https://www.gsmarena.com/blu_c5l-9597.php', 'GSM / HSPA / LTE', '2019, February', 'Available. Released 2019, February', '144.3 x 72.5 x 10.3 mm', '153', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '480 x 854 pixels', '', 'Android 8.1 Oreo (Go edition)', '', 'Quad-core', 'microSD, up to 64 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'LED flash', '1080p@30fps', 'Single: 2 MP', 2, 'LED flash', '720p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Li-Ion 2000 mAh battery', 2000, 'Black, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9597, 1548979200, '2019-02-24 05:21:26', 1),
(34763, 15, 'Studio X8 HD (2019)', 60, 'https://www.gsmarena.com/blu_studio_x8_hd_(2019)-9565.php', 'GSM / HSPA', '2019, February', 'Available. Released 2019, February', '145.5 x 74.5 x 9.8 mm', '143', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 64 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 8 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, '', '720p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Li-Ion 2000 mAh battery', 2000, 'Black, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9565, 1548979200, '2019-02-24 05:21:26', 1),
(34764, 15, 'C6L', 64, 'https://www.gsmarena.com/blu_c6l-9542.php', 'GSM / HSPA / LTE', '2019, January', 'Available. Released 2019, January', '154.4 x 78.6 x 10.4 mm', '203', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Firefox', '', 'Quad-core', 'microSD, up to 64 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '720p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Li-Ion 2500 mAh battery', 2500, 'Black, Gold, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9542, 1546300800, '2019-02-24 05:21:26', 1),
(34765, 15, 'Vivo XL4', 121, 'https://www.gsmarena.com/blu_vivo_xl4-9470.php', 'GSM / HSPA / LTE', '2018, December', 'Available. Released 2018, December', '157.2 x 76.2 x 8 mm', '178', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.2', '720 x 1520 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6762 Helio P22 (12 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash', '1080p@30fps', 'Single: 13 MP', 13, 'LED flash', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Black, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9470, 1543622400, '2019-02-24 05:21:26', 1),
(34766, 25, 'Power Max P8100S', 900, 'https://www.gsmarena.com/energizer_power_max_p8100s-9590.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, November', '-', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '8.1', '1536 x 2048 pixels', '', 'Android 9.0 (Pie)', 'Qualcomm SDM855 Snapdragon 855 (7 nm)', 'Octa-core', 'microSD, up to 256 GB', '256 GB, 8 GB RAM', '8 GB', '256 GB', 'Dual: 48 MP + 12 MP', 48, 'Dual-LED flash, HDR, panorama', '2160p@30fps', 'Single: 24 MP', 24, '', '1080p@30fps', '', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 10,000 mAh battery', 10000, 'Dark red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9590, 1548979200, '2019-02-24 05:21:54', 1),
(34779, 36, 'P smart 2019', 250, 'https://www.gsmarena.com/huawei_p_smart_2019-9409.php', 'GSM / HSPA / LTE', '2018, December', 'Available. Released 2018, December', '155.2 x 73.4 x 8 mm', '160', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.21', '1080 x 2340 pixels', '', 'Android 9.0 (Pie); EMUI 9', 'Hisilicon Kirin 710 (12 nm)', 'Octa-core', 'microSD, up to 512 GB', '32/64 GB, 3 GB RAM', '3 GB', '64 GB/32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, HDR, panorama', '1080p@30/60fps', 'Single: 16 MP or 8 MP', 16, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3400 mAh battery', 3400, 'Midnight Black, Aurora Blue, Sapphire Blue, Coral Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9409, 1543622400, '2019-02-24 05:22:17', 1),
(34780, 36, 'Y6 Prime (2018)', 140, 'https://www.gsmarena.com/huawei_y6_prime_(2018)-9502.php', 'GSM / HSPA / LTE', '2018, April', 'Available. Released 2018, May', '152.4 x 73 x 7.8 mm', '150', 'Dual SIM', 'S-IPS LCD capacitive touchscreen, 16M colors', '5.7', '720 x 1440 pixels', '', 'Android 8.0 (Oreo); EMUI 8', 'Qualcomm MSM8917 Snapdragon 425 (28 nm)', 'Quad-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Single: 13 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Black, Gold, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9502, 1525132800, '2019-02-24 05:22:17', 1),
(34781, 46, 'Z92', 125, 'https://www.gsmarena.com/lava_z92-9541.php', 'GSM / HSPA / LTE', '2019, January', 'Available. Released 2019, January', '156.9 x 75.8 x 8 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.22', '720 x 1520 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6762 Helio P22 (12 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3260 mAh battery', 3260, 'Green', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9541, 1546300800, '2019-02-24 05:22:48', 1),
(34782, 49, 'Q60', 295, 'https://www.gsmarena.com/lg_q60-9585.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, Q1', '161.3 x 77 x 8.7 mm', '-', 'Single SIM or Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.26', '720 x 1520 pixels', '', 'Android 9.0 (Pie)', '', 'Octa-core', 'microSD, up to 512 GB', '64 GB, 3 GB RAM', '3 GB', '64 GB', '', 0, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 13 MP', 13, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3500 mAh battery', 3500, 'Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9585, 1548979200, '2019-02-24 05:23:01', 1),
(34783, 49, 'K50', 245, 'https://www.gsmarena.com/lg_k50-9586.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, Q1', '161.3 x 77 x 8.7 mm', '-', 'Single SIM or Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.26', '720 x 1520 pixels', '', 'Android 9.0 (Pie)', '', 'Octa-core', 'microSD, up to 512 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 13 MP', 13, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3500 mAh battery', 3500, 'Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9586, 1548979200, '2019-02-24 05:23:01', 1),
(34784, 49, 'K40', 185, 'https://www.gsmarena.com/lg_k40-9587.php', 'GSM / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, Q1', '153 x 71.9 x 8.3 mm', '-', 'Single SIM or Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.7', '720 x 1440 pixels', '', 'Android 9.0 (Pie)', '', 'Octa-core', 'microSD, up to 512 GB', '32 GB, 2 GB RAM', '2 GB', '32 GB', 'Single: 16 MP', 16, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9587, 1548979200, '2019-02-24 05:23:01', 1),
(34785, 49, 'Tribute Empire', 170, 'https://www.gsmarena.com/lg_tribute_empire-9544.php', 'GSM / CDMA / HSPA / LTE', '2019, January', 'Available. Released 2019, January', '144.8 x 71.8 x 8.1 mm', '140.1', 'Nano-SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6750 (28 nm)', 'Octa-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Removable Li-Ion 2500 mAh battery', 2500, 'White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9544, 1546300800, '2019-02-24 05:23:01', 1),
(34786, 58, 'Moto G Turbo', 280, 'https://www.gsmarena.com/motorola_moto_g_turbo-7743.php', 'GSM / HSPA / LTE', '2015, November', 'Available. Released 2015, November', '142.1 x 72.4 x 11.6 mm', '155', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 5.1.1 (Lollipop)', 'Qualcomm MSM8939 Snapdragon 615 (28 nm)', 'Octa-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash, panorama', '1080p@30fps', 'Single: 5 MP', 5, 'Auto-HDR', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2470 mAh battery', 2470, 'Black, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7743, 1446336000, '2019-02-24 05:23:37', 1),
(34787, 67, 'Find X Lamborghini', 1700, 'https://www.gsmarena.com/oppo_find_x_lamborghini-9248.php', 'GSM / HSPA / LTE', '2018, June', 'Available. Released 2018, August', '156.7 x 74.2 x 9.4 mm', '186', 'Dual SIM', 'AMOLED capacitive touchscreen, 16M colors', '6.42', '1080 x 2340 pixels', '', 'Android 8.1 (Oreo); ColorOS 5.1', 'Qualcomm SDM845 Snapdragon 845 (10 nm)', 'Octa-core', 'No', '512 GB, 8 GB RAM', '8 GB', '512 GB', 'Dual: 16 MP + 20 MP', 16, 'LED flash, HDR, panorama', '2160p@30fps, 1080p@240fps, 720p@480fps', 'Single: 25 MP', 25, 'Auto-HDR', '1080p@30fps', '', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3400 mAh battery', 3400, 'Black (carbon fiber texture back)', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9248, 1533081600, '2019-02-24 05:24:11', 1),
(34788, 80, 'Z3 Corporate', 200, 'https://www.gsmarena.com/samsung_z3_corporate-8170.php', 'GSM / HSPA / LTE', '2016, June', 'Available. Released 2016, June', '141.5 x 69.9 x 7.9 mm', '-', 'Dual SIM', 'Super AMOLED capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Tizen 2.4', 'Qualcomm MSM8916 Snapdragon 410 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 2600 mAh battery', 2600, 'Black, Silver, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8170, 1464739200, '2019-02-24 05:25:02', 1),
(34789, 80, 'Galaxy Note 10.1 (2014)', 370, 'https://www.gsmarena.com/samsung_galaxy_note_10_1_(2014)-5677.php', 'GSM / HSPA / LTE', '2013, September', 'Available. Released 2013, October', '243.1 x 171.4 x 7.9 mm', '540', 'Micro-SIM', 'Super clear LCD capacitive touchscreen, 16M colors', '10.1', '2560 x 1600 pixels', '', 'Android 4.3 (Jelly Bean)', 'Qualcomm Snapdragon 800 (28 nm)', 'Octa-core', 'microSD, up to 64 GB', '16/32/64 GB, 3 GB RAM', '3 GB', '64 GB/32 GB/16 GB', 'Single: 8 MP', 8, 'LED flash', '1080p@60fps (LTE model)', 'Single: 2 MP', 2, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 8220 mAh battery', 8220, 'Black, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 5677, 1380585600, '2019-02-24 05:25:05', 1),
(34790, 83, 'Aquos S3 High', 400, 'https://www.gsmarena.com/sharp_aquos_s3_high-9233.php', 'GSM / CDMA / HSPA / LTE', '2018, June', 'Available. Released 2018, July', '148.2 x 74.2 x 8 mm', '167.4', 'Dual SIM', 'IGZO IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 2160 pixels', '', 'Android 8.0 (Oreo)', 'Qualcomm SDM660 Snapdragon 660 (14 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 8 GB RAM', '8 GB', '64 GB', 'Dual: 12 MP + 13 MP', 12, 'Dual-LED dual-tone flash, HDR, panorama', '1080p@30fps', 'Single: 16 MP', 16, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3200 mAh battery', 3200, 'Black, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9233, 1530403200, '2019-02-24 05:25:24', 1),
(34791, 97, 'Y89', 210, 'https://www.gsmarena.com/vivo_y89-9526.php', 'GSM / CDMA / HSPA / LTE', '2019, January', 'Available. Released 2019, January', '154.8 x 75 x 7.9 mm', '149.3', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.26', '1080 x 2280 pixels', '', 'Android 8.1 (Oreo)', 'Qualcomm MSM8953-Pro Snapdragon 626 (14 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 4 GB RAM', '4 GB', '64 GB', 'Dual: 16 MP + 2 MP', 16, 'LED flash, panorama', '1080p@30fps', 'Single: 16 MP', 16, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3260 mAh battery', 3260, 'Aurora, Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9526, 1546300800, '2019-02-24 05:25:56', 1),
(34792, 97, 'Y93 (Mediatek)', 150, 'https://www.gsmarena.com/vivo_y93_(mediatek)-9496.php', 'GSM / HSPA / LTE', '2018, December', 'Available. Released 2019, January', '155.1 x 75.1 x 8.3 mm', '163.5', 'Single SIM or Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.22', '720 x 1520 pixels', '', 'Android 8.1 (Oreo); Funtouch 4.5', 'Mediatek MT6762 Helio P22 (12 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 4 GB RAM', '4 GB', '32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4030 mAh battery', 4030, 'Starry Black, Nebula Purple', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9496, 1546300800, '2019-02-24 05:25:56', 1),
(34793, 97, 'Y93s', 230, 'https://www.gsmarena.com/vivo_y93s-9467.php', 'GSM / CDMA / HSPA / LTE', '2018, December', 'Available. Released 2018, December', '155.1 x 75.1 x 8.3 mm', '165', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.2', '720 x 1520 pixels', '', 'Android 8.1 (Oreo); Funtouch 4.5', 'Mediatek MT6762 Helio P22 (12 nm)', 'Octa-core', 'microSD, up to 256 GB', '128 GB, 4 GB RAM', '4 GB', '128 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4030 mAh battery', 4030, 'Zixia Red, Aurora Red, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9467, 1543622400, '2019-02-24 05:25:56', 1),
(34794, 97, 'Y91', 200, 'https://www.gsmarena.com/vivo_y91-9480.php', 'GSM / HSPA / LTE', '2018, November', 'Available. Released 2018, November', '155.1 x 75.1 x 8.3 mm', '163.5', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.22', '720 x 1520 pixels', '', 'Android 8.1 (Oreo); Funtouch 4.5', 'Qualcomm SDM439 Snapdragon 439 (12 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4030 mAh battery', 4030, 'Starry Black, Ocean Blue, Red (Y91i only)', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9480, 1541030400, '2019-02-24 05:25:56', 1),
(34795, 97, 'Y55L (vivo 1603)', 114, 'https://www.gsmarena.com/vivo_y55l_(vivo_1603)-9522.php', 'GSM / HSPA / LTE', '2016, October', 'Available. Released 2016, October', '147.9 x 72.9 x 7.5 mm', '142', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.2', '720 x 1280 pixels', '', 'Android 6 (Marshmallow); Funtouch 2.6', 'Qualcomm MSM8937 Snapdragon 430 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2650 mAh battery', 2650, 'Gold, Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9522, 1475280000, '2019-02-24 05:25:57', 1),
(34796, 97, 'V5 Lite (vivo 1609)', 160, 'https://www.gsmarena.com/vivo_v5_lite_(vivo_1609)-8532.php', 'GSM / HSPA / LTE', '2017, January', 'Available. Released 2017, February', '153.8 x 75.5 x 7.6 mm', '155', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 6 (Marshmallow); Funtouch 3', '', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 16 MP', 16, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Crown Gold, Rose Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8532, 1485907200, '2019-02-24 05:25:57', 1),
(34797, 103, 'Mi 9 Explore', 530, 'https://www.gsmarena.com/xiaomi_mi_9_explore-9584.php', 'GSM / CDMA / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, March', '157.5 x 74.7 x 7.6 mm', '173', 'Dual SIM', 'Super AMOLED capacitive touchscreen, 16M colors', '6.39', '1080 x 2340 pixels', '', 'Android 9.0 (Pie); MIUI 10', 'Qualcomm SDM855 Snapdragon 855 (7 nm)', 'Octa-core', 'No', '256 GB, 12 GB RAM', '12 GB', '256 GB', '', 0, 'Dual-LED flash, HDR, panorama', '2160p@30/60fps, 1080p@30/120/240fps, 1080p@960fps', 'Single: 20 MP', 20, 'HDR', '1080p@30fps', '', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3300 mAh battery', 3300, 'Transparent Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9584, 1548979200, '2019-02-24 05:26:10', 1),
(34798, 103, 'Mi 9 SE', 300, 'https://www.gsmarena.com/xiaomi_mi_9_se-9583.php', 'GSM / CDMA / HSPA / LTE', '2019, February', 'Coming soon. Exp. release 2019, March', '147.5 x 70.5 x 7.5 mm', '155', 'Dual SIM', 'Super AMOLED capacitive touchscreen, 16M colors', '5.97', '1080 x 2340 pixels', '', 'Android 9.0 (Pie); MIUI 10', 'Qualcomm SDM712 Snapdragon 712 (10 nm)', 'Octa-core', 'No', '64/128 GB, 6 GB RAM', '6 GB', '64 GB/128 GB', '', 0, 'Dual-LED flash, HDR, panorama', '2160p@30fps, 1080p@30/60/120fps, 720p@960fps', 'Single: 20 MP', 20, 'HDR', '1080p@30fps', '', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3070 mAh battery', 3070, 'Violet, Blue, Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, -1, 9583, 1548979200, '2019-02-24 05:26:10', 1),
(34799, 105, 'Max 1', 52, 'https://www.gsmarena.com/yezz_max_1-9519.php', 'GSM / HSPA', '2018, October', 'Available. Released 2018, December', '139 x 65.8 x 8.8 mm', '120', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.0', '480 x 960 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6580M (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '720p@30fps', 'Single: 8 MP', 8, 'LED flash', '720p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 2000 mAh battery', 2000, 'Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9519, 1543622400, '2019-02-24 05:26:18', 1),
(34800, 105, 'Andy 4E7', 80, 'https://www.gsmarena.com/yezz_andy_4e7-9514.php', 'GSM / HSPA', '2018, September', 'Available. Released 2018, September', '126 x 65 x 10.7 mm', '112', 'Dual SIM', 'TN capacitive touchscreen, 16M colors', '5.0', '480 x 800 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6580M (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'LED flash', '1080p@30fps', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 1400 mAh battery', 1400, 'Black, Dark Gray, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9514, 1535760000, '2019-02-24 05:26:18', 1),
(34801, 105, 'Andy 5E5', 63, 'https://www.gsmarena.com/yezz_andy_5e5-9486.php', 'GSM / HSPA', '2018, August', 'Available. Released 2018, August', '139.8 x 71.5 x 8.6 mm', '125', 'Dual SIM', 'TN capacitive touchscreen, 16M colors', '5.0', '480 x 854 pixels', '', 'Android 8.0 Oreo (Go edition)', 'Mediatek MT6580M (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'LED flash', '1080p@30fps', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2000 mAh battery', 2000, 'Black, Dark Gray, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9486, 1533081600, '2019-02-24 05:26:18', 1),
(34802, 105, 'Epic T', 250, 'https://www.gsmarena.com/yezz_epic_t-9485.php', 'GSM / HSPA / LTE', '2018, March', 'Available. Released 2018, April', '168.8 x 86.5 x 15.9 mm', '469', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6750 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Single: 16 MP', 16, 'LED flash, panorama, HDR', '1080p@60fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 9000 mAh battery', 9000, 'Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9485, 1522540800, '2019-02-24 05:26:18', 1),
(34803, 216, 'View 20', 570, 'https://www.gsmarena.com/honor_view_20-9468.php', 'GSM / CDMA / HSPA / LTE', '2018, December', 'Available. Released 2018, December', '156.9 x 75.4 x 8.1 mm', '180', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.4', '1080 x 2310 pixels', '', 'Android 9.0 (Pie); Magic UI 2', 'HiSilicon Kirin 980 (7 nm)', 'Octa-core', 'No', '256 GB, 8 GB RAM or 128 GB, 6/8 GB RAM', '8 GB/6 GB', '128 GB/256 GB', 'Dual: 48 MP', 48, 'Panorama, HDR, LED flash', '2160p@30fps, 1080p@30fps, 720p@960fps, (gyro-EIS)', 'Single: 25 MP', 25, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Saphire Blue, Phantom Blue, Phantom Red, Midnight Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9468, 1543622400, '2019-02-24 05:28:02', 1),
(34804, 216, 'Magic 2', 550, 'https://www.gsmarena.com/honor_magic_2-9381.php', 'GSM / CDMA / HSPA / LTE', '2018, October', 'Available. Released 2018, November', '157.3 x 75.1 x 8.3 mm', '206', 'Dual SIM', 'AMOLED capacitive touchscreen, 16M colors', '6.39', '1080 x 2340 pixels', '', 'Android 9.0 (Pie); EMUI 9 or Magic UI 2', 'HiSilicon Kirin 980 (7 nm)', 'Octa-core', 'No', '128/256 GB, 8 GB RAM, 128 GB, 6 GB RAM', '8 GB', '256 GB/128 GB', '', 0, 'LED flash, panorama, HDR', '2160p@30fps, 1080p@30fps, 720p@480fps', 'Dual: 16 MP + 2 MP + 2 MP', 16, 'HDR', '1080p@30fps', '', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3500 mAh battery', 3500, 'Gradient Black, Gradient Red, Gradient Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9381, 1541030400, '2019-02-24 05:28:02', 1),
(34805, 216, 'Play 8A', 100, 'https://www.gsmarena.com/honor_play_8a-9509.php', 'GSM / HSPA / LTE', '2019, January', 'Available. Released 2019, January', '156.3 x 73.5 x 8 mm', '150', 'Dual SIM', 'LCD capacitive touchscreen, 16M colors', '6.01', '720 x 1560 pixels', '', 'Android 9.0 (Pie); EMUI 9', 'Mediatek MT6765 Helio P35 (12nm)', 'Octa-core', 'microSD, up to 512 GB', '32/64 GB, 3 GB RAM', '3 GB', '64 GB/32 GB', 'Single: 13 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3020 mAh battery', 3020, 'Black, Blue, Gold, Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9509, 1546300800, '2019-02-24 05:28:02', 1),
(34806, 216, '10 Lite', 210, 'https://www.gsmarena.com/honor_10_lite-9403.php', 'GSM / HSPA / LTE', '2018, November', 'Available. Released 2018, November', '154.8 x 73.6 x 8 mm', '162', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.21', '1080 x 2340 pixels', '', 'Android 9.0 (Pie); EMUI 9', 'Hisilicon Kirin 710 (12 nm)', 'Octa-core', 'microSD, up to 512 GB', '64/128 GB, 6 GB RAM or 64 GB, 4 GB RAM', '4 GB/6 GB', '64 GB/128 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, HDR, panorama', '1080p@30/60fps', 'Single: 24 MP', 24, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3400 mAh battery', 3400, 'White, Black, Blue, Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9403, 1541030400, '2019-02-24 05:28:02', 1),
(34807, 216, '8C', 170, 'https://www.gsmarena.com/honor_8c-9366.php', 'GSM / CDMA / HSPA / LTE', '2018, October', 'Available. Released 2018, October', '157.2 x 76 x 0 mm', '167', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.26', '720 x 1520 pixels', '', 'Android 8.1 (Oreo); EMUI 8.2', 'Qualcomm SDM632 Snapdragon 632 (14 nm)', 'Octa-core', 'microSD, up to 256 GB', '32/64 GB, 4 GB RAM', '4 GB', '64 GB/32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Midnight Black, Aurora Blue, Platinum Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9366, 1538352000, '2019-02-24 05:28:02', 1),
(34808, 216, '8X', 270, 'https://www.gsmarena.com/honor_8x-9313.php', 'GSM / CDMA / HSPA / LTE', '2018, September', 'Available. Released 2018, September', '160.4 x 76.6 x 7.8 mm', '175', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.5', '1080 x 2340 pixels', '', 'Android 8.1 (Oreo); EMUI 8.2', 'Hisilicon Kirin 710 (12 nm)', 'Octa-core', 'microSD, up to 400 GB', '64/128 GB, 6 GB RAM or 64 GB, 4 GB RAM', '4 GB/6 GB', '64 GB/128 GB', 'Dual: 20 MP + 2 MP', 20, 'LED flash, panorama, HDR', '1080p@30/60fps, 480fps, stereo sound rec.', 'Single: 16 MP', 16, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Non-removable Li-Po 3750 mAh battery', 3750, 'Black, Blue, Red, Pink', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9313, 1535760000, '2019-02-24 05:28:02', 1),
(34809, 216, '8X Max', 250, 'https://www.gsmarena.com/honor_8x_max-9306.php', 'GSM / CDMA / HSPA / LTE', '2018, September', 'Available. Released 2018, September', '177.6 x 86.3 x 8.1 mm', '210', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '7.12', '1080 x 2244 pixels', '', 'Android 8.1 (Oreo); EMUI 8.2', 'Qualcomm SDM636 Snapdragon 636 (14 nm)', 'Octa-core', 'microSD, up to 256 GB', '64/128 GB, 4 GB RAM or 64 GB, 6 GB RAM', '6 GB/4 GB', '64 GB/128 GB', 'Dual: 16 MP + 2 MP', 16, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'HDR', '720p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 5000 mAh battery', 5000, 'Black, Blue, Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9306, 1535760000, '2019-02-24 05:28:02', 1),
(34810, 216, 'Note 10', 400, 'https://www.gsmarena.com/honor_note_10-8799.php', 'GSM / CDMA / HSPA / EVDO / LTE', '2018, July', 'Available. Released 2018, August', '177 x 85 x 7.7 mm', '230', 'Dual SIM', 'AMOLED capacitive touchscreen, 16M colors', '6.95', '1080 x 2220 pixels', '', 'Android 8.1 (Oreo); EMUI 8.2', 'Hisilicon Kirin 970 (10 nm)', 'Octa-core', 'microSD, up to 256 GB', '128 GB, 6/8 GB RAM or 64 GB, 6 GB RAM', '6 GB/8 GB', '64 GB/128 GB', 'Dual: 16 MP + 24 MP', 16, 'LED flash, HDR, panorama', '2160p@30fps, 1080p@30fps (gyro-EIS)', 'Single: 13 MP', 13, '', '1080p@30fps', '', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 5000 mAh battery', 5000, 'Midnight Black, Phantom Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8799, 1533081600, '2019-02-24 05:28:02', 1),
(34811, 216, '9N (9i)', 220, 'https://www.gsmarena.com/honor_9n_(9i)-9229.php', 'GSM / CDMA / HSPA / LTE', '2018, July', 'Available. Released 2018, July', '149.2 x 71.8 x 7.7 mm', '152', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.84', '1080 x 2280 pixels', '', 'Android 8.0 (Oreo); EMUI 8', 'HiSilicon Kirin 659 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64/128 GB, 4 GB RAM or 32 GB, 3 GB RAM', '3 GB/4 GB', '32 GB/64 GB/128 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 16 MP', 16, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'Lavender Purple, Robin Egg Blue, Sapphire Blue, Midnight Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9229, 1530403200, '2019-02-24 05:28:02', 1),
(34812, 216, 'Play', 320, 'https://www.gsmarena.com/honor_play-9230.php', 'GSM / CDMA / HSPA / LTE', '2018, July', 'Available. Released 2018, August', '157.9 x 74.3 x 7.5 mm', '176', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.3', '1080 x 2340 pixels', '', 'Android 8.1 (Oreo); EMUI 8.2', 'Hisilicon Kirin 970 (10 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 4/6 GB RAM', '6 GB/4 GB', '64 GB', 'Dual: 16 MP + 2 MP', 16, 'LED flash, HDR, panorama', '2160p@30fps, 1080p@60fps, 1080p@30fps (gyro-EIS)', 'Single: 16 MP', 16, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3750 mAh battery', 3750, 'Midnight Black, Navy Blue, Violet, Player Edition Red, Player Edition Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9230, 1533081600, '2019-02-24 05:28:02', 1),
(34813, 216, '7s', 110, 'https://www.gsmarena.com/honor_7s-9211.php', 'GSM / HSPA / LTE', '2018, May', 'Available. Released 2018, May', '146.5 x 70.9 x 8.3 mm', '142', 'Dual SIM', 'LCD capacitive touchscreen, 16M colors', '5.45', '720 x 1440 pixels', '', 'Android 8.1 (Oreo); EMUI 8', 'Mediatek MT6739 (28 nm)', 'Quad-core', 'microSD, up to 256 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 5 MP or 24 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3020 mAh battery', 3020, 'Black, Gold, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9211, 1525132800, '2019-02-24 05:28:02', 1),
(34814, 216, '10', 400, 'https://www.gsmarena.com/honor_10-9157.php', 'GSM / HSPA / LTE', '2018, May', 'Available. Released 2018, May', '149.6 x 71.2 x 7.7 mm', '153', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.84', '1080 x 2280 pixels', '', 'Android 8.1 (Oreo); EMUI 8.1', 'Hisilicon Kirin 970 (10 nm)', 'Octa-core', 'No', '64/128 GB, 4/6 GB RAM or 8 GB RAM (GT version)', '8 GB/6 GB/4 GB', '64 GB/128 GB', 'Dual: 16 MP + 24 MP', 16, 'LED flash, HDR, panorama', '2160p@30fps, 1080p@30/60fps (gyro-EIS)', 'Single: 24 MP', 24, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3400 mAh battery', 3400, 'Phantom Blue, Phantom Green, Midnight Black, Glacier Grey, Lily White (GT version only)', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9157, 1525132800, '2019-02-24 05:28:02', 1),
(34815, 216, '7A', 120, 'https://www.gsmarena.com/honor_7a-9075.php', 'GSM / HSPA / LTE', '2018, April', 'Available. Released 2018, April', '152.4 x 73 x 7.8 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.7', '720 x 1440 pixels', '', 'Android 8.0 (Oreo); EMUI 8', 'Qualcomm MSM8937 Snapdragon 430 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 2/3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'Black, Gold, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9075, 1522540800, '2019-02-24 05:28:02', 1),
(34816, 216, '7C', 200, 'https://www.gsmarena.com/honor_7c-9111.php', 'GSM / HSPA / LTE', '2018, May', 'Available. Released 2018, May', '158.3 x 76.7 x 7.8 mm', '164', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.99', '720 x 1440 pixels', '', 'Android 8.0 (Oreo); EMUI 8', 'Qualcomm SDM450 Snapdragon 450 (14 nm)', 'Octa-core', 'microSD, up to 256 GB', '32/64 GB, 4 GB RAM or 32 GB, 3/4 GB RAM', '4 GB/3 GB', '32 GB/64 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'Black, Red, Gold, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9111, 1525132800, '2019-02-24 05:28:02', 1),
(34817, 216, '9 Lite', 190, 'https://www.gsmarena.com/honor_9_lite-8962.php', 'GSM / HSPA / LTE', '2017, December', 'Available. Released 2017, December', '151 x 71.9 x 7.6 mm', '149', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.65', '1080 x 2160 pixels', '', 'Android 8.0 (Oreo); EMUI 8', 'HiSilicon Kirin 659 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 4 GB RAM or 32 GB, 3/4 GB RAM', '4 GB/3 GB', '32 GB/64 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Dual: 13 MP + 2 MP', 13, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'Midnight Black, Sapphire Blue, Glacier Gray, Navy, Seagull Gray, Magic Nightfall, Pearl White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8962, 1512086400, '2019-02-24 05:28:02', 1),
(34818, 216, '7X', 290, 'https://www.gsmarena.com/honor_7x-8880.php', 'GSM / HSPA / LTE', '2017, December', 'Available. Released 2017, December', '156.5 x 75.3 x 7.6 mm', '165', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.93', '1080 x 2160 pixels', '', 'Android 7.0 (Nougat)', 'HiSilicon Kirin 659 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 4 GB RAM (L21) or 32/64 GB, 4 GB RAM (L22) or 32/64 GB, 3/4 GB RAM (L24)', '4 GB/3 GB', '64 GB/32 GB', 'Dual: 16 MP + 2 MP', 16, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3340 mAh battery', 3340, 'Black, Blue, Gold, Red, Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8880, 1512086400, '2019-02-24 05:28:02', 1),
(34819, 216, 'View 10', 370, 'https://www.gsmarena.com/honor_view_10-8938.php', 'GSM / HSPA / LTE', '2017, December', 'Available. Released 2018, January', '157 x 75 x 7 mm', '172', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.99', '1080 x 2160 pixels', '', 'Android 8.0 (Oreo)', 'HiSilicon Kirin 970 (10 nm)', 'Octa-core', 'microSD, up to 256 GB', '128 GB, 6 GB RAM or 64 GB, 4/6 GB RAM', '6 GB/4 GB', '64 GB/128 GB', 'Dual: 16 MP + 20 MP', 16, 'Panorama, HDR, LED flash', '2160p@30fps, 1080p@30fps', 'Single: 13 MP', 13, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3750 mAh battery', 3750, 'Navy Blue, Midnight Black, Beach Gold, Aurora Blue, Charm Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8938, 1514764800, '2019-02-24 05:28:02', 1),
(34820, 216, '6C Pro', 180, 'https://www.gsmarena.com/honor_6c_pro-8856.php', 'GSM / HSPA / LTE', '2017, October', 'Available. Released 2017, November', '147.9 x 73.2 x 7.7 mm', '145', 'Dual SIM', 'S-IPS LCD capacitive touchscreen, 16M colors', '5.2', '720 x 1280 pixels', '', 'Android 7.0 (Nougat); EMUI 5.1', 'Mediatek MT6750 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Single: 13 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Black, Blue, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8856, 1509494400, '2019-02-24 05:28:02', 1),
(34821, 216, '9', 310, 'https://www.gsmarena.com/honor_9-8704.php', 'GSM / HSPA / LTE', '2017, June', 'Available. Released 2017, July', '147.3 x 70.9 x 7.5 mm', '155', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.15', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'HiSilicon Kirin 960 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64/128 GB, 4/6 GB RAM', '6 GB/4 GB', '64 GB/128 GB', 'Dual: 12 MP + 20 MP', 12, 'Dual-LED dual-tone flash, HDR, panorama', '2160p@30fps, 1080p@30fps (gyro-EIS), 1080p@60fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3200 mAh battery', 3200, 'Glacier Grey, Sapphire Blue, Midnight Black, Gold, Blue Bird, Robin Egg Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8704, 1498867200, '2019-02-24 05:28:02', 1),
(34822, 216, '6A (Pro)', 130, 'https://www.gsmarena.com/honor_6a_(pro)-8700.php', 'GSM / HSPA / LTE', '2017, May', 'Available. Released 2017, July', '143.7 x 71 x 8.2 mm', '143', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 7.0 (Nougat); EMUI 5.1', 'Qualcomm MSM8937 Snapdragon 430 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Single: 13 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3020 mAh battery', 3020, 'Gold, Silver, Dark Gray, Blue, Pink', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8700, 1498867200, '2019-02-24 05:28:02', 1),
(34823, 216, '8 Pro', 390, 'https://www.gsmarena.com/honor_8_pro-8568.php', 'GSM / HSPA / LTE', '2017, April', 'Available. Released 2017, April', '157 x 77.5 x 7 mm', '184', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.7', '1440 x 2560 pixels', '', 'Android 7.0 (Nougat)', 'HiSilicon Kirin 960 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 4/6 GB RAM', '6 GB/4 GB', '64 GB', 'Single: 12 MP or 12 MP', 12, 'Dual-LED dual-tone flash, HDR, panorama', '2160p@30fps, 1080p@60fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Pearl White, Midnight Black, Navy Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8568, 1491004800, '2019-02-24 05:28:02', 1),
(34824, 216, 'Magic', 400, 'https://www.gsmarena.com/honor_magic-8482.php', 'GSM / CDMA / HSPA / LTE', '2016, December', 'Available. Released 2016, December', '146.1 x 69.9 x 7.8 mm', '145', 'Dual SIM', 'AMOLED capacitive touchscreen, 16M colors', '5.09', '1440 x 2560 pixels', '', 'Android 6.0 (Marshmallow); Magic Live UI', 'HiSilicon Kirin 950 (16 nm)', 'Octa-core', 'No', '64 GB, 4 GB RAM', '4 GB', '64 GB', 'Single: 12 MP or 12 MP', 12, 'Dual-LED dual-tone flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2900 mAh battery', 2900, 'Golden Black, Porcelain White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8482, 1480550400, '2019-02-24 05:28:02', 1),
(34825, 216, 'V8', 320, 'https://www.gsmarena.com/honor_v8-8061.php', 'GSM / HSPA / LTE', '2016, May', 'Available. Released 2016, May', '157 x 77.6 x 7.8 mm', '170', 'Dual SIM', 'IPS-NEO LCD capacitive touchscreen, 16M colors', '5.7', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow); EMUI 4.1', 'HiSilicon Kirin 950 (16 nm) (KNT-AL10, KNT-TL10) HiSilicon Kirin 955 (16 nm) (KNT-AL20)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 4 GB RAM (KNT-AL10, KNT-TL10) 64 GB, 4 GB RAM (KNT-AL20)', '4 GB   64 GB', '32 GB', 'Single: 12 MP or 12 MP', 12, 'Dual-LED dual-tone flash, panorama, HDR', '1080p@60fps, 1080p@30fps, 720p@120fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3500 mAh battery', 3500, 'Silver, Gold, Rose Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8061, 1462060800, '2019-02-24 05:28:02', 1),
(34826, 216, 'Pad 2', 230, 'https://www.gsmarena.com/honor_pad_2-8390.php', 'GSM / HSPA / LTE', '2016, October', 'Available. Released 2016, October', '209.3 x 123 x 8.1 mm', '340', 'Nano-SIM', 'IPS LCD capacitive touchscreen, 16M colors', '8.0', '1200 x 1920 pixels', '', 'Android 6.0 (Marshmallow); EMUI 4.1', 'Qualcomm MSM8939 Snapdragon 615 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '16/32 GB, 3 GB RAM', '3 GB', '32 GB/16 GB', 'Single: 8 MP', 8, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 4800 mAh battery', 4800, 'Gold, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8390, 1475280000, '2019-02-24 05:28:02', 1),
(34827, 216, '6X', 180, 'https://www.gsmarena.com/honor_6x-8388.php', 'GSM / HSPA / LTE', '2016, October', 'Available. Released 2016, October', '150.9 x 76.2 x 8.2 mm', '162', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'HiSilicon Kirin 655 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 4 GB RAM or 32 GB, 3 GB RAM', '3 GB/4 GB', '32 GB/64 GB', 'Dual: 12 MP + 2 MP', 12, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable 3340 mAh battery', 3340, 'Gray, Gold, Silver', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8388, 1475280000, '2019-02-24 05:28:02', 1),
(34828, 216, 'Holly 3', 140, 'https://www.gsmarena.com/honor_holly_3-8383.php', 'GSM / HSPA / LTE', '2016, October', 'Available. Released 2016, October', '154.3 x 77.1 x 8.5 mm', '168', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 6.0 (Marshmallow); EMUI 4.1', 'HiSilicon Kirin 620 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3100 mAh battery', 3100, 'Black, White, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8383, 1475280000, '2019-02-24 05:28:03', 1),
(34829, 216, 'Note 8', 400, 'https://www.gsmarena.com/honor_note_8-8231.php', 'GSM / CDMA / HSPA / EVDO / LTE', '2016, August', 'Available. Released 2016, September', '178.8 x 90.9 x 7.2 mm', '219', 'Dual SIM', 'Super AMOLED capacitive touchscreen, 16M colors', '6.6', '1440 x 2560 pixels', '', 'Android 6.0.1 (Marshmallow)', 'HiSilicon Kirin 955 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '32/64/128 GB, 4 GB RAM', '4 GB', '32 GB/64 GB/128 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash, HDR, panorama', '2160p@30fps', 'Single: 5 MP', 5, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4500 mAh battery', 4500, 'White, Gold, Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8231, 1472688000, '2019-02-24 05:28:03', 1),
(34830, 216, '8', 260, 'https://www.gsmarena.com/honor_8-8195.php', 'GSM / HSPA / LTE', '2016, July', 'Available. Released 2016, July', '145.5 x 71 x 7.5 mm', '153', 'Single SIM or Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.2', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'HiSilicon Kirin 950 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '32/64 GB, 4 GB RAM', '4 GB', '64 GB/32 GB', 'Single: 12 MP or 12 MP', 12, 'Dual-LED dual-tone flash, HDR, panorama', '1080p@60fps, 1080p@30fps, 720p@120fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'Pearl White, Midnight Black, Sapphire Blue, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8195, 1467331200, '2019-02-24 05:28:03', 1);
INSERT INTO `mobiles` (`id`, `brand_id`, `title`, `price`, `detail_url`, `technology`, `announced`, `status`, `dimensions`, `weight`, `sim`, `type`, `size`, `resolution`, `multitouch`, `os`, `chipset`, `cpu`, `card_slot`, `internal`, `ram`, `storage`, `main_camera`, `mc_filter`, `mc_features`, `mc_video`, `selfie_camera`, `sc_filter`, `sc_features`, `sc_video`, `alert_types`, `loudspeaker`, `jack_3_5mm`, `wlan`, `bluetooth`, `gps`, `radio`, `usb`, `sensors`, `messaging`, `battery`, `battery_filter`, `colors`, `ext`, `images`, `pixel_density`, `protection`, `px_resolution`, `hz_refresh_rate`, `mhz_processor_speed`, `nfc`, `infrared`, `revision`, `origin_id`, `sorting`, `created`, `active`) VALUES
(34831, 216, '5A', 120, 'https://www.gsmarena.com/honor_5a-8149.php', 'GSM / HSPA / LTE', '2016, June', 'Available. Released 2016, June', '144.2 x 72.5 x 9 mm', '140', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 5.1 (Lollipop); EMUI 3.1', 'Mediatek MT6735P (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 2200 mAh battery', 2200, 'Black, White, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8149, 1464739200, '2019-02-24 05:28:03', 1),
(34832, 216, '5c', 170, 'https://www.gsmarena.com/honor_5c-8074.php', 'GSM / HSPA / LTE', '2016, April', 'Available. Released 2016, May', '147.1 x 73.8 x 8.3 mm', '156', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.2', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'HiSilicon Kirin 650 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable 3000 mAh battery', 3000, 'Silver, Gray, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 8074, 1462060800, '2019-02-24 05:28:03', 1),
(34833, 216, 'Holly 2 Plus', 140, 'https://www.gsmarena.com/honor_holly_2_plus-7882.php', 'GSM / HSPA / LTE', '2016, January', 'Available. Released 2016, February', '143.1 x 71.8 x 9.7 mm', '160', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 5.1.1 (Lollipop); EMUI 3.1', 'Mediatek MT6735P (28 nm)', 'Quad-core', 'microSD, up to 256 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Gray, Gold, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7882, 1454284800, '2019-02-24 05:28:03', 1),
(34834, 216, '5X', 180, 'https://www.gsmarena.com/honor_5x-7590.php', 'GSM / HSPA / LTE', '2015, October', 'Available. Released 2015, November', '151.3 x 76.3 x 8.2 mm', '158', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 5.1.1 (Lollipop)', 'Qualcomm MSM8939v2 Snapdragon 616 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '16 GB, 2 GB RAM - GR5W H1621, KIW-CL00, KIW-TL00, KIW-TL00H, KII-L21, KII-L22, KII-L23 16 GB, 3 G', '2 GB  - GR5W H1621', '16 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'White, Black, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7590, 1446336000, '2019-02-24 05:28:03', 1),
(34835, 216, '7i', 310, 'https://www.gsmarena.com/honor_7i-7510.php', 'GSM / HSPA / LTE', '2015, August', 'Available. Released 2015, August', '141.6 x 71.2 x 7.8 mm', '160', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.2', '1080 x 1920 pixels', '', 'Android 5.1.1 (Lollipop)', 'Qualcomm MSM8939v2 Snapdragon 616 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM - ATH-AL00 model 16 GB, 2 GB RAM', '3 GB  - ATH-AL00 model 16', '32 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash, HDR, panorama', '1080p@30fps', 'Single: 13 MP', 13, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3100 mAh battery', 3100, 'Black, White, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7510, 1438387200, '2019-02-24 05:28:03', 1),
(34836, 216, '7', 300, 'https://www.gsmarena.com/honor_7-7269.php', 'GSM / HSPA / LTE', '2015, June', 'Available. Released 2015, July', '143.2 x 71.9 x 8.5 mm', '157', 'Single SIM or Dual SIM', 'IPS-NEO LCD capacitive touchscreen, 16M colors', '5.2', '1080 x 1920 pixels', '', 'Android 5.0 (Lollipop)', 'HiSilicon Kirin 935 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '16/64 GB, 3 GB RAM 32 GB, 3 GB RAM - Enhanced Edition', '3 GB  32 GB', '64 GB/16 GB', 'Single: 20 MP', 20, 'Dual-LED dual-tone flash, HDR, panorama', '1080p@30fps, HDR', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3100 mAh battery', 3100, 'Gray, Silver, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7269, 1435708800, '2019-02-24 05:28:03', 1),
(34837, 216, 'Bee', 70, 'https://www.gsmarena.com/honor_bee-7235.php', 'GSM / HSPA', '2015, May', 'Available. Released 2015, May', '134.3 x 66.7 x 10 mm', '-', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '4.5', '480 x 854 pixels', '', 'Android 4.4.2 (KitKat); EMUI Lite 3', 'Spreadtrum SC7731', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 8 MP', 8, 'Dual-LED flash, panorama', '1080p@30fps', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 1730 mAh battery', 1730, 'Black, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7235, 1430438400, '2019-02-24 05:28:03', 1),
(34838, 216, '4C', 170, 'https://www.gsmarena.com/honor_4c-7203.php', 'GSM / HSPA', '2015, April', 'Available. Released 2015, April', '143.3 x 71.9 x 8.8 mm', '162', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 4.4.2 (KitKat)', 'HiSilicon Kirin 620 (28 nm)', 'Octa-core', 'microSD, up to 32 GB', '8 GB, 2 GB RAM', '2 GB', '8 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '720p', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2550 mAh battery', 2550, 'White, Black, Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 7203, 1427846400, '2019-02-24 05:28:03', 1),
(34839, 216, '6 Plus', 320, 'https://www.gsmarena.com/honor_6_plus-6777.php', 'GSM / HSPA / LTE', '2014, December', 'Available. Released 2014, December', '150.5 x 75.7 x 7.5 mm', '165', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 4.4.2 (KitKat)', 'HiSilicon Kirin 925 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '16GB (3G model); 16/32 GB (LTE model), 3 GB RAM', '3 GB', '32 GB/16GB ; 16', 'Single: 8 MP or 2 MP', 8, 'Dual-LED flash, HDR', '1080p@30fps', 'Single: 8 MP', 8, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3600 mAh battery', 3600, 'Black, White / Gold (LTE model)', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6777, 1417392000, '2019-02-24 05:28:03', 1),
(34840, 216, '4X', 200, 'https://www.gsmarena.com/honor_4x-6754.php', 'GSM / HSPA / LTE', '2014, October', 'Available. Released 2014, October', '152.9 x 77.2 x 8.7 mm', '165', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 4.4.2 (KitKat)', 'HiSilicon Kirin 620 (28 nm) Qualcomm MSM8916 Snapdragon 410 (28 nm)', 'Octa-core', 'microSD, up to 32 GB', '8 GB, 2 GB RAM', '2 GB', '8 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '720p', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'White, Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6754, 1412121600, '2019-02-24 05:28:03', 1),
(34841, 216, 'Holly', 100, 'https://www.gsmarena.com/honor_holly-6738.php', 'GSM / HSPA', '2014, October', 'Available. Released 2014, October', '142.2 x 72.3 x 9.4 mm', '156', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 4.4.2 (KitKat); EMUI 2.3', 'Mediatek MT6582 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 2000 mAh battery', 2000, 'White, Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6738, 1412121600, '2019-02-24 05:28:03', 1),
(34842, 216, '4 Play', 100, 'https://www.gsmarena.com/honor_4_play-6692.php', 'GSM / HSPA / LTE', '2014, September', 'Available. Released 2014, September', '143 x 72 x 8.5 mm', '160', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 4.4.4 (KitKat); EMUI 2.3', 'Qualcomm MSM8916 Snapdragon 410 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 8 MP', 8, 'LED flash', 'Yes', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2000 mAh battery', 2000, 'White, Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6692, 1409529600, '2019-02-24 05:28:03', 1),
(34843, 216, '3C Play', 130, 'https://www.gsmarena.com/honor_3c_play-6603.php', 'GSM / HSPA', '2014, August', 'Available. Released 2014, September', '142.2 x 72.3 x 9.4 mm', '156', 'Dual SIM', 'Capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 4.2.2 (Jelly Bean)', 'Mediatek MT6582 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash', 'Yes', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 2000 mAh battery', 2000, 'White, Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6603, 1409529600, '2019-02-24 05:28:03', 1),
(34844, 216, '6', 290, 'https://www.gsmarena.com/honor_6-6461.php', 'GSM / HSPA / LTE', '2014, June', 'Available. Released 2014, August', '139.6 x 69.7 x 7.5 mm', '130', 'Single SIM or Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '1080 x 1920 pixels', '', 'Android 4.4.2 (KitKat)', 'HiSilicon Kirin 920 (28 nm)', 'Octa-core', 'microSD, up to 64 GB', '16/32 GB, 3 GB RAM', '3 GB', '32 GB/16 GB', 'Single: 13 MP', 13, 'Dual-LED flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3100 mAh battery (11.8 Wh)', 3100, 'Black, White', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6461, 1406851200, '2019-02-24 05:28:03', 1),
(34846, 216, '3C 4G', 200, 'https://www.gsmarena.com/honor_3c_4g-6395.php', 'GSM / HSPA / LTE', '2014, May', 'Available. Released 2014, June', '139.5 x 71.4 x 9.2 mm', '140', 'Micro-SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 4.4.2 (KitKat); EMUI 2.3', 'HiSilicon Kirin 910 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM/ 16 GB, 2 GB RAM', '1 GB/16 GB', '8 GB', 'Single: 8 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Removable Li-Ion 2300 mAh battery', 2300, 'White/Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 6395, 1401580800, '2019-02-24 05:28:03', 1),
(34852, 217, 'Smart 2 HD', 80, 'https://www.gsmarena.com/infinix_smart_2_hd-9477.php', 'GSM / HSPA', '2018, October', 'Available. Released 2018, October', '156.9 x 76.5 x 8.2 mm', '165', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3500 mAh battery', 3500, 'Sandstone Black, Bordeaux Red, Serene Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9477, 1538352000, '2019-02-24 05:28:04', 1),
(34853, 217, 'Hot 6X', 130, 'https://www.gsmarena.com/infinix_hot_6x-9423.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '157 x 75 x 8 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.2', '720 x 1500 pixels', '', 'Android 8.1 (Oreo)', 'Qualcomm MSM8917 Snapdragon 425 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '32 GB, 3 RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Dual: 13 MP + 2 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Midnight Black, Champagne Gold, Kent Blue, Bordeaux Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9423, 1515974400, '2019-02-24 05:28:04', 1),
(34854, 217, 'Note 5 Stylus', 198, 'https://www.gsmarena.com/infinix_note_5_stylus-9416.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '158 x 75 x 8.4 mm', '-', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 2160 pixels', '', 'Android 8.1 (Oreo); Android One', 'Mediatek MT6763T Helio P23 (16 nm)', 'Octa-core', 'microSD, up to 128 GB', '32/64 GB, 4 GB RAM', '4 GB', '64 GB/32 GB', 'Single: 16 MP', 16, 'Dual-LED dual-tone flash, panorama, HDR', '2160p@30fps, 1080p@30fps (gyro-EIS), 720p@120fps', 'Single: 16 MP', 16, '', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Bordeaux Red, Charcoal Blue, Champagne Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9416, 1515974400, '2019-02-24 05:28:04', 1),
(34855, 217, 'S3X', 145, 'https://www.gsmarena.com/infinix_s3x-9420.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '156.7 x 75.3 x 8 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.2', '720 x 1500 pixels', '', 'Android 8.1 (Oreo)', 'Qualcomm MSM8937 Snapdragon 430 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '64 GB, 4 GB RAM or 32 GB, 3 GB RAM', '3 GB/4 GB', '32 GB/64 GB', 'Dual: 13 MP + 2 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 16 MP', 16, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Ice Blue, Sandstone Black, Tradewinds Grey', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9420, 1515974400, '2019-02-24 05:28:04', 1),
(34856, 217, 'Hot 6', 99, 'https://www.gsmarena.com/infinix_hot_6-9426.php', 'GSM / HSPA', '2018', 'Available. Released 2018', '157.7 x 75.4 x 8 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.1 (Oreo) - 2 GB model Android 8.1 Oreo (Go edition) - 1 GB model', '', 'Quad-core', 'microSD, up to 128 GB', '16 GB, 1/2 GB RAM', '2 GB/1 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Bordeaux Red, Magic Gold, Sandstone Black, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9426, 1515974400, '2019-02-24 05:28:04', 1),
(34857, 217, 'Note 5', 99, 'https://www.gsmarena.com/infinix_note_5-9417.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '158 x 75 x 8.4 mm', '173', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 2160 pixels', '', 'Android 8.1 (Oreo); Android One', 'Mediatek MT6763 Helio P23 (16 nm)', 'Octa-core', 'microSD, up to 128 GB', '64 GB, 4 GB RAM or 32 GB, 3 GB RAM', '3 GB/4 GB', '32 GB/64 GB', 'Single: 12 MP', 12, 'Dual-LED dual-tone flash, panorama, HDR', '1080p@30fps', 'Single: 16 MP', 16, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4500 mAh battery', 4500, 'Berlin Gray, Ice Blue, Milan Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9417, 1515974400, '2019-02-24 05:28:04', 1),
(34858, 217, 'Smart 2 Pro', 95, 'https://www.gsmarena.com/infinix_smart_2_pro-9429.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '147.5 x 71 x 8.3 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1440 pixels', '', 'Android 8.1 (Oreo)', '', 'Quad-core', 'microSD, up to 128 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Dual: 13 MP + 2 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3050 mAh battery', 3050, 'Sandstone Black, Bordeaux Red, Serene Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9429, 1515974400, '2019-02-24 05:28:04', 1),
(34859, 217, 'Smart 2', 74, 'https://www.gsmarena.com/infinix_smart_2-9430.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '148 x 71 x 8.4 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1440 pixels', '', 'Android 8.1 (Oreo) or Android 8.1 Oreo (Go edition)', '', 'Quad-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM or 16 GB, 1/2 GB RAM', '2 GB/1 GB/3 GB', '16 GB/32 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'Dual-LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3050 mAh battery', 3050, 'Sandstone Black, Bordeaux Red, Serene Gold, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9430, 1515974400, '2019-02-24 05:28:04', 1),
(34860, 217, 'Hot 6 Pro', 99, 'https://www.gsmarena.com/infinix_hot_6_pro-9425.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '160.4 x 76.2 x 8.3 mm', '158', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.0 (Oreo)', 'Qualcomm MSM8917 Snapdragon 425 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Dual: 13 MP + 2 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Bordeaux Red, Magic Gold, Sandstone Black, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9425, 1515974400, '2019-02-24 05:28:04', 1),
(34861, 217, 'Hot S3', 100, 'https://www.gsmarena.com/infinix_hot_s3-9421.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '153 x 72.9 x 8.4 mm', '-', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.7', '720 x 1440 pixels', '', 'Android 8.1 (Oreo)', 'Qualcomm MSM8937 Snapdragon 430 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 20 MP', 20, 'Dual-LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Blush Gold, Sandstone Black, Topaz Blue, Bordeaux Red, Brush Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9421, 1515974400, '2019-02-24 05:28:04', 1),
(34862, 217, 'Zero 5 Pro', 180, 'https://www.gsmarena.com/infinix_zero_5_pro-9415.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '166.4 x 82.4 x 8 mm', '197', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.98', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6757CD Helio P20 (16 nm)', 'Octa-core', 'microSD, up to 128 GB', '128 GB, 6 GB RAM', '6 GB', '128 GB', 'Dual: 12 MP + 13 MP', 12, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 16 MP', 16, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 4350 mAh battery', 4350, 'Bronze Gold Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9415, 1515974400, '2019-02-24 05:28:04', 1),
(34863, 217, 'Zero 5', 175, 'https://www.gsmarena.com/infinix_zero_5-9414.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '166.4 x 82.4 x 8 mm', '197', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.98', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6757CD Helio P20 (16 nm)', 'Octa-core', 'microSD, up to 128 GB', '64 GB, 6 GB RAM', '6 GB', '64 GB', 'Dual: 12 MP + 13 MP', 12, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 16 MP', 16, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 4350 mAh battery', 4350, 'Sandstone Black, Champange Gold, Bordeaux Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9414, 1515974400, '2019-02-24 05:28:04', 1),
(34864, 217, 'Hot 5 Lite', 70, 'https://www.gsmarena.com/infinix_hot_5_lite-9428.php', 'GSM / HSPA', '2017', 'Available. Released 2017', '154.8 x 77.7 x 8.4 mm', '168', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580M', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '720p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Gold, Black, White, Lemon, Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9428, 1484438400, '2019-02-24 05:28:04', 1),
(34865, 217, 'Hot 5', 75, 'https://www.gsmarena.com/infinix_hot_5-9427.php', 'GSM / HSPA', '2017', 'Available. Released 2017', '154.8 x 77.7 x 8.4 mm', '168', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580M', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '720p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Gold, Black, White, Lemon, Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9427, 1484438400, '2019-02-24 05:28:04', 1),
(34866, 217, 'Note 4 Pro', 150, 'https://www.gsmarena.com/infinix_note_4_pro-9419.php', 'GSM / HSPA / LTE', '2017, July', 'Available. Released 2017, July', '159 x 79 x 8.3 mm', '200', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.7', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4500 mAh battery', 4500, 'Champagne Gold, Sandstone Black, Prussian Blue, Lilac Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9419, 1498867200, '2019-02-24 05:28:04', 1),
(34867, 217, 'Note 4', 110, 'https://www.gsmarena.com/infinix_note_4-9418.php', 'GSM / HSPA / LTE', '2018', 'Available. Released 2018', '159 x 78.8 x 8.4 mm', '198', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '5.7', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4300 mAh battery', 4300, 'Champagne Gold, Milan Black, Ice Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9418, 1515974400, '2019-02-24 05:28:04', 1),
(34868, 217, 'Smart', 62, 'https://www.gsmarena.com/infinix_smart-9431.php', 'GSM / HSPA', '2017', 'Available. Released 2017', '144.9 x 71.9 x 8.4 mm', '145', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.0', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '720p@30fps', 'Single: 2 MP', 2, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3060 mAh battery', 3060, 'Champagne gold, Sandstone Black, Bordeaux red, Mysterious blue, Apple Green', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9431, 1484438400, '2019-02-24 05:28:04', 1),
(34869, 217, 'Zero 4 Plus', 410, 'https://www.gsmarena.com/infinix_zero_4_plus-9479.php', 'GSM / HSPA / LTE', '2017, March', 'Available. Released 2017, March', '160.5 x 83 x 8.3 mm', '203', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.98', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6797M Helio X20 (20 nm)', 'Deca-core', 'microSD, up to 128 GB', '64 GB, 4 GB RAM', '4 GB', '64 GB', 'Single: 21 MP', 21, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 13 MP', 13, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 4000 mAh battery', 4000, 'Lilac grey, Champagne, Galaxy Blue, Silver purple', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9479, 1488326400, '2019-02-24 05:28:04', 1),
(34870, 217, 'Zero 4', 280, 'https://www.gsmarena.com/infinix_zero_4-9478.php', 'GSM / HSPA / LTE', '2017, March', 'Available. Released 2017, March', '151.5 x 76 x 7.8 mm', '167.5', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Single: 16 MP', 16, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3200 mAh battery', 3200, 'Anthracite Grey, Champagne Gold, Barbie Pink, Filber Brown', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9478, 1488326400, '2019-02-24 05:28:04', 1),
(34871, 217, 'S2 Pro', 133, 'https://www.gsmarena.com/infinix_s2_pro-9422.php', 'GSM / HSPA / LTE', '2017', 'Available. Released 2017', '148.9 x 72.1 x 8.1 mm', '147', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.2', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM (S2 Pro) or 16 GB, 2 GB RAM (S2)', '2 GB/3 GB', '16 GB/32 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama, HDR', '1080p@30fps', 'Dual: 13 MP + 8 MP', 13, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3000 mAh battery', 3000, 'Midnight Black, Orchid Gray, Coral Blue, Arctic Silver, Maple Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9422, 1484438400, '2019-02-24 05:28:04', 1),
(34872, 217, 'Hot 4 Pro', 93, 'https://www.gsmarena.com/infinix_hot_4_pro-9473.php', 'GSM / HSPA / LTE', '2016, August', 'Available. Released 2016, August', '152.6 x 76.2 x 8.6 mm', '175', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6737W (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Anthracite Gray, Champagn Gold, Glossy Silver, Mysterious Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9473, 1470009600, '2019-02-24 05:28:04', 1),
(34873, 217, 'Hot 4', 80, 'https://www.gsmarena.com/infinix_hot_4-9472.php', 'GSM / HSPA', '2016, July', 'Available. Released 2016, July', '152.6 x 76.2 x 8.6 mm', '175', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6580', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1/2 GB RAM', '2 GB/1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, panorama, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 4000 mAh battery', 4000, 'Luxurious Gold, Sandstone Black, Scarlet Red, Turquoise Dream, Sapphire Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9472, 1467331200, '2019-02-24 05:28:04', 1),
(34874, 217, 'Note 3 Pro', 250, 'https://www.gsmarena.com/infinix_note_3_pro-9476.php', 'GSM / HSPA / LTE', '2016, July', 'Available. Released 2016, July', '162.5 x 82.8 x 8.4 mm', '199', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'No', '16 GB, 2/3 GB RAM', '3 GB/2 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 4500 mAh battery', 4500, 'Palm gold, Crystal gray, Champagne Gold, Glossy silver', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9476, 1467331200, '2019-02-24 05:28:04', 1),
(34875, 217, 'Note 3', 210, 'https://www.gsmarena.com/infinix_note_3-9475.php', 'GSM / HSPA / LTE', '2016, July', 'Available. Released 2016, July', '162.5 x 82.8 x 8.4 mm', '199', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'No', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED flash, panorama,', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 4500 mAh battery', 4500, 'Palm gold, Crystal gray, Champagne Gold, Glossy silver', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9475, 1467331200, '2019-02-24 05:28:04', 1),
(34876, 217, 'Hot S', 123, 'https://www.gsmarena.com/infinix_hot_s-9474.php', 'GSM / HSPA / LTE', '2016, June', 'Available. Released 2016, June', '148.8 x 73.2 x 8 mm', '140', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.2', '720 x 1280 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6753 (28 nm)', 'Octa-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash', '1080p@30fps', 'Single: 8 MP', 8, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Pink, Gold, Blue, Gray, Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9474, 1464739200, '2019-02-24 05:28:04', 1),
(34877, 218, 'Camon iACE2X', 91, 'https://www.gsmarena.com/tecno_camon_iace2x-9577.php', 'GSM / HSPA / LTE', '2019, February', 'Available. Released 2019, February', '148.3 x 71.9 x 8.5 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1440 pixels', '', 'Android 8.1 (Oreo); HIOS 4.1', 'Mediatek MT6761 Helio A22 (12 nm)', 'Quad-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Dual: 13 MP + 0.3 MP', 13, 'Dual-LED, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3050 mAh battery', 3050, 'Champagne Gold, Midnight Black, Nebula Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9577, 1548979200, '2019-02-24 05:28:06', 1),
(34878, 218, 'Camon iACE2', 80, 'https://www.gsmarena.com/tecno_camon_iace2-9578.php', 'GSM / HSPA / LTE', '2019, February', 'Available. Released 2019, February', '148.3 x 71.9 x 8.5 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1440 pixels', '', 'Android 8.1 (Oreo); HIOS 4.1', 'Mediatek MT6761 Helio A22 (12 nm)', 'Quad-core', 'microSD, up to 128 GB', '32 GB, 2 GB RAM', '2 GB', '32 GB', 'Dual: 13 MP + 0.3 MP', 13, 'Dual-LED, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Po 3050 mAh battery', 3050, 'Champagne Gold, Midnight Black, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9578, 1548979200, '2019-02-24 05:28:06', 1),
(34879, 218, 'Camon 11 Pro', 180, 'https://www.gsmarena.com/tecno_camon_11_pro-9441.php', 'GSM / HSPA / LTE', '2018, September', 'Available. Released 2018, November', '156.5 x 76 x 5.6 mm', '155', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.2', '720 x 1500 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6762 Helio P22 (12 nm)', 'Octa-core', 'microSD, up to 128 GB', '64 GB, 6 GB RAM', '6 GB', '64 GB', 'Dual: 16 MP + 5 MP', 16, 'Quad-LED dual-tone flash, HDR, panorama', '1080p@30fps', 'Single: 24 MP', 24, 'LED flash, HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3750 mAh battery', 3750, 'Nebula black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9441, 1541030400, '2019-02-24 05:28:06', 1),
(34880, 218, 'Camon 11', 150, 'https://www.gsmarena.com/tecno_camon_11-9442.php', 'GSM / HSPA / LTE', '2018, September', 'Available. Released 2018, November', '156.5 x 76 x 5.6 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.2', '720 x 1500 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6761 Helio A22 (12 nm) Mediatek MT6739 (28 nm)', 'Quad-core', 'microSD, up to 128 GB', '64 GB, 4 GB RAM or 32 GB, 3 GB RAM', '3 GB/4 GB', '32 GB/64 GB', 'Dual: 13 MP + 2 MP', 13, 'Quad-LED dual-tone flash, HDR, panorama', '1080p@30fps', 'Single: 16 MP', 16, 'LED flash, HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3750 mAh battery', 3750, 'Bordeaux Red, Aqua Blue, Midnight Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9442, 1541030400, '2019-02-24 05:28:06', 1),
(34881, 218, 'Pop 1s', 90, 'https://www.gsmarena.com/tecno_pop_1s-9465.php', 'GSM / HSPA / LTE', '2018, July', 'Available. Released 2018, July', '148.1 x 71.6 x 8.6 mm', '140', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.5', '720 x 1440 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6739WA (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1/2 GB RAM', '2 GB/1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'Dual-LED flash, HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Champagne Gold, Midnight Black, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9465, 1530403200, '2019-02-24 05:28:06', 1),
(34882, 218, 'Pop 1 Pro', 90, 'https://www.gsmarena.com/tecno_pop_1_pro-9464.php', 'GSM / HSPA', '2018, June', 'Available. Released 2018, June', '151.5 x 71.9 x 8.5 mm', '140', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.45', '480 x 960 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580W (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2400 mAh battery', 2400, 'Champagn Gold, Midnight Black, Bordeaux Red, Jewel Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9464, 1527811200, '2019-02-24 05:28:06', 1),
(34883, 218, 'Pop 1', 60, 'https://www.gsmarena.com/tecno_pop_1-9463.php', 'GSM / HSPA', '2018, March', 'Available. Released 2018, March', '151.5 x 71.9 x 8.5 mm', '140', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.45', '480 x 960 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580W (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'Dual-LED dual-tone flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2400 mAh battery', 2400, 'Champagn Gold, Midnight Black, Bordeaux Red, Jewel Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9463, 1519862400, '2019-02-24 05:28:06', 1),
(34884, 218, 'F2 LTE', 75, 'https://www.gsmarena.com/tecno_f2_lte-9461.php', 'GSM / HSPA / LTE', '2018, May', 'Available. Released 2018, May', '143.8 x 74 x 9.6 mm', '168.5', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.0', '480 x 854 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6739WA (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'Dual-LED flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Li-Ion 2400 mAh battery', 2400, 'Champagne Gold, Midnight Black, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9461, 1525132800, '2019-02-24 05:28:06', 1),
(34885, 218, 'F2', 70, 'https://www.gsmarena.com/tecno_f2-9460.php', 'GSM / HSPA', '2018, March', 'Available. Released 2018, March', '145 x 74.2 x 9.7 mm', '152.4', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.0', '480 x 854 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580M (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 1 GB RAM', '1 GB', '8 GB', 'Single: 5 MP', 5, 'Dual-LED flash, HDR', '1080p@30fps', 'Single: 2 MP', 2, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Li-Ion 2000 mAh battery', 2000, 'Champagne Gold, Ice Blue, Phantom Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9460, 1519862400, '2019-02-24 05:28:06', 1),
(34886, 218, 'Pop 1 Lite', 90, 'https://www.gsmarena.com/tecno_pop_1_lite-9459.php', 'GSM / HSPA', '2018, July', 'Available. Released 2018, July', '145 x 74.2 x 9.7 mm', '152.4', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.0', '480 x 854 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6580M (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '8 GB, 512 MB RAM', '512 MB', '8 GB', 'Single: 5 MP', 5, 'Dual-LED flash, HDR', '1080p@30fps', 'Single: 2 MP', 2, '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Yes', 'Yes', '', 'Li-Ion 2000 mAh battery', 2000, 'Champagne Gold, Ice Blue, Dark Blue, Elegant Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9459, 1530403200, '2019-02-24 05:28:06', 1),
(34887, 218, 'Pouvoir 2 Pro', 160, 'https://www.gsmarena.com/tecno_pouvoir_2_pro-9458.php', 'GSM / HSPA / LTE', '2018, August', 'Available. Released 2018, August', '159.8 x 76.8 x 8.2 mm', '171', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.1 (Oreo)', '', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 3 GB RAM', '3 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash', '1080p@30fps', 'Single: 13 MP', 13, 'LED flash', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 5000 mAh battery', 5000, 'City Blue, Phantom Black, Honor Gold, Champagne Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9458, 1533081600, '2019-02-24 05:28:06', 1),
(34888, 218, 'Pouvoir 2', 90, 'https://www.gsmarena.com/tecno_pouvoir_2-9457.php', 'GSM / HSPA / LTE', '2018, May', 'Available. Released 2018, May', '159.8 x 76.8 x 8.5 mm', '167', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.1 (Oreo)', '', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Dual-LED dual-tone flash', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 5000 mAh battery', 5000, 'City Blue, Midnight Black, Champagne Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9457, 1525132800, '2019-02-24 05:28:06', 1),
(34889, 218, 'Pouvoir 1', 70, 'https://www.gsmarena.com/tecno_pouvoir_1-9456.php', 'GSM / HSPA', '2018, May', 'Available. Released 2018, May', '154.5 x 77.2 x 8.8 mm', '164', 'Dual SIM', 'TFT capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580W (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1 GB RAM', '1 GB', '16 GB', 'Single: 8 MP', 8, 'LED flash', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 5000 mAh battery', 5000, 'Dark Black, Spruce Green, Ice Blue, Amber Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9456, 1525132800, '2019-02-24 05:28:06', 1),
(34890, 218, 'Spark Pro', 85, 'https://www.gsmarena.com/tecno_spark_pro-9455.php', 'GSM / HSPA / LTE', '2017, October', 'Available. Released 2017, November', '153 x 76.4 x 7.9 mm', '182', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', '', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1/2 GB RAM', '2 GB/1 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Coral Blue, Champagne Gold, Black, Metallic Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9455, 1509494400, '2019-02-24 05:28:06', 1),
(34891, 218, 'Spark Plus', 87, 'https://www.gsmarena.com/tecno_spark_plus-9452.php', 'GSM / HSPA', '2017, June', 'Available. Released 2017, July', '162 x 82.6 x 7.8 mm', '194', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3400 mAh battery', 3400, 'Scarlet Red, Champagne Gold, Anthracite Grey, Elegant Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9452, 1498867200, '2019-02-24 05:28:06', 1),
(34892, 218, 'Spark CM', 106, 'https://www.gsmarena.com/tecno_spark_cm-9451.php', 'GSM / HSPA / LTE', '2017, December', 'Available. Released 2017, December', '152.2 x 71.7 x 5.6 mm', '172', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.7', '720 x 1440 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6737', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Quad-LED flash, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3050 mAh battery', 3050, 'Midnight Black, Champagne Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9451, 1512086400, '2019-02-24 05:28:06', 1),
(34893, 218, 'Spark 2', 92, 'https://www.gsmarena.com/tecno_spark_2-9450.php', 'GSM / HSPA', '2018, June', 'Available. Released 2018, June', '159.4 x 76.2 x 7.8 mm', '175', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.1 Oreo (Go edition)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1/2 GB RAM', '2 GB/1 GB', '16 GB', 'Single: 13 MP', 13, 'Triple-LED flash, HDR', '1080p@30fps', 'Single: 8 MP', 8, 'Dual-LED flash', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3500 mAh battery', 3500, 'Champagne Gold, Black, Coral Blue, Metallic Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9450, 1527811200, '2019-02-24 05:28:06', 1),
(34894, 218, 'Spark', 105, 'https://www.gsmarena.com/tecno_spark-9449.php', 'GSM / HSPA', '2017, May', 'Available. Released 2017, June', '153 x 76.4 x 7.9 mm', '169', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6580 (28 nm)', 'Quad-core', 'microSD, up to 32 GB', '16 GB, 1/2 GB RAM', '2 GB/1 GB', '16 GB', 'Single: 13 MP', 13, 'LED flash, HDR', '1080p@30fps', 'Single: 5 MP', 5, 'HDR', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Champagne Gold, Black, Coral Blue, Metallic Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9449, 1496275200, '2019-02-24 05:28:06', 1),
(34895, 218, 'Camon X Pro', 178, 'https://www.gsmarena.com/tecno_camon_x_pro-9448.php', 'GSM / HSPA / LTE', '2018, March', 'Available. Released 2018, March', '158 x 75.2 x 5.2 mm', '148', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 2160 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6763T Helio P23 (16 nm)', 'Octa-core', 'microSD, up to 128 GB', '64 GB, 4 GB RAM', '4 GB', '64 GB', 'Single: 16 MP', 16, 'Quad-LED flash, HDR', '1080p@30fps', 'Single: 24 MP', 24, 'Dual-LED flash, HDR', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3750 mAh battery', 3750, 'Midnight Black, Bordeaux Red', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9448, 1519862400, '2019-02-24 05:28:06', 1),
(34896, 218, 'Camon X', 155, 'https://www.gsmarena.com/tecno_camon_x-9447.php', 'GSM / HSPA / LTE', '2018, March', 'Available. Released 2018, March', '158.6 x 75.8 x 5.2 mm', '149', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '6.0', '720 x 1440 pixels', '', 'Android 8.1 (Oreo)', 'Mediatek MT6763T Helio P23 (16 nm)', 'Octa-core', 'microSD, up to 128 GB', '16/32 GB, 3 GB RAM', '3 GB', '32 GB/16 GB', 'Single: 16 MP', 16, 'Quad-LED flash, HDR', '1080p@30fps', 'Single: 20 MP', 20, 'Dual-LED flash, HDR', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3750 mAh battery', 3750, 'Champagne Gold, Midnight Black, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9447, 1519862400, '2019-02-24 05:28:06', 1),
(34898, 218, 'Camon CX Air', 125, 'https://www.gsmarena.com/tecno_camon_cx_air-9445.php', 'GSM / HSPA / LTE', '2017, April', 'Available. Released 2017, April', '153 x 75.4 x 6.6 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '720 x 1280 pixels', '', 'Android 7.0 (Nougat)', '', 'Octa-core', 'microSD, up to 128 GB', '16 GB, 2 GB RAM', '2 GB', '16 GB', 'Single: 13 MP', 13, 'Quad-LED flash, HDR', '1080p@30fps', 'Single: 13 MP', 13, 'Dual-LED flash, HDR', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3200 mAh battery', 3200, 'Champagne Gold, Sky Grey, Elegant Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9445, 1491004800, '2019-02-24 05:28:06', 1),
(34899, 218, 'Camon CX', 100, 'https://www.gsmarena.com/tecno_camon_cx-9444.php', 'GSM / HSPA / LTE', '2017, March', 'Available. Released 2017, March', '152.8 x 75.8 x 5.6 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6750T (28 nm)', 'Octa-core', 'microSD, up to 128 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Single: 16 MP', 16, 'Quad-LED flash, HDR', '1080p@30fps', 'Single: 16 MP', 16, 'Dual-LED flash, HDR', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3200 mAh battery', 3200, 'Grey, Rose Golden, Golden, Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9444, 1488326400, '2019-02-24 05:28:06', 1),
(34900, 218, 'Camon CM', 110, 'https://www.gsmarena.com/tecno_camon_cm-9443.php', 'GSM / HSPA / LTE', '2017, December', 'Available. Released 2018, January', '152.2 x 71.7 x 5.6 mm', '150', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.7', '720 x 1440 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6737H', 'Quad-core', 'microSD, up to 64 GB', '32 GB, 3 GB RAM or 16 GB, 2 GB RAM', '2 GB/3 GB', '16 GB/32 GB', 'Single: 13 MP', 13, 'Quad-LED flash, HDR', '1080p@30fps', 'Single: 13 MP', 13, 'LED flash, HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3000 mAh battery', 3000, 'Champagne Gold, Midnight Black, City Blue', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9443, 1514764800, '2019-02-24 05:28:06', 1),
(34901, 218, 'Phantom 8', 350, 'https://www.gsmarena.com/tecno_phantom_8-9440.php', 'GSM / HSPA / LTE', '2018, April', 'Available. Released 2018, April', '160 x 79.5 x 7.9 mm', '185', 'Dual SIM', 'IPS LCD capacitive touchscreen, 16M colors', '5.7', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6757T Helio P25 (16 nm)', 'Octa-core', 'microSD, up to 256 GB', '64 GB, 6 GB RAM', '6 GB', '64 GB', 'Dual: 12 MP + 13 MP', 12, 'Dual-LED dual-tone flash, HDR, panorama', '2160p@30fps, 1080p@30fps', 'Single: 20 MP', 20, 'Dual-LED dual-tone flash, HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 3500 mAh battery', 3500, 'Galaxy Blue, Champagne Gold, Phantom Black', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9440, 1522540800, '2019-02-24 05:28:06', 1),
(34902, 218, 'Phantom 6 Plus', 450, 'https://www.gsmarena.com/tecno_phantom_6_plus-9439.php', 'GSM / HSPA / LTE', '2016, September', 'Available. Released 2016, October', '160.4 x 83.5 x 7.7 mm', '196.7', 'Dual SIM', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '6.0', '1080 x 1920 pixels', '', 'Android 7.0 (Nougat)', 'Mediatek MT6797 Helio X20 (20 nm)', 'Deca-core', 'microSD, up to 256 GB', '64 GB, 4 GB RAM', '4 GB', '64 GB', 'Single: 21 MP', 21, 'Dual-LED dual-tone flash, HDR, panorama', '2160p@30fps, 1080p@30fps', 'Single: 8 MP', 8, 'LED flash, HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 4050 mAh battery', 4050, 'Champange Gold', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9439, 1475280000, '2019-02-24 05:28:07', 1);
INSERT INTO `mobiles` (`id`, `brand_id`, `title`, `price`, `detail_url`, `technology`, `announced`, `status`, `dimensions`, `weight`, `sim`, `type`, `size`, `resolution`, `multitouch`, `os`, `chipset`, `cpu`, `card_slot`, `internal`, `ram`, `storage`, `main_camera`, `mc_filter`, `mc_features`, `mc_video`, `selfie_camera`, `sc_filter`, `sc_features`, `sc_video`, `alert_types`, `loudspeaker`, `jack_3_5mm`, `wlan`, `bluetooth`, `gps`, `radio`, `usb`, `sensors`, `messaging`, `battery`, `battery_filter`, `colors`, `ext`, `images`, `pixel_density`, `protection`, `px_resolution`, `hz_refresh_rate`, `mhz_processor_speed`, `nfc`, `infrared`, `revision`, `origin_id`, `sorting`, `created`, `active`) VALUES
(34903, 218, 'Phantom 6', 245, 'https://www.gsmarena.com/tecno_phantom_6-9438.php', 'GSM / HSPA / LTE', '2016, September', 'Available. Released 2018, October', '151.5 x 75.5 x 6.2 mm', '141.8', 'Dual SIM', 'AMOLED capacitive touchscreen, 16M colors', '5.5', '1080 x 1920 pixels', '', 'Android 6.0 (Marshmallow)', 'Mediatek MT6755 (28 nm)', 'Octa-core', 'microSD, up to 256 GB', '32 GB, 3 GB RAM', '3 GB', '32 GB', 'Dual: 13 MP + 5 MP', 13, 'Dual-LED dual-tone flash, HDR, panorama', '1080p@30fps', 'Single: 8 MP', 8, 'HDR', '1080p@30fps', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'Non-removable Li-Ion 2700 mAh battery', 2700, 'Champange Gold, Star Gray', '.jpg', 0, 0, '', 0, 0, 0, NULL, NULL, 554, 9438, 1538352000, '2019-02-24 05:28:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_costs`
--

DROP TABLE IF EXISTS `mobile_costs`;
CREATE TABLE IF NOT EXISTS `mobile_costs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobile_costs`
--

INSERT INTO `mobile_costs` (`id`, `mobile_id`, `cost`, `date`, `created_at`, `updated_at`) VALUES
(1, 178, 3500, '2020-02-25', '2020-02-25 01:10:04', '2020-02-25 01:10:04'),
(2, 178, 1000, '2020-03-01', '2020-03-13 06:12:53', '2020-03-13 06:12:53'),
(3, 178, 4000, '2020-03-01', '2020-03-13 13:03:33', '2020-03-13 13:03:33'),
(4, 161, 1250, '2021-02-01', '2021-01-23 06:14:22', '2021-01-23 06:14:22'),
(12, 34752, 150, '2021-01-01', '2021-01-23 08:22:51', '2021-01-23 08:22:51'),
(13, 34752, 550, '2021-12-01', '2021-01-23 08:23:01', '2021-01-23 11:00:26'),
(14, 34752, 250, '2021-02-01', '2021-01-23 08:23:19', '2021-01-23 10:59:18'),
(15, 34752, 350, '2021-03-01', '2021-01-23 10:58:39', '2021-01-23 10:59:27'),
(16, 34752, 450, '2021-04-01', '2021-01-23 10:59:02', '2021-01-23 10:59:34'),
(17, 34752, 450, '2021-02-01', '2021-05-05 04:55:00', '2021-05-05 04:55:00'),
(18, 34752, 230, '2021-06-01', '2021-05-05 04:58:22', '2021-05-05 04:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `fa_icon` varchar(20) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `sorting` smallint(6) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `slug`, `fa_icon`, `status`, `sorting`, `created_at`, `updated_at`) VALUES
(16, 'Tickets', 'tickets', 'fa-ticket', 'Active', 1, '2020-02-17 14:31:24', '2020-02-17 14:31:24'),
(17, 'Categories', 'categories', 'fa-th-large', 'Active', 2, '2020-02-17 14:33:35', '2020-02-17 14:33:35'),
(18, 'Articles', 'articles', 'fa-book', 'Active', 3, '2020-02-17 14:34:28', '2020-02-17 14:34:28'),
(19, 'Departments', 'departments', 'fa-sitemap', 'Active', 4, '2020-02-17 14:35:27', '2020-02-17 14:35:27'),
(20, 'Products', 'products', 'fa-cube', 'Active', 5, '2020-02-17 14:36:16', '2020-02-17 14:36:16'),
(21, 'Tags', 'tags', 'fa-tag', 'Active', 6, '2020-02-17 14:38:08', '2020-02-17 14:38:08'),
(22, 'Testimonials', 'testimonials', 'fa-quote-left', 'Active', 7, '2020-02-17 14:38:47', '2020-02-17 14:38:47'),
(23, 'Services', 'services', 'fa-cog', 'Active', 8, '2020-02-17 14:40:31', '2020-02-17 14:40:31'),
(24, 'Modules', 'modules', 'fa-cubes', 'Active', 9, '2020-02-17 14:42:38', '2020-02-17 14:42:38'),
(25, 'Roles', 'roles', 'fa-users', 'Active', 10, '2020-02-17 14:43:03', '2020-02-17 14:43:03'),
(26, 'Permissions', 'permissions', 'fa-key', 'Active', 11, '2020-02-17 14:43:45', '2020-02-17 14:43:45'),
(27, 'Users', 'users', 'fa-user', 'Active', 13, '2020-02-17 14:44:06', '2020-02-17 14:44:06'),
(28, 'Event Logs', 'event-logs', 'fa-file-archive-o', 'Active', 15, '2020-02-17 14:45:03', '2020-02-17 14:45:03'),
(29, 'Settings', 'settings', 'fa-cogs', 'Active', 14, '2020-03-03 11:04:58', '2020-03-03 11:04:58'),
(30, 'Countries', 'countries', 'fa-globe', 'Active', 12, '2020-03-03 11:12:14', '2020-03-03 11:12:14'),
(31, 'Contact Us', 'contact-us', 'fa-envelope', 'Active', 13, '2020-03-03 11:53:48', '2020-03-03 11:53:48'),
(32, 'Dashboard', 'dashboard', 'fa-dashboard', 'Active', 0, '2020-04-01 12:04:19', '2020-04-01 12:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ahnafahmad2013@gmail.com', '$2y$10$0LO.aeTZF.jWETfX83oJiuxfcnC5Aq1AjBkunECaqrMtFXMKU/g6O', '2020-12-01 23:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(80, 16, 'tickets.index', 'Listing page of all tickets', NULL, '2020-02-17 08:31:24', '2020-02-17 08:31:24'),
(81, 16, 'tickets.create', 'Display the form for creating new tickets', NULL, '2020-02-17 08:31:25', '2020-02-17 08:31:25'),
(82, 16, 'tickets.edit', 'Display the form for editing a tickets', NULL, '2020-02-17 08:31:25', '2020-02-17 08:31:25'),
(83, 16, 'tickets.show', 'Show detail information for a tickets', NULL, '2020-02-17 08:31:25', '2020-02-17 08:31:25'),
(84, 16, 'tickets.store', 'Store action for creating a new tickets', NULL, '2020-02-17 08:31:25', '2020-02-17 08:31:25'),
(85, 16, 'tickets.update', 'Update action for updating a tickets', NULL, '2020-02-17 08:31:25', '2020-02-17 08:31:25'),
(86, 16, 'tickets.destroy', 'Delete action for removing a tickets', NULL, '2020-02-17 08:31:25', '2020-02-17 08:31:25'),
(87, 17, 'categories.index', 'Listing page of all categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(88, 17, 'categories.create', 'Display the form for creating new categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(89, 17, 'categories.edit', 'Display the form for editing a categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(90, 17, 'categories.show', 'Show detail information for a categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(91, 17, 'categories.store', 'Store action for creating a new categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(92, 17, 'categories.update', 'Update action for updating a categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(93, 17, 'categories.destroy', 'Delete action for removing a categories', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(94, 18, 'articles.index', 'Listing page of all articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(95, 18, 'articles.create', 'Display the form for creating new articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(96, 18, 'articles.edit', 'Display the form for editing a articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(97, 18, 'articles.show', 'Show detail information for a articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(98, 18, 'articles.store', 'Store action for creating a new articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(99, 18, 'articles.update', 'Update action for updating a articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(100, 18, 'articles.destroy', 'Delete action for removing a articles', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(101, 19, 'departments.index', 'Listing page of all departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(102, 19, 'departments.create', 'Display the form for creating new departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(103, 19, 'departments.edit', 'Display the form for editing a departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(104, 19, 'departments.show', 'Show detail information for a departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(105, 19, 'departments.store', 'Store action for creating a new departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(106, 19, 'departments.update', 'Update action for updating a departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(107, 19, 'departments.destroy', 'Delete action for removing a departments', NULL, '2020-02-17 08:35:27', '2020-02-17 08:35:27'),
(108, 20, 'products.index', 'Listing page of all products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(109, 20, 'products.create', 'Display the form for creating new products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(110, 20, 'products.edit', 'Display the form for editing a products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(111, 20, 'products.show', 'Show detail information for a products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(112, 20, 'products.store', 'Store action for creating a new products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(113, 20, 'products.update', 'Update action for updating a products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(114, 20, 'products.destroy', 'Delete action for removing a products', NULL, '2020-02-17 08:36:16', '2020-02-17 08:36:16'),
(115, 21, 'tags.index', 'Listing page of all tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(116, 21, 'tags.create', 'Display the form for creating new tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(117, 21, 'tags.edit', 'Display the form for editing a tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(118, 21, 'tags.show', 'Show detail information for a tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(119, 21, 'tags.store', 'Store action for creating a new tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(120, 21, 'tags.update', 'Update action for updating a tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(121, 21, 'tags.destroy', 'Delete action for removing a tags', NULL, '2020-02-17 08:38:08', '2020-02-17 08:38:08'),
(122, 22, 'testimonials.index', 'Listing page of all testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(123, 22, 'testimonials.create', 'Display the form for creating new testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(124, 22, 'testimonials.edit', 'Display the form for editing a testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(125, 22, 'testimonials.show', 'Show detail information for a testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(126, 22, 'testimonials.store', 'Store action for creating a new testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(127, 22, 'testimonials.update', 'Update action for updating a testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(128, 22, 'testimonials.destroy', 'Delete action for removing a testimonials', NULL, '2020-02-17 08:38:47', '2020-02-17 08:38:47'),
(129, 23, 'services.index', 'Listing page of all services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(130, 23, 'services.create', 'Display the form for creating new services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(131, 23, 'services.edit', 'Display the form for editing a services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(132, 23, 'services.show', 'Show detail information for a services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(133, 23, 'services.store', 'Store action for creating a new services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(134, 23, 'services.update', 'Update action for updating a services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(135, 23, 'services.destroy', 'Delete action for removing a services', NULL, '2020-02-17 08:40:31', '2020-02-17 08:40:31'),
(136, 24, 'modules.index', 'Listing page of all modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(137, 24, 'modules.create', 'Display the form for creating new modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(138, 24, 'modules.edit', 'Display the form for editing a modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(139, 24, 'modules.show', 'Show detail information for a modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(140, 24, 'modules.store', 'Store action for creating a new modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(141, 24, 'modules.update', 'Update action for updating a modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(142, 24, 'modules.destroy', 'Delete action for removing a modules', NULL, '2020-02-17 08:42:38', '2020-02-17 08:42:38'),
(143, 25, 'roles.index', 'Listing page of all roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(144, 25, 'roles.create', 'Display the form for creating new roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(145, 25, 'roles.edit', 'Display the form for editing a roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(146, 25, 'roles.show', 'Show detail information for a roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(147, 25, 'roles.store', 'Store action for creating a new roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(148, 25, 'roles.update', 'Update action for updating a roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(149, 25, 'roles.destroy', 'Delete action for removing a roles', NULL, '2020-02-17 08:43:03', '2020-02-17 08:43:03'),
(150, 26, 'permissions.index', 'Listing page of all permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(151, 26, 'permissions.create', 'Display the form for creating new permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(152, 26, 'permissions.edit', 'Display the form for editing a permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(153, 26, 'permissions.show', 'Show detail information for a permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(154, 26, 'permissions.store', 'Store action for creating a new permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(155, 26, 'permissions.update', 'Update action for updating a permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(156, 26, 'permissions.destroy', 'Delete action for removing a permissions', NULL, '2020-02-17 08:43:45', '2020-02-17 08:43:45'),
(157, 27, 'users.index', 'Listing page of all users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(158, 27, 'users.create', 'Display the form for creating new users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(159, 27, 'users.edit', 'Display the form for editing a users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(160, 27, 'users.show', 'Show detail information for a users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(161, 27, 'users.store', 'Store action for creating a new users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(162, 27, 'users.update', 'Update action for updating a users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(163, 27, 'users.destroy', 'Delete action for removing a users', NULL, '2020-02-17 08:44:06', '2020-02-17 08:44:06'),
(164, 28, 'event_logs.index', 'Listing page of all event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(165, 28, 'event_logs.create', 'Display the form for creating new event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(166, 28, 'event_logs.edit', 'Display the form for editing a event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(167, 28, 'event_logs.show', 'Show detail information for a event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(168, 28, 'event_logs.store', 'Store action for creating a new event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(169, 28, 'event_logs.update', 'Update action for updating a event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(170, 28, 'event_logs.destroy', 'Delete action for removing a event_logs', NULL, '2020-02-17 08:45:03', '2020-02-17 08:45:03'),
(171, 25, 'roles.exportXLSX', 'Export all roles in excel', NULL, '2020-03-03 04:43:04', '2020-03-03 04:43:04'),
(172, 25, 'roles.printDetails', 'Export role details in pdf', NULL, '2020-03-03 04:45:10', '2020-03-03 04:45:10'),
(173, 26, 'permissions.exportXLSX', 'Export all permissions in excel', NULL, '2020-03-03 04:46:40', '2020-03-03 04:46:40'),
(174, 26, 'permissions.printDetails', 'Export permission details in pdf', NULL, '2020-03-03 04:47:20', '2020-03-03 04:47:20'),
(175, 27, 'users.exportXLSX', 'Export all users in excel', NULL, '2020-03-03 04:49:26', '2020-03-03 04:49:26'),
(176, 27, 'users.printDetails', 'Export user details in pdf', NULL, '2020-03-03 04:50:01', '2020-03-03 04:50:01'),
(177, 24, 'modules.exportXLSX', 'Export all modules in excel', NULL, '2020-03-03 04:51:37', '2020-03-03 04:51:37'),
(178, 24, 'modules.printDetails', 'Export module details in pdf', NULL, '2020-03-03 04:52:28', '2020-03-03 04:53:23'),
(179, 28, 'event_logs.exportXLSX', 'Export all event logs in excel', NULL, '2020-03-03 04:55:44', '2020-03-03 04:55:44'),
(180, 28, 'event_logs.printDetails', 'Export event_log details in pdf', NULL, '2020-03-03 04:56:36', '2020-03-03 04:56:36'),
(181, 29, 'settings.index', 'Listing page of all Settings', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(182, 29, 'settings.create', 'Display the form for creating new Setting', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(183, 29, 'settings.edit', 'Display the form for editing a Setting', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(184, 29, 'settings.show', 'Show detail information for a setting', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(185, 29, 'settings.store', 'Store action for creating a new setting', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(186, 29, 'settings.update', 'Update action for updating a setting', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(187, 29, 'settings.destroy', 'Delete action for removing a setting', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(188, 29, 'settings.exportXLSX', 'Export all settings in excel', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(189, 29, 'settings.printDetails', 'Export setting details in pdf', NULL, '2020-03-03 05:04:58', '2020-03-03 05:04:58'),
(190, 21, 'tags.exportXLSX', 'Export all tags in excel', NULL, '2020-03-03 05:10:17', '2020-03-03 05:10:17'),
(191, 21, 'tags.printDetails', 'Export tag details in pdf', NULL, '2020-03-03 05:10:56', '2020-03-03 05:10:56'),
(192, 30, 'countries.index', 'Listing page of all countries', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(193, 30, 'countries.create', 'Display the form for creating new country', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(194, 30, 'countries.edit', 'Display the form for editing a country', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(195, 30, 'countries.show', 'Show detail information for a country', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(196, 30, 'countries.store', 'Store action for creating a new country', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(197, 30, 'countries.update', 'Update action for updating a country', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(198, 30, 'countries.destroy', 'Delete action for removing a country', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(199, 30, 'countries.exportXLSX', 'Export all countries in excel', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(200, 30, 'countries.printDetails', 'Export country details in pdf', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(202, 17, 'categories.printDetails', 'Export category details in pdf', NULL, '2020-03-03 05:17:38', '2020-03-03 05:17:38'),
(203, 19, 'departments.exportXLSX', 'Export all departments in excel', NULL, '2020-03-03 05:19:58', '2020-03-03 05:19:58'),
(204, 19, 'departments.printDetails', 'Export department details in pdf', NULL, '2020-03-03 05:20:31', '2020-03-03 05:20:31'),
(205, 20, 'products.exportXLSX', 'Export all products in excel', NULL, '2020-03-03 05:22:16', '2020-03-03 05:22:16'),
(206, 20, 'products.printDetails', 'Export product details in pdf', NULL, '2020-03-03 05:23:18', '2020-03-03 05:23:18'),
(207, 22, 'testimonials.exportXLSX', 'Export all testimonials in excel', NULL, '2020-03-03 05:25:42', '2020-03-03 05:25:42'),
(208, 22, 'testimonials.printDetails', 'Export testimonial details in pdf', NULL, '2020-03-03 05:27:25', '2020-03-03 05:27:25'),
(209, 16, 'tickets.exportXLSX', 'Export all tickets in excel', NULL, '2020-03-03 05:30:02', '2020-03-03 05:30:02'),
(210, 16, 'tickets.printDetails', 'Export ticket details in pdf', NULL, '2020-03-03 05:30:49', '2020-03-03 05:30:49'),
(211, 16, 'tickets.storeAssignTo', 'Store action for assigning tickets to role', NULL, '2020-03-03 05:32:08', '2020-03-03 05:32:08'),
(212, 16, 'tickets.comments', 'Display all comments for a ticket', NULL, '2020-03-03 05:35:01', '2020-03-03 05:35:01'),
(213, 18, 'articles.exportXLSX', 'Export all articles in excel', NULL, '2020-03-03 05:47:36', '2020-03-03 05:47:36'),
(215, 23, 'services.exportXLSX', 'Export all services in excel', NULL, '2020-03-03 05:49:36', '2020-03-03 05:49:36'),
(216, 23, 'services.printDetails', 'Export service details in pdf', NULL, '2020-03-03 05:50:09', '2020-03-03 05:50:09'),
(217, 31, 'contact_us.index', 'Listing page of all contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(218, 31, 'contact_us.create', 'Display the form for creating new contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(219, 31, 'contact_us.edit', 'Display the form for editing a contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(220, 31, 'contact_us.show', 'Show detail information for a contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(221, 31, 'contact_us.store', 'Store action for creating a new contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(222, 31, 'contact_us.update', 'Update action for updating a contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(223, 31, 'contact_us.destroy', 'Delete action for removing a contact us', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(224, 31, 'contact_us.exportXLSX', 'Export all contact us message in excel', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(225, 31, 'contact_us.printDetails', 'Export contact us details in pdf', NULL, '2020-03-03 05:53:48', '2020-03-03 05:53:48'),
(226, 16, 'tickets.ticketList', 'Display list with filters', NULL, '2020-03-03 05:35:01', '2020-03-03 05:35:01'),
(227, 17, 'categories.storeSortedItems', 'Store sorted items', NULL, '2020-02-17 08:33:35', '2020-02-17 08:33:35'),
(228, 18, 'articles.withProduct', 'filter articles with products', NULL, '2020-02-17 08:34:28', '2020-02-17 08:34:28'),
(229, 30, 'countries.countryList', 'Display table listing with filter', NULL, '2020-03-03 05:12:14', '2020-03-03 05:12:14'),
(230, 32, 'dashboard.index', 'Display the dashboard', NULL, '2020-04-01 06:04:19', '2020-04-01 06:04:19'),
(231, 32, 'dashboard.changeReportTime', 'Display the report time changer box', NULL, '2020-04-01 06:04:19', '2020-04-01 06:04:19'),
(239, 16, 'tickets.storePickMe', 'Store action for picking tickets to agent himself', NULL, '2020-03-03 05:32:08', '2020-03-03 05:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`,`module_id`),
  KEY `module_id` (`module_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `module_id`) VALUES
(80, 1, 16),
(80, 2, 16),
(80, 4, 16),
(81, 1, 16),
(81, 2, 16),
(81, 4, 16),
(82, 1, 16),
(82, 2, 16),
(82, 4, 16),
(83, 1, 16),
(83, 2, 16),
(83, 4, 16),
(84, 1, 16),
(84, 2, 16),
(84, 4, 16),
(85, 1, 16),
(85, 2, 16),
(85, 4, 16),
(86, 1, 16),
(86, 2, 16),
(209, 1, 16),
(209, 2, 16),
(209, 4, 16),
(210, 1, 16),
(210, 2, 16),
(210, 4, 16),
(211, 1, 16),
(211, 2, 16),
(212, 1, 16),
(212, 2, 16),
(212, 4, 16),
(226, 2, 16),
(226, 4, 16),
(239, 4, 16),
(87, 1, 17),
(87, 2, 17),
(87, 4, 17),
(88, 1, 17),
(88, 2, 17),
(88, 4, 17),
(89, 1, 17),
(89, 2, 17),
(89, 4, 17),
(90, 1, 17),
(90, 2, 17),
(90, 4, 17),
(91, 1, 17),
(91, 2, 17),
(91, 4, 17),
(92, 1, 17),
(92, 2, 17),
(92, 4, 17),
(93, 1, 17),
(93, 2, 17),
(202, 1, 17),
(202, 2, 17),
(202, 4, 17),
(227, 2, 17),
(227, 4, 17),
(94, 1, 18),
(94, 2, 18),
(94, 4, 18),
(95, 1, 18),
(95, 2, 18),
(95, 4, 18),
(96, 1, 18),
(96, 2, 18),
(96, 4, 18),
(97, 1, 18),
(97, 2, 18),
(97, 4, 18),
(98, 1, 18),
(98, 2, 18),
(98, 4, 18),
(99, 1, 18),
(99, 2, 18),
(99, 4, 18),
(100, 1, 18),
(100, 2, 18),
(213, 1, 18),
(213, 2, 18),
(213, 4, 18),
(228, 2, 18),
(228, 4, 18),
(101, 1, 19),
(101, 2, 19),
(102, 1, 19),
(102, 2, 19),
(103, 1, 19),
(103, 2, 19),
(104, 1, 19),
(104, 2, 19),
(105, 1, 19),
(105, 2, 19),
(106, 1, 19),
(106, 2, 19),
(107, 1, 19),
(107, 2, 19),
(203, 1, 19),
(203, 2, 19),
(204, 1, 19),
(204, 2, 19),
(108, 1, 20),
(108, 2, 20),
(109, 1, 20),
(109, 2, 20),
(110, 1, 20),
(110, 2, 20),
(111, 1, 20),
(111, 2, 20),
(112, 1, 20),
(112, 2, 20),
(113, 1, 20),
(113, 2, 20),
(114, 1, 20),
(114, 2, 20),
(205, 1, 20),
(205, 2, 20),
(206, 1, 20),
(206, 2, 20),
(115, 1, 21),
(115, 2, 21),
(116, 1, 21),
(116, 2, 21),
(117, 1, 21),
(117, 2, 21),
(118, 1, 21),
(118, 2, 21),
(119, 1, 21),
(119, 2, 21),
(120, 1, 21),
(120, 2, 21),
(121, 1, 21),
(121, 2, 21),
(190, 1, 21),
(190, 2, 21),
(191, 1, 21),
(191, 2, 21),
(122, 1, 22),
(122, 2, 22),
(123, 1, 22),
(123, 2, 22),
(124, 1, 22),
(124, 2, 22),
(125, 1, 22),
(125, 2, 22),
(126, 1, 22),
(126, 2, 22),
(127, 1, 22),
(127, 2, 22),
(128, 1, 22),
(128, 2, 22),
(207, 1, 22),
(207, 2, 22),
(208, 1, 22),
(208, 2, 22),
(129, 1, 23),
(129, 2, 23),
(130, 1, 23),
(130, 2, 23),
(131, 1, 23),
(131, 2, 23),
(132, 1, 23),
(132, 2, 23),
(133, 1, 23),
(133, 2, 23),
(134, 1, 23),
(134, 2, 23),
(135, 1, 23),
(135, 2, 23),
(215, 1, 23),
(215, 2, 23),
(216, 1, 23),
(216, 2, 23),
(136, 1, 24),
(137, 1, 24),
(138, 1, 24),
(139, 1, 24),
(140, 1, 24),
(141, 1, 24),
(142, 1, 24),
(177, 1, 24),
(178, 1, 24),
(143, 1, 25),
(144, 1, 25),
(145, 1, 25),
(146, 1, 25),
(147, 1, 25),
(148, 1, 25),
(149, 1, 25),
(171, 1, 25),
(172, 1, 25),
(150, 1, 26),
(151, 1, 26),
(152, 1, 26),
(153, 1, 26),
(154, 1, 26),
(155, 1, 26),
(156, 1, 26),
(173, 1, 26),
(174, 1, 26),
(157, 1, 27),
(158, 1, 27),
(159, 1, 27),
(160, 1, 27),
(161, 1, 27),
(162, 1, 27),
(163, 1, 27),
(175, 1, 27),
(176, 1, 27),
(164, 1, 28),
(165, 1, 28),
(166, 1, 28),
(167, 1, 28),
(168, 1, 28),
(169, 1, 28),
(170, 1, 28),
(179, 1, 28),
(180, 1, 28),
(181, 1, 29),
(182, 1, 29),
(183, 1, 29),
(184, 1, 29),
(185, 1, 29),
(186, 1, 29),
(187, 1, 29),
(188, 1, 29),
(189, 1, 29),
(192, 1, 30),
(192, 2, 30),
(193, 1, 30),
(193, 2, 30),
(194, 1, 30),
(194, 2, 30),
(195, 1, 30),
(195, 2, 30),
(196, 1, 30),
(196, 2, 30),
(197, 1, 30),
(197, 2, 30),
(198, 1, 30),
(198, 2, 30),
(199, 1, 30),
(199, 2, 30),
(200, 1, 30),
(200, 2, 30),
(229, 2, 30),
(217, 1, 31),
(217, 2, 31),
(218, 1, 31),
(218, 2, 31),
(219, 1, 31),
(219, 2, 31),
(220, 1, 31),
(220, 2, 31),
(221, 1, 31),
(221, 2, 31),
(222, 1, 31),
(222, 2, 31),
(223, 1, 31),
(223, 2, 31),
(224, 1, 31),
(224, 2, 31),
(225, 1, 31),
(225, 2, 31),
(230, 2, 32),
(231, 2, 32);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_source_id` int(11) NOT NULL,
  `mobile_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`price_source_id`,`title`),
  UNIQUE KEY `site_id_2` (`price_source_id`,`title`),
  KEY `currency_id` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `price_source_id`, `mobile_id`, `title`, `price`, `currency_id`, `created_at`, `updated_at`) VALUES
(274, 55, 34753, '512 GB, 8 GB RAM', 74299, 3, '2019-06-04 09:06:53', '2019-06-04 09:06:53'),
(275, 55, 34753, '128 GB, 6 GB RAM', 62999, 3, '2019-06-04 09:06:53', '2019-06-04 09:06:53'),
(276, 56, 34757, 'Blue 128 GB LTE', 2045, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(277, 56, 34757, 'Purple 128 GB LTE', 2045, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(278, 56, 34757, 'Black 128 GB LTE', 2045, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(279, 56, 34757, 'White 128 GB LTE', 2199, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(280, 56, 34757, 'Purple 512 GB LTE', 2995, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(281, 56, 34757, 'Blue 512 GB LTE', 2995, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(282, 56, 34757, 'Black 512 GB LTE', 2995, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(283, 56, 34757, 'Copper 128 GB LTE', 3500, 5, '2019-06-04 09:07:05', '2019-06-04 09:07:05'),
(318, 54, 34752, '512 GB, 8 GB RAM', 69900, 3, '2019-06-05 09:55:27', '2019-06-05 09:55:27'),
(319, 54, 34752, '128 GB, 6 GB RAM', 60030, 3, '2019-06-05 09:55:27', '2019-06-05 09:55:27'),
(326, 58, 0, '512 GB, 8 GB RAM', 74299, 3, '2019-06-05 10:32:30', '2019-06-05 10:32:30'),
(327, 58, 0, '128 GB, 6 GB RAM', 62999, 3, '2019-06-05 10:32:30', '2019-06-05 10:32:30'),
(328, 57, 0, '512 GB, 8 GB RAM', 69900, 3, '2019-06-05 10:38:26', '2019-06-05 10:38:26'),
(329, 57, 0, '128 GB, 6 GB RAM', 60030, 3, '2019-06-05 10:38:26', '2019-06-05 10:38:26'),
(330, 59, 0, 'Black 128 GB LTE', 2479, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(331, 59, 0, 'White 128 GB LTE', 2489, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(332, 59, 0, 'Green 128 GB LTE', 2519, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(333, 59, 0, 'Blue 128 GB LTE', 2519, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(334, 59, 0, 'Silver 128 GB LTE', 2899, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(335, 59, 0, 'Black 512 GB LTE', 3193, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(336, 59, 0, 'White 512 GB LTE', 3347, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(337, 59, 0, 'White 1 TB LTE', 4124, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(338, 59, 0, 'Black 1 TB LTE', 4124, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(339, 59, 0, 'Green 1 TB LTE', 5099, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(340, 59, 0, 'Green 512 GB LTE', 5099, 6, '2019-06-05 10:38:40', '2019-06-05 10:38:40'),
(341, 60, 0, '512 GB, 8 GB RAM', 69900, 3, '2019-06-05 11:07:41', '2019-06-05 11:07:41'),
(342, 60, 0, '128 GB, 6 GB RAM', 60030, 3, '2019-06-05 11:07:41', '2019-06-05 11:07:41'),
(356, 63, 0, '512 GB, 8 GB RAM', 74299, 3, '2019-06-05 11:43:57', '2019-06-05 11:43:57'),
(357, 63, 0, '128 GB, 6 GB RAM', 62999, 3, '2019-06-05 11:43:57', '2019-06-05 11:43:57'),
(358, 64, 0, 'Blue 128 GB LTE', 2045, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(359, 64, 0, 'Black 128 GB LTE', 2045, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(360, 64, 0, 'Purple 128 GB LTE', 2199, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(361, 64, 0, 'White 128 GB LTE', 2399, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(362, 64, 0, 'Purple 512 GB LTE', 2995, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(363, 64, 0, 'Blue 512 GB LTE', 2995, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(364, 64, 0, 'Black 512 GB LTE', 2995, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(365, 64, 0, 'Copper 128 GB LTE', 3500, 5, '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(366, 65, 0, 'White 128 GB LTE', 1839, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(367, 65, 0, 'Purple 128 GB LTE', 1842, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(368, 65, 0, 'Black 128 GB LTE', 1842, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(369, 65, 0, 'Blue 128 GB LTE', 1842, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(370, 65, 0, 'Black 512 GB LTE', 2748, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(371, 65, 0, 'Blue 512 GB LTE', 2782, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(372, 65, 0, 'Purple 512 GB LTE', 2782, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(373, 65, 0, 'Blue 128 GB 3G', 3170, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(374, 65, 0, 'Black 128 GB 3G', 3170, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(375, 65, 0, 'Copper 128 GB LTE', 3170, 6, '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(383, 67, 0, 'Blue 128 GB LTE', 155, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(384, 67, 0, 'Purple 128 GB LTE', 155, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(385, 67, 0, 'Black 128 GB LTE', 163, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(386, 67, 0, 'Copper 512 GB LTE', 230, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(387, 67, 0, 'Blue 512 GB LTE', 230, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(388, 67, 0, 'Purple 512 GB LTE', 240, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(389, 67, 0, 'Black 512 GB LTE', 241, 8, '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(397, 69, 0, 'Black 128 GB LTE', 10400, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37'),
(398, 69, 0, 'Blue 128 GB LTE', 10888, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37'),
(399, 69, 0, 'Purple 128 GB LTE', 10888, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37'),
(400, 69, 0, 'White 128 GB LTE', 11295, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37'),
(401, 69, 0, 'Blue 512 GB LTE', 14999, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37'),
(402, 69, 0, 'Purple 512 GB LTE', 17730, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37'),
(403, 69, 0, 'Black 512 GB LTE', 21499, 7, '2019-06-08 05:42:37', '2019-06-08 05:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `price_sources`
--

DROP TABLE IF EXISTS `price_sources`;
CREATE TABLE IF NOT EXISTS `price_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile_id` (`mobile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_sources`
--

INSERT INTO `price_sources` (`id`, `mobile_id`, `url`, `created_at`, `updated_at`) VALUES
(54, 34757, 'https://www.mysmartprice.com/mobile/samsung-galaxy-note-9-msp13176', '2019-06-03 10:46:08', '2019-06-03 16:26:53'),
(55, 34757, 'https://www.91mobiles.com/samsung-galaxy-note-9-price-in-india', '2019-06-03 16:52:41', '2019-06-03 16:52:41'),
(56, 34757, 'https://sa.pricena.com/en/product/samsung-galaxy-note-9-price-in-saudi-arabia', '2019-06-03 16:57:16', '2019-06-03 16:57:16'),
(57, 34753, 'https://www.mysmartprice.com/mobile/samsung-galaxy-note-9-msp13176', '2019-06-05 10:19:03', '2019-06-05 10:19:03'),
(58, 34753, 'https://www.91mobiles.com/samsung-galaxy-note-9-price-in-india', '2019-06-05 10:32:21', '2019-06-05 10:32:21'),
(59, 34753, 'https://ae.pricena.com/en/product/samsung-galaxy-s10-plus-price-in-dubai-uae', '2019-06-05 10:38:39', '2019-06-05 10:38:39'),
(60, 34758, 'https://www.mysmartprice.com/mobile/samsung-galaxy-note-9-msp13176', '2019-06-05 11:07:41', '2019-06-05 11:07:41'),
(63, 34758, 'https://www.91mobiles.com/samsung-galaxy-note-9-price-in-india', '2019-06-05 11:43:57', '2019-06-05 11:43:57'),
(64, 34758, 'https://sa.pricena.com/en/product/samsung-galaxy-note-9-price-in-saudi-arabia', '2019-06-05 11:44:10', '2019-06-05 11:44:10'),
(65, 34758, 'https://ae.pricena.com/en/product/samsung-galaxy-note-9-price-in-dubai-uae', '2019-06-05 11:44:36', '2019-06-05 11:44:36'),
(67, 34758, 'https://kw.pricena.com/en/product/samsung-galaxy-note-9-price-in-kuwait', '2019-06-05 11:45:11', '2019-06-05 11:45:11'),
(69, 34758, 'https://eg.pricena.com/en/product/samsung-galaxy-note-9-price-in-egypt', '2019-06-08 05:42:37', '2019-06-08 05:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `rams`
--

DROP TABLE IF EXISTS `rams`;
CREATE TABLE IF NOT EXISTS `rams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mb_amount` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rams`
--

INSERT INTO `rams` (`id`, `mobile_id`, `title`, `mb_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 34752, '8GB Ram', 8, 'Active', '2021-05-06 09:49:51', '2021-05-06 09:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `iso_code` varchar(5) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `currency_id`, `iso_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'United State', 2, 'US', 'Active', '2021-05-06 09:35:59', '2021-05-06 09:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrator of whole site', 'Admin is the topmost role for whole site. This role can take any action all over the site', '2019-06-16 08:55:50', '2019-06-16 08:56:58'),
(2, 'Agent Manager', 'Agent Manager', 'Agent Manager assign ticket to agent', '2019-06-16 09:00:45', '2019-12-09 05:12:59'),
(3, 'Customer', 'Customer', 'Customer will purchase products', '2019-11-28 04:38:36', '2019-11-28 04:38:36'),
(4, 'Agent', 'Agent', 'Agent will resolve ticket', '2019-12-09 05:13:29', '2019-12-09 05:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 1),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(53, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(79, 3),
(80, 3),
(81, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `constant` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `field_type` enum('Text','File','Select','MultiSelect','Boolean','Textarea','ColorPicker','ProductList','DateFormat') NOT NULL DEFAULT 'Text',
  `options` varchar(255) NOT NULL,
  `sorting` int(11) NOT NULL,
  `applied_env` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `group_id`, `title`, `constant`, `value`, `field_type`, `options`, `sorting`, `applied_env`, `status`) VALUES
(1, 1, 'Is Event Logs Enable', 'IS_EVENT_LOGS_ENABLE', '1', 'Boolean', 'Enabled|Disabled', 11, 0, '1'),
(2, 1, 'Site Name', 'SITE_NAME', 'MobPrice', 'Text', '', 1, 0, '1'),
(3, 1, 'Footer Text', 'FOOTER_TEXT', 'Copyright © 2020 Helpdesk. All rights reserved.', 'Text', '', 6, 0, '1'),
(4, 1, 'Site Email', 'SITE_EMAIL', 'contact@mobprice.net', 'Text', '', 3, 0, '1'),
(5, 1, 'Is Admin Privilege Enable', 'IS_ADMIN_PRIVILEGE_ENABLE', '1', 'Boolean', 'Enabled|Disabled', 10, 0, '1'),
(6, 1, 'Site Logo', 'SITE_LOGO', 'logo-1619954626.png', 'File', '', 12, 0, '1'),
(7, 1, 'Site Short Name', 'SITE_SHORT_NAME', 'MP', 'Text', '', 2, 0, '1'),
(8, 1, 'Version', 'VERSION', 'Version 1.0', 'Text', '', 7, 0, '1'),
(9, 1, 'Site Phone', 'SITE_PHONE', '+880 1810 023 541', 'Text', '', 4, 0, '1'),
(10, 1, 'Site Address', 'SITE_ADDRESS', '3/3 Block E Lalmatia 1209 - <br> Dhaka, Bangladesh', 'Text', '', 5, 0, '1'),
(11, 15, 'Site Map marker', 'SITE_MAP_MARKER', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.7880540393135!2d90.3642118144931!3d23.75493629452094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755bf5093bc41ed%3A0xa9a8e86b8de6301a!2zMywg4Kau4KeB4Kao4Ka_4Kac4Ka-IOCmruCmqOCmnOCngOCmsiwgMyBCbG9jayAjIEUsIERoYWthIDEyMDcsIEJhbmdsYWRlc2g!5e0!3m2!1sen!2sus!4v1612771465789!5m2!1sen!2sus', 'Textarea', '7', 6, 0, '1'),
(13, 10, 'Article Section Visibility', 'IS_DISPLAY_ARTICLE_HOME', '0', 'Boolean', 'Display|Hide', 1, 0, '1'),
(18, 6, 'Send replies via email', 'IS_REPLY_VIA_EMAIL', '0', 'Boolean', 'Enabled|Disabled', 1, 0, '1'),
(19, 6, 'Ticket Rejected Notification', 'IS_SEND_TICKET_REJECT_NOTIFICATION', '0', 'Boolean', 'Enabled|Disabled', 2, 0, '1'),
(20, 6, 'Ticket Received Notification', 'IS_SEND_TICKET_RECEIVE_NOTIFICATION', '0', 'Boolean', 'Enabled|Disabled', 3, 0, '1'),
(21, 2, 'Enable Google Login', 'IS_ENABLE_GOOGLE_LOGIN', '0', 'Boolean', 'Enabled|Disabled', 1, 0, '1'),
(22, 2, 'Google Client ID', 'GOOGLE_CLIENT_ID', '807548098481-7q4ksmpkv7gpo0qitje5es9rqsq8hngl.apps.googleusercontent.com', 'Text', '', 2, 1, '1'),
(23, 2, 'Google Client Secret', 'GOOGLE_CLIENT_SECRET', '0HjArUE9hSjw3wTAzJeVFnQy', 'Text', '', 3, 1, '1'),
(24, 3, 'Enable Facebook Login', 'IS_ENABLE_FACEBOOK_LOGIN', '0', 'Boolean', 'Enabled|Disabled', 1, 0, '1'),
(25, 3, 'Facebook Client ID', 'FACEBOOK_CLIENT_ID', '472773126741531', 'Text', '', 2, 1, '1'),
(26, 3, 'Facebook Client Secret', 'FACEBOOK_CLIENT_SECRET', 'aeccd9af0158f8650ae1ee28ffb00df3', 'Text', '', 3, 1, '1'),
(27, 4, 'Enable Envato Login', 'IS_ENABLE_ENVATO_LOGIN', '0', 'Boolean', 'Enabled|Disabled', 1, 0, '1'),
(28, 4, 'Envato Client ID', 'ENVATO_KEY', 'helpdesk-iozfd8gq', 'Text', '', 2, 1, '1'),
(29, 4, 'Envato Client Secret', 'ENVATO_SECRET', 'dXVqpMa6q3Ms4VN5RT5ibpmBK1XLsrGL', 'Text', '', 3, 1, '1'),
(30, 5, 'Maximum file size (MB)', 'MAXIMUM_FILE_SIZE', '4', 'Text', '', 1, 0, '1'),
(31, 5, 'Allowed File Types', 'ALLOWED_FILE_TYPES', 'jpg|gif|docs', 'MultiSelect', 'JPEG|jpeg,JPG|jpg,GIF|gif,PNG|png,DOC|doc,DOCS|docs', 2, 0, '1'),
(32, 8, 'Facebook', 'SOCIAL_MEDIA_LINK_FACEBOOK', '#', 'Text', '', 1, 0, '1'),
(33, 8, 'Twitter', 'SOCIAL_MEDIA_LINK_TWITTER', '#', 'Text', '', 2, 0, '1'),
(34, 8, 'Google Plus', 'SOCIAL_MEDIA_LINK_GOOGLE_PLUS', '#', 'Text', '', 3, 0, '1'),
(35, 8, 'linkedin', 'SOCIAL_MEDIA_LINK_LINKEDIN', '#', 'Text', '', 4, 0, '1'),
(36, 8, 'pinterest', 'SOCIAL_MEDIA_LINK_PINTEREST', '#', 'Text', '', 5, 0, '1'),
(37, 3, 'Facebook Callback Url', 'FACEBOOK_CALLBACK_URL', 'https://helpdesk.ratebd.com/login/facebook/callback', 'Text', '', 4, 1, '1'),
(38, 2, 'Google Callback Url', 'GOOGLE_CALLBACK_URL', 'https://helpdesk.ratebd.com/login/google/callback', 'Text', '', 4, 1, '1'),
(39, 9, 'Enable Twitter Login', 'IS_ENABLE_TWITTER_LOGIN', '0', 'Boolean', 'Enabled|Disabled', 1, 0, '1'),
(40, 9, 'Twitter Client ID', 'TWITTER_CLIENT_ID', 'TRlMidQcxKhmZVKY7cT0Q', 'Text', '', 2, 1, '1'),
(41, 9, 'Twitter Client Secret', 'TWITTER_CLIENT_SECRET', '5jKWXu2A7zevdjIRzLkDgbNAYivZaCP4QJoP7bwOmE', 'Text', '', 3, 1, '1'),
(42, 9, 'Twitter Callback Url', 'TWITTER_CALLBACK_URL', 'https://helpdesk.ratebd.com/login/twitter/callback', 'Text', '', 4, 1, '1'),
(43, 4, 'Envato Callback Url', 'ENVATO_REDIRECT_URI', 'https://helpdesk.ratebd.com/login/envato/callback', 'Text', '', 4, 1, '1'),
(44, 10, 'Default Product', 'ARTICLE_DEFAULT_PRODUCT_ID', '1', 'ProductList', '', 2, 0, '1'),
(45, 10, 'Header Title Color', 'ARTICLE_HEADER_TITLE_COLOR', '#666666', 'ColorPicker', '', 4, 0, '1'),
(46, 10, 'Header Font Family', 'ARTICLE_HEADER_FONT_FAMILY', 'Source Sans Pro', 'Select', 'Source Sans Pro|Source Sans Pro,sans-serif|sans-serif,Poppins|Poppins,Arial|Arial', 3, 0, '1'),
(47, 10, 'Section Background Color', 'ARTICLE_BACKGROUND_COLOR', '#f2f2f2', 'ColorPicker', '', 5, 0, '1'),
(48, 11, 'Our Projects Section Visibility', 'IS_DISPLAY_OUR_PROJECTS', '1', 'Boolean', 'Display|Hide', 1, 0, '1'),
(49, 11, 'Header Title', 'OUR_PROJECT_HEADER_TITLE', 'All Demos', 'Text', '', 2, 0, '1'),
(50, 11, 'Header Title Color', 'OUR_PROJECT_HEADER_TITLE_COLOR', '#666666', 'ColorPicker', '', 4, 0, '1'),
(51, 11, 'Header Font Family', 'OUR_PROJECT_HEADER_FONT_FAMILY', 'Source Sans Pro', 'Select', 'Source Sans Pro|Source Sans Pro,sans-serif|sans-serif,Poppins|Poppins,Arial|Arial', 3, 0, '1'),
(52, 11, 'Section Background Color', 'OUR_PROJECT_BACKGROUND_COLOR', '#f9f9f9', 'ColorPicker', '', 5, 0, '1'),
(53, 12, 'Our Services Section Visibility', 'IS_DISPLAY_OUR_SERVICES', '1', 'Boolean', 'Display|Hide', 1, 0, '1'),
(54, 12, 'Header Title', 'OUR_SERVICE_HEADER_TITLE', 'Our Services', 'Text', '', 2, 0, '1'),
(55, 12, 'Header Title Color', 'OUR_SERVICE_HEADER_TITLE_COLOR', '#666666', 'ColorPicker', '', 4, 0, '1'),
(56, 12, 'Header Font Family', 'OUR_SERVICE_HEADER_FONT_FAMILY', 'Source Sans Pro', 'Select', 'Source Sans Pro|Source Sans Pro,sans-serif|sans-serif,Poppins|Poppins,Arial|Arial', 3, 0, '1'),
(57, 12, 'Section Background Color', 'OUR_SERVICE_BACKGROUND_COLOR', '#ffffff', 'ColorPicker', '', 5, 0, '1'),
(58, 13, 'Section Visibility', 'IS_DISPLAY_OUR_SUPPORT_TEAM', '0', 'Boolean', 'Display|Hide', 1, 0, '1'),
(59, 13, 'Header Title', 'OUR_SUPPORT_TEAM_HEADER_TITLE', 'Our Support Team', 'Text', '', 2, 0, '1'),
(60, 13, 'Header Title Color', 'OUR_SUPPORT_TEAM_HEADER_TITLE_COLOR', '#666666', 'ColorPicker', '', 4, 0, '1'),
(61, 13, 'Header Font Family', 'OUR_SUPPORT_TEAM_HEADER_FONT_FAMILY', 'Source Sans Pro', 'Select', 'Source Sans Pro|Source Sans Pro,sans-serif|sans-serif,Poppins|Poppins,Arial|Arial', 3, 0, '1'),
(62, 13, 'Section Background Color', 'OUR_SUPPORT_TEAM_BACKGROUND_COLOR', '#f9f9f9', 'ColorPicker', '', 5, 0, '1'),
(63, 14, 'Section Visibility', 'IS_DISPLAY_TESTIMONIAL', '1', 'Boolean', 'Display|Hide', 1, 0, '1'),
(64, 14, 'Header Title', 'TESTIMONIAL_HEADER_TITLE', 'Happy Clients', 'Text', '', 2, 0, '1'),
(65, 14, 'Header Title Color', 'TESTIMONIAL_HEADER_TITLE_COLOR', '#ffffff', 'ColorPicker', '', 4, 0, '1'),
(66, 14, 'Header Font Family', 'TESTIMONIAL_HEADER_FONT_FAMILY', 'Source Sans Pro', 'Select', 'Source Sans Pro|Source Sans Pro,sans-serif|sans-serif,Poppins|Poppins,Arial|Arial', 3, 0, '1'),
(67, 14, 'Section Background Color', 'TESTIMONIAL_BACKGROUND_COLOR', '#31de79', 'ColorPicker', '', 5, 0, '1'),
(68, 15, 'Section Visibility', 'IS_DISPLAY_CONTACT_US', '1', 'Boolean', 'Display|Hide', 1, 0, '1'),
(69, 15, 'Header Title', 'CONTACT_US_HEADER_TITLE', 'Contact Us', 'Text', '', 2, 0, '1'),
(70, 15, 'Header Title Color', 'CONTACT_US_HEADER_TITLE_COLOR', '#666666', 'ColorPicker', '', 4, 0, '1'),
(71, 15, 'Header Font Family', 'CONTACT_US_HEADER_FONT_FAMILY', 'Source Sans Pro', 'Select', 'Source Sans Pro|Source Sans Pro,sans-serif|sans-serif,Poppins|Poppins,Arial|Arial', 3, 0, '1'),
(72, 15, 'Section Background Color', 'CONTACT_US_BACKGROUND_COLOR', '#f9f9f9', 'ColorPicker', '', 5, 0, '1'),
(73, 1, 'Display Date Format', 'DISPLAY_DATE_FORMAT', 'M j, Y', 'DateFormat', 'M j, Y|j/n/Y|M d, Y|F j, Y|m.d.y|j, n, Y|Y/m/d|m/d/Y|Y-m-d', 9, 0, '1'),
(74, 1, 'Site Style', 'SITE_STYLE', 'M', 'Select', 'Single Page|S,Multiple Pages|M', 8, 0, '1'),
(75, 1, 'Default Dashboard Time', 'DEFAULT_DASHBOARD_TIME', '365', 'Select', 'Last 7 days|6,Last 30 days|29,Last 365 days|365', 8, 0, '1'),
(76, 16, 'Domain Price', 'DOMAIN_PRICE', '1000', 'Text', '', 1, 0, '1'),
(77, 16, 'Logo Price', 'LOGO_PRICE', '1000', 'Text', '', 2, 0, '1'),
(78, 16, 'SSL Certificate Price', 'SSL_CERTIFICATE_PRICE', '800', 'Text', '', 3, 0, '1'),
(79, 16, 'Sslcommerz Price', 'SSLCOMMERZ_PRICE', '10000', 'Text', '', 4, 0, '1'),
(80, 16, 'Aamarpay Price', 'AAMARPAY_PRICE', '4000', 'Text', '', 5, 0, '1'),
(81, 16, 'Site Setup Fee', 'SITE_SETUP_FEE', '1000', 'Text', '', 6, 0, '1'),
(82, 16, 'Monthly Charge Website', 'MONTHLY_CHARGE_WEBSITE', '1500', 'Text', '', 7, 0, '1'),
(83, 16, 'Monthly Charge Android App', 'MONTHLY_CHARGE_ANDROID_APP', '2000', 'Text', '', 8, 0, '1'),
(84, 16, 'Monthly Charge iOS App', 'MONTHLY_CHARGE_IOS_APP', '2000', 'Text', '', 9, 0, '1'),
(85, 16, 'Android App Setup Fee', 'ANDROID_SETUP_FEE', '10000', 'Text', '', 6, 0, '1'),
(86, 16, 'iOS App Setup Fee', 'IOS_SETUP_FEE', '10000', 'Text', '', 6, 0, '1'),
(87, 16, 'Mobile App Lifetime Price', 'MOBILE_APP_LIFETIME_PRICE', '75000', 'Text', '', 6, 0, '1'),
(88, 16, 'Website Lifetime Price', 'WEBSITE_LIFETIME_PRICE', '25000', 'Text', '', 6, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `social_identities`
--

DROP TABLE IF EXISTS `social_identities`;
CREATE TABLE IF NOT EXISTS `social_identities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_identities`
--

INSERT INTO `social_identities` (`id`, `user_id`, `provider_name`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, 41, 'facebook', '10157232140097029', '2020-01-18 10:41:40', '2020-01-18 10:41:40'),
(4, 53, 'twitter', '204203004', '2020-01-18 11:42:29', '2020-01-18 11:42:29'),
(5, 41, 'google', '104137360200689203646', '2020-01-18 12:30:18', '2020-01-18 12:30:18'),
(6, 53, 'envato', 'firozcoder', '2020-01-18 15:33:55', '2020-01-18 15:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
CREATE TABLE IF NOT EXISTS `storages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mb_amount` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `mobile_id`, `title`, `mb_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 34752, '8GB Storage', 9, 'Active', '2021-05-06 09:28:01', '2021-05-06 09:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) NOT NULL,
  `theme_ext` varchar(100) DEFAULT NULL,
  `package_code` varchar(255) DEFAULT 'web-monthly-basic',
  `business_type` varchar(255) NOT NULL,
  `domain_type` varchar(100) NOT NULL,
  `domain_name` varchar(200) NOT NULL,
  `subdomain_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `cabundle_link` varchar(255) DEFAULT NULL,
  `sslcertificate_link` varchar(255) DEFAULT NULL,
  `privatekey_link` varchar(255) DEFAULT NULL,
  `user_created` tinyint(1) DEFAULT '0',
  `store_created` tinyint(1) DEFAULT '0',
  `file_deployed` tinyint(1) DEFAULT '0',
  `subdomain_created` tinyint(1) DEFAULT '0',
  `domain_url` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `sasalt` varchar(255) DEFAULT NULL,
  `susalt` varchar(255) DEFAULT NULL,
  `archived_at` datetime DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain_name` (`domain_name`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `theme`, `theme_ext`, `package_code`, `business_type`, `domain_type`, `domain_name`, `subdomain_name`, `user_id`, `order_id`, `cabundle_link`, `sslcertificate_link`, `privatekey_link`, `user_created`, `store_created`, `file_deployed`, `subdomain_created`, `domain_url`, `status`, `sasalt`, `susalt`, `archived_at`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'OC Toys', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'toystore', NULL, 2, 6, NULL, NULL, NULL, 1, 1, 1, 1, 'http://toystore.storola.net', 'Active', NULL, NULL, NULL, '2021-02-04 12:15:00', '2021-01-05 12:15:56', '2021-01-05 12:16:01', NULL),
(3, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'storezilla', NULL, 3, 7, NULL, NULL, NULL, 1, 1, 1, 1, 'http://storezilla.storola.net', 'Active', NULL, NULL, NULL, '2021-02-04 12:40:00', '2021-01-05 12:40:52', '2021-01-05 12:41:07', NULL),
(4, 'OC Grocery Three', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'gorceryshop', NULL, 4, 8, NULL, NULL, NULL, 1, 1, 1, 1, 'https://gorceryshop.storola.net', 'Active', NULL, NULL, NULL, '2021-02-04 13:27:00', '2021-01-05 13:27:49', '2021-01-05 13:28:05', NULL),
(5, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'fashinstore', NULL, 5, 9, NULL, NULL, NULL, 1, 1, 1, 1, 'https://fashinstore.storola.net', 'Active', NULL, NULL, NULL, '2021-02-04 13:38:00', '2021-01-05 13:38:47', '2021-01-05 13:39:02', NULL),
(6, 'OC Grocery Two', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'tukitaki', NULL, 6, 10, NULL, NULL, NULL, 1, 1, 1, 1, 'https://tukitaki.storola.net', 'Active', NULL, NULL, NULL, '2021-02-04 14:09:00', '2021-01-05 14:09:37', '2021-01-05 14:09:51', NULL),
(7, 'OC Books', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'dokanpat', NULL, 7, 11, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dokanpat.storola.net', 'Active', NULL, NULL, NULL, '2021-02-04 14:40:00', '2021-01-05 14:40:12', '2021-01-05 14:40:26', NULL),
(8, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'giveoffer', NULL, 8, 12, NULL, NULL, NULL, 1, 1, 1, 1, 'https://giveoffer.storola.net', 'Active', NULL, NULL, NULL, '2021-02-05 10:25:00', '2021-01-06 10:25:40', '2021-01-06 10:25:52', NULL),
(9, 'OC Electronics', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'sajib', NULL, 9, 13, NULL, NULL, NULL, 1, 1, 1, 1, 'https://sajib.storola.net', 'Active', NULL, NULL, NULL, '2021-02-05 21:34:00', '2021-01-06 21:34:07', '2021-01-06 21:34:18', NULL),
(10, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'testmart', NULL, 12, 14, NULL, NULL, NULL, 1, 1, 1, 1, 'https://testmart.storola.net', 'Inactive', 'baTAMhgIJK', 'VLKyENbmK3', '2021-01-13 00:00:07', '2021-02-10 10:05:00', '2021-01-11 10:05:51', '2021-01-13 00:00:07', NULL),
(11, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'electronicstore', NULL, 13, 15, NULL, NULL, NULL, 1, 1, 1, 1, 'https://electronicstore.storola.net', 'Inactive', 'SlRzN9Hbjf', '2tzZ5clY1n', '2021-01-13 00:00:10', '2021-02-10 10:37:00', '2021-01-11 10:37:35', '2021-01-13 00:00:10', NULL),
(12, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'kallal', NULL, 17, 16, NULL, NULL, NULL, 1, 1, 1, 1, 'https://kallal.storola.net', 'Inactive', 'nUoiKPKZu3', 'vzondqvBCP', '2021-01-18 00:00:07', '2021-02-15 13:54:00', '2021-01-16 13:54:15', '2021-01-18 00:00:07', NULL),
(13, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'sayedpurshop', NULL, 18, 17, NULL, NULL, NULL, 1, 1, 1, 1, 'https://sayedpurshop.storola.net', 'Inactive', 'YlLD0h7t0t', 'HhIFRsOhjI', '2021-01-20 00:00:05', '2021-02-17 16:55:00', '2021-01-18 16:55:12', '2021-01-20 00:00:05', NULL),
(14, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'foodpanda', NULL, 19, 18, NULL, NULL, NULL, 1, 1, 1, 1, 'https://foodpanda.storola.net', 'Inactive', 'YVzUd2osNL', 'fWuCFxmcFn', '2021-01-22 00:00:07', '2021-02-19 04:35:00', '2021-01-20 04:35:58', '2021-01-22 00:00:07', NULL),
(15, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'sajal', NULL, 23, 21, NULL, NULL, NULL, 1, 1, 1, 1, 'https://sajal.storola.net', 'Inactive', 'ZAcRnx9DZy', 'Wn5PdFqbuZ', '2021-01-29 00:00:06', '2021-02-26 12:50:00', '2021-01-27 12:50:55', '2021-01-29 00:00:06', NULL),
(16, 'OC Grocery One', '', 'web-monthly-basic', 'I\'m just\r\n                                                                                        checking\r\n                                                                                        out features', 'domain', 'miltonshop', NULL, 24, 22, NULL, NULL, NULL, 1, 1, 0, 0, '', 'Active', 'Fw9PM5sUaT', 'Na7IZXYOAS', NULL, '2021-02-27 13:14:00', '2021-01-28 13:14:54', '2021-01-28 13:14:59', NULL),
(17, 'OC Grocery One', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'ddp', NULL, 26, 23, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ddp.storola.net', 'Active', 'xFxHmXZspz', 'gwlL2v76YE', NULL, '2021-02-28 11:02:00', '2021-01-29 11:02:40', '2021-01-29 11:02:53', NULL),
(18, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'ppp', NULL, 27, 24, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ppp.storola.net', 'Active', 'cC7vOqs2nF', '0r4o6g9Ddi', NULL, '2021-03-01 11:12:00', '2021-01-30 11:12:18', '2021-01-30 11:12:31', NULL),
(19, 'OC Bags', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'monir', NULL, 28, 25, NULL, NULL, NULL, 1, 1, 1, 1, 'https://monir.storola.net', 'Active', '5zCtxFXHpC', 'NePD4NNWhq', NULL, '2021-03-02 12:35:00', '2021-01-31 12:35:10', '2021-01-31 12:35:21', NULL),
(20, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'bdeshimart', NULL, 29, 26, NULL, NULL, NULL, 1, 1, 1, 1, 'https://bdeshimart.storola.net', 'Active', 'Yxq4rRajph', 'xn3fAvxz1v', NULL, '2021-03-02 13:45:00', '2021-01-31 13:45:35', '2021-01-31 13:45:45', NULL),
(21, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'ttt', NULL, 31, 27, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ttt.storola.net', 'Active', 'SVH43UK75j', 'IhOI4FN9Xd', NULL, '2021-03-04 04:08:00', '2021-02-02 04:08:52', '2021-02-02 04:09:03', NULL),
(22, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummy', NULL, 32, 28, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummy.storola.net', 'Inactive', 'qSSn7kl7T8', '6UgT0mxZ4X', '2021-02-04 00:00:08', '2021-03-04 12:40:00', '2021-02-02 12:40:15', '2021-02-04 00:00:08', NULL),
(23, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummy1', NULL, 33, 29, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummy1.storola.net', 'Inactive', 'vMJlk5goXj', '3g33T6GtgV', '2021-02-04 00:00:13', '2021-03-04 12:45:00', '2021-02-02 12:45:28', '2021-02-04 00:00:13', NULL),
(24, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'ptp', NULL, 34, 30, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ptp.storola.net', 'Active', '2rRuR8EfQF', '47VsxAamV0', NULL, '2021-03-05 04:39:00', '2021-02-03 04:39:32', '2021-02-03 04:39:44', NULL),
(25, 'OC Grocery Two', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'demo333', NULL, 38, 31, NULL, NULL, NULL, 1, 1, 1, 1, 'https://demo333.storola.net', 'Inactive', '87mqBCRCzL', 'rl3hAwPl7g', '2021-02-10 00:00:09', '2021-03-10 15:11:00', '2021-02-08 15:11:05', '2021-02-10 00:00:09', NULL),
(26, 'OC Grocery Two', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummy5', NULL, 40, 32, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummy5.storola.net', 'Inactive', 'XiOvoosr7M', 'XSVH5enRKM', '2021-02-11 00:00:08', '2021-03-11 07:20:00', '2021-02-09 07:20:49', '2021-02-11 00:00:08', NULL),
(27, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'him', NULL, 41, 33, NULL, NULL, NULL, 1, 1, 1, 1, 'https://him.storola.net', 'Active', 'k6HC7gECsB', 'eLtkQ3D54P', NULL, '2021-03-14 08:45:00', '2021-02-12 08:45:52', '2021-02-12 08:46:07', NULL),
(28, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummy4', NULL, 42, 34, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummy4.storola.net', 'Inactive', 'BNFImN3iAE', 'QiNgxwsd1z', '2021-02-16 00:00:09', '2021-03-16 08:50:00', '2021-02-14 08:50:53', '2021-02-16 00:00:09', NULL),
(29, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummy6', NULL, 43, 35, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummy6.storola.net', 'Inactive', 'y7WHPxjxcJ', 'xjTGmLi8Ox', '2021-02-16 00:00:14', '2021-03-16 09:23:00', '2021-02-14 09:23:53', '2021-02-16 00:00:14', NULL),
(30, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummy7', NULL, 44, 36, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummy7.storola.net', 'Active', 'mGtaFJRS8M', 'fEPwiSYbEq', NULL, '2021-03-18 06:33:00', '2021-02-16 06:33:00', '2021-02-16 06:33:13', NULL),
(31, 'OC Grocery One', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummystore22', NULL, 45, 37, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummystore22.storola.net', 'Inactive', 'Y5e2r4n6NP', 'z0ygQ11R0m', '2021-02-18 00:00:05', '2021-03-18 11:46:00', '2021-02-16 11:46:05', '2021-02-18 00:00:05', NULL),
(32, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'nich', NULL, 46, 38, NULL, NULL, NULL, 1, 1, 1, 1, 'https://nich.storola.net', 'Active', 'neABZ1aPdf', 'eQGzSITT91', NULL, '2021-03-24 05:29:00', '2021-02-22 05:29:03', '2021-02-22 05:29:19', NULL),
(33, 'OC Grocery Four', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'fff', NULL, 47, 39, NULL, NULL, NULL, 1, 1, 1, 1, 'https://fff.storola.net', 'Active', 'SP66Yrnlv6', 'jH0LKhKauY', NULL, '2021-03-27 10:01:00', '2021-02-25 10:01:19', '2021-02-25 10:01:36', NULL),
(34, 'OC Books', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'shop', NULL, 49, 40, NULL, NULL, NULL, 1, 1, 1, 1, 'https://shop.storola.net', 'Active', 'p6YRsNb3WF', 'ZJeLHTL6VA', NULL, '2021-03-28 06:46:00', '2021-02-26 06:46:07', '2021-02-26 06:46:22', NULL),
(35, 'OC Electronics', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'mobile', NULL, 50, 41, NULL, NULL, NULL, 1, 1, 1, 1, 'https://mobile.storola.net', 'Active', 'y0i2QwdHub', 'dlIiTEWVZH', NULL, '2021-03-28 11:22:00', '2021-02-26 11:22:57', '2021-02-26 11:23:09', NULL),
(36, 'OC Fashion', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'women', NULL, 51, 42, NULL, NULL, NULL, 1, 1, 1, 1, 'https://women.storola.net', 'Active', 'AJeLqwZtLg', 'XsswKC7xsZ', NULL, '2021-03-28 11:27:00', '2021-02-26 11:27:48', '2021-02-26 11:27:59', NULL),
(37, 'OC Fashion', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'dhaka', NULL, 53, 43, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dhaka.storola.net', 'Active', '18U2WnQG23', 'JWRjODLx2O', NULL, '2021-03-28 11:34:00', '2021-02-26 11:34:11', '2021-02-26 11:34:22', NULL),
(38, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'domain', 'pepeleka.com', 'pepeleka', 55, 44, NULL, NULL, NULL, 1, 1, 1, 1, 'http://pepeleka.com', 'Active', '9fIrqyqcoR', 'ySu5DZgVqD', NULL, '2021-03-29 06:42:00', '2021-02-27 06:42:07', '2021-02-27 06:49:52', NULL),
(39, 'OC Grocery Two', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'abcd', NULL, 56, 45, NULL, NULL, NULL, 1, 1, 1, 1, 'https://abcd.storola.net', 'Inactive', 'vxjUVKfpyG', '2w29MZ1VbW', '2021-03-01 00:00:07', '2021-03-29 14:21:00', '2021-02-27 14:21:23', '2021-03-01 00:00:07', NULL),
(40, 'OC Bags', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'fdfd', NULL, 57, 46, NULL, NULL, NULL, 1, 1, 1, 1, 'https://fdfd.storola.net', 'Active', 'POtSalGDcp', 'rgDahuBbRU', NULL, '2021-03-31 06:46:00', '2021-03-01 06:46:52', '2021-03-01 06:47:12', NULL),
(41, 'OC Grocery Three', 'oc', 'web-monthly-basic', 'I have a\r\n                                                                                        physical\r\n                                                                                        store and will start online business soon', 'subdomain', 'globalgadget', NULL, 58, 47, NULL, NULL, NULL, 1, 1, 1, 1, 'https://globalgadget.storola.net', 'Active', 'kcvLSmjNCS', 'MEDDXvv9jf', NULL, '2021-04-06 13:56:00', '2021-03-07 13:56:18', '2021-03-07 13:56:39', NULL),
(42, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m just\r\n                                                                                        checking\r\n                                                                                        out features', 'subdomain', 'juthyonlineshop', NULL, 59, 48, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Inactive', 'ixnpaYL9mo', 'jdHMR4D8lY', '2021-03-10 00:00:07', '2021-04-07 08:45:00', '2021-03-08 08:45:52', '2021-03-10 00:00:07', NULL),
(43, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'arittrashop', NULL, 60, 49, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Inactive', 'uUBAJlnqrH', 'EAbQKrOR5q', '2021-03-10 00:00:13', '2021-04-07 13:34:00', '2021-03-08 13:34:00', '2021-03-10 00:00:13', NULL),
(44, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'modtest', NULL, 63, 50, NULL, NULL, NULL, 1, 1, 1, 1, 'https://modtest.storola.net', 'Inactive', 'G4EIY3To8', 'G4EIY3To8', '2021-03-12 00:00:08', '2021-04-09 05:11:00', '2021-03-10 05:11:20', '2021-03-12 00:00:08', NULL),
(45, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummyshop34', NULL, 67, 51, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummyshop34.storola.net', 'Inactive', 'DYWvnGFfE', 'DYWvnGFfE', '2021-03-15 00:00:09', '2021-04-12 09:48:00', '2021-03-13 09:48:16', '2021-03-15 00:00:09', NULL),
(46, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'dummyshop35', NULL, 68, 52, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dummyshop35.storola.net', 'Active', 'RVKyOvnuH', 'RVKyOvnuH', NULL, '2021-04-12 09:53:00', '2021-03-13 09:53:12', '2021-03-13 09:53:26', NULL),
(47, 'OC Foods', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'ebm', NULL, 69, 53, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ebm.storola.net', 'Inactive', 'axROIx7Y8', 'axROIx7Y8', '2021-03-16 00:00:09', '2021-04-13 07:31:00', '2021-03-14 07:31:48', '2021-03-16 00:00:09', NULL),
(48, 'OC Jewellery', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'cheap', NULL, 70, 54, NULL, NULL, NULL, 1, 1, 1, 1, 'https://cheap.storola.net', 'Inactive', 'Fp0qFL8UO', 'Fp0qFL8UO', '2021-03-17 00:00:08', '2021-04-14 03:46:00', '2021-03-15 03:46:59', '2021-03-17 00:00:08', NULL),
(49, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'rebova ltd', NULL, 71, 55, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Inactive', '89e3ox9mA', '89e3ox9mA', '2021-03-19 00:00:02', '2021-04-16 17:26:00', '2021-03-17 17:26:05', '2021-03-19 00:00:02', NULL),
(50, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'Jaharul Islam', NULL, 72, 56, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Inactive', '5Nvlg69yc', '5Nvlg69yc', '2021-03-19 00:00:02', '2021-04-16 18:11:00', '2021-03-17 18:11:51', '2021-03-19 00:00:02', NULL),
(51, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'lamond', NULL, 73, 57, NULL, NULL, NULL, 1, 1, 1, 1, 'https://lamond.storola.net', 'Active', 'uhkd7VNBz', 'uhkd7VNBz', NULL, '2021-04-16 18:19:00', '2021-03-17 18:19:05', '2021-03-17 18:19:30', NULL),
(52, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'newmarket', NULL, 75, 58, NULL, NULL, NULL, 1, 1, 1, 1, 'https://newmarket.storola.net', 'Active', 'vSEOgBqr4', 'vSEOgBqr4', NULL, '2021-04-17 06:15:00', '2021-03-18 06:15:12', '2021-03-18 06:15:30', NULL),
(53, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m just\r\n                                                                                        checking\r\n                                                                                        out features', 'subdomain', 'sharpstar', NULL, 76, 59, NULL, NULL, NULL, 1, 1, 1, 1, 'https://sharpstar.storola.net', 'Active', 'cQZLugurd', 'cQZLugurd', NULL, '2021-04-17 07:15:00', '2021-03-18 07:15:41', '2021-03-18 07:16:06', NULL),
(54, 'OC Grocery Three', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'perfumeshop', NULL, 77, 60, NULL, NULL, NULL, 1, 1, 1, 1, 'https://perfumeshop.storola.net', 'Active', 'rHimyRWDv', 'rHimyRWDv', NULL, '2021-04-18 08:46:00', '2021-03-19 08:46:26', '2021-03-19 08:46:43', NULL),
(55, 'OC Grocery Four', 'oc', 'web-monthly-basic', 'I have a\r\n                                                                                        physical\r\n                                                                                        store and will start online business soon', 'subdomain', 'dayamay', NULL, 81, 61, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dayamay.storola.net', 'Active', 'rMduZxlgH', 'rMduZxlgH', NULL, '2021-04-19 06:03:00', '2021-03-20 06:03:54', '2021-03-20 06:04:12', NULL),
(57, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'grandlotus', NULL, 83, 63, NULL, NULL, NULL, 1, 1, 1, 1, 'https://grandlotus.storola.net', 'Active', 'CXaj5ETX6', 'CXaj5ETX6', NULL, '2021-04-19 18:08:00', '2021-03-20 18:08:57', '2021-03-20 18:09:17', NULL),
(58, 'OC Foods', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'dr88', NULL, 85, 64, NULL, NULL, NULL, 1, 1, 1, 1, 'https://dr88.storola.net', 'Active', 'ti9i4HeAT', 'ti9i4HeAT', NULL, '2021-04-21 08:49:00', '2021-03-22 08:49:45', '2021-03-22 08:50:11', NULL),
(59, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'domain', 'b-desimart.com', 'bdeshishop', 86, 65, NULL, NULL, NULL, 1, 1, 1, 1, 'http://b-desimart.com', 'Active', 'MnfORWxoM', 'MnfORWxoM', NULL, '2021-04-24 10:31:00', '2021-03-25 10:31:48', '2021-03-30 12:13:46', NULL),
(60, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'ok', NULL, 87, 66, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ok.storola.net', 'Active', 'N9b1F7DD6', 'N9b1F7DD6', NULL, '2021-04-25 07:11:00', '2021-03-26 07:11:03', '2021-03-26 07:11:30', NULL),
(61, 'OC Foods', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'panda', NULL, 88, 67, NULL, NULL, NULL, 1, 1, 1, 1, 'https://panda.storola.net', 'Active', 'x9PNB5jpH', 'x9PNB5jpH', NULL, '2021-04-27 06:01:00', '2021-03-28 06:01:10', '2021-03-28 06:01:41', NULL),
(62, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'test', NULL, 89, 68, NULL, NULL, NULL, 1, 1, 1, 1, 'https://test.storola.net', 'Inactive', 'dSQS7vJc7', 'dSQS7vJc7', '2021-03-30 00:00:09', '2021-04-27 12:20:00', '2021-03-28 12:20:59', '2021-03-30 00:00:09', NULL),
(63, 'OC Electronics', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'modina', NULL, 90, 69, NULL, NULL, NULL, 1, 1, 1, 1, 'https://modina.storola.net', 'Inactive', 'bDCxcnshc', 'bDCxcnshc', '2021-03-30 00:00:15', '2021-04-27 13:05:00', '2021-03-28 13:05:38', '2021-03-30 00:00:15', NULL),
(64, 'OC Grocery One', 'oc', 'web-monthly-basic', 'I\'m just\r\n                                                                                        checking\r\n                                                                                        out features', 'subdomain', 'aam', NULL, 91, 70, NULL, NULL, NULL, 1, 1, 1, 1, 'https://aam.storola.net', 'Active', 'FqKfOIQok', 'FqKfOIQok', NULL, '2021-04-27 21:29:00', '2021-03-28 21:29:39', '2021-03-28 21:30:00', NULL),
(65, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'goworldbd', NULL, 92, 71, NULL, NULL, NULL, 1, 1, 1, 1, 'https://goworldbd.storola.net', 'Active', 'WdnpWYP2B', 'WdnpWYP2B', NULL, '2021-04-28 15:10:00', '2021-03-29 15:10:19', '2021-03-29 15:10:44', NULL),
(66, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'totosshop', NULL, 95, 72, NULL, NULL, NULL, 1, 1, 1, 1, 'https://totosshop.storola.net', 'Active', 'JBv6SVYzm', 'JBv6SVYzm', NULL, '2021-04-29 08:41:00', '2021-03-30 08:41:12', '2021-03-30 08:41:38', NULL),
(67, 'OC Books', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'marketplacebadda', NULL, 96, 73, NULL, NULL, NULL, 1, 1, 1, 1, 'https://marketplacebadda.storola.net', 'Active', 'FF1CnQjKt', 'FF1CnQjKt', NULL, '2021-04-29 13:13:00', '2021-03-30 13:13:43', '2021-03-30 13:14:04', NULL),
(68, 'OC Bags', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'deasyshop', NULL, 97, 74, NULL, NULL, NULL, 1, 1, 1, 1, 'https://deasyshop.storola.net', 'Active', 'jnf5zg9Pu', 'jnf5zg9Pu', NULL, '2021-04-29 18:16:00', '2021-03-30 18:16:52', '2021-03-30 18:17:16', NULL),
(69, 'OC Grocery Four', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'domain', 'songjogshop.com', 'songjogshop', 99, 75, NULL, NULL, NULL, 1, 1, 1, 1, 'http://songjogshop.com', 'Active', 'BLlLznXcn', 'BLlLznXcn', NULL, '2021-05-02 16:03:00', '2021-04-02 16:03:18', '2021-04-03 05:19:25', NULL),
(70, 'OC Tools', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'powertools', NULL, 100, 76, NULL, NULL, NULL, 1, 1, 1, 1, 'https://powertools.storola.net', 'Active', 'Wkt8Yxu5A', 'Wkt8Yxu5A', NULL, '2021-05-03 16:04:00', '2021-04-03 16:04:58', '2021-04-03 16:05:27', NULL),
(71, 'OC Fashion', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'green', NULL, 101, 77, NULL, NULL, NULL, 1, 1, 1, 1, 'https://green.storola.net', 'Active', 'oKdCK31T2', 'oKdCK31T2', NULL, '2021-05-09 11:16:00', '2021-04-09 11:16:45', '2021-04-09 11:17:14', NULL),
(72, 'OC Fashion', 'oc', 'web-monthly-basic', 'I will\r\n                                                                                        start selling\r\n                                                                                        online soon', 'subdomain', 'ebazaar', NULL, 103, 78, NULL, NULL, NULL, 1, 1, 1, 1, 'https://ebazaar.storola.net', 'Active', 'yzGT83jGx', 'yzGT83jGx', NULL, '2021-05-10 15:01:00', '2021-04-10 15:08:25', '2021-04-10 15:08:58', NULL),
(73, 'OC Grocery One', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'tubamart', NULL, 104, 79, NULL, NULL, NULL, 1, 1, 1, 1, 'https://tubamart.storola.net', 'Active', 'Yghfr9p2E', 'Yghfr9p2E', NULL, '2021-05-10 19:25:00', '2021-04-10 19:25:01', '2021-04-10 19:25:29', NULL),
(74, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'morolmart', NULL, 105, 80, NULL, NULL, NULL, 1, 1, 1, 1, 'https://morolmart.storola.net', 'Active', 'sCu8SGQTI', 'sCu8SGQTI', NULL, '2021-05-12 04:42:00', '2021-04-12 04:42:38', '2021-04-12 04:43:09', NULL),
(75, 'OC Electronics', 'oc', 'web-monthly-basic', 'I\'m selling from Facebook Page', 'subdomain', 'northernitbd', NULL, 106, 81, NULL, NULL, NULL, 1, 1, 1, 1, 'https://northernitbd.storola.net', 'Active', 'ISKDHkrZ5', 'ISKDHkrZ5', NULL, '2021-05-19 06:56:00', '2021-04-19 06:56:19', '2021-04-19 06:56:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_addons`
--

DROP TABLE IF EXISTS `store_addons`;
CREATE TABLE IF NOT EXISTS `store_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `addon_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `status` enum('Pending','On-Hold','Canceled','Failed','Processing','Completed') DEFAULT 'Pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_addons`
--

INSERT INTO `store_addons` (`id`, `store_id`, `order_id`, `addon_id`, `title`, `price`, `status`, `created_at`, `updated_at`, `deleted at`) VALUES
(1, 2, 20, 37, 'Logo', 200, 'Processing', '2021-01-23 08:43:46', '2021-01-23 08:54:47', NULL),
(2, 2, 20, 44, 'website source code', 1000, 'Processing', '2021-01-23 08:43:46', '2021-01-23 08:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(5, 'tag5', 'Active', 1, '2019-11-26 08:34:06', '2019-11-26 08:34:06'),
(6, 'tag6', 'Active', 1, '2019-12-27 11:40:47', '2019-12-27 11:40:47'),
(8, 'tag8', 'Active', 1, '2019-12-27 11:41:05', '2019-12-27 11:41:05'),
(13, 'tag13', 'Active', 1, '2019-12-27 11:41:58', '2019-12-27 11:41:58'),
(14, 'tag14', 'Active', 1, '2019-12-27 11:42:09', '2019-12-27 11:42:09'),
(15, 'tag15', 'Active', 1, '2019-12-30 13:33:22', '2019-12-30 13:33:22'),
(16, 'tag16', 'Active', 1, '2019-12-30 13:35:27', '2019-12-30 13:35:27'),
(17, 'tag17', 'Active', 1, '2019-12-30 13:35:27', '2019-12-30 13:35:27'),
(18, 'tag18', 'Active', 1, '2019-12-30 13:36:31', '2019-12-30 13:36:31'),
(19, 'tag19', 'Active', 1, '2019-12-30 13:38:02', '2019-12-30 13:38:02'),
(20, 'tag20', 'Active', 1, '2019-12-30 13:38:02', '2019-12-30 13:38:02'),
(21, 'tag21', 'Active', 1, '2019-12-30 13:38:17', '2019-12-30 13:38:17'),
(22, 'tag22', 'Active', 1, '2019-12-30 13:44:25', '2019-12-30 13:44:25'),
(23, 'tag23', 'Active', 1, '2019-12-30 13:44:25', '2019-12-30 13:44:25'),
(24, 'tag24', 'Active', 1, '2019-12-30 13:45:35', '2019-12-30 13:45:35'),
(25, 'tag25', 'Active', 1, '2019-12-30 13:46:35', '2019-12-30 13:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_id`, `rating`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 45, 4, 'Active', 'the quick brown fox jumps over the lazy dogs.', '2019-11-26 08:53:07', '2020-01-18 07:09:44'),
(2, 47, 4, 'Active', 'Great Work, Congratulations GLWS', '2019-11-28 10:42:00', '2020-01-18 07:24:31'),
(3, 48, 4, 'Active', '5 Stars for the UI, Impressed with the screens the way you worked hard to make them look this way, Good luck', '2019-11-28 10:42:42', '2020-01-18 07:24:44'),
(5, 49, 5, 'Active', 'It is a great template, which is armed with firebase as a backend for authentication and lists without much effort.', '2019-11-28 10:44:02', '2020-01-18 07:25:04'),
(6, 46, 3, 'Inactive', 'This is test', '2020-08-08 06:09:37', '2020-08-08 06:09:37');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `priority` enum('Low','Medium','High') NOT NULL DEFAULT 'Low',
  `department_id` int(11) NOT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `status` enum('Open','Closed','Spam') NOT NULL DEFAULT 'Open',
  `agent_action` enum('New','Answered','Not Answered') NOT NULL DEFAULT 'New',
  `customer_action` enum('Read','Unread') NOT NULL DEFAULT 'Read',
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `created_by`, `product_id`, `priority`, `department_id`, `assign_to`, `status`, `agent_action`, `customer_action`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ticket subject1', 45, 1, 'Low', 1, 44, 'Open', 'Not Answered', 'Read', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '2019-12-08 16:24:09', '2019-12-31 16:24:09', NULL),
(2, 'ticket subject2', 1, 1, 'Low', 2, NULL, 'Open', 'New', 'Read', 'fsasdfsd fdsfsdf  fdfsd', '2020-03-10 10:16:48', '2019-12-31 16:23:31', NULL),
(3, 'ticket subject3', 1, 1, 'Medium', 2, NULL, 'Open', 'New', 'Read', 'the fox box jox', '2020-01-17 10:17:24', '2019-12-31 16:24:09', NULL),
(4, 'ticket subject4', 1, 1, 'Low', 1, NULL, 'Closed', 'New', 'Read', 'the customer change things', '2019-12-06 10:17:55', '2019-12-31 16:24:09', NULL),
(5, 'ticket subject5', 1, 1, 'Low', 2, NULL, 'Open', 'New', 'Read', 'ticket subject6', '2019-12-09 08:08:08', '2019-12-31 16:24:09', NULL),
(7, 'ticket subject6', 1, 1, 'High', 2, NULL, 'Open', 'New', 'Read', 'the fox', '2019-12-09 09:18:40', '2019-12-31 16:24:09', NULL),
(8, 'ticket subject7', 1, 1, 'Medium', 2, NULL, 'Open', 'New', 'Read', 'df ddd', '2019-12-09 09:22:14', '2019-12-31 16:24:09', NULL),
(10, 'customer ticket1', 1, 1, 'Low', 1, 43, 'Open', 'New', 'Read', '<p>desc customer<br></p>', '2019-12-09 12:03:08', '2019-12-11 11:34:03', NULL),
(11, 'customer ticket 3', 45, 1, 'Medium', 2, 43, 'Open', 'New', 'Read', '<p>the quick brown fox</p><p><i>test</i><br></p><br>', '2019-12-09 15:53:04', '2019-12-11 11:34:03', NULL),
(12, 'customer ticket 12', 45, 1, 'Medium', 3, 43, 'Closed', 'New', 'Read', '<p>edit</p><p>customer ticket 12<br></p>', '2019-12-09 15:56:09', '2019-12-11 11:34:03', NULL),
(13, 'customer ticket 15', 45, 1, 'Medium', 2, 43, 'Open', 'New', 'Read', '<h1>this is customer ticket</h1><p>The quick brown fox<br></p><p><br></p>', '2019-12-10 11:41:07', '2019-12-11 11:34:03', NULL),
(14, 'customer ticket 20', 1, 1, 'Low', 2, NULL, 'Open', 'New', 'Read', '<p>this is test<br></p>', '2020-01-18 06:52:28', '2020-03-06 08:36:36', NULL),
(15, 'customer ticket 21', 49, 1, 'Medium', 2, NULL, 'Open', 'New', 'Read', '<p>This is test tikets for image<br></p>', '2020-01-18 07:56:48', '2020-01-18 07:56:48', NULL),
(16, 'customer ticket 22', 49, 1, 'Medium', 2, NULL, 'Open', 'New', 'Read', '<p>This tickets are with imges<br></p>', '2020-01-18 07:59:40', '2020-01-18 07:59:40', NULL),
(17, 'customer ticket 23', 49, 1, 'Medium', 2, 42, 'Open', 'New', 'Read', '<p>fdf fdsfsd sdfds <br></p>', '2020-01-18 08:00:02', '2020-02-17 13:53:54', NULL),
(18, 'Dashboard not working', 46, 1, 'Low', 2, NULL, 'Open', 'New', 'Read', '<p>Some information in dashboard are not working.<br></p>', '2020-03-16 03:17:21', '2020-03-16 16:58:10', NULL),
(19, 'dummy ticket', 46, 1, 'Low', 1, NULL, 'Open', 'New', 'Read', '<p><br></p>', '2020-03-18 08:07:04', '2020-03-18 08:07:04', NULL),
(20, 'ddd', 46, 1, 'Low', 1, NULL, 'Open', 'New', 'Read', 'ssss', '2020-03-18 08:10:17', '2020-03-18 08:10:17', NULL),
(21, 'another ticket', 46, 1, 'Low', 1, NULL, 'Open', 'New', 'Read', '<p>adfsdf<br></p>', '2020-03-18 10:34:15', '2020-03-18 10:34:24', NULL),
(22, 'another ticket 2', 46, 1, 'Medium', 1, NULL, 'Open', 'New', 'Read', '<p>the box<img style=\"width: 128px;\" src=\"data:image/jpeg;base64,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\" data-filename=\"user4-128x128.jpg\"><br></p>', '2020-03-18 10:36:57', '2020-03-18 10:37:02', NULL),
(23, 'another ticket 3', 46, 1, 'Medium', 1, NULL, 'Open', 'New', 'Read', '<p>The quick brown fox</p><p><img style=\"width: 259px;\" src=\"data:image/jpeg;base64,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\" data-filename=\"(JPEG Image, 259&nbsp;×&nbsp;194 pixels).jpg\"></p><p><br></p><p>This is a great medicine<br></p>', '2020-03-18 10:39:11', '2020-03-18 10:39:19', NULL),
(24, 'customer ticket 235', 46, 1, 'Low', 1, NULL, 'Open', 'New', 'Read', '<p>dfasddfasfd<br></p>', '2020-03-18 12:11:05', '2020-03-18 12:11:05', NULL),
(25, 'customer ticket 237', 46, 3, 'Low', 1, 44, 'Open', 'New', 'Read', '<p>this is a great tutorial<br></p>', '2020-03-18 12:28:49', '2020-04-02 11:15:20', NULL),
(26, 'admin ticket testing 1', 1, 1, 'Medium', 2, 43, 'Open', 'New', 'Read', '<p>this is a test message</p><p><br></p><p><img style=\"width: 512px;\" src=\"data:image/png;base64,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\" data-filename=\"iconfinder_Apple_Books_2697663.png\"><br></p><p><br></p><p><br></p>', '2020-03-19 10:11:01', '2020-04-02 08:14:16', NULL),
(27, 'This is image upload testing', 1, 1, 'Low', 1, NULL, 'Open', 'New', 'Read', '<p>This is a description the quick brown fox. Now below image</p><p><img style=\"width: 241px;\" src=\"http://helpdesk.loc/storage/media/tickets/1.jpg\"><br></p>', '2019-09-09 10:56:30', '2019-12-09 10:56:35', NULL),
(28, 'This is a dummy tickets', 46, 1, 'Low', 2, NULL, 'Open', 'Not Answered', 'Read', '<p>the quick brown fox jumps over the lazy dogs<br></p>', '2020-08-07 14:04:54', '2020-08-07 14:12:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_files`
--

DROP TABLE IF EXISTS `uploaded_files`;
CREATE TABLE IF NOT EXISTS `uploaded_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(50) NOT NULL,
  `original_filename` varchar(255) NOT NULL,
  `file_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`id`, `filename`, `original_filename`, `file_type_id`, `user_id`, `created_at`, `updated_at`) VALUES
(20, 'person_1.jpg', 'Picture.jpg', 1, 1, '2019-06-23 11:34:50', '2019-06-23 11:34:50'),
(27, 'person_2.jpg', 'if_search_binoculars_find_103854.png', 3, 41, '2019-06-23 11:47:53', '2019-06-23 11:47:53'),
(28, 'person_42.jpg', 'iconfinder_support_416400.png', 3, 42, '2019-11-28 10:52:05', '2019-11-28 10:52:05'),
(29, 'person_4.jpg', '(JPEG Image, 225 × 225 pixels).jpg', 1, 43, '2019-11-28 10:55:14', '2019-11-28 10:55:14'),
(30, 'staff-3.jpg', 'images.jpg', 1, 44, '2019-11-28 10:56:21', '2019-11-28 10:56:21'),
(31, '45.jpg', 'danielle-profile-bittaxer.jpg', 1, 45, '2019-11-28 10:57:22', '2019-11-28 10:57:22'),
(32, '46.jpg', 'p12-zamzam-ibrahim-nus-president-700px-profile.jpg', 1, 46, '2019-11-28 10:58:21', '2019-11-28 10:58:44'),
(33, '47.jpg', 'catherine-flowers.jpg', 1, 47, '2020-01-18 07:14:08', '2020-01-18 07:14:08'),
(34, '48.jpg', 'staff-2.jpg', 1, 48, '2020-01-18 07:18:31', '2020-01-18 07:18:31'),
(35, '49.jpg', 'f4.jpg', 1, 49, '2020-01-18 07:21:05', '2020-01-18 07:21:05'),
(36, '50.jpg', 'f2.jpg', 1, 50, '2020-01-18 07:23:44', '2020-01-18 07:23:44'),
(37, '53.jpg', 'user4-128x128.jpg', 1, 53, '2020-03-15 16:14:55', '2020-03-15 16:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `country_id`, `department_id`, `phone`, `designation`, `company`, `gender`, `address`, `state`, `city`, `zip`, `status`, `email_verified_at`, `remember_token`, `password`, `created_at`, `updated_at`) VALUES
(2, 'ahnafahmad', 'ahnafahmad2013@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-05 12:19:29', NULL, '$2y$10$XvB/2WvSHiBGq/DNAr3HkOIsLe9KDuXczF2hpjtx3bLJdoijyUPaS', '2021-01-05 12:15:56', '2021-01-05 12:19:29'),
(3, 'ahnafahmad', 'austcse14@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-05 12:44:20', NULL, '$2y$10$EjH.9hIkJFWMqvnta92S5OfhLVaftGb3J3zpiOhadmCjlv7detJ0u', '2021-01-05 12:40:52', '2021-01-05 12:44:20'),
(4, 'ahnafahmad', 'ahnafahmad22@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'XtQ2W7ZIP9SwASSPwF1iHULQJW7unX3QEo1hqiPh', '$2y$10$cx/Q5QPgsk01grqL4.ABI.Afq5CHGF0t9EtlhLl9FXH7ZYPQ7viDy', '2021-01-05 13:27:49', '2021-01-05 13:27:49'),
(5, 'ahnafahmad', 'fashion@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'WdZWZY6ZeyFY6wtSPUYqRtdlUnnpmMVLegSHrooY', '$2y$10$xtjro8MDbyPeFnDWHpeeguf2Gkm0zTAj5srDPQGk2F3D/v9jG8d9e', '2021-01-05 13:38:47', '2021-01-05 13:38:47'),
(6, 'Md Firoz', 'firoz.cse2.sust@gmail.com', NULL, NULL, '01734232827', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-05 14:26:58', NULL, '$2y$10$YDQvlvewiK4MtgZJKyxdruB0AOcKS6pLqE3t.w8wecf6PRDeXbAdK', '2021-01-05 14:09:37', '2021-01-05 14:26:58'),
(7, 'malek', 'abdmalekt20@gmail.com', NULL, NULL, '01911311309', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'Yg6WvpzcJ5IlHx0tE9cghEE80YQUoRKokfB0de4b', '$2y$10$8vwSBr7qEdnMt4bD1AQAuu/Uzzf8byuNGKCnztCl6/bDluVljCX1K', '2021-01-05 14:40:12', '2021-01-05 14:40:12'),
(8, 'Md Firoz', 'shohan.host.test@gmail.com', NULL, NULL, '01734232827', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'ukzNviheCdc4w9fdmpHgGTOVP7KS8Ho8v3Wl4aJj', '$2y$10$Qf7l/e8jBkZoTKoRXEwHaeaSxE3EWP6GZtzsxb0plDgp2CaGozOAS', '2021-01-06 10:25:40', '2021-01-06 10:25:40'),
(9, 'Sajib', 'sajib.sust@yahoo.com', NULL, NULL, '01764953008', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-06 21:34:42', NULL, '$2y$10$kCpwr2vAX.dmvJXAQ2CD6ubnvr2lrJjRnFKcNK9ZZH1vTRtuiLmcG', '2021-01-06 21:34:07', '2021-01-06 21:34:42'),
(10, 'Crawford Raynor', 'jtischer82@aol.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$mwzcyZI9Hyd/FAdUGZ4HSun0EOvjNDGXDOvbhErbPAZP5Yxolnbbi', '2021-01-08 20:09:36', '2021-01-08 20:09:36'),
(11, 'Keanu Haley V', 'Edd_Jacobs67@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$sTcezB45tyjiqRHz4anv2OADqj2BuorqWWoCly.LpkuETWM3tYlde', '2021-01-09 17:53:16', '2021-01-09 17:53:16'),
(12, 'ahnaf', 'ahnaf@mail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'XQ6NqIBXAVQrSPCG0DItcthJ8JA2vSC487C72fFV', '$2y$10$2AEuR4B9NJ3mWcZJ2sbiBeOiB29Ej8XqVnVqRtK6jLcrDQq9F83iC', '2021-01-11 10:05:51', '2021-01-11 10:05:51'),
(13, 'ahnafahmad', 'austcse141@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'xn55ZncheI7Sm9vaPvhjg3dp1JQszVGkYwqbJaKm', '$2y$10$SaXLl8F.sAsLSet18BirLuX9RR8F0hZl62Ty4dLLY3FfFMJ3MtTgO', '2021-01-11 10:37:35', '2021-01-11 10:37:35'),
(14, 'Miss Lowell Emard', 'estebanmichel17@yahoo.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$xLf060evqaIt06v12GuD9e7E7Ai9vI8SHFjTtXeNnB0Q5Q2J6IpWi', '2021-01-12 08:33:24', '2021-01-12 08:33:24'),
(15, 'Maynard Turcotte', 'adis.vip@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$j8rLS3fd4yOLyRVVVx2qPucdLl5P8MhYLhT3mNysZyHprz9y.mhGy', '2021-01-13 12:09:20', '2021-01-13 12:09:20'),
(16, 'Opal Bayer', 'cowtownoliver@sbcglobal.net', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$//aT7usPWEIGDLXU6Birz.ggu8qCqNCx6NxUs2xobi.AmpdBMgKui', '2021-01-13 16:00:31', '2021-01-13 16:00:31'),
(17, 'kallal Shop', 'kallal@gmail.com', NULL, NULL, '01734232999', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'RXiMmcJNkYvFJLxGMVD6IpAsR5bGi0LA0UhUusC9', '$2y$10$fwlnD7Xk6oaqdo5zGoSoJeqKZ0sgkBSB82JnStJqk3fV/fr.eGfCa', '2021-01-16 13:54:15', '2021-01-16 13:54:15'),
(18, 's', 'shohan.cse.sust12@gmail.com', NULL, NULL, '01739886722', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'f3EbEdUqEE1t4ZROkJ3CWtlH7usAKDdIIR0N2ptm', '$2y$10$FpI.SlDGj5pkjn1dU61z3u3OVX5rS.l.3Il/mX.OXCqGhPR5jNFhO', '2021-01-18 16:55:12', '2021-01-18 16:55:12'),
(19, 'Md Firoz', 'foodpanda@gmail.com', NULL, NULL, '01734999999', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'JamTXWiugVikeb8td4MKVmalM2Q4uoNlCft5xiUJ', '$2y$10$h/RumsZEEyQtFnmVjKKdpOo.hJzFjreT5Li2VorE4OcUjhv85VJEC', '2021-01-20 04:35:58', '2021-01-20 04:35:58'),
(20, 'admin', 'admin@admin.com', NULL, NULL, '019888888', NULL, 'storola.net', 'Male', '3/3 Block E Lalmatia 1209, Dhaka', 'Dhaka', 'Dhaka', '1209', 'Active', NULL, NULL, '$2y$10$0svj9guYFca/IfE0c3zbPeYI/xyGfT/8uJSJKp2f4mP6vHrCoKmwe', '2021-01-23 14:47:05', '2021-01-23 14:47:05'),
(21, 'Rick Kozey', 'info@shishabucks.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$Rdke1S43HFG02p7OXzlGLuQOZiskXS.JvRmpzRR2KhqxMes8E9iY6', '2021-01-24 04:00:21', '2021-01-24 04:00:21'),
(22, 'Gustave Schaden', 'tdmelton1020@aol.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$Kd76YKBI3ccrdErk6hVpU.aDIIJzgW2abt22LpHN8jcCAiY5xdiR2', '2021-01-24 14:01:08', '2021-01-24 14:01:08'),
(23, 'Sakhawat Hossain', 'sakhawatsajal@gmail.com', NULL, NULL, '01685820263', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'aIYDLRiU4zdOwZnszIVrOW8tLos0tIF7taK93asE', '$2y$10$6sOuINqG0PD1g1ticXUbFOnEV4XuuyERVxp1Yw7WHttfL3Yf5GZ9S', '2021-01-27 12:50:55', '2021-01-27 12:50:55'),
(24, 'milton', 'mimratul@gmail.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-28 13:15:44', NULL, '$2y$10$vVxlfGEUbhgunQqHiXnSg.A8Jmmn93k14EsUOiV.7SmT3MgpyRTS6', '2021-01-28 13:14:54', '2021-01-28 13:15:44'),
(25, 'Ludwig Effertz', 'harlowapril77@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$L2ad25bwAMnQyHbbAqmCUe2twhaBYXJ8OqxfXllAmHAfHhUR71bzm', '2021-01-29 06:32:22', '2021-01-29 06:32:22'),
(26, 'milton', 'doradaniels117@gmail.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-29 11:11:12', NULL, '$2y$10$0FYq/RBp1JHHdT7eYcmqi.zZMGTuDjj.auSLC2lTRYwXNgEhf1T3.', '2021-01-29 11:02:40', '2021-01-29 11:11:12'),
(27, 'milton', 'neyoseg301@200cai.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-30 11:13:06', NULL, '$2y$10$5Ef6E3MbU8bz9WL37UC2XeHRr3anJbXSxKvfCHnbwc3dB3g.RnxaK', '2021-01-30 11:12:18', '2021-01-30 11:13:06'),
(28, 'monir', 'bmmonir1994@gmail.com', NULL, NULL, '01906600259', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-31 12:36:58', NULL, '$2y$10$DIpl7BG7YbcRlQqkM7YJxeHEWFRp4IUE8CCxOM99tMMhZ/.4a0tNS', '2021-01-31 12:35:10', '2021-01-31 12:36:58'),
(29, 'Monir', 'bmmonirtc@gmail.com', NULL, NULL, '01739886722', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-01-31 13:47:59', NULL, '$2y$10$mdWpYfCWoisRS0cAD1VQ5uWExMvbXFzLTr5.yXQeDyQbK9cheT9Ae', '2021-01-31 13:45:35', '2021-01-31 13:47:59'),
(30, 'Zachariah O\'Connell MD', 'marioncyril@hotmail.fr', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$u7jEaLR.XTo5wID1mOxn5.rF9j3QEQkwXyYny3NiAQMqevjpkV.46', '2021-01-31 23:37:50', '2021-01-31 23:37:50'),
(31, 'milton', 'nikoxa3063@poetred.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-02 04:09:35', NULL, '$2y$10$fZ040KUJJbfFCJEB3qiufuArIJkK1TTJyPXyXHw5zrcFJ5CPVs86u', '2021-02-02 04:08:52', '2021-02-02 04:09:35'),
(32, 'Md Firoz', 'firoz.coder11@gmail.com', NULL, NULL, '01734232827', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'ZrpUxKJe0J8WRcQpD8ivdac9tA02jOi4kpcyBcMg', '$2y$10$IjNsoBD72UISTHGBCF2VIenp7dg3Nl88AUjTji4CSSPPwKFGxsH4.', '2021-02-02 12:40:15', '2021-02-02 12:40:15'),
(33, 'Md Firoz', 'firoz.coder@gmail.com', NULL, NULL, '01734232826', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'arqaPLVtC3vi8VUr2VU0pdWP4xgNZqKlCRof7grI', '$2y$10$R.N1pFLrh9yGlmZfoO0Xn./3L3EL8VhVNjR05maaeYemHCssOHnsy', '2021-02-02 12:45:28', '2021-02-02 12:45:28'),
(34, 'milton', 'mabob77102@laklica.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-03 04:40:27', NULL, '$2y$10$ruogUlLq18/kQJ..nHkQ9.ZQ36NRAQMynppH8zP.edoJttBBMVYxC', '2021-02-03 04:39:32', '2021-02-03 04:40:27'),
(35, 'Hilma Hilpert', 'nikkihoedt@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$UCz56wDcgw69y9giOpX.LujQVaH.bHuj.ALAPJIlA2XgMamPSe0ra', '2021-02-04 05:48:32', '2021-02-04 05:48:32'),
(36, 'Eleanora Carter', '5129819640@vtext.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$150IO/2J8RxTmkHTJ2f34eRn3kTt61p6VzV.9z07gdxyY54vzkDNO', '2021-02-05 08:00:48', '2021-02-05 08:00:48'),
(37, 'Ariel Kuphal', 'danirholmes25@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$bREdvL3iyOS9R/l6Osj4heGItIAOe/3vTZYdhRoOy4hMHmJbC.ZZe', '2021-02-07 16:44:14', '2021-02-07 16:44:14'),
(38, 'Md Firoz', 'demo333@gmail.com', NULL, NULL, '01734232833', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'j5fk0sGRiZMT45eBhRvM8keMHUhCGmhRTuDbKe1v', '$2y$10$6h6wWn23eT3jXBAF7jKwgeGCiqt5GHMZRsODfIVpgSnO3EPBJpwGG', '2021-02-08 15:11:05', '2021-02-08 15:11:05'),
(39, 'Etha Ankunding', 'clarevcrawford@hotmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$.QGZcAeXGtxhxiNAfX0dt.ZsEJ8nhkHy4wCmY7dLP404qwHNifZdG', '2021-02-09 04:10:46', '2021-02-09 04:10:46'),
(40, 'Md Firoz', 'demo334@gmail.com', NULL, NULL, '01734232834', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'Z1NXeOhqqGxeTyMolsaPkle65ZAruGVw2jhWdpua', '$2y$10$YncXBdI5KY.T3b31H/Tiiu6LnclqtJAj9ia5wblP02hOWaPFir9Ke', '2021-02-09 07:20:49', '2021-02-09 07:20:49'),
(41, 'Azizul Hakim', 'qfxcygbkjqzskwalkq@kiabws.com', NULL, NULL, '01711114845', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-12 08:46:50', NULL, '$2y$10$SWPtrD5mmiuljVU7xBk0uO22FBt9KiJJnsVQVXFOAFV8kSBWFnYdC', '2021-02-12 08:45:52', '2021-02-12 08:46:50'),
(42, 'Md Firoz', 'dummy4@gmail.com', NULL, NULL, '01734232834', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'wtkrvKMnvuDY9AgDh7g0goh6d6bkZHaqxK5Bz240', '$2y$10$mn3rfQqmUE/JqtHtEb6SnOjY.nfOu9o2Ua2t.NJKLmf5VcRbvGSXa', '2021-02-14 08:50:53', '2021-02-14 08:50:53'),
(43, 'Md Firoz', 'dummy6@gmail.com', NULL, NULL, '01734232835', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'HLkhwEn8oB8ZEvSmY70HCKRUKJwQ73iKeZsJFU60', '$2y$10$joAudNVQF458VO8UX9zNz.Y1YtUPxmJm.Ptcao.8S3Z2YN.l2HHQ6', '2021-02-14 09:23:53', '2021-02-14 09:23:53'),
(44, 'Md Firoz', 'firoz.cse.sust2@gmail.com', NULL, NULL, '01734234573', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-16 06:34:30', NULL, '$2y$10$qvW51zNH/IvIpulJNes6TOsDw7jARczQm6sMIzGZ1WV0mv3zOXL6S', '2021-02-16 06:33:00', '2021-02-16 06:34:30'),
(45, 'ahnafahmad', 'thebazarproject01@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'fLUVXcsH42hyUUMvmm3ZsnvjY5DsQ86CCrmBMjjS', '$2y$10$PEXCaxME8tPIyjstq64mBeCTVe.AVfnkLU3jq2BCMQniHY9u7YtkW', '2021-02-16 11:46:05', '2021-02-16 11:46:05'),
(46, 'niche', 'tayin92457@seacob.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-22 05:29:47', NULL, '$2y$10$1osP93aDe29QLl4pgQV2..7n05H8sFVW7F0hFMduwhe/55oKY73yC', '2021-02-22 05:29:03', '2021-02-22 05:29:47'),
(47, 'ifrat', 'kinafa1924@iconmle.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-25 10:02:01', NULL, '$2y$10$HUfrfsQoh6Tz.x7YiZ43YOJSIi3nuvs/SGvxOpVDGjARUMRVi4Jc6', '2021-02-25 10:01:19', '2021-02-25 10:02:01'),
(48, 'Sumon', 'sumondmarket@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$ww0yvQAqGjdkgrNgxVupse3z8k2KGmraoufDjnzxim98kDWtd8Gbq', '2021-02-25 14:00:54', '2021-02-25 14:00:54'),
(49, 'Syee', 'foyz666@gmail.com', NULL, NULL, '01533318366', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-26 06:48:34', NULL, '$2y$10$0pdGBRkemC5PpJXQ843pluA6Qkvd4Cumvh7ifjZkp8jC9tH.KWi6C', '2021-02-26 06:46:07', '2021-02-26 06:48:34'),
(50, 'Foyz', 'abedins777@gmail.com', NULL, NULL, '01812097503', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-26 11:23:50', NULL, '$2y$10$7DXDKkrF4JVbJtDrylsZtO6CLrJGcSrr5MutbRSwtN2GopOUV6106', '2021-02-26 11:22:57', '2021-02-26 11:23:50'),
(51, 'Syed', 'foyzul.arman@gmail.com', NULL, NULL, '01533318366', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-26 11:30:51', NULL, '$2y$10$qJ1fAWzK7y6g/lFtI9O8yugRLYpzWSL9cPDv2XL6pufftz2LCf5jW', '2021-02-26 11:27:48', '2021-02-26 11:30:51'),
(53, 'Abedin', 'foyz.abedin@gmail.com', NULL, NULL, '01533318366', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-26 11:36:29', NULL, '$2y$10$bJCL1.cm/Yox4USseequzubJYy3Y5hlS/L4g0mBeZGhlIpXEiNyf.', '2021-02-26 11:34:11', '2021-02-26 11:36:29'),
(55, 'M Shah', 'shahjalal62@gmail.com', NULL, NULL, '01715295360', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-02-27 06:43:30', NULL, '$2y$10$BLhCZjfmRmjOLLFatL4iTenxnT/sr2DOmoJ6Cmmkp8VG0NRRnRi6K', '2021-02-27 06:42:07', '2021-02-27 06:43:30'),
(56, 'abcd', '01610123456@gmail.com', NULL, NULL, '01610123456', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'HdOdnctu8kc04HUdHkS39ykHRtEl4ulSXDhuxCwS', '$2y$10$vw39vj0UUQv6fFVyUnG7X.JPx5Up7P6vXDlhbLYjIekgo7eUDkOUC', '2021-02-27 14:21:23', '2021-02-27 14:21:23'),
(57, 'hanif', 'cetoc65981@bulkbye.com', NULL, NULL, '01770778406', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-01 06:47:42', NULL, '$2y$10$.pHclCnbC3UiGYAlsn90heKRCj1XXem8aiNofFG7IuPhO3buEwMmW', '2021-03-01 06:46:52', '2021-03-01 06:47:42'),
(58, 'Shahadat Hossain Dipto', 'diptonsu@yahoo.com', NULL, NULL, '01711081211', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-07 13:58:22', NULL, '$2y$10$MIVMJo3fWAshS2xk9dSXm.ZBOC8C2eOIEL6LPicuqkJWlIAnjXYuO', '2021-03-07 13:56:18', '2021-03-07 13:58:22'),
(59, 'MIRZA ALI', 'mdmirzaali@yahoo.com', NULL, NULL, '01986018407', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'KpW3zlZ3fPKlKZIbtN6TpngexMGHEhMJa8m7XRHm', '$2y$10$EjOiZfl2.nTS1CaEWx8PKeQhgW4e0GRRwTMTmsK8jJwZ8Jh9FBcYS', '2021-03-08 08:45:52', '2021-03-08 08:45:52'),
(60, 'Nibritta kumar dhali', 'arittradhali86@gmail.com', NULL, NULL, '01793144548', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'PAfcN4TMMEOKX7JnpI9GXkeobvbaw1Dmw40NQTPX', '$2y$10$nzcA.FPcJVzK4TQ6fQuTDe0ayNy/dYImYIXOS1skqW7wdJWxT/GPi', '2021-03-08 13:34:00', '2021-03-08 13:34:00'),
(61, 'Arittra', 'gameingstore86@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$of3fBog7ZWRNNrRASTQmWOfwmK0zhWu6JircdWPIcSlu/feAp.HXu', '2021-03-08 13:55:49', '2021-03-08 13:55:49'),
(62, 'Baler hola', 'rod.donnie@fineloans.org', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$rLP/5BmqcQCNVEsw.g2BN.7zvNQjkoaZ1eDV7cxwUi9Cvx1wpC0Ke', '2021-03-09 19:52:36', '2021-03-09 19:52:36'),
(63, 'ahnafahmad', 'ahnafahmad2013+02@gmail.com', NULL, NULL, '01911223344', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'FNv3p47ypdhoYeCfNkqxDp3hvfNO5KbmoYO0IuRB', '$2y$10$XVGcx2kb7v7VDAb15LRvAOXPz9q6WXa/2Y841OwydxCdGeRKONN1G', '2021-03-10 05:11:20', '2021-03-10 05:11:20'),
(64, 'Fatama akter', 'french3390@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$/1ARQ40bWCqnteVKrja1HO.Ih2Aj5aOG2l12at5kK0Gbh0Kg/HA9K', '2021-03-12 07:30:11', '2021-03-12 07:30:11'),
(65, 'Fatama Akter', 'fatama0196620@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$rJbju0TdTZexGo.MWB.vr.ZDV.flXhxFDW1mOXQ3bL5ITQePyHiJe', '2021-03-12 07:33:07', '2021-03-12 07:33:07'),
(66, 'Tanki Mara Meye', 'sitka.ahren@fineloans.org', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$273pOfdsl18w1FgPXJq35OrCe9Ni7hHz3DlVRZG7Aeh8s1G/ecRqS', '2021-03-12 18:55:08', '2021-03-12 18:55:08'),
(67, 'Md Firoz', 'admin123@gmail.com', NULL, NULL, '01734232899', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, '9uXB5k6R7PI8OFc2N7fBBYenQROq5Hq5OPsowZlf', '$2y$10$zLhhg1RTPCTn0Rr1jrwoteGVphcyPS7XNqQ/SnNMyjQeaVuT5xer6', '2021-03-13 09:48:16', '2021-03-13 09:48:16'),
(68, 'Md Firoz', 'firoz.cse.sust5@gmail.com', NULL, NULL, '01734232898', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-13 09:53:46', NULL, '$2y$10$eWzGYnhszwcseceuANyM2uNSdXVkPzPOEyJI/binng8XX0n16L.ky', '2021-03-13 09:53:12', '2021-03-13 09:53:46'),
(69, 'Mohammed Salim', 'salimsales11@gmail.com', NULL, NULL, '01727789678', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'a2zwa1Z5LROmeGlfC7vbVs8ittHvC3L2XD9i1iN2', '$2y$10$0QY0DkvR60G1fQ1wq/rsT.b7Ea9rK5zWEvuQwPOYgjd7/J8E.q9fq', '2021-03-14 07:31:48', '2021-03-14 07:31:48'),
(70, 'M', 'a@gmail.com', NULL, NULL, '01886713577', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'LarwCwmXTgNy0deBVM9rYa4Bfc4ifz5P48VEs9QI', '$2y$10$YIOaRyLeqZltI8UDt5C.v.VubFw6YLZ5Q9fj5XwUtXmCgXSUrUz5i', '2021-03-15 03:46:59', '2021-03-15 03:46:59'),
(71, 'md kawsar Hamid', 'Rebovaltd@gmail.com', NULL, NULL, '01713355568', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'H0prRfqpxzjUeDAThv4soMCHux45AMSWadKkndd8', '$2y$10$wBXH6nD/GxWbLOz/L4Dov.3R6hKA8j8436AL7jxBzqCeLIqneLimq', '2021-03-17 17:26:05', '2021-03-17 17:26:05'),
(72, 'LA\'MOND', 'cze.jaharul@gmail.com', NULL, NULL, '01729396979', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'yNLuuNN3cGMlyHGDTuPSDMoiQi2RXS06UGWJli70', '$2y$10$C6Ut22DFjTz/6zNli5x29uoj8x/UTnqQavqWhmLMauhAjKWj3eO/S', '2021-03-17 18:11:51', '2021-03-17 18:11:51'),
(73, 'LA\'MOND', 'lamondfashion2020@gmail.com', NULL, NULL, '01729396979', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-17 18:21:03', NULL, '$2y$10$BKvHcQHylUO7hQw52fB0LeabtSmWsOjbRl0hYXmS7HUIUcgTuuZJa', '2021-03-17 18:19:05', '2021-03-17 18:21:03'),
(74, 'Shakhawath Hossen', 'birisiri.express@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'QR7GcVo6RPqvueuyDjVq9v2FPRtY8jx14aAT1DRdREFaIHiae3LlTZ5f91ie', '$2y$10$k7YhbFd0FssHMXE0bQhPneUAy6GcA6wwXmgNrquG/V.sTgUSUyfFW', '2021-03-18 01:04:54', '2021-03-18 01:06:22'),
(75, 'Samar chandra sowdagar', 'ssowdagar403@gmail.com', NULL, NULL, '01859692225', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-18 06:16:47', 'uQl0YxLzWfqpK12Sfusc7f0SsZ2IDBDBDrxU5UHgRcIoXQrOkBvcv099bHCl', '$2y$10$EKgd/QYb.44hKCRn8rYS9.6vrn0tVYDvDbPb8Am2AgnC99DcbQA7O', '2021-03-18 06:15:12', '2021-03-18 06:16:47'),
(76, 'MD KAMRUZZAMAN', 'sharpstar24@gmail.com', NULL, NULL, '01911799659', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-18 07:24:38', NULL, '$2y$10$4GAaGs46fzwt/0FevH6PHOzzQR7K1q9Utfbi8epB8rzbeXIWFY02q', '2021-03-18 07:15:41', '2021-03-18 07:24:38'),
(77, 'Khaan M Saakib Us Salehin', 'astrog.traders@gmail.com', NULL, NULL, '01966662201', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-19 08:47:11', NULL, '$2y$10$CR02/znmBnAU32nBLoZ53u4KK0Fp8xXHjM4/gVBZhKXBiy5IOEV9i', '2021-03-19 08:46:26', '2021-03-19 08:47:11'),
(79, 'Zm Salim', 'Bac.zmsalim@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$1XbtmZncFcPP5w7yaaOX/e8zzq3/W1JWY0JBZlIZabpb5kx3yThSS', '2021-03-19 13:00:18', '2021-03-19 13:00:18'),
(80, 'Zm Salim', 'anirban.customerservice@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$vLJNSTHgs3AvHOZk7Z0oT.SU7kTQbyPyEThPIVpTGSptwpNVHVxRi', '2021-03-19 13:03:01', '2021-03-19 13:03:01'),
(81, 'Prakash Saha', 'Prakashsaha_ewu@yahoo.com', NULL, NULL, '01817575659', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-20 06:04:49', NULL, '$2y$10$Aq6J3oP1l949uiAZv6e1XuZHDHJJJ67Vx93CHBhpH7uMcsnfkrT1S', '2021-03-20 06:03:54', '2021-03-20 06:04:49'),
(83, 'mishu', 'joyantasaha48@gmail.com', NULL, NULL, '01715000649', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-20 18:09:46', NULL, '$2y$10$7IpPHQ6v0iNgYcpEH8rxHuOO.UhitQ.k.KN/PLNPjL678p.La8p92', '2021-03-20 18:08:57', '2021-03-20 18:09:46'),
(84, 'Durjoy', 'ariyandurjoy.88@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$l38.gPOS8gUQvilkmgRBoOrRf4R9uNvNsbwHjX6I4aP53n1Gk4svu', '2021-03-21 09:55:07', '2021-03-21 09:55:07'),
(85, 'Durjoy', 'mahbuburrahman54@iut-dhaka.edu', NULL, NULL, '01703446162', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-22 08:54:52', NULL, '$2y$10$o6b6hESRozl0YvoXAd2X8.pwlpLMnqLLe3cH.4ddL..C97FQzCMqO', '2021-03-22 08:49:45', '2021-03-22 08:54:52'),
(86, 'Sagor Biswas', 'sagorbiswas.cse@gmail.com', NULL, NULL, '01683566215', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-25 10:35:27', NULL, '$2y$10$86arRJPPo2ZCF.yZo7fXDuE2d90IC.FXANupk1ZZ37YPLls6amO0.', '2021-03-25 10:31:48', '2021-03-25 10:35:27'),
(87, 'Faysal', 'faysalsadik@gmail.com', NULL, NULL, '01877147838', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-26 12:42:39', NULL, '$2y$10$P1YHoVJC5AkievKgV8oJ0O9ISTRY4AfaNmReoyLbq9mKCWaiV5eTO', '2021-03-26 07:11:03', '2021-03-26 12:42:39'),
(88, 'Durjoy', 'durjoyoptional@gmail.com', NULL, NULL, '01703446162', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-28 06:07:24', NULL, '$2y$10$UMk6PcEvPqmU5U.8XUKzAuBEzXF6z.h4SXX1x0fg/IbA8qN9uuFdm', '2021-03-28 06:01:10', '2021-03-28 06:07:24'),
(89, 'masum', 'masum@sdfd.com', NULL, NULL, '01734523523', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, 'zdpYXo39SNKOaK9EYEtAF3wr5uSyp5HiwR9MMim6', '$2y$10$ZKFIDEwnmkKL6BqZuves1.Aa8dLNKdd.q6juN2L6SX.F4C9iS4vBe', '2021-03-28 12:20:59', '2021-03-28 12:20:59'),
(90, 'Akkas Ali', 'akkas@gmail.com', NULL, NULL, '01722600622', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, '9PTlaTZ418exnl1efvn8rs5MhEIoxIgsVyJL3Kso', '$2y$10$TVmJZDSHaGnPfyvbS0Zb6Oy.BgSUueEJB3I5dC/lv/cTPbLVYu2gq', '2021-03-28 13:05:38', '2021-03-28 13:05:38'),
(91, 'Sumon Ahmed', 'rondapotergnr90@gmail.com', NULL, NULL, '01670618868', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-28 21:30:28', NULL, '$2y$10$t6L3GxtIzh9iTbSTOGxY1.5kCpunWTiWag0uMT2B9LU8Z10Rd0PF6', '2021-03-28 21:29:39', '2021-03-28 21:30:28'),
(92, 'AS Emon', 'goworld.bd@gmail.com', NULL, NULL, '01313658444', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-29 15:15:34', NULL, '$2y$10$F4s6nej.lZ5XaojxdKkJ6.6r83BxA2kHokk.eIcVR2nHs6O1OJteu', '2021-03-29 15:10:19', '2021-03-29 15:15:34'),
(93, 'Tanvir Ahmed', 'ahmedtanvir754@gmail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$1XOlai.5/DVp0az6aJp3oOf7PJtHjatKRwAeoy0h97SjyMyU1fDU.', '2021-03-30 07:45:46', '2021-03-30 07:45:46'),
(94, 'AlfonsoItawn', 'aleksandra.626@mail.com', NULL, NULL, NULL, NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, '$2y$10$nTAA/2O7vKbszWPG0qwfpOZf8vQiJN3C5UTCaRbyqKB8rNlSCXPDG', '2021-03-30 08:23:28', '2021-03-30 08:23:28'),
(95, 'Emran uddin', 'sojib9901@gmail.com', NULL, NULL, '01716861274', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-30 08:44:47', NULL, '$2y$10$IH7mLwiQ9KBnB1VgKGDInubP/0cquJiwmUkWHEBjDXAnegSvs86wO', '2021-03-30 08:41:12', '2021-03-30 08:44:47'),
(96, 'masti.vt@gmail.com', 'masti.vt@gmail.com', NULL, NULL, '01635358556', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-30 13:27:41', NULL, '$2y$10$kjZn5raEfe6sW75BMVxCUOo8SX.phLXV0vKyXNjAAwxc.JAxOQAIK', '2021-03-30 13:13:43', '2021-03-30 13:27:41'),
(97, 'Hridoy Rajkumer', 'ridoyrajkumer@gmail.com', 19, NULL, '01784223529', NULL, NULL, 'Male', 'RAMGARH', 'Ramgarh', 'Chittagong', '4440', 'Active', '2021-03-30 18:17:49', NULL, '$2y$10$GVq2BFCnzBx8DEdLClQRq.PuVfu1gxggvuRlavLr/P19SsHLDlneK', '2021-03-30 18:16:52', '2021-03-30 18:22:25'),
(98, 'ahnaf', 'austcse14+01@gmail.com', NULL, NULL, '01912526861', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-03-31 07:55:09', NULL, '$2y$10$APHtkwebSs6Xdc1A.4RDC.m9U1Y0QVCZt65CHE5isYVleERPGVQTS', '2021-03-31 07:54:35', '2021-03-31 07:55:09'),
(99, 'Songjog Shop', 'shohan.cse.sust+01@gmail.com', NULL, NULL, '01915663333', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-02 16:04:13', NULL, '$2y$10$e8z9vMIHjjRUqGyFxETuvevWrG.QFOKon2Dc8aJ5wDaU6GKWHpBBS', '2021-04-02 16:03:18', '2021-04-02 16:04:13'),
(100, 'Joyonto Sharma', '1joyontosharma@gmail.com', NULL, NULL, '01756119189', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-04 16:28:39', NULL, '$2y$10$wvgY8PYJKfkkctcDWIaCPuL6VFVtcX89qETHys9ejR3QsVQeNiIYm', '2021-04-03 16:04:58', '2021-04-04 16:28:39'),
(101, 'Ahmed Tasin', 'ahmedtasin1470@gmail.com', NULL, NULL, '01893314622', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-09 11:17:41', NULL, '$2y$10$ly6/Z3I8Oq7XNEPy6gZsLePOpLDZzHNJ2aI77nLMf7QYdpI8d/3Ma', '2021-04-09 11:16:45', '2021-04-09 11:17:41'),
(103, 'Mr mamun', 'abdulla01766@gmail.com', NULL, NULL, '01315989090', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-10 15:01:52', '9ibAIa9F9wPKhQh0KY1fkYyqggf1y9pRO4DqMjGVGakq9TwH7rFXco5N6WkK', '$2y$10$D9184383bkrnOpnsj0Y1zekHa9efK0W9vGK7ie4yjgxGXry4FB.QW', '2021-04-10 15:01:22', '2021-04-10 15:01:52'),
(104, 'MD. JABED ALI', 'Jabed629@gmail.com', NULL, NULL, '01719247922', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-10 19:26:18', NULL, '$2y$10$t3BjinmhIM48a8iSSKWtlel.o9Rz3M.sXJPU.pAJ2SC1LQ8L/zMmi', '2021-04-10 19:25:01', '2021-04-10 19:26:18'),
(105, 'Mizanur hoseen', 'morolmart@gmail.com', NULL, NULL, '01611653511', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-12 04:48:02', NULL, '$2y$10$7ALXY6YU0vI7yGS7.fnYOuPDuafThSNE1hw6nkek/eLRS5EmeCF/O', '2021-04-12 04:42:38', '2021-04-12 04:48:02'),
(106, 'Rimon', '1joyontosharma+01@gmail.com', NULL, NULL, '01723822460', NULL, NULL, 'Male', NULL, NULL, NULL, NULL, 'Active', '2021-04-19 06:58:07', NULL, '$2y$10$gAwf8cLza/JesvctNk/2Zu.QkQWOPcFUCJj4O/.PKaovseAbqdY/S', '2021-04-19 06:56:19', '2021-04-19 06:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `variation_prices`
--

DROP TABLE IF EXISTS `variation_prices`;
CREATE TABLE IF NOT EXISTS `variation_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `ram_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `price` double(20,2) NOT NULL DEFAULT '0.00',
  `usd_price` double(20,2) NOT NULL DEFAULT '0.00',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `affiliate_url` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `variation_prices`
--

INSERT INTO `variation_prices` (`id`, `mobile_id`, `region_id`, `ram_id`, `storage_id`, `price`, `usd_price`, `status`, `affiliate_url`, `created_at`, `updated_at`) VALUES
(4, 34752, 1, 1, 1, 7000.00, 7500.00, 'Active', NULL, '2021-05-11 08:28:36', '2021-05-11 08:28:36'),
(5, 34752, 1, 1, 1, 190.00, 190.00, 'Active', NULL, '2021-05-11 08:29:14', '2021-05-11 08:29:14'),
(6, 34752, 1, 1, 1, 550.00, 660.00, 'Active', NULL, '2021-05-11 08:30:25', '2021-05-11 08:30:25'),
(7, 34752, 1, 1, 1, 550.00, 660.00, 'Active', NULL, '2021-05-11 08:31:25', '2021-05-11 08:31:25'),
(8, 34752, 1, 1, 1, 4.00, 4.00, 'Active', NULL, '2021-05-11 08:31:55', '2021-05-11 08:31:55'),
(9, 34752, 1, 1, 1, 55.00, 55.00, 'Active', NULL, '2021-05-11 08:32:58', '2021-05-11 08:32:58'),
(10, 34752, 1, 1, 1, 45.00, 77.00, 'Active', NULL, '2021-05-11 08:34:30', '2021-05-11 08:34:30'),
(11, 34752, 1, 1, 1, 560.00, 66.00, 'Active', NULL, '2021-05-11 08:35:47', '2021-05-11 08:35:47'),
(12, 34752, 1, 1, 1, 5.00, 5.00, 'Active', NULL, '2021-05-11 08:36:21', '2021-05-11 08:36:21'),
(13, 34752, 1, 1, 1, 4.00, 4.00, 'Active', NULL, '2021-05-11 08:37:08', '2021-05-11 08:37:08'),
(14, 34752, 1, 1, 1, 5.00, 5.00, 'Active', NULL, '2021-05-11 09:12:35', '2021-05-11 09:12:35'),
(15, 34752, 1, 1, 1, 4.00, 4.00, 'Active', NULL, '2021-05-11 09:13:04', '2021-05-11 09:13:04'),
(16, 34752, 1, 1, 1, 4.00, 4.00, 'Active', NULL, '2021-05-11 09:15:34', '2021-05-11 09:15:34'),
(17, 34752, 1, 1, 1, 4.00, 4.00, 'Active', NULL, '2021-05-11 09:18:04', '2021-05-11 09:18:04'),
(18, 34752, 1, 1, 1, 4.00, 4.00, 'Active', NULL, '2021-05-11 09:18:56', '2021-05-11 09:18:56'),
(19, 34752, 1, 1, 1, 7.00, 7.00, 'Active', NULL, '2021-05-11 09:22:26', '2021-05-11 09:22:26'),
(20, 34752, 1, 1, 1, 8.00, 8.00, 'Active', NULL, '2021-05-11 09:22:53', '2021-05-11 09:22:53'),
(21, 34752, 1, 1, 1, 9.00, 9.00, 'Active', NULL, '2021-05-11 09:28:26', '2021-05-11 09:28:26'),
(22, 34752, 1, 1, 1, 56.00, 77.00, 'Active', NULL, '2021-05-11 09:29:25', '2021-05-11 09:29:25'),
(23, 34902, 1, 1, 1, 450.00, 600.00, 'Active', 'http://storola.net', '2021-05-22 07:01:25', '2021-05-22 07:01:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_ibfk_3` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
