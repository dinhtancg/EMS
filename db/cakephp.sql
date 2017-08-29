-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2017 at 10:49 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created`, `modified`, `deleted`) VALUES
(1, 'CakePHP3', '2017-08-01 00:00:00', '2017-08-09 02:45:07', NULL),
(2, 'iOS', '2017-08-01 00:00:00', '2017-07-26 03:53:47', '2017-07-31 02:10:53'),
(3, 'Android', '2017-08-01 00:00:00', '2017-07-24 07:53:29', '2017-07-24 07:53:45'),
(4, 'Laravel', '2017-07-19 09:37:35', '2017-07-31 01:49:23', '2017-07-31 04:57:04'),
(5, 'Book', '2017-07-19 09:40:10', '2017-07-19 09:40:10', NULL),
(6, 'CakePHP 2', '2017-07-25 09:03:57', '2017-07-25 09:03:57', '2017-07-31 04:57:24'),
(7, 'Chơi', '2017-07-25 09:04:45', '2017-07-25 09:04:45', NULL),
(8, 'Test', '2017-07-31 02:10:17', '2017-07-31 02:10:17', NULL),
(9, 'iOS', '2017-07-31 02:12:21', '2017-07-31 02:12:21', NULL),
(10, 'Code dạo', '2017-07-31 04:11:36', '2017-07-31 04:11:36', NULL),
(11, 'D2', '2017-08-03 09:57:33', '2017-08-03 09:57:33', NULL),
(12, 'Laravel 2016', '2017-08-04 09:58:59', '2017-08-04 09:58:59', NULL),
(13, 'Tan', '2017-08-08 02:46:43', '2017-08-08 02:46:43', NULL),
(14, 'Ngủ', '2017-08-08 09:00:16', '2017-08-08 09:00:16', NULL),
(15, 'Nghe', '2017-08-08 09:07:25', '2017-08-08 09:07:25', NULL),
(16, 'Laravel 5.4', '2017-08-09 02:53:24', '2017-08-09 02:54:59', NULL),
(17, 'Ngủ123123', '2017-08-10 09:00:02', '2017-08-10 09:00:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments_users`
--

CREATE TABLE IF NOT EXISTS `departments_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `manager` tinyint(4) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=176 ;

--
-- Dumping data for table `departments_users`
--

INSERT INTO `departments_users` (`id`, `department_id`, `user_id`, `manager`, `created`, `modified`) VALUES
(4, 5, 19, 1, '2017-07-19 09:40:11', '2017-08-01 09:54:39'),
(35, 7, 20, 1, '2017-07-25 09:04:45', '2017-07-31 02:31:45'),
(36, 7, 24, 0, '2017-07-25 09:04:45', '2017-07-25 09:04:45'),
(37, 7, 27, 0, '2017-07-25 09:04:45', '2017-07-25 09:04:45'),
(40, 5, 29, 0, '2017-07-26 00:59:13', '2017-07-26 00:59:13'),
(42, 7, 29, 0, '2017-07-26 00:59:13', '2017-07-26 00:59:13'),
(63, 5, 42, 0, '2017-07-28 02:46:59', '2017-07-28 02:46:59'),
(67, 9, 19, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(68, 9, 20, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(69, 9, 24, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(70, 9, 27, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(71, 9, 29, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(72, 9, 30, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(73, 9, 33, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(74, 9, 34, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(76, 9, 36, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(77, 9, 37, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(78, 9, 38, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(79, 9, 39, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(80, 9, 40, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(81, 9, 41, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(82, 9, 42, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(83, 9, 43, 0, '2017-07-31 02:12:21', '2017-07-31 02:12:21'),
(84, 10, 20, 1, '2017-07-31 04:11:36', '2017-08-10 03:35:31'),
(85, 10, 24, 1, '2017-07-31 04:11:36', '2017-08-08 02:47:42'),
(86, 10, 27, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(87, 10, 29, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(88, 10, 30, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(89, 10, 33, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(90, 10, 34, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(92, 10, 36, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(93, 10, 37, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(94, 10, 38, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(95, 10, 39, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(96, 10, 40, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(97, 10, 41, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(98, 10, 42, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(99, 10, 43, 0, '2017-07-31 04:11:36', '2017-07-31 04:11:36'),
(101, 5, 44, 0, '2017-08-03 09:51:14', '2017-08-03 09:51:14'),
(102, 7, 44, 0, '2017-08-03 09:51:14', '2017-08-03 09:51:14'),
(103, 11, 1, 0, '2017-08-03 09:57:33', '2017-08-03 09:57:33'),
(104, 11, 19, 0, '2017-08-03 09:57:33', '2017-08-03 09:57:33'),
(105, 11, 20, 0, '2017-08-03 09:57:33', '2017-08-03 09:57:33'),
(106, 12, 20, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(107, 12, 24, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(108, 12, 27, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(109, 12, 29, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(110, 12, 30, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(111, 12, 33, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(112, 12, 34, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(113, 12, 36, 0, '2017-08-04 09:58:59', '2017-08-04 09:58:59'),
(114, 5, 67, 0, '2017-08-08 01:02:32', '2017-08-08 01:02:32'),
(115, 7, 67, 0, '2017-08-08 01:02:32', '2017-08-08 01:02:32'),
(116, 8, 67, 0, '2017-08-08 01:02:32', '2017-08-08 01:02:32'),
(117, 9, 67, 0, '2017-08-08 01:02:32', '2017-08-08 01:02:32'),
(118, 10, 67, 0, '2017-08-08 01:02:32', '2017-08-08 01:02:32'),
(119, 15, 47, 0, '2017-08-08 09:07:25', '2017-08-08 09:07:25'),
(120, 15, 48, 0, '2017-08-08 09:07:25', '2017-08-08 09:07:25'),
(121, 15, 49, 0, '2017-08-08 09:07:25', '2017-08-08 09:07:25'),
(122, 15, 50, 0, '2017-08-08 09:07:25', '2017-08-08 09:07:25'),
(123, 15, 51, 0, '2017-08-08 09:07:25', '2017-08-08 09:07:25'),
(128, 1, 19, 0, '2017-08-09 02:45:07', '2017-08-09 02:45:07'),
(129, 1, 20, 0, '2017-08-09 02:45:07', '2017-08-09 02:45:07'),
(130, 1, 27, 0, '2017-08-09 02:45:07', '2017-08-09 02:45:07'),
(131, 1, 29, 0, '2017-08-09 02:45:07', '2017-08-09 02:45:07'),
(132, 16, 19, 0, '2017-08-09 02:53:24', '2017-08-09 02:53:24'),
(133, 16, 20, 0, '2017-08-09 02:53:24', '2017-08-09 02:53:24'),
(134, 16, 43, 0, '2017-08-09 02:53:24', '2017-08-09 02:53:24'),
(135, 16, 44, 0, '2017-08-09 02:53:24', '2017-08-09 02:53:24'),
(136, 16, 24, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(137, 16, 30, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(138, 16, 33, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(139, 16, 46, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(140, 16, 47, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(141, 16, 48, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(142, 16, 49, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(143, 16, 55, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(144, 16, 56, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(145, 16, 57, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(146, 16, 58, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(147, 16, 59, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(148, 16, 60, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(149, 16, 62, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(150, 16, 63, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(151, 16, 64, 0, '2017-08-09 02:54:03', '2017-08-09 02:54:03'),
(152, 16, 27, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(153, 16, 29, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(154, 16, 34, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(155, 16, 36, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(156, 16, 37, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(157, 16, 38, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(158, 16, 39, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(159, 16, 40, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(160, 16, 41, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(161, 16, 42, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(162, 16, 45, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(163, 16, 50, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(164, 16, 51, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(165, 16, 52, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(166, 16, 53, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(167, 16, 54, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(168, 16, 61, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(169, 16, 65, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(170, 16, 66, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(171, 16, 67, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(172, 16, 68, 0, '2017-08-09 02:55:00', '2017-08-09 02:55:00'),
(173, 17, 30, 0, '2017-08-10 09:00:02', '2017-08-10 09:00:02'),
(174, 17, 33, 0, '2017-08-10 09:00:02', '2017-08-10 09:00:02'),
(175, 17, 34, 0, '2017-08-10 09:00:02', '2017-08-10 09:00:02');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `start_time`, `end_time`) VALUES
(20170712011015, '2017-07-12 07:23:10', '2017-07-12 07:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date NOT NULL COMMENT 'date of birth',
  `gender` varchar(13) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `first_login` tinyint(1) NOT NULL,
  `login_fail` int(4) DEFAULT '0',
  `time_ban` datetime DEFAULT NULL,
  `pass_key` varchar(255) DEFAULT NULL,
  `timeout` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `full_name`, `password`, `birthday`, `gender`, `avatar`, `role`, `first_login`, `login_fail`, `time_ban`, `pass_key`, `timeout`, `created`, `modified`, `deleted`) VALUES
(1, 'admin', 'admin@admin.com', 'Admin', '$2y$10$xsRu1Vb0gLLGw5UKnbOfBOSP87/nRwFVXwV7SVPPvaHKzln6kGdxW', '2017-08-01', '', 'admindefault.png', 1, 1, 0, NULL, '', '2017-07-18 03:53:18', '0000-00-00 00:00:00', '2017-08-10 07:05:41', NULL),
(19, 'tanhd', 'tanhd@rikkeisoft.com', 'Tấn Hoàng', '$2y$10$0SPrjhRhFdIizxaDTSD5i.IY3yeS4ZMxXbhoTokDK97OkIogkq/Sm', '1937-08-31', 'other', 'tanhddefault.png', 0, 1, 0, NULL, NULL, NULL, '2017-07-12 10:25:50', '2017-08-10 09:36:26', NULL),
(20, 'tanhd1', 'mrskyhd@gmail.com', 'ádasd', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-19', '', '18952532_1407641282661582_5508803446897797275_n.jpg', 0, 0, 1, NULL, '5982de093267a', '2017-08-04 08:25:45', '2017-07-19 01:25:06', '2017-07-25 03:33:53', NULL),
(24, 'dinhtancg', 'tanhd1@rikkeisoft.com', 'ádasd', '$2y$10$LzBZHf2Alx2HtNj80gSOMOEvsOOhXN1mRPyXez2Hb/wX9JIzgbfPm', '2015-08-20', '', '18952532_1407641282661582_5508803446897797275_n.jpg', 0, 0, NULL, NULL, '5982de0d75335', '2017-08-04 08:25:49', '2017-07-19 03:47:47', '2017-07-19 03:47:47', NULL),
(27, 'tanhd123', 'mrskyhd1263@gmail.com', '231231', '$2y$10$CDD5HojNcPggwCsE2aKO6uUgForsEUr9ZBSPuUm8F4Y6o48rXdCcy', '2012-12-01', 'women', 'Capture.PNG', 0, 0, NULL, NULL, '5976e995e6e46', '2017-07-26 06:47:49', '2017-07-20 01:36:14', '2017-07-20 01:36:14', NULL),
(28, 'tanhd12346', 'mrskyhd126333@gmail.com', '2312ád31', '$2y$10$PXftnH/A.iJhuTQOw2llVeiD1lHOETa0ZbH1D9716KIB7h8F3eNPa', '2015-04-20', 'other', 'default.png', 0, 0, NULL, NULL, '59756defe8d15', '2017-07-25 03:47:59', '2017-07-20 01:37:54', '2017-07-20 01:47:04', '2017-07-24 07:52:39'),
(29, 'tanhd12314', 'dinhtancg3213131@gmail.com', 'ádgbbcv', '$2y$10$C75.R1FQnNUJG03wcxzq8.BxYWwGgcNxxhpnKKuLxo1WD/CWg6LiO', '2012-07-22', 'women', 'images (1).jpg', 0, 0, 0, NULL, NULL, NULL, '2017-07-26 00:59:12', '2017-07-26 00:59:12', NULL),
(30, 'dinhtan1', 'dinhtan1@gmail.com', 'đá2e2', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, 'dinhtan1', 'dinhtan1@gmail.com', 'qưeqwe', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-27 03:57:11'),
(32, 'dinhtan1', 'dinhtan11@gmail.com', 'eqưeqwe', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-27 03:57:14'),
(33, 'dinhtan11', 'dinhtan111@gmail.com', 'qưeqweqwe', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a672eca83', '2017-08-03 10:16:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(34, 'dinhtan12', 'dinhtan21@gmail.com', 'ádasd', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a67602d79', '2017-08-03 10:16:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, 'dinhtan13', 'dinhtan12@gmail.com', 'sdasd', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2017-07-31 04:35:19'),
(36, 'dinhtan14', 'dinhtan13@gmail.com', 'gfgfg', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a67935044', '2017-08-03 10:16:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, 'dinhtan15', 'dinhtan14@gmail.com', 'jghjgj', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a67bc0e5f', '2017-08-03 10:16:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, 'dinhtan16', 'dinhtan15@gmail.com', 'tyutyu', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a67ea90ba', '2017-08-03 10:16:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, 'dinhtan17', 'dinhtan16@gmail.com', 'ghjghj', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a681f2b48', '2017-08-03 10:16:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(40, 'dinhtan18', 'dinhtan17@gmail.com', 'yutyu', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a6849b25d', '2017-08-03 10:16:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(41, 'dinhtan19', 'dinhtan81@gmail.com', 'yutyuty', '$2y$10$j9gK4f92kYleIzYGwWKYMuzHuFFK5VL290PFbvBPxfnX/YtKF2RJW', '2017-07-26', 'men', 'default.png', 0, 0, 0, NULL, '5981a687ec219', '2017-08-03 10:16:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(42, 'dinhtancg9999', 'dinhtancg9999@gmail.com', 'tyutyutu', '$2y$10$RHYrfwBt9cHXhQ7TgCTO/eOKq9WYaEl7iLn2G3dxRARCUEbeJCLDm', '1999-08-17', 'women', 'default.png', 0, 0, 0, NULL, '5981a68ae92b5', '2017-08-03 10:16:42', '2017-07-28 02:46:58', '2017-07-28 03:26:13', NULL),
(43, 'duonglh', 'duonglh@rikkeisoft.com', '', '$2y$10$wGOurwnze4KaTXsDdPbwVebVFE2p848snFGHuNafau4JLiNZzhXhO', '1991-05-14', 'men', 'duonglhcart.png', 1, 1, 0, NULL, '59828c9169363', '2017-08-04 02:38:09', '2017-07-31 01:24:07', '2017-08-08 01:34:23', NULL),
(44, 'duocnv', 'duocnv@rikkeisoft.com', 'Dược Nguyễn Văn', '$2y$10$Ck5smw.8TAMDb/gIUSnCJ.uhVN/ZO7wiV5mfPbKu7VlEvhZVa73um', '1941-05-06', 'other', 'default.png', 0, 1, 0, NULL, NULL, NULL, '2017-08-03 09:51:14', '2017-08-03 09:55:36', NULL),
(45, 'dinhtancg21', 'dinhtancg21@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(46, 'dinhtancg22', 'dinhtancg22@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(47, 'dinhtancg23', 'dinhtancg23@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(48, 'dinhtancg24', 'dinhtancg24@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(49, 'dinhtancg25', 'dinhtancg25@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(50, 'dinhtancg26', 'dinhtancg26@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(51, 'dinhtancg27', 'dinhtancg27@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(52, 'dinhtancg28', 'dinhtancg28@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(53, 'dinhtancg29', 'dinhtancg29@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(54, 'dinhtancg30', 'dinhtancg30@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(55, 'dinhtancg31', 'dinhtancg31@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(56, 'dinhtancg32', 'dinhtancg32@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(57, 'dinhtancg33', 'dinhtancg33@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(58, 'dinhtancg34', 'dinhtancg34@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(59, 'dinhtancg35', 'dinhtancg35@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(60, 'dinhtancg36', 'dinhtancg36@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(61, 'dinhtancg37', 'dinhtancg37@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(62, 'dinhtancg38', 'dinhtancg38@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(63, 'dinhtancg39', 'dinhtancg39@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(64, 'dinhtancg40', 'dinhtancg40@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(65, 'dinhtancg41', 'dinhtancg41@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(66, 'dinhtancg42', 'dinhtancg42@gmail.com', 'Tấn hoàng', '$2y$10$eb6IjTvtQh0YfJHY4.zy4u9ovq.2vYCYWzmaFkzOlW60CjecHgR4q', '2017-08-02', 'men', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-07 00:00:00', '2017-08-07 00:00:00', NULL),
(67, 'dinhtancg100', 'dinhtancg100@gmail.com', 'Đình Tấn', '$2y$10$7xgWhsObO4mCMjPZSTpVfe9pb/x70QdbVrxDIKJUWu2LYg7xYIorq', '1976-09-12', 'other', 'default.png', 0, 0, 0, NULL, NULL, NULL, '2017-08-08 01:02:32', '2017-08-08 01:02:32', NULL),
(68, 'tanhd111', 'tanhd111@rikkeisoft.com', 'tanhsad', '$2y$10$kh6AmyYLN4EhYViHnL.dsOwAX2QBMYUVtodqPmce6/s93B7XyqAK.', '2017-12-31', 'men', 'default.png', 1, 0, 0, NULL, NULL, NULL, '2017-08-08 02:43:57', '2017-08-08 02:45:50', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments_users`
--
ALTER TABLE `departments_users`
  ADD CONSTRAINT `departments_users_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `departments_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
