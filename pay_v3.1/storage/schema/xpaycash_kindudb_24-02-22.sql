-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2022 at 04:25 PM
-- Server version: 10.3.32-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpaycash_kindudb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_agent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `type`, `ip_address`, `browser_agent`, `created_at`, `updated_at`) VALUES
(18, 2, 'User', '169.239.159.1', 'Mozilla/5.0 (Linux; Android 9; TECNO KC8) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '2022-01-20 11:15:03', '2022-01-20 11:15:03'),
(24, 4, 'User', '169.159.220.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '2022-01-21 03:21:05', '2022-01-21 03:21:05'),
(34, 6, 'User', '169.159.212.243', 'Mozilla/5.0 (Linux; Android 11; Infinix PR652B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', '2022-01-22 00:54:01', '2022-01-22 00:54:01'),
(46, 2, 'Admin', '169.159.210.254', 'Mozilla/5.0 (X11; CrOS x86_64 14324.62.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.77 Safari/537.36', '2022-01-22 15:28:33', '2022-01-22 15:28:33'),
(47, 2, 'Admin', '169.159.220.254', 'Mozilla/5.0 (X11; CrOS x86_64 14324.62.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.77 Safari/537.36', '2022-01-22 15:39:37', '2022-01-22 15:39:37'),
(67, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (X11; CrOS x86_64 14324.72.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.91 Safari/537.36', '2022-01-26 06:05:38', '2022-01-26 06:05:38'),
(68, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (X11; CrOS x86_64 14324.72.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.91 Safari/537.36', '2022-01-27 04:49:24', '2022-01-27 04:49:24'),
(72, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (X11; CrOS x86_64 14324.72.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.91 Safari/537.36', '2022-01-28 05:23:02', '2022-01-28 05:23:02'),
(74, 11, 'User', '41.243.11.182', 'Mozilla/5.0 (Linux; Android 10; TECNO KD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-01-31 11:14:46', '2022-01-31 11:14:46'),
(75, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (X11; CrOS x86_64 14324.72.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.91 Safari/537.36', '2022-02-01 04:30:50', '2022-02-01 04:30:50'),
(76, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (X11; CrOS x86_64 14324.72.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.91 Safari/537.36', '2022-02-01 07:08:04', '2022-02-01 07:08:04'),
(86, 9, 'User', '169.159.212.112', 'Mozilla/5.0 (X11; CrOS x86_64 14324.80.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.102 Safari/537.36', '2022-02-13 01:54:27', '2022-02-13 01:54:27'),
(87, 9, 'User', '169.159.220.112', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-13 01:54:46', '2022-02-13 01:54:46'),
(88, 9, 'User', '169.159.220.112', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-13 03:01:32', '2022-02-13 03:01:32'),
(91, 9, 'User', '169.159.212.112', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-13 03:16:34', '2022-02-13 03:16:34'),
(92, 9, 'User', '169.159.220.112', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-13 03:18:53', '2022-02-13 03:18:53'),
(94, 9, 'User', '169.159.212.112', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-13 03:37:37', '2022-02-13 03:37:37'),
(97, 9, 'User', '169.159.212.112', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-13 04:22:00', '2022-02-13 04:22:00'),
(136, 9, 'User', '169.159.220.135', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 00:59:40', '2022-02-15 00:59:40'),
(148, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 03:50:10', '2022-02-15 03:50:10'),
(149, 17, 'User', '197.157.210.205', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 03:53:49', '2022-02-15 03:53:49'),
(150, 17, 'User', '197.157.210.210', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 04:00:59', '2022-02-15 04:00:59'),
(151, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (X11; CrOS x86_64 14324.80.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.102 Safari/537.36', '2022-02-15 04:02:43', '2022-02-15 04:02:43'),
(152, 17, 'User', '197.157.210.210', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 04:07:34', '2022-02-15 04:07:34'),
(153, 17, 'User', '197.157.210.210', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 04:13:59', '2022-02-15 04:13:59'),
(158, 19, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-15 04:26:39', '2022-02-15 04:26:39'),
(161, 20, 'User', '169.159.210.134', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 04:37:24', '2022-02-15 04:37:24'),
(162, 17, 'User', '197.157.210.210', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 04:38:43', '2022-02-15 04:38:43'),
(163, 20, 'User', '169.159.210.134', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 04:40:50', '2022-02-15 04:40:50'),
(165, 20, 'User', '169.159.210.134', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 04:41:20', '2022-02-15 04:41:20'),
(166, 19, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-15 04:42:20', '2022-02-15 04:42:20'),
(167, 20, 'User', '169.159.210.134', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 04:46:06', '2022-02-15 04:46:06'),
(168, 17, 'User', '197.157.210.214', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 04:47:20', '2022-02-15 04:47:20'),
(170, 20, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 04:52:48', '2022-02-15 04:52:48'),
(171, 20, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 04:54:52', '2022-02-15 04:54:52'),
(172, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 04:55:50', '2022-02-15 04:55:50'),
(173, 20, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 05:02:40', '2022-02-15 05:02:40'),
(177, 20, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-15 05:05:31', '2022-02-15 05:05:31'),
(178, 17, 'User', '197.157.210.214', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-15 05:05:42', '2022-02-15 05:05:42'),
(193, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 07:11:21', '2022-02-15 07:11:21'),
(194, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 08:04:31', '2022-02-15 08:04:31'),
(196, 9, 'User', '169.159.211.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 10:11:32', '2022-02-15 10:11:32'),
(197, 9, 'User', '169.159.211.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 10:12:22', '2022-02-15 10:12:22'),
(198, 9, 'User', '169.159.211.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 10:16:15', '2022-02-15 10:16:15'),
(202, 9, 'User', '169.159.211.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 11:35:58', '2022-02-15 11:35:58'),
(203, 9, 'User', '169.159.211.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 11:45:17', '2022-02-15 11:45:17'),
(204, 9, 'User', '169.159.210.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 12:41:31', '2022-02-15 12:41:31'),
(206, 9, 'User', '169.159.210.5', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-15 14:36:30', '2022-02-15 14:36:30'),
(208, 9, 'User', '169.159.211.144', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 00:59:34', '2022-02-16 00:59:34'),
(212, 23, 'User', '169.159.211.144', 'Mozilla/5.0 (Linux; Android 9; itel W6004 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.116 Mobile Safari/537.36', '2022-02-16 01:41:00', '2022-02-16 01:41:00'),
(213, 23, 'User', '169.159.211.144', 'Mozilla/5.0 (Linux; Android 9; itel W6004 Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.116 Mobile Safari/537.36', '2022-02-16 01:41:54', '2022-02-16 01:41:54'),
(214, 19, 'User', '169.159.210.146', 'Mozilla/5.0 (Linux; Android 7.1.1; SAMSUNG SM-J250F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/15.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2022-02-16 01:42:44', '2022-02-16 01:42:44'),
(216, 17, 'User', '169.159.210.81', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-16 02:01:31', '2022-02-16 02:01:31'),
(217, 9, 'User', '169.159.211.144', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 02:08:53', '2022-02-16 02:08:53'),
(218, 9, 'User', '169.159.211.144', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 02:09:21', '2022-02-16 02:09:21'),
(219, 20, 'User', '169.159.210.10', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.98 Mobile Safari/537.36', '2022-02-16 03:15:18', '2022-02-16 03:15:18'),
(220, 17, 'User', '169.159.210.81', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-16 04:08:23', '2022-02-16 04:08:23'),
(222, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 04:11:22', '2022-02-16 04:11:22'),
(223, 19, 'User', '169.159.210.146', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-16 04:15:43', '2022-02-16 04:15:43'),
(224, 20, 'User', '169.159.211.10', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-16 04:27:25', '2022-02-16 04:27:25'),
(225, 19, 'User', '169.159.210.146', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-16 04:31:40', '2022-02-16 04:31:40'),
(226, 24, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 10; TECNO KD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-16 04:42:56', '2022-02-16 04:42:56'),
(227, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 04:52:25', '2022-02-16 04:52:25'),
(228, 19, 'User', '169.159.210.146', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-16 05:04:05', '2022-02-16 05:04:05'),
(229, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 07:02:31', '2022-02-16 07:02:31'),
(230, 17, 'User', '169.159.211.81', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-16 07:36:55', '2022-02-16 07:36:55'),
(231, 19, 'User', '169.159.210.146', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-16 07:37:06', '2022-02-16 07:37:06'),
(232, 20, 'User', '169.159.211.10', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-16 07:45:13', '2022-02-16 07:45:13'),
(242, 20, 'User', '169.159.210.10', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-16 15:25:24', '2022-02-16 15:25:24'),
(243, 20, 'User', '169.159.210.10', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-16 15:26:56', '2022-02-16 15:26:56'),
(244, 9, 'User', '169.159.210.221', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 15:40:39', '2022-02-16 15:40:39'),
(245, 9, 'User', '169.159.211.221', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 15:51:57', '2022-02-16 15:51:57'),
(247, 9, 'User', '169.159.210.221', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 16:33:16', '2022-02-16 16:33:16'),
(248, 9, 'User', '169.159.211.221', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-16 17:23:46', '2022-02-16 17:23:46'),
(249, 26, 'User', '103.197.152.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', '2022-02-16 23:13:50', '2022-02-16 23:13:50'),
(251, 9, 'User', '102.223.130.116', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 01:54:51', '2022-02-17 01:54:51'),
(252, 17, 'User', '169.159.212.193', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6 Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.85 Mobile Safari/537.36', '2022-02-17 03:33:21', '2022-02-17 03:33:21'),
(253, 24, 'User', '45.221.5.38', 'Mozilla/5.0 (Linux; Android 10; TECNO KD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-17 03:35:51', '2022-02-17 03:35:51'),
(256, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 03:55:07', '2022-02-17 03:55:07'),
(257, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 04:08:09', '2022-02-17 04:08:09'),
(258, 24, 'User', '154.73.22.38', 'Mozilla/5.0 (Linux; Android 10; TECNO KD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-17 05:08:29', '2022-02-17 05:08:29'),
(259, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 05:08:36', '2022-02-17 05:08:36'),
(260, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 05:44:57', '2022-02-17 05:44:57'),
(261, 20, 'User', '169.159.210.10', 'Mozilla/5.0 (Linux; Android 10; TECNO CD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-17 06:24:01', '2022-02-17 06:24:01'),
(262, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 07:38:55', '2022-02-17 07:38:55'),
(263, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 07:44:40', '2022-02-17 07:44:40'),
(264, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 08:41:52', '2022-02-17 08:41:52'),
(265, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-17 08:50:43', '2022-02-17 08:50:43'),
(266, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 08:54:10', '2022-02-17 08:54:10'),
(267, 24, 'User', '197.231.252.150', 'Mozilla/5.0 (Linux; Android 10; TECNO KD6 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.87 Mobile Safari/537.36', '2022-02-17 10:12:09', '2022-02-17 10:12:09'),
(268, 9, 'User', '169.159.210.91', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 11:50:32', '2022-02-17 11:50:32'),
(269, 9, 'User', '169.159.211.91', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 11:52:24', '2022-02-17 11:52:24'),
(270, 9, 'User', '169.159.211.91', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 12:55:47', '2022-02-17 12:55:47'),
(271, 9, 'User', '169.159.211.84', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 15:34:01', '2022-02-17 15:34:01'),
(272, 9, 'User', '169.159.210.200', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 22:50:51', '2022-02-17 22:50:51'),
(273, 9, 'User', '169.159.210.200', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-17 22:55:01', '2022-02-17 22:55:01'),
(275, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-18 04:23:27', '2022-02-18 04:23:27'),
(276, 9, 'User', '102.36.168.2', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-18 07:19:55', '2022-02-18 07:19:55'),
(277, 9, 'User', '169.159.210.33', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-18 09:40:04', '2022-02-18 09:40:04'),
(278, 9, 'User', '169.159.210.33', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-18 12:03:55', '2022-02-18 12:03:55'),
(279, 9, 'User', '169.159.211.48', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-18 14:05:48', '2022-02-18 14:05:48'),
(280, 9, 'User', '169.159.210.48', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 00:52:58', '2022-02-19 00:52:58'),
(281, 9, 'User', '169.159.210.48', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 00:59:08', '2022-02-19 00:59:08'),
(282, 9, 'User', '169.159.211.48', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 03:01:19', '2022-02-19 03:01:19'),
(283, 9, 'User', '169.159.211.48', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 03:34:23', '2022-02-19 03:34:23'),
(284, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 05:56:44', '2022-02-19 05:56:44'),
(285, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 05:57:37', '2022-02-19 05:57:37'),
(286, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 05:58:06', '2022-02-19 05:58:06'),
(287, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 06:10:23', '2022-02-19 06:10:23'),
(288, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 07:28:52', '2022-02-19 07:28:52'),
(289, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 08:36:54', '2022-02-19 08:36:54'),
(290, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 14:08:43', '2022-02-19 14:08:43'),
(291, 28, 'User', '41.243.50.154', 'Mozilla/5.0 (Linux; Android 11; TECNO PR651H Build/RP1A.201005.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.101 Mobile Safari/537.36', '2022-02-19 14:30:43', '2022-02-19 14:30:43'),
(292, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 14:33:18', '2022-02-19 14:33:18'),
(293, 28, 'User', '41.243.17.117', 'Mozilla/5.0 (Linux; Android 11; TECNO PR651H Build/RP1A.201005.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.101 Mobile Safari/537.36', '2022-02-19 15:24:04', '2022-02-19 15:24:04'),
(295, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 18:35:41', '2022-02-19 18:35:41'),
(296, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (X11; CrOS x86_64 14388.52.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.91 Safari/537.36', '2022-02-19 18:41:07', '2022-02-19 18:41:07'),
(299, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-19 23:45:21', '2022-02-19 23:45:21'),
(300, 9, 'User', '103.197.152.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', '2022-02-19 23:48:10', '2022-02-19 23:48:10'),
(301, 9, 'User', '103.197.152.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '2022-02-19 23:50:48', '2022-02-19 23:50:48'),
(302, 9, 'User', '103.197.152.79', 'Mozilla/5.0 (Linux; Android 11; M2003J15SC Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.101 Mobile Safari/537.36', '2022-02-19 23:54:25', '2022-02-19 23:54:25'),
(303, 9, 'User', '169.159.210.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-19 23:54:34', '2022-02-19 23:54:34'),
(304, 9, 'User', '103.197.152.79', 'Mozilla/5.0 (Linux; Android 11; M2003J15SC Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/98.0.4758.101 Mobile Safari/537.36', '2022-02-19 23:57:21', '2022-02-19 23:57:21'),
(305, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 00:01:44', '2022-02-20 00:01:44'),
(306, 9, 'User', '169.159.211.66', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-20 00:19:58', '2022-02-20 00:19:58'),
(318, 9, 'User', '169.159.210.39', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 01:26:41', '2022-02-20 01:26:41'),
(319, 9, 'User', '169.159.211.39', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 01:42:05', '2022-02-20 01:42:05'),
(321, 9, 'User', '169.159.210.39', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 05:15:51', '2022-02-20 05:15:51'),
(323, 9, 'User', '169.159.210.39', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 06:28:38', '2022-02-20 06:28:38'),
(326, 33, 'User', '103.197.152.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '2022-02-20 07:21:54', '2022-02-20 07:21:54'),
(328, 33, 'User', '103.197.152.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', '2022-02-20 07:25:38', '2022-02-20 07:25:38'),
(329, 35, 'User', '169.159.210.27', 'Mozilla/5.0 (Linux; Android 8.1.0; itel S33 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-20 09:45:13', '2022-02-20 09:45:13'),
(330, 9, 'User', '169.159.210.39', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 09:49:52', '2022-02-20 09:49:52'),
(331, 35, 'User', '169.159.212.4', 'Mozilla/5.0 (Linux; Android 8.1.0; itel S33 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-20 09:53:51', '2022-02-20 09:53:51'),
(332, 1, 'Admin', '169.159.210.39', 'Mozilla/5.0 (X11; CrOS x86_64 14388.52.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.91 Safari/537.36', '2022-02-20 09:57:19', '2022-02-20 09:57:19'),
(333, 35, 'User', '169.159.220.4', 'Mozilla/5.0 (Linux; Android 8.1.0; itel S33 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-20 09:58:59', '2022-02-20 09:58:59'),
(334, 35, 'User', '169.159.212.4', 'Mozilla/5.0 (Linux; Android 8.1.0; itel S33 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-20 10:04:19', '2022-02-20 10:04:19'),
(335, 35, 'User', '169.159.220.4', 'Mozilla/5.0 (Linux; Android 8.1.0; itel S33 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-20 10:07:11', '2022-02-20 10:07:11'),
(336, 9, 'User', '169.159.210.39', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 10:34:40', '2022-02-20 10:34:40'),
(337, 9, 'User', '169.159.211.81', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 12:45:51', '2022-02-20 12:45:51'),
(338, 9, 'User', '169.159.210.81', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-20 13:37:09', '2022-02-20 13:37:09'),
(339, 19, 'User', '169.159.220.216', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-21 02:14:04', '2022-02-21 02:14:04'),
(340, 19, 'User', '169.159.220.216', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-21 02:17:03', '2022-02-21 02:17:03'),
(341, 9, 'User', '169.159.210.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-21 04:57:14', '2022-02-21 04:57:14'),
(342, 9, 'User', '169.159.210.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-21 05:57:47', '2022-02-21 05:57:47'),
(343, 36, 'User', '169.159.210.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-21 06:05:23', '2022-02-21 06:05:23'),
(344, 1, 'Admin', '169.159.210.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-21 16:14:15', '2022-02-21 16:14:15'),
(345, 4, 'Admin', '169.159.211.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-21 16:22:20', '2022-02-21 16:22:20'),
(346, 1, 'Admin', '169.159.211.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-21 16:26:11', '2022-02-21 16:26:11'),
(347, 9, 'User', '169.159.211.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36', '2022-02-21 16:53:12', '2022-02-21 16:53:12'),
(348, 9, 'User', '169.159.210.196', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-22 00:05:45', '2022-02-22 00:05:45'),
(349, 19, 'User', '169.159.212.108', 'Mozilla/5.0 (Linux; Android 7.1.1; SM-J250F Build/NMF26X; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/64.0.3282.137 Mobile Safari/537.36', '2022-02-22 12:14:26', '2022-02-22 12:14:26'),
(350, 19, 'User', '169.159.212.108', 'Mozilla/5.0 (Linux; Android 7.1.1; SAMSUNG SM-J250F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/15.0 Chrome/90.0.4430.210 Mobile Safari/537.36', '2022-02-22 12:30:28', '2022-02-22 12:30:28'),
(351, 17, 'User', '169.159.212.120', 'Mozilla/5.0 (Linux; Android 11; TECNO CG6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Mobile Safari/537.36', '2022-02-23 04:46:03', '2022-02-23 04:46:03'),
(352, 9, 'User', '169.159.210.105', 'Mozilla/5.0 (Linux; Android 8.1.0; TECNO LA7 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.92 Mobile Safari/537.36', '2022-02-23 10:04:21', '2022-02-23 10:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` int(11) NOT NULL DEFAULT 1,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `first_name`, `last_name`, `phone`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `picture`) VALUES
(1, 1, 'PATRICK', 'LOSALE', NULL, 'losalepatrick@gmail.com', '$2y$10$U.3DHITO7w2106Y7nZkGCuusQNH4s8AWdH2f7LVyI0nkcayGaFtN.', 'Active', NULL, '2022-01-19 06:40:18', '2022-01-19 16:20:38', '1642629038.JPG'),
(2, 4, 'Patrick', 'losale', NULL, 'losalepatrick1@gmail.com', '$2y$10$0h/nQUNe.Rr5ja7ma.lOKOY.71gJtXBVE0KoMuAlkELF1VPn/xfLq', 'Active', NULL, '2022-01-22 15:28:08', '2022-01-22 15:28:08', ''),
(3, 4, 'josepha', 'liselele', NULL, 'jbissenele2015@gmail.com', '$2y$10$SAziSpiMQw/PsFEjkG462.24TEbCuNxNe38cAfl79hvYJ9N0thMha', 'Active', NULL, '2022-02-15 05:23:14', '2022-02-15 05:28:58', ''),
(4, 4, 'PATRICK', 'LOSALE', NULL, 'losalepatricka@gmail.com', '$2y$10$hsQ4cg7bHCuTe4UtpHKFc.S.V3pAKegGspj.wl9GZ2nrT8hGdXQk6', 'Active', NULL, '2022-02-21 16:21:59', '2022-02-21 16:21:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `app_store_credentials`
--

CREATE TABLE `app_store_credentials` (
  `id` int(10) UNSIGNED NOT NULL,
  `has_app_credentials` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` enum('Google','Apple') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_store_credentials`
--

INSERT INTO `app_store_credentials` (`id`, `has_app_credentials`, `link`, `logo`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Yes', 'https://drive.google.com/file/d/1y007hXIUaqu7OirdCeT1ppkRglVI31Tc/view?usp=sharinghttps://drive.google.com/file/d/1y007hXIUaqu7OirdCeT1ppkRglVI31Tc/view?usp=sharing', '1644796491.png', 'Google', NULL, '2022-02-13 18:24:52'),
(2, 'Yes', 'https://itunes.apple.com/bd/app/pay-money', '1531134592.png', 'Apple', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_tokens`
--

CREATE TABLE `app_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_in` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `app_transactions_infos`
--

CREATE TABLE `app_transactions_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grant_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_in` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','success','cancel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2022-01-21-034821.sql', '2022-01-20 22:18:22', NULL),
(2, '2022-02-15-112204.sql', '2022-02-15 05:52:04', NULL),
(3, '2022-02-20-132452.sql', '2022-02-20 07:54:52', NULL),
(4, '2022-02-20-132502.sql', '2022-02-20 07:55:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` enum('No','Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `user_id`, `admin_id`, `currency_id`, `country_id`, `file_id`, `bank_name`, `bank_branch_name`, `bank_branch_city`, `bank_branch_address`, `account_name`, `account_number`, `swift_code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 50, 3, 'RWABANK', 'losale youth', 'kinshasa', 'Blvd du 30 juin, nouvelles galeries présidentielles, local 26C au 26è étage', 'Patrick losale', '00132719402', '52', 'No', '2022-01-22 15:16:14', '2022-01-22 15:16:15'),
(2, NULL, 1, 1, 50, 4, 'RAWBANK', 'losale youth', 'kinshasa', 'Blvd du 30 juin, nouvelles galeries présidentielles, local 26C au 26è étage', 'Patrick losale', '00132719402', '52', 'No', '2022-01-22 15:16:15', '2022-01-24 05:28:40');

-- --------------------------------------------------------

--
-- Table structure for table `coinpayment_log_trxes`
--

CREATE TABLE `coinpayment_log_trxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fiat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_created_at` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `confirmation_at` datetime DEFAULT NULL,
  `amount` double(20,8) NOT NULL,
  `confirms_needed` int(11) NOT NULL,
  `qrcode_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `name`, `iso3`, `number_code`, `phone_code`, `is_default`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', '4', '93', 'no'),
(2, 'AL', 'Albania', 'ALB', '8', '355', 'no'),
(3, 'DZ', 'Algeria', 'DZA', '12', '213', 'no'),
(4, 'AS', 'American Samoa', 'ASM', '16', '1684', 'no'),
(5, 'AD', 'Andorra', 'AND', '20', '376', 'no'),
(6, 'AO', 'Angola', 'AGO', '24', '244', 'no'),
(7, 'AI', 'Anguilla', 'AIA', '660', '1264', 'no'),
(8, 'AQ', 'Antarctica', NULL, NULL, '0', 'no'),
(9, 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268', 'no'),
(10, 'AR', 'Argentina', 'ARG', '32', '54', 'no'),
(11, 'AM', 'Armenia', 'ARM', '51', '374', 'no'),
(12, 'AW', 'Aruba', 'ABW', '533', '297', 'no'),
(13, 'AU', 'Australia', 'AUS', '36', '61', 'no'),
(14, 'AT', 'Austria', 'AUT', '40', '43', 'no'),
(15, 'AZ', 'Azerbaijan', 'AZE', '31', '994', 'no'),
(16, 'BS', 'Bahamas', 'BHS', '44', '1242', 'no'),
(17, 'BH', 'Bahrain', 'BHR', '48', '973', 'no'),
(18, 'BD', 'Bangladesh', 'BGD', '50', '880', 'no'),
(19, 'BB', 'Barbados', 'BRB', '52', '1246', 'no'),
(20, 'BY', 'Belarus', 'BLR', '112', '375', 'no'),
(21, 'BE', 'Belgium', 'BEL', '56', '32', 'no'),
(22, 'BZ', 'Belize', 'BLZ', '84', '501', 'no'),
(23, 'BJ', 'Benin', 'BEN', '204', '229', 'no'),
(24, 'BM', 'Bermuda', 'BMU', '60', '1441', 'no'),
(25, 'BT', 'Bhutan', 'BTN', '64', '975', 'no'),
(26, 'BO', 'Bolivia', 'BOL', '68', '591', 'no'),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387', 'no'),
(28, 'BW', 'Botswana', 'BWA', '72', '267', 'no'),
(29, 'BV', 'Bouvet Island', NULL, NULL, '0', 'no'),
(30, 'BR', 'Brazil', 'BRA', '76', '55', 'no'),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL, '246', 'no'),
(32, 'BN', 'Brunei Darussalam', 'BRN', '96', '673', 'no'),
(33, 'BG', 'Bulgaria', 'BGR', '100', '359', 'no'),
(34, 'BF', 'Burkina Faso', 'BFA', '854', '226', 'no'),
(35, 'BI', 'Burundi', 'BDI', '108', '257', 'no'),
(36, 'KH', 'Cambodia', 'KHM', '116', '855', 'no'),
(37, 'CM', 'Cameroon', 'CMR', '120', '237', 'no'),
(38, 'CA', 'Canada', 'CAN', '124', '1', 'no'),
(39, 'CV', 'Cape Verde', 'CPV', '132', '238', 'no'),
(40, 'KY', 'Cayman Islands', 'CYM', '136', '1345', 'no'),
(41, 'CF', 'Central African Republic', 'CAF', '140', '236', 'no'),
(42, 'TD', 'Chad', 'TCD', '148', '235', 'no'),
(43, 'CL', 'Chile', 'CHL', '152', '56', 'no'),
(44, 'CN', 'China', 'CHN', '156', '86', 'no'),
(45, 'CX', 'Christmas Island', NULL, NULL, '61', 'no'),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL, '672', 'no'),
(47, 'CO', 'Colombia', 'COL', '170', '57', 'no'),
(48, 'KM', 'Comoros', 'COM', '174', '269', 'no'),
(49, 'CG', 'Congo', 'COG', '178', '242', 'no'),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242', 'yes'),
(51, 'CK', 'Cook Islands', 'COK', '184', '682', 'no'),
(52, 'CR', 'Costa Rica', 'CRI', '188', '506', 'no'),
(53, 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225', 'no'),
(54, 'HR', 'Croatia', 'HRV', '191', '385', 'no'),
(55, 'CU', 'Cuba', 'CUB', '192', '53', 'no'),
(56, 'CY', 'Cyprus', 'CYP', '196', '357', 'no'),
(57, 'CZ', 'Czech Republic', 'CZE', '203', '420', 'no'),
(58, 'DK', 'Denmark', 'DNK', '208', '45', 'no'),
(59, 'DJ', 'Djibouti', 'DJI', '262', '253', 'no'),
(60, 'DM', 'Dominica', 'DMA', '212', '1767', 'no'),
(61, 'DO', 'Dominican Republic', 'DOM', '214', '1809', 'no'),
(62, 'EC', 'Ecuador', 'ECU', '218', '593', 'no'),
(63, 'EG', 'Egypt', 'EGY', '818', '20', 'no'),
(64, 'SV', 'El Salvador', 'SLV', '222', '503', 'no'),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240', 'no'),
(66, 'ER', 'Eritrea', 'ERI', '232', '291', 'no'),
(67, 'EE', 'Estonia', 'EST', '233', '372', 'no'),
(68, 'ET', 'Ethiopia', 'ETH', '231', '251', 'no'),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500', 'no'),
(70, 'FO', 'Faroe Islands', 'FRO', '234', '298', 'no'),
(71, 'FJ', 'Fiji', 'FJI', '242', '679', 'no'),
(72, 'FI', 'Finland', 'FIN', '246', '358', 'no'),
(73, 'FR', 'France', 'FRA', '250', '33', 'no'),
(74, 'GF', 'French Guiana', 'GUF', '254', '594', 'no'),
(75, 'PF', 'French Polynesia', 'PYF', '258', '689', 'no'),
(76, 'TF', 'French Southern Territories', NULL, NULL, '0', 'no'),
(77, 'GA', 'Gabon', 'GAB', '266', '241', 'no'),
(78, 'GM', 'Gambia', 'GMB', '270', '220', 'no'),
(79, 'GE', 'Georgia', 'GEO', '268', '995', 'no'),
(80, 'DE', 'Germany', 'DEU', '276', '49', 'no'),
(81, 'GH', 'Ghana', 'GHA', '288', '233', 'no'),
(82, 'GI', 'Gibraltar', 'GIB', '292', '350', 'no'),
(83, 'GR', 'Greece', 'GRC', '300', '30', 'no'),
(84, 'GL', 'Greenland', 'GRL', '304', '299', 'no'),
(85, 'GD', 'Grenada', 'GRD', '308', '1473', 'no'),
(86, 'GP', 'Guadeloupe', 'GLP', '312', '590', 'no'),
(87, 'GU', 'Guam', 'GUM', '316', '1671', 'no'),
(88, 'GT', 'Guatemala', 'GTM', '320', '502', 'no'),
(89, 'GN', 'Guinea', 'GIN', '324', '224', 'no'),
(90, 'GW', 'Guinea-Bissau', 'GNB', '624', '245', 'no'),
(91, 'GY', 'Guyana', 'GUY', '328', '592', 'no'),
(92, 'HT', 'Haiti', 'HTI', '332', '509', 'no'),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL, '0', 'no'),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39', 'no'),
(95, 'HN', 'Honduras', 'HND', '340', '504', 'no'),
(96, 'HK', 'Hong Kong', 'HKG', '344', '852', 'no'),
(97, 'HU', 'Hungary', 'HUN', '348', '36', 'no'),
(98, 'IS', 'Iceland', 'ISL', '352', '354', 'no'),
(99, 'IN', 'India', 'IND', '356', '91', 'no'),
(100, 'ID', 'Indonesia', 'IDN', '360', '62', 'no'),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98', 'no'),
(102, 'IQ', 'Iraq', 'IRQ', '368', '964', 'no'),
(103, 'IE', 'Ireland', 'IRL', '372', '353', 'no'),
(104, 'IL', 'Israel', 'ISR', '376', '972', 'no'),
(105, 'IT', 'Italy', 'ITA', '380', '39', 'no'),
(106, 'JM', 'Jamaica', 'JAM', '388', '1876', 'no'),
(107, 'JP', 'Japan', 'JPN', '392', '81', 'no'),
(108, 'JO', 'Jordan', 'JOR', '400', '962', 'no'),
(109, 'KZ', 'Kazakhstan', 'KAZ', '398', '7', 'no'),
(110, 'KE', 'Kenya', 'KEN', '404', '254', 'no'),
(111, 'KI', 'Kiribati', 'KIR', '296', '686', 'no'),
(112, 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', 'no'),
(113, 'KR', 'Korea, Republic of', 'KOR', '410', '82', 'no'),
(114, 'KW', 'Kuwait', 'KWT', '414', '965', 'no'),
(115, 'KG', 'Kyrgyzstan', 'KGZ', '417', '996', 'no'),
(116, 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856', 'no'),
(117, 'LV', 'Latvia', 'LVA', '428', '371', 'no'),
(118, 'LB', 'Lebanon', 'LBN', '422', '961', 'no'),
(119, 'LS', 'Lesotho', 'LSO', '426', '266', 'no'),
(120, 'LR', 'Liberia', 'LBR', '430', '231', 'no'),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218', 'no'),
(122, 'LI', 'Liechtenstein', 'LIE', '438', '423', 'no'),
(123, 'LT', 'Lithuania', 'LTU', '440', '370', 'no'),
(124, 'LU', 'Luxembourg', 'LUX', '442', '352', 'no'),
(125, 'MO', 'Macao', 'MAC', '446', '853', 'no'),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', 'no'),
(127, 'MG', 'Madagascar', 'MDG', '450', '261', 'no'),
(128, 'MW', 'Malawi', 'MWI', '454', '265', 'no'),
(129, 'MY', 'Malaysia', 'MYS', '458', '60', 'no'),
(130, 'MV', 'Maldives', 'MDV', '462', '960', 'no'),
(131, 'ML', 'Mali', 'MLI', '466', '223', 'no'),
(132, 'MT', 'Malta', 'MLT', '470', '356', 'no'),
(133, 'MH', 'Marshall Islands', 'MHL', '584', '692', 'no'),
(134, 'MQ', 'Martinique', 'MTQ', '474', '596', 'no'),
(135, 'MR', 'Mauritania', 'MRT', '478', '222', 'no'),
(136, 'MU', 'Mauritius', 'MUS', '480', '230', 'no'),
(137, 'YT', 'Mayotte', NULL, NULL, '269', 'no'),
(138, 'MX', 'Mexico', 'MEX', '484', '52', 'no'),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691', 'no'),
(140, 'MD', 'Moldova, Republic of', 'MDA', '498', '373', 'no'),
(141, 'MC', 'Monaco', 'MCO', '492', '377', 'no'),
(142, 'MN', 'Mongolia', 'MNG', '496', '976', 'no'),
(143, 'MS', 'Montserrat', 'MSR', '500', '1664', 'no'),
(144, 'MA', 'Morocco', 'MAR', '504', '212', 'no'),
(145, 'MZ', 'Mozambique', 'MOZ', '508', '258', 'no'),
(146, 'MM', 'Myanmar', 'MMR', '104', '95', 'no'),
(147, 'NA', 'Namibia', 'NAM', '516', '264', 'no'),
(148, 'NR', 'Nauru', 'NRU', '520', '674', 'no'),
(149, 'NP', 'Nepal', 'NPL', '524', '977', 'no'),
(150, 'NL', 'Netherlands', 'NLD', '528', '31', 'no'),
(151, 'AN', 'Netherlands Antilles', 'ANT', '530', '599', 'no'),
(152, 'NC', 'New Caledonia', 'NCL', '540', '687', 'no'),
(153, 'NZ', 'New Zealand', 'NZL', '554', '64', 'no'),
(154, 'NI', 'Nicaragua', 'NIC', '558', '505', 'no'),
(155, 'NE', 'Niger', 'NER', '562', '227', 'no'),
(156, 'NG', 'Nigeria', 'NGA', '566', '234', 'no'),
(157, 'NU', 'Niue', 'NIU', '570', '683', 'no'),
(158, 'NF', 'Norfolk Island', 'NFK', '574', '672', 'no'),
(159, 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670', 'no'),
(160, 'NO', 'Norway', 'NOR', '578', '47', 'no'),
(161, 'OM', 'Oman', 'OMN', '512', '968', 'no'),
(162, 'PK', 'Pakistan', 'PAK', '586', '92', 'no'),
(163, 'PW', 'Palau', 'PLW', '585', '680', 'no'),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL, '970', 'no'),
(165, 'PA', 'Panama', 'PAN', '591', '507', 'no'),
(166, 'PG', 'Papua New Guinea', 'PNG', '598', '675', 'no'),
(167, 'PY', 'Paraguay', 'PRY', '600', '595', 'no'),
(168, 'PE', 'Peru', 'PER', '604', '51', 'no'),
(169, 'PH', 'Philippines', 'PHL', '608', '63', 'no'),
(170, 'PN', 'Pitcairn', 'PCN', '612', '0', 'no'),
(171, 'PL', 'Poland', 'POL', '616', '48', 'no'),
(172, 'PT', 'Portugal', 'PRT', '620', '351', 'no'),
(173, 'PR', 'Puerto Rico', 'PRI', '630', '1787', 'no'),
(174, 'QA', 'Qatar', 'QAT', '634', '974', 'no'),
(175, 'RE', 'Reunion', 'REU', '638', '262', 'no'),
(176, 'RO', 'Romania', 'ROM', '642', '40', 'no'),
(177, 'RU', 'Russian Federation', 'RUS', '643', '70', 'no'),
(178, 'RW', 'Rwanda', 'RWA', '646', '250', 'no'),
(179, 'SH', 'Saint Helena', 'SHN', '654', '290', 'no'),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869', 'no'),
(181, 'LC', 'Saint Lucia', 'LCA', '662', '1758', 'no'),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508', 'no'),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784', 'no'),
(184, 'WS', 'Samoa', 'WSM', '882', '684', 'no'),
(185, 'SM', 'San Marino', 'SMR', '674', '378', 'no'),
(186, 'ST', 'Sao Tome and Principe', 'STP', '678', '239', 'no'),
(187, 'SA', 'Saudi Arabia', 'SAU', '682', '966', 'no'),
(188, 'SN', 'Senegal', 'SEN', '686', '221', 'no'),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL, '381', 'no'),
(190, 'SC', 'Seychelles', 'SYC', '690', '248', 'no'),
(191, 'SL', 'Sierra Leone', 'SLE', '694', '232', 'no'),
(192, 'SG', 'Singapore', 'SGP', '702', '65', 'no'),
(193, 'SK', 'Slovakia', 'SVK', '703', '421', 'no'),
(194, 'SI', 'Slovenia', 'SVN', '705', '386', 'no'),
(195, 'SB', 'Solomon Islands', 'SLB', '90', '677', 'no'),
(196, 'SO', 'Somalia', 'SOM', '706', '252', 'no'),
(197, 'ZA', 'South Africa', 'ZAF', '710', '27', 'no'),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', 'no'),
(199, 'ES', 'Spain', 'ESP', '724', '34', 'no'),
(200, 'LK', 'Sri Lanka', 'LKA', '144', '94', 'no'),
(201, 'SD', 'Sudan', 'SDN', '736', '249', 'no'),
(202, 'SR', 'Suriname', 'SUR', '740', '597', 'no'),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47', 'no'),
(204, 'SZ', 'Swaziland', 'SWZ', '748', '268', 'no'),
(205, 'SE', 'Sweden', 'SWE', '752', '46', 'no'),
(206, 'CH', 'Switzerland', 'CHE', '756', '41', 'no'),
(207, 'SY', 'Syrian Arab Republic', 'SYR', '760', '963', 'no'),
(208, 'TW', 'Taiwan, Province of China', 'TWN', '158', '886', 'no'),
(209, 'TJ', 'Tajikistan', 'TJK', '762', '992', 'no'),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255', 'no'),
(211, 'TH', 'Thailand', 'THA', '764', '66', 'no'),
(212, 'TL', 'Timor-Leste', NULL, NULL, '670', 'no'),
(213, 'TG', 'Togo', 'TGO', '768', '228', 'no'),
(214, 'TK', 'Tokelau', 'TKL', '772', '690', 'no'),
(215, 'TO', 'Tonga', 'TON', '776', '676', 'no'),
(216, 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868', 'no'),
(217, 'TN', 'Tunisia', 'TUN', '788', '216', 'no'),
(218, 'TR', 'Turkey', 'TUR', '792', '90', 'no'),
(219, 'TM', 'Turkmenistan', 'TKM', '795', '7370', 'no'),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649', 'no'),
(221, 'TV', 'Tuvalu', 'TUV', '798', '688', 'no'),
(222, 'UG', 'Uganda', 'UGA', '800', '256', 'no'),
(223, 'UA', 'Ukraine', 'UKR', '804', '380', 'no'),
(224, 'AE', 'United Arab Emirates', 'ARE', '784', '971', 'no'),
(225, 'GB', 'United Kingdom', 'GBR', '826', '44', 'no'),
(226, 'US', 'United States', 'USA', '840', '1', 'no'),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL, '1', 'no'),
(228, 'UY', 'Uruguay', 'URY', '858', '598', 'no'),
(229, 'UZ', 'Uzbekistan', 'UZB', '860', '998', 'no'),
(230, 'VU', 'Vanuatu', 'VUT', '548', '678', 'no'),
(231, 'VE', 'Venezuela', 'VEN', '862', '58', 'no'),
(232, 'VN', 'Viet Nam', 'VNM', '704', '84', 'no'),
(233, 'VG', 'Virgin Islands, British', 'VGB', '92', '1284', 'no'),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340', 'no'),
(235, 'WF', 'Wallis and Futuna', 'WLF', '876', '681', 'no'),
(236, 'EH', 'Western Sahara', 'ESH', '732', '212', 'no'),
(237, 'YE', 'Yemen', 'YEM', '887', '967', 'no'),
(238, 'ZM', 'Zambia', 'ZMB', '894', '260', 'no'),
(239, 'ZW', 'Zimbabwe', 'ZWE', '716', '263', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `cryptoapi_logs`
--

CREATE TABLE `cryptoapi_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Networks/Cryto Curencies - BTC,LTC,DT etc.',
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Crypto Api''s Payloads (e.g - get_new_address(), get_balance(), withdraw(),etc.',
  `confirmations` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_currencies_settings`
--

CREATE TABLE `crypto_currencies_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `network` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Networks/Cryto Curencies - BTC,LTC,DT etc.',
  `network_credentials` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Network/Cryto Curency Details',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Active/Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fiat' COMMENT 'fiat or crypto',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `symbol` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '101',
  `rate` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_from` enum('local','api') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `allow_address_creation` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No' COMMENT 'For Crypto - Yes/No',
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `type`, `name`, `symbol`, `code`, `rate`, `logo`, `default`, `exchange_from`, `allow_address_creation`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fiat', 'US Dollar', '$', 'USD', 1.00000000, '1642783536.png', '1', 'api', 'No', 'Active', NULL, NULL),
(2, 'fiat', 'Pound Sterling', '£', 'GBP', 0.75000000, 'icons8-british-pound-64.png', '0', 'api', 'No', 'Active', NULL, NULL),
(3, 'fiat', 'Europe', '€', 'EUR', 0.85000000, '1642784020.png', '0', 'api', 'No', 'Active', NULL, NULL),
(4, 'fiat', 'Indian Rupee', '₡', 'INR', 71.82000000, 'icons8-rupee-64.png', '0', 'local', 'No', 'Active', NULL, NULL),
(5, 'fiat', 'franc congolais', 'CDF', 'CDF', 2040.00000000, '1642782654.png', '0', 'local', 'No', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchanges`
--

CREATE TABLE `currency_exchanges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `from_wallet` int(10) UNSIGNED DEFAULT NULL,
  `to_wallet` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Exchange)',
  `exchange_rate` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `type` enum('In','Out') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency_exchanges`
--

INSERT INTO `currency_exchanges` (`id`, `user_id`, `from_wallet`, `to_wallet`, `currency_id`, `uuid`, `exchange_rate`, `amount`, `fee`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 3, 'A9449B3F477DD', 0.88214500, 5.00000000, 0.00000000, 'Out', 'Success', '2022-01-20 12:24:08', '2022-01-20 12:24:08'),
(2, 1, 1, 3, 3, '771DC276F5EC5', 0.88284500, 2.00000000, 0.00000000, 'Out', 'Success', '2022-01-20 12:54:18', '2022-01-20 12:54:18'),
(3, 3, 4, 5, 5, '2A72017EB7C60', 2000.00000000, 10.00000000, 0.00000000, 'Out', 'Success', '2022-01-20 21:42:14', '2022-01-20 21:42:14'),
(4, 3, 5, 4, 1, 'ACE9AD4082ACF', 0.00049600, 19000.00000000, 286.50000000, 'Out', 'Success', '2022-01-20 21:45:14', '2022-01-20 21:45:14'),
(5, 3, 4, 7, 3, '7D11DB82A66B2', 0.88146500, 1.00000000, 0.00000000, 'Out', 'Success', '2022-01-21 18:32:49', '2022-01-21 18:32:49'),
(6, 3, 4, 7, 3, 'E02B3285C0D61', 0.88146500, 1.00000000, 0.00000000, 'Out', 'Success', '2022-01-21 18:37:16', '2022-01-21 18:37:16'),
(7, 3, 4, 7, 3, '1100D681405CA', 0.88146500, 1.00000000, 0.00000000, 'Out', 'Success', '2022-01-21 18:43:11', '2022-01-21 18:43:11'),
(8, 8, 11, 14, 5, 'ECA3475BEFD83', 204.00000000, 20.00000000, 0.00000000, 'Out', 'Success', '2022-01-27 06:31:22', '2022-01-27 06:31:22'),
(9, 8, 11, 15, 3, 'EA1D179BF2733', 0.89623000, 250.00000000, 0.00000000, 'Out', 'Success', '2022-01-27 06:31:45', '2022-01-27 06:31:45'),
(10, 9, 12, 18, 5, '2C928EE5CDEC0', 2040.00000000, 5.00000000, 0.00000000, 'Out', 'Success', '2022-02-13 03:38:45', '2022-02-13 03:38:45'),
(11, 13, 19, 20, 5, '7A671F3BB267B', 204.00000000, 25.00000000, 0.00000000, 'Out', 'Success', '2022-02-13 03:48:17', '2022-02-13 03:48:17'),
(12, 15, 22, 23, 3, '5032D248BCC8D', 0.85000000, 2.00000000, 0.00000000, 'Out', 'Success', '2022-02-13 14:01:51', '2022-02-13 14:01:51'),
(13, 15, 22, 24, 5, 'BBB3056FD9A7C', 204.00000000, 2.00000000, 0.00000000, 'Out', 'Success', '2022-02-13 15:09:54', '2022-02-13 15:09:54'),
(14, 15, 22, 23, 3, 'E9C2F7B14A6D4', 0.85000000, 1.00000000, 0.00000000, 'Out', 'Success', '2022-02-14 10:52:40', '2022-02-14 10:52:40'),
(15, 15, 22, 24, 5, 'DE9CA342BB7D7', 204.00000000, 54.00000000, 0.00000000, 'Out', 'Success', '2022-02-15 00:35:03', '2022-02-15 00:35:03'),
(16, 15, 24, 23, 3, 'CA3CC4DE41285', 0.85000000, 10005.00000000, 101.05000000, 'Out', 'Success', '2022-02-15 01:45:57', '2022-02-15 01:45:57'),
(17, 12, 17, 30, 5, '1C757552BA2EC', 2040.00000000, 4.00000000, 0.00000000, 'Out', 'Success', '2022-02-15 04:45:32', '2022-02-15 04:45:32'),
(18, 20, 29, 31, 5, '7BC49454D907B', 2040.00000000, 5.00000000, 0.00000000, 'Out', 'Blocked', '2022-02-15 04:46:52', '2022-02-16 04:27:29'),
(19, 19, 28, 32, 3, 'BF1435F43FBF0', 0.85000000, 4.00000000, 0.00000000, 'Out', 'Blocked', '2022-02-15 04:47:35', '2022-02-16 04:31:39'),
(20, 17, 26, 33, 5, '93EAB45A933B0', 204.00000000, 10.00000000, 0.00000000, 'Out', 'Success', '2022-02-15 04:48:25', '2022-02-15 04:48:25'),
(21, 12, 17, 34, 3, '6E3C801D1AB20', 0.85000000, 1.00000000, 1.01000000, 'Out', 'Success', '2022-02-15 04:51:51', '2022-02-15 04:51:51'),
(22, 15, 22, 36, 2, 'CA7470831631B', 0.75000000, 25.00000000, 1.25000000, 'Out', 'Success', '2022-02-15 06:30:59', '2022-02-15 06:30:59'),
(23, 15, 22, 24, 5, 'A6A416800AF68', 2040.00000000, 25.00000000, 1.25000000, 'Out', 'Success', '2022-02-15 06:31:13', '2022-02-15 06:31:13'),
(24, 17, 26, 33, 5, '5B83EC9B7A9D3', 2040.00000000, 10.00000000, 1.10000000, 'Out', 'Success', '2022-02-16 04:35:24', '2022-02-16 04:35:24'),
(25, 20, 29, 31, 5, 'DDC20A9D6A3BB', 2040.00000000, 2.00000000, 1.02000000, 'Out', 'Success', '2022-02-16 15:28:29', '2022-02-16 15:28:29'),
(26, 9, 12, 43, 3, '4B3BB2B6F4D5E', 0.87960000, 150.00000000, 2.50000000, 'Out', 'Success', '2022-02-17 11:51:14', '2022-02-17 11:51:14'),
(27, 9, 12, 18, 5, 'D99E1EAFB32B2', 2040.00000000, 100.00000000, 2.00000000, 'Out', 'Success', '2022-02-17 11:53:06', '2022-02-17 11:53:06'),
(28, 9, 12, 18, 5, 'BED5D78CEF69B', 2040.00000000, 400.00000000, 9.00000000, 'Out', 'Success', '2022-02-19 06:11:37', '2022-02-19 06:11:37'),
(29, 9, 12, 43, 3, 'B705666A78AE6', 0.88240000, 25.00000000, 1.50000000, 'Out', 'Success', '2022-02-20 01:27:49', '2022-02-20 01:27:49'),
(30, 9, 18, 12, 1, '745A2F8EBABB8', 0.00050105, 70000.00000000, 701.00000000, 'Out', 'Success', '2022-02-20 09:53:34', '2022-02-20 09:53:34'),
(31, 19, 28, 52, 5, 'E67D31906CA53', 2040.00000000, 5.00000000, 1.10000000, 'Out', 'Success', '2022-02-21 02:21:44', '2022-02-21 02:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `currency_payment_methods`
--

CREATE TABLE `currency_payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `activated_for` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'deposit, withdrawal single, both or none',
  `method_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'input field''s title and value like client_id, client_secret etc',
  `processing_time` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'time in days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency_payment_methods`
--

INSERT INTO `currency_payment_methods` (`id`, `currency_id`, `method_id`, `activated_for`, `method_data`, `processing_time`, `created_at`, `updated_at`) VALUES
(1, 4, 3, '{\"deposit\":\"\"}', '{\"client_id\":\"AYw1R-Gt4b20Usj_IbbF6A6BfkVXSW6oFECfna3Y3bk-30SMeiwG4VhPw5WnomXfyGjCrSnD2MVREhmG\",\"client_secret\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\",\"mode\":\"sandbox\"}', 1, '2022-01-20 08:58:43', '2022-01-20 09:08:07'),
(2, 5, 3, '{\"deposit\":\"\"}', '{\"client_id\":\"AYw1R-Gt4b20Usj_IbbF6A6BfkVXSW6oFECfna3Y3bk-30SMeiwG4VhPw5WnomXfyGjCrSnD2MVREhmG\",\"client_secret\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\",\"mode\":\"sandbox\"}', 1, '2022-01-20 09:10:25', '2022-01-20 09:10:25'),
(3, 1, 3, '{\"deposit\":\"\"}', '{\"client_id\":\"AYw1R-Gt4b20Usj_IbbF6A6BfkVXSW6oFECfna3Y3bk-30SMeiwG4VhPw5WnomXfyGjCrSnD2MVREhmG\",\"client_secret\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\",\"mode\":\"live\"}', 2, '2022-01-20 09:11:04', '2022-02-18 07:21:46'),
(4, 3, 3, '{\"deposit\":\"\"}', '{\"client_id\":\"AYw1R-Gt4b20Usj_IbbF6A6BfkVXSW6oFECfna3Y3bk-30SMeiwG4VhPw5WnomXfyGjCrSnD2MVREhmG\",\"client_secret\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\",\"mode\":\"sandbox\"}', 1, '2022-01-20 09:11:46', '2022-01-20 09:11:46'),
(5, 2, 3, '{\"deposit\":\"\"}', '{\"client_id\":\"AYw1R-Gt4b20Usj_IbbF6A6BfkVXSW6oFECfna3Y3bk-30SMeiwG4VhPw5WnomXfyGjCrSnD2MVREhmG\",\"client_secret\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\",\"mode\":\"sandbox\"}', 1, '2022-01-20 09:12:32', '2022-01-20 09:12:32'),
(6, 1, 2, '{\"deposit\":\"\"}', '{\"secret_key\":\"sk_test_51KKmKYDKMQ6mmk68gvsMY4DzC5Q2qXOx5x8U2wT2kqQIypRUbXyYcwta6dTI7YoirJDJjivIqQP6CHE3juByNmlT00CCt3OE9T\",\"publishable_key\":\"pk_test_51KKmKYDKMQ6mmk68xzkACMwsceaTCCtjnOoiqWInvvoNeo6SOqXslPLRoD32fvHdDEsp0oEGNTWgAgjDjcEjcWSO006kzeYt4C\"}', 1, '2022-01-20 14:16:44', '2022-01-24 04:04:49'),
(7, 1, 4, '{\"\":\"\"}', '{\"seller_id\":\"z\",\"mode\":\"sandbox\"}', 0, '2022-01-22 12:29:08', '2022-01-22 15:48:15'),
(8, 1, 6, '{\"\":\"\"}', '{\"bank_id\":1}', 0, '2022-01-22 15:16:14', '2022-02-18 07:21:18'),
(9, 1, 6, '{\"\":\"\"}', '{\"bank_id\":2}', 0, '2022-01-22 15:16:15', '2022-02-18 07:20:55'),
(10, 7, 2, '{\"deposit\":\"\"}', '{\"secret_key\":\"sk_test_51KKmKYDKMQ6mmk68gvsMY4DzC5Q2qXOx5x8U2wT2kqQIypRUbXyYcwta6dTI7YoirJDJjivIqQP6CHE3juByNmlT00CCt3OE9T\",\"publishable_key\":\"pk_test_51KKmKYDKMQ6mmk68xzkACMwsceaTCCtjnOoiqWInvvoNeo6SOqXslPLRoD32fvHdDEsp0oEGNTWgAgjDjcEjcWSO006kzeYt4C\"}', 1, '2022-02-13 06:09:07', '2022-02-13 06:09:07'),
(11, 7, 3, '{\"deposit\":\"\"}', '{\"client_id\":\"uhbj,bbbbkjh,b fjehf\",\"client_secret\":\"iorjoikjoirjopirr\",\"mode\":\"live\"}', 1, '2022-02-13 06:09:53', '2022-02-13 06:09:53'),
(12, 3, 2, '{\"deposit\":\"\"}', '{\"secret_key\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\",\"publishable_key\":\"EKtSyr2kEk_rroyxC6cy8djjyzQna9yhoIE4yEwwxqQGsGQPz5i70bJem6SClkmSPYCRbDRyQEb3671T\"}', 1, '2022-02-13 07:40:49', '2022-02-13 07:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Deposit)',
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `currency_id`, `payment_method_id`, `bank_id`, `file_id`, `uuid`, `charge_percentage`, `charge_fixed`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(11, 17, 1, 1, NULL, NULL, '5989750BA15EF', 0.00000000, 0.00000000, 50.00000000, 'Success', '2022-02-15 03:55:52', '2022-02-15 03:55:52'),
(14, 24, 1, 1, NULL, NULL, '0D4CE8A09C184', 0.00000000, 0.00000000, 10.00000000, 'Blocked', '2022-02-16 04:46:29', '2022-02-17 09:29:31'),
(15, 9, 1, 1, NULL, NULL, '8EB845C99957E', 0.00000000, 0.00000000, 1020.00000000, 'Success', '2022-02-17 09:42:04', '2022-02-17 09:42:04'),
(19, 33, 1, 1, NULL, NULL, '09A6353901816', 0.00000000, 0.00000000, 1000.00000000, 'Success', '2022-02-20 07:23:43', '2022-02-20 07:23:43'),
(21, 35, 1, 1, NULL, NULL, '4BDF3BF12C29F', 0.00000000, 0.00000000, 50.00000000, 'Success', '2022-02-20 10:04:25', '2022-02-20 10:19:19'),
(22, 9, 1, 1, NULL, NULL, '9D425244984CC', 0.00000000, 0.00000000, 37.00000000, 'Success', '2022-02-21 16:24:57', '2022-02-21 16:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `device_logs`
--

CREATE TABLE `device_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `browser_fingerprint` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_agent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` int(10) UNSIGNED NOT NULL,
  `claimant_id` int(10) UNSIGNED DEFAULT NULL,
  `defendant_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` int(10) UNSIGNED DEFAULT NULL,
  `reason_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Open','Close','Solve') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dispute_discussions`
--

CREATE TABLE `dispute_discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `dispute_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `document_verifications`
--

CREATE TABLE `document_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `verification_type` enum('address','identity') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` enum('driving_license','passport','national_id') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_configs`
--

CREATE TABLE `email_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_protocol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_encryption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_host` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_port` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `smtp_password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_configs`
--

INSERT INTO `email_configs` (`id`, `email_protocol`, `email_encryption`, `smtp_host`, `smtp_port`, `smtp_email`, `smtp_username`, `smtp_password`, `from_address`, `from_name`, `status`) VALUES
(1, 'sendmail', 'TLS', 'mail.x-paycash.site', '465', 'losalepatrick@gmail.com', 'support.x-paycash.site', 'Support@2022', 'losalepatrick@gmail.com', 'X PAY CASH', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL,
  `temp_id` tinyint(4) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('email','sms') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `language_id`, `temp_id`, `subject`, `body`, `lang`, `type`) VALUES
(1, 1, 1, 'Notice of Transfer!', 'Hi {sender_id},\r\n                                <br><br>The funds amount equal to {amount} was transferred from your account.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\r\n\r\n                                <br><br>Transfer # {uuid} was created at {created_at}.\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Receiver:</u></b> {receiver_id}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(2, 2, 1, '', '', 'ar', 'email'),
(3, 3, 1, '', '', 'fr', 'email'),
(4, 4, 1, '', '', 'pt', 'email'),
(5, 5, 1, '', '', 'ru', 'email'),
(6, 6, 1, '', '', 'es', 'email'),
(7, 7, 1, '', '', 'tr', 'email'),
(8, 8, 1, '', '', 'ch', 'email'),
(9, 1, 3, 'Notice of Bank Transfer!', 'Hi {sender_id},\r\n                                <br><br>The funds amount equal to {amount} was transferred to the assigned bank.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of your Bank Transfer:</i></u></b>\r\n\r\n                                <br><br>Bank Transfer # {uuid} was created at {created_at}.\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br><b><u>Bank Name:</u></b> {bank_name}\r\n\r\n                                <br><br><b><u>Branch Name:</u></b> {branch_name}\r\n\r\n                                <br><br><b><u>Account Name:</u></b> {account_name}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(10, 2, 3, '', '', 'ar', 'email'),
(11, 3, 3, '', '', 'fr', 'email'),
(12, 4, 3, '', '', 'pt', 'email'),
(13, 5, 3, '', '', 'ru', 'email'),
(14, 6, 3, '', '', 'es', 'email'),
(15, 7, 3, '', '', 'tr', 'email'),
(16, 8, 3, '', '', 'ch', 'email'),
(17, 1, 2, 'Notice to Receive!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">                    Bonjour {receiver_id},\r\n                                  </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Le montant des fonds égal à {amount} a été reçu sur votre compte.\r\n\r\n                                </font></font><br><br>\r\n                                <b><u><i><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Voici un bref aperçu de votre paiement reçu&nbsp;: Le</font></font></i></u></b>\r\n\r\n                                <br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">  \r\n                                transfert # {uuid} a été reçu à {created_at}.\r\n\r\n                                </font></font><br><br>\r\n                                <b><u><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Montant&nbsp;:</font></font></u></b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> {amount}\r\n\r\n                                  </font></font><br><br>\r\n                                <b><u><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Expéditeur&nbsp;:</font></font></u></b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> {sender_id}\r\n\r\n                                  </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Si vous avez des questions, n\'hésitez pas à répondre à cet e-mail.\r\n\r\n                                </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Cordialement,\r\n                                  </font></font><br><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">{soft_name}</font></font></b>', 'en', 'email'),
(18, 2, 2, '', '', 'ar', 'email'),
(19, 3, 2, '', '', 'fr', 'email'),
(20, 4, 2, '', '', 'pt', 'email'),
(21, 5, 2, '', '', 'ru', 'email'),
(22, 6, 2, '', '', 'es', 'email'),
(23, 7, 2, '', '', 'tr', 'email'),
(24, 8, 2, '', '', 'tr', 'email'),
(25, 1, 21, 'Notice of {Identity/Address} Verification!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonjour {user},\r\n                                   </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Votre vérification {Identity/Address} est </font></font><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">{approved/pending/rejected}</font></font></b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> .\r\n                                </font></font>', 'en', 'email'),
(26, 2, 21, '', '', 'ar', 'email'),
(27, 3, 21, '', '', 'fr', 'email'),
(28, 4, 21, '', '', 'pt', 'email'),
(29, 5, 21, '', '', 'ru', 'email'),
(30, 6, 21, '', '', 'es', 'email'),
(31, 7, 21, '', '', 'tr', 'email'),
(32, 8, 21, '', '', 'tr', 'email'),
(33, 1, 4, 'Notice of Request Creation!', 'Hi {acceptor},\r\n\r\n                                <br><br>Amount {amount} has been requested by {creator}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\r\n\r\n                                <br><br>\r\n                                <b><u>Request #:</u></b> {uuid}\r\n\r\n                                <br><br>\r\n                                <b><u>Created At:</u></b> {created_at}\r\n\r\n                                <br><br>\r\n                                <b><u>Requested Amount:</u></b> {amount}\r\n\r\n                                <br><br>\r\n                                <b><u>Note: </u></b> {note}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(34, 2, 4, '', '', 'ar', 'email'),
(35, 3, 4, '', '', 'fr', 'email'),
(36, 4, 4, '', '', 'pt', 'email'),
(37, 5, 4, '', '', 'ru', 'email'),
(38, 6, 4, '', '', 'es', 'email'),
(39, 7, 4, '', '', 'tr', 'email'),
(40, 8, 4, '', '', 'ch', 'email'),
(41, 1, 5, 'Notice of Request Acceptance!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonjour {creator},\r\n                                     </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Votre demande de #{uuid} sur {amount} a été acceptée par {acceptor}.\r\n                                </font></font>', 'en', 'email'),
(42, 2, 5, '', '', 'ar', 'email'),
(43, 3, 5, '', '', 'fr', 'email'),
(44, 4, 5, '', '', 'pt', 'email'),
(45, 5, 5, '', '', 'ru', 'email'),
(46, 6, 5, '', '', 'es', 'email'),
(47, 7, 5, '', '', 'tr', 'email'),
(48, 8, 5, '', '', 'ch', 'email'),
(49, 1, 6, 'Status of Transaction #{uuid} has been updated!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonjour {sender_id/receiver_id}, Le\r\n                                     </font></font><br><br><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n                                    transfert #{uuid} a été mis à jour vers {status} par l\'administrateur système&nbsp;! </font></font></b>\r\n                                    <br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n                                    {montant} est {ajouté/soustrait} {de/vers} votre compte.\r\n                                </font></font>', 'en', 'email'),
(50, 2, 6, '', '', 'ar', 'email'),
(51, 3, 6, '', '', 'fr', 'email'),
(52, 4, 6, '', '', 'pt', 'email'),
(53, 5, 6, '', '', 'ru', 'email'),
(54, 6, 6, '', '', 'es', 'email'),
(55, 7, 6, '', '', 'tr', 'email'),
(56, 8, 6, '', '', 'ch', 'email'),
(57, 1, 7, 'Status of Transaction #{uuid} has been updated!', 'Hi {sender_id},\r\n                                <br><br><b>\r\n                                Transaction of Bank Transfer #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(58, 2, 7, '', '', 'ar', 'email'),
(59, 3, 7, '', '', 'fr', 'email'),
(60, 4, 7, '', '', 'pt', 'email'),
(61, 5, 7, '', '', 'ru', 'email'),
(62, 6, 7, '', '', 'es', 'email'),
(63, 7, 7, '', '', 'tr', 'email'),
(64, 8, 7, '', '', 'ch', 'email'),
(65, 1, 8, 'Status of Transaction #{uuid} has been updated!', 'Hi {user_id/receiver_id},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>', 'en', 'email'),
(66, 2, 8, '', '', 'ar', 'email'),
(67, 3, 8, '', '', 'fr', 'email'),
(68, 4, 8, '', '', 'pt', 'email'),
(69, 5, 8, '', '', 'ru', 'email'),
(70, 6, 8, '', '', 'es', 'email'),
(71, 7, 8, '', '', 'tr', 'email'),
(72, 8, 8, '', '', 'ch', 'email'),
(73, 1, 10, 'Status of Transaction #{uuid} has been updated!', 'Hi {user_id},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Payout #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>', 'en', 'email'),
(74, 2, 10, '', '', 'ar', 'email'),
(75, 3, 10, '', '', 'fr', 'email'),
(76, 4, 10, '', '', 'pt', 'email'),
(77, 5, 10, '', '', 'ru', 'email'),
(78, 6, 10, '', '', 'es', 'email'),
(79, 7, 10, '', '', 'tr', 'email'),
(80, 8, 10, '', '', 'ch', 'email'),
(81, 1, 11, 'Notice of Ticket!', 'Hi {assignee/user},\r\n\r\n                                <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\r\n\r\n                                <br><br>Ticket #{ticket_code} was created at {created_at}.\r\n\r\n                                <br><br><b><u>{Assignee:}</u></b> {assignee}\r\n\r\n                                <br><br><b><u>{User:}</u></b> {user}\r\n\r\n                                <br><br><b><u>Ticket Subject:</u></b> {subject}\r\n\r\n                                <br><br><b><u>Ticket Message:</u></b> {message}\r\n\r\n                                <br><br><b><u>Ticket Status:</u></b> {status}\r\n\r\n                                <br><br><b><u>Ticket Priority Level:</u></b> {priority}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(82, 2, 11, '', '', 'ar', 'email'),
(83, 3, 11, '', '', 'fr', 'email'),
(84, 4, 11, '', '', 'pt', 'email'),
(85, 5, 11, '', '', 'ru', 'email'),
(86, 6, 11, '', '', 'es', 'email'),
(87, 7, 11, '', '', 'tr', 'email'),
(88, 8, 11, '', '', 'ch', 'email'),
(89, 1, 12, 'Notice of Ticket Reply!', 'Hi {user},\r\n\r\n                                <br><br>A ticket reply has been sent to you by system administrator.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\r\n\r\n                                <br><br>This reply was initiated against ticket code #{ticket_code}.\r\n\r\n                                <br><br><b><u>Assignee:</u></b> {assignee}\r\n\r\n                                <br><br><b><u>Reply Message:</u></b> {message}\r\n\r\n                                <br><br><b><u>Reply Status:</u></b> {status}\r\n\r\n                                <br><br><b><u>Reply Priority Level:</u></b> {priority}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(90, 2, 12, '', '', 'ar', 'email'),
(91, 3, 12, '', '', 'fr', 'email'),
(92, 4, 12, '', '', 'pt', 'email'),
(93, 5, 12, '', '', 'ru', 'email'),
(94, 6, 12, '', '', 'es', 'email'),
(95, 7, 12, '', '', 'tr', 'email'),
(96, 8, 12, '', '', 'ch', 'email'),
(97, 1, 13, 'Notice of Dispute Reply!', 'Hi {user},\r\n\r\n                                <br><br>A dispute reply has been sent to you by system administrator.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\r\n\r\n                                <br><br>This reply was initiated at {created_at}.\r\n\r\n                                <br><br><b><u>{Claimant/Defendant:}</u></b> {claimant/defendant}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {transaction_id}\r\n\r\n                                <br><br><b><u>Subject:</u></b> {subject}\r\n\r\n                                <br><br><b><u>Replied Message:</u></b> {message}\r\n\r\n                                <br><br><b><u>Status:</u></b> {status}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(98, 2, 13, '', '', 'ar', 'email'),
(99, 3, 13, '', '', 'fr', 'email'),
(100, 4, 13, '', '', 'pt', 'email'),
(101, 5, 13, '', '', 'ru', 'email'),
(102, 6, 13, '', '', 'es', 'email'),
(103, 7, 13, '', '', 'tr', 'email'),
(104, 8, 13, '', '', 'ch', 'email'),
(105, 1, 14, 'Status of Transaction #{uuid} has been updated!', 'Hi {paidByUser/merchantUser},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>', 'en', 'email'),
(106, 2, 14, '', '', 'ar', 'email'),
(107, 3, 14, '', '', 'fr', 'email'),
(108, 4, 14, '', '', 'pt', 'email'),
(109, 5, 14, '', '', 'ru', 'email'),
(110, 6, 14, '', '', 'es', 'email'),
(111, 7, 14, '', '', 'tr', 'email'),
(112, 8, 14, '', '', 'ch', 'email'),
(113, 1, 16, 'Status of Transaction #{uuid} has been updated!', 'Hi {user_id/receiver_id},\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>', 'en', 'email'),
(114, 2, 16, '', '', 'ar', 'email'),
(115, 3, 16, '', '', 'fr', 'email'),
(116, 4, 16, '', '', 'pt', 'email'),
(117, 5, 16, '', '', 'ru', 'email'),
(118, 6, 16, '', '', 'es', 'email'),
(119, 7, 16, '', '', 'tr', 'email'),
(120, 8, 16, '', '', 'ch', 'email'),
(121, 1, 17, 'Notice for User Verification!', 'Hi {user},\r\n                                        <br><br>\r\n                                        Your registered email id: {email}. Please click on the below link to verify your account,<br><br>\r\n                                        {verification_url}\r\n\r\n                                        <br><br>If you have any questions, please feel free to reply to this email.\r\n                                        <br><br>Regards,\r\n                                        <br><b>{soft_name}</b>', 'en', 'email'),
(122, 2, 17, '', '', 'ar', 'email'),
(123, 3, 17, '', '', 'fr', 'email'),
(124, 4, 17, '', '', 'pt', 'email'),
(125, 5, 17, '', '', 'ru', 'email'),
(126, 6, 17, '', '', 'es', 'email'),
(127, 7, 17, '', '', 'tr', 'email'),
(128, 8, 17, '', '', 'ch', 'email'),
(129, 1, 19, 'Notice for 2-Factor Authentication!', 'Hi {user},\r\n                                        <br><br>\r\n                                        Your 2-Factor Authentication code is: {code}\r\n                                        <br><br>Regards,\r\n                                        <br><b>{soft_name}</b>', 'en', 'email'),
(130, 2, 19, '', '', 'ar', 'email'),
(131, 3, 19, '', '', 'fr', 'email'),
(132, 4, 19, '', '', 'pt', 'email'),
(133, 5, 19, '', '', 'ru', 'email'),
(134, 6, 19, '', '', 'es', 'email'),
(135, 7, 19, '', '', 'tr', 'email'),
(136, 8, 19, '', '', 'ch', 'email'),
(137, 1, 18, 'Notice for Password Reset!', 'Hi {user},\r\n                                        <br><br>\r\n                                        Your registered email id: {email}. Please click on the below link to reset your password,<br><br>\r\n                                        {password_reset_url}\r\n                                        <br><br>If you have any questions, please feel free to reply to this email.\r\n                                        <br><br>Regards,\r\n                                        <br><b>{soft_name}</b>', 'en', 'email'),
(138, 2, 18, '', '', 'ar', 'email'),
(139, 3, 18, '', '', 'fr', 'email'),
(140, 4, 18, '', '', 'pt', 'email'),
(141, 5, 18, '', '', 'ru', 'email'),
(142, 6, 18, '', '', 'es', 'email'),
(143, 7, 18, '', '', 'tr', 'email'),
(144, 8, 18, '', '', 'ch', 'email'),
(145, 1, 21, 'Notice of {Identity/Address} Verification!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonjour {user},\r\n                                   </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Votre vérification {Identity/Address} est </font></font><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">{approved/pending/rejected}</font></font></b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> .\r\n                                </font></font>', 'en', 'sms'),
(146, 2, 21, '', '', 'ar', 'sms'),
(147, 3, 21, '', '', 'fr', 'sms'),
(148, 4, 21, '', '', 'pt', 'sms'),
(149, 5, 21, '', '', 'ru', 'sms'),
(150, 6, 21, '', '', 'es', 'sms'),
(151, 7, 21, '', '', 'tr', 'sms'),
(152, 8, 21, '', '', 'tr', 'sms'),
(153, 1, 1, 'Notice of Transfer!', 'Hi {sender_id},\r\n                    <br><br>You have transferred {amount} from your account.\r\n                    ', 'en', 'sms'),
(154, 2, 1, '', '', 'ar', 'sms'),
(155, 3, 1, '', '', 'fr', 'sms'),
(156, 4, 1, '', '', 'pt', 'sms'),
(157, 5, 1, '', '', 'ru', 'sms'),
(158, 6, 1, '', '', 'es', 'sms'),
(159, 7, 1, '', '', 'tr', 'sms'),
(160, 8, 1, '', '', 'ch', 'sms'),
(161, 1, 3, 'Notice of Bank Transfer!', 'Hi {sender_id},\r\n                    <br><br>You have transferred {amount} to the assigned bank.\r\n                    ', 'en', 'sms'),
(162, 2, 3, '', '', 'ar', 'sms'),
(163, 3, 3, '', '', 'fr', 'sms'),
(164, 4, 3, '', '', 'pt', 'sms'),
(165, 5, 3, '', '', 'ru', 'sms'),
(166, 6, 3, '', '', 'es', 'sms'),
(167, 7, 3, '', '', 'tr', 'sms'),
(168, 8, 3, '', '', 'ch', 'sms'),
(169, 1, 2, 'Notice to Receive!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">                    Bonjour {receiver_id},\r\n                                  </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Le montant des fonds égal à {amount} a été reçu sur votre compte.\r\n\r\n                                </font></font><br><br>\r\n                                <b><u><i><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Voici un bref aperçu de votre paiement reçu&nbsp;: Le</font></font></i></u></b>\r\n\r\n                                <br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">  \r\n                                transfert # {uuid} a été reçu à {created_at}.\r\n\r\n                                </font></font><br><br>\r\n                                <b><u><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Montant&nbsp;:</font></font></u></b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> {amount}\r\n\r\n                                  </font></font><br><br>\r\n                                <b><u><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Expéditeur&nbsp;:</font></font></u></b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> {sender_id}\r\n\r\n                                  </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Si vous avez des questions, n\'hésitez pas à répondre à cet e-mail.\r\n\r\n                                </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Cordialement,\r\n                                  </font></font><br><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">{soft_name}</font></font></b>', 'en', 'sms'),
(170, 2, 2, '', '', 'ar', 'sms'),
(171, 3, 2, '', '', 'fr', 'sms'),
(172, 4, 2, '', '', 'pt', 'sms'),
(173, 5, 2, '', '', 'ru', 'sms'),
(174, 6, 2, '', '', 'es', 'sms'),
(175, 7, 2, '', '', 'tr', 'sms'),
(176, 8, 2, '', '', 'ch', 'sms'),
(177, 1, 4, 'Notice of Request Creation!', 'Hi {acceptor},\r\n                                <br><br>Amount {amount} has been requested by {creator}.\r\n                                ', 'en', 'sms'),
(178, 2, 4, '', '', 'ar', 'sms'),
(179, 3, 4, '', '', 'fr', 'sms'),
(180, 4, 4, '', '', 'pt', 'sms'),
(181, 5, 4, '', '', 'ru', 'sms'),
(182, 6, 4, '', '', 'es', 'sms'),
(183, 7, 4, '', '', 'tr', 'sms'),
(184, 8, 4, '', '', 'ch', 'sms'),
(185, 1, 5, 'Notice of Request Acceptance!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonjour {creator},\r\n                                     </font></font><br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Votre demande de #{uuid} sur {amount} a été acceptée par {acceptor}.\r\n                                </font></font>', 'en', 'sms'),
(186, 2, 5, '', '', 'ar', 'sms'),
(187, 3, 5, '', '', 'fr', 'sms'),
(188, 4, 5, '', '', 'pt', 'sms'),
(189, 5, 5, '', '', 'ru', 'sms'),
(190, 6, 5, '', '', 'es', 'sms'),
(191, 7, 5, '', '', 'tr', 'sms'),
(192, 8, 5, '', '', 'ch', 'sms'),
(193, 1, 6, 'Status of Transaction #{uuid} has been updated!', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Bonjour {sender_id/receiver_id}, Le\r\n                                     </font></font><br><br><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n                                    transfert #{uuid} a été mis à jour vers {status} par l\'administrateur système&nbsp;! </font></font></b>\r\n                                    <br><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n                                    {montant} est {ajouté/soustrait} {de/vers} votre compte.\r\n                                </font></font>', 'en', 'sms'),
(194, 2, 6, '', '', 'ar', 'sms'),
(195, 3, 6, '', '', 'fr', 'sms'),
(196, 4, 6, '', '', 'pt', 'sms'),
(197, 5, 6, '', '', 'ru', 'sms'),
(198, 6, 6, '', '', 'es', 'sms'),
(199, 7, 6, '', '', 'tr', 'sms'),
(200, 8, 6, '', '', 'ch', 'sms'),
(201, 1, 7, 'Status of Transaction #{uuid} has been updated!', 'Hi {sender_id},\r\n                                    <br><br><b>\r\n                                    Bank Transfer #{uuid} has been updated to {status} by system administrator!</b>\r\n                                    <br><br>\r\n                                    {amount} is {added/subtracted} {from/to} your account.\r\n                                ', 'en', 'sms'),
(202, 2, 7, '', '', 'ar', 'sms'),
(203, 3, 7, '', '', 'fr', 'sms'),
(204, 4, 7, '', '', 'pt', 'sms'),
(205, 5, 7, '', '', 'ru', 'sms'),
(206, 6, 7, '', '', 'es', 'sms'),
(207, 7, 7, '', '', 'tr', 'sms'),
(208, 8, 7, '', '', 'ch', 'sms'),
(209, 1, 8, 'Status of Transaction #{uuid} has been updated!', 'Hi {user_id/receiver_id},\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n                                ', 'en', 'sms'),
(210, 2, 8, '', '', 'ar', 'sms'),
(211, 3, 8, '', '', 'fr', 'sms'),
(212, 4, 8, '', '', 'pt', 'sms'),
(213, 5, 8, '', '', 'ru', 'sms'),
(214, 6, 8, '', '', 'es', 'sms'),
(215, 7, 8, '', '', 'tr', 'sms'),
(216, 8, 8, '', '', 'ch', 'sms'),
(217, 1, 10, 'Status of Transaction #{uuid} has been updated!', 'Hi {user_id},\r\n                                <br><br><b>\r\n                                Transaction of Payout #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n                                ', 'en', 'sms'),
(218, 2, 10, '', '', 'ar', 'sms'),
(219, 3, 10, '', '', 'fr', 'sms'),
(220, 4, 10, '', '', 'pt', 'sms'),
(221, 5, 10, '', '', 'ru', 'sms'),
(222, 6, 10, '', '', 'es', 'sms'),
(223, 7, 10, '', '', 'tr', 'sms'),
(224, 8, 10, '', '', 'ch', 'sms'),
(225, 1, 14, 'Status of Transaction #{uuid} has been updated!', 'Hi {paidByUser/merchantUser},\r\n                                <br><br><b>\r\n                                Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n                                ', 'en', 'sms'),
(226, 2, 14, '', '', 'ar', 'sms'),
(227, 3, 14, '', '', 'fr', 'sms'),
(228, 4, 14, '', '', 'pt', 'sms'),
(229, 5, 14, '', '', 'ru', 'sms'),
(230, 6, 14, '', '', 'es', 'sms'),
(231, 7, 14, '', '', 'tr', 'sms'),
(232, 8, 14, '', '', 'ch', 'sms'),
(233, 1, 16, 'Status of Transaction #{uuid} has been updated!', 'Hi {user_id/receiver_id},\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                ', 'en', 'sms'),
(234, 2, 16, '', '', 'ar', 'sms'),
(235, 3, 16, '', '', 'fr', 'sms'),
(236, 4, 16, '', '', 'pt', 'sms'),
(237, 5, 16, '', '', 'ru', 'sms'),
(238, 6, 16, '', '', 'es', 'sms'),
(239, 7, 16, '', '', 'tr', 'sms'),
(240, 8, 16, '', '', 'ch', 'sms'),
(241, 1, 11, 'Notice of Ticket!', 'Hi {assignee/user},\r\n                                <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\r\n                                ', 'en', 'sms'),
(242, 2, 11, '', '', 'ar', 'sms'),
(243, 3, 11, '', '', 'fr', 'sms'),
(244, 4, 11, '', '', 'pt', 'sms'),
(245, 5, 11, '', '', 'ru', 'sms'),
(246, 6, 11, '', '', 'es', 'sms'),
(247, 7, 11, '', '', 'tr', 'sms'),
(248, 8, 11, '', '', 'ch', 'sms'),
(249, 1, 12, 'Notice of Ticket Reply!', 'Hi {user},\r\n                                <br><br>The system administrator has replied to your assigned ticket # {ticket_code).\r\n                                ', 'en', 'sms'),
(250, 2, 12, '', '', 'ar', 'sms'),
(251, 3, 12, '', '', 'fr', 'sms'),
(252, 4, 12, '', '', 'pt', 'sms'),
(253, 5, 12, '', '', 'ru', 'sms'),
(254, 6, 12, '', '', 'es', 'sms'),
(255, 7, 12, '', '', 'tr', 'sms'),
(256, 8, 12, '', '', 'ch', 'sms'),
(257, 1, 13, 'Notice of Dispute Reply!', 'Hi {user},\r\n                                <br><br>The system administrator has replied to your dispute for transaction # {transaction_id).\r\n                                ', 'en', 'sms'),
(258, 2, 13, '', '', 'ar', 'sms'),
(259, 3, 13, '', '', 'fr', 'sms'),
(260, 4, 13, '', '', 'pt', 'sms'),
(261, 5, 13, '', '', 'ru', 'sms'),
(262, 6, 13, '', '', 'es', 'sms'),
(263, 7, 13, '', '', 'tr', 'sms'),
(264, 8, 13, '', '', 'ch', 'sms'),
(265, 1, 23, 'Notice of Deposit Notification!', 'Hi,\r\n                                <br><br>Amount {amount} was deposited by {user}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Deposit:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(266, 2, 23, '', '', 'ar', 'email'),
(267, 3, 23, '', '', 'fr', 'email'),
(268, 4, 23, '', '', 'pt', 'email'),
(269, 5, 23, '', '', 'ru', 'email'),
(270, 6, 23, '', '', 'es', 'email'),
(271, 7, 23, '', '', 'tr', 'email'),
(272, 8, 23, '', '', 'ch', 'email'),
(273, 1, 24, 'Notice of Payout Notification!', 'Hi,\r\n                                <br><br>Amount {amount} was payout by {user}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Payout:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(274, 2, 24, '', '', 'ar', 'email'),
(275, 3, 24, '', '', 'fr', 'email'),
(276, 4, 24, '', '', 'pt', 'email'),
(277, 5, 24, '', '', 'ru', 'email'),
(278, 6, 24, '', '', 'es', 'email'),
(279, 7, 24, '', '', 'tr', 'email'),
(280, 8, 24, '', '', 'ch', 'email'),
(281, 1, 25, 'Notice of Exchange Notification!', 'Hi,\r\n                                <br><br>Amount {amount} was exchanged by {user}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Exchange:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>From wallet:</u></b> {from_wallet}\r\n\r\n                                <br><br><b><u>To wallet:</u></b> {to_wallet}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {from_wallet}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(282, 2, 25, '', '', 'ar', 'email'),
(283, 3, 25, '', '', 'fr', 'email'),
(284, 4, 25, '', '', 'pt', 'email'),
(285, 5, 25, '', '', 'ru', 'email'),
(286, 6, 25, '', '', 'es', 'email'),
(287, 7, 25, '', '', 'tr', 'email'),
(288, 8, 25, '', '', 'ch', 'email'),
(289, 1, 26, 'Notice of Transfer Notification!', 'Hi,\r\n                                <br><br>Amount {amount} was sent by {sender} to {receiver}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Transfer:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Sent By:</u></b> {sender}\r\n\r\n                                <br><br><b><u>Received By:</u></b> {receiver}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {sender}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(290, 2, 26, '', '', 'ar', 'email'),
(291, 3, 26, '', '', 'fr', 'email'),
(292, 4, 26, '', '', 'pt', 'email'),
(293, 5, 26, '', '', 'ru', 'email'),
(294, 6, 26, '', '', 'es', 'email'),
(295, 7, 26, '', '', 'tr', 'email'),
(296, 8, 26, '', '', 'ch', 'email'),
(297, 1, 27, 'Notice of Request Acceptance Notification!', 'Hi,\r\n                                <br><br>The request #{uuid} from {creator} was accepted by {acceptor}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Request Acceptance:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Requested By:</u></b> {creator}\r\n\r\n                                <br><br><b><u>Accepted By:</u></b> {acceptor}\r\n\r\n                                <br><br><b><u>Requested Amount:</u></b> {request_amount}\r\n\r\n                                <br><br><b><u>Given Amount:</u></b> {given_amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {acceptor}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(298, 2, 27, '', '', 'ar', 'email'),
(299, 3, 27, '', '', 'fr', 'email'),
(300, 4, 27, '', '', 'pt', 'email'),
(301, 5, 27, '', '', 'ru', 'email'),
(302, 6, 27, '', '', 'es', 'email'),
(303, 7, 27, '', '', 'tr', 'email'),
(304, 8, 27, '', '', 'ch', 'email'),
(305, 1, 28, 'Notice of Payment Notification!', 'Hi,\r\n                                <br><br>Amount {amount} was paid by {user} to {merchant}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Payment:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Paid By:</u></b> {user}\r\n\r\n                                <br><br><b><u>Paid To:</u></b> {merchant}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {merchant}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ', 'en', 'email'),
(306, 2, 28, '', '', 'ar', 'email'),
(307, 3, 28, '', '', 'fr', 'email'),
(308, 4, 28, '', '', 'pt', 'email'),
(309, 5, 28, '', '', 'ru', 'email'),
(310, 6, 28, '', '', 'es', 'email'),
(311, 7, 28, '', '', 'tr', 'email'),
(312, 8, 28, '', '', 'ch', 'email'),
(313, 1, 29, 'Notice of Status Change!', 'Hi {user},\r\n                                    <br><br>Your status has been changed to <b>{status}</b> by the System Administrator\r\n                                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                                    <br><br>Regards,\r\n                                    <br><b>{soft_name}</b>.', 'en', 'email'),
(314, 2, 29, '', '', 'ar', 'email'),
(315, 3, 29, '', '', 'fr', 'email'),
(316, 4, 29, '', '', 'pt', 'email'),
(317, 5, 29, '', '', 'ru', 'email'),
(318, 6, 29, '', '', 'es', 'email'),
(319, 7, 29, '', '', 'tr', 'email'),
(320, 8, 29, '', '', 'ch', 'email'),
(321, 1, 30, 'X-PAY CASH', '<b></b>Bonjour,<br><br>Le montant {montant} a été déposé par l\'administrateur système.<br><br><b><u><i>Voici un bref aperçu du dépôt :</i></u></b><br><br><b><u>Créé à :</u></b>&nbsp;{created_at}<br><br><b><u>ID de transaction :</u></b>&nbsp;{uuid}<br><br><b><u>Devise :</u></b>&nbsp;{code}<br><br><b><u>Montant :</u></b>&nbsp;{amount}<br><br><b><u>Frais :</u></b>&nbsp;{fee}<br><br>Si vous avez des questions, n\'hésitez pas à répondre à cet e -poster.<br><br>Cordialement,<br><b>{soft_name}</b><img src=\"http://\"><img src=\"http://X-paycash.site\">', 'en', 'email'),
(322, 2, 30, '', '', 'ar', 'email'),
(323, 3, 30, 'X-PAY CASH', '', 'fr', 'email'),
(324, 4, 30, '', '', 'pt', 'email'),
(325, 5, 30, '', '', 'ru', 'email'),
(326, 6, 30, '', '', 'es', 'email'),
(327, 7, 30, '', '', 'tr', 'email'),
(328, 8, 30, '', '', 'ch', 'email'),
(329, 1, 31, 'X-PAY CASH', 'Bonjour,<br><br>Le montant {montant} a été retiré par l\'administrateur système.<br><br><b><u><i>Voici un bref aperçu du dépôt :</i></u></b><br><br><b><u>Créé à :</u></b>&nbsp;{created_at}<br><br><b><u>ID de transaction :</u></b>&nbsp;{uuid}<br><br><b><u>Devise :</u></b>&nbsp;{code}<br><br><b><u>Montant :</u></b>&nbsp;{amount}<br><br><b><u>Frais :</u></b>&nbsp;{fee}<br><br>Si vous avez des questions, n\'hésitez pas à répondre à cet e-mail.<br><br>Cordialement,<br><b>{soft_name}</b>', 'en', 'email'),
(330, 2, 31, '', '', 'ar', 'email'),
(331, 3, 31, '', '', 'fr', 'email'),
(332, 4, 31, '', '', 'pt', 'email'),
(333, 5, 31, '', '', 'ru', 'email'),
(334, 6, 31, '', '', 'es', 'email'),
(335, 7, 31, '', '', 'tr', 'email'),
(336, 8, 31, '', '', 'ch', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `fees_limits`
--

CREATE TABLE `fees_limits` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_type_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `charge_percentage` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `min_limit` decimal(20,8) NOT NULL DEFAULT 1.00000000,
  `max_limit` decimal(20,8) DEFAULT NULL,
  `processing_time` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT 'time in days',
  `has_transaction` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees_limits`
--

INSERT INTO `fees_limits` (`id`, `currency_id`, `transaction_type_id`, `payment_method_id`, `charge_percentage`, `charge_fixed`, `min_limit`, `max_limit`, `processing_time`, `has_transaction`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(2, 1, 1, 2, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(3, 1, 1, 3, 2.00000000, 2.00000000, 1.00000000, 500.00000000, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(4, 1, 1, 4, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(5, 1, 1, 5, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(6, 1, 1, 6, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(7, 1, 1, 7, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(8, 1, 1, 8, 1.00000000, 1.00000000, 1.00000000, 5000.00000000, '0', 'Yes', NULL, '2022-02-16 11:05:08'),
(9, 1, 2, 1, 1.00000000, 1.00000000, 1.00000000, 5000.00000000, '0', 'Yes', NULL, '2022-02-18 03:38:53'),
(10, 1, 2, 3, 2.00000000, 3.00000000, 5.00000000, 5000.00000000, '0', 'Yes', NULL, '2022-02-18 03:38:53'),
(11, 1, 2, 6, 1.00000000, 1.00000000, 1.00000000, 500000.00000000, '0', 'Yes', NULL, '2022-02-18 03:38:53'),
(12, 1, 3, NULL, 1.00000000, 1.00000000, 1.00000000, 100000.00000000, '0', 'Yes', NULL, '2022-02-17 05:43:32'),
(13, 1, 5, NULL, 2.00000000, 1.00000000, 1.00000000, 100000.00000000, '0', 'Yes', NULL, '2022-02-18 03:41:00'),
(14, 1, 10, NULL, 1.00000000, 1.00000000, 1.00000000, 100000.00000000, '0', 'Yes', NULL, '2022-02-18 03:39:41'),
(15, 1, 1, 9, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(16, 1, 2, 2, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(17, 1, 2, 4, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(18, 1, 2, 5, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(19, 1, 2, 7, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(20, 1, 2, 8, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(21, 1, 2, 9, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-19 08:04:30', '2022-01-19 08:04:30'),
(22, 3, 5, NULL, 1.00000000, 2.00000000, 1.00000000, 500.00000000, '0', 'Yes', '2022-01-20 12:22:04', '2022-02-18 03:43:48'),
(23, 3, 10, NULL, 2.00000000, 1.00000000, 1.00000000, 100000.00000000, '0', 'Yes', '2022-01-20 12:22:19', '2022-02-18 03:43:26'),
(24, 3, 1, 1, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-01-20 12:22:50', '2022-02-19 18:38:16'),
(25, 3, 1, 2, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'Yes', '2022-01-20 12:22:50', '2022-02-19 18:38:16'),
(26, 3, 1, 3, 2.00000000, 1.00000000, 1.00000000, 500.00000000, '0', 'Yes', '2022-01-20 12:22:50', '2022-02-19 18:38:16'),
(27, 3, 1, 4, 1.00000000, 1.00000000, 1.00000000, 500000.00000000, '0', 'Yes', '2022-01-20 12:22:50', '2022-02-19 18:38:16'),
(28, 3, 1, 5, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-01-20 12:22:51', '2022-02-19 18:38:16'),
(29, 3, 1, 6, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-01-20 12:22:51', '2022-02-19 18:38:16'),
(30, 3, 1, 7, 2.00000000, 4.00000000, 1.00000000, 500000.00000000, '0', 'Yes', '2022-01-20 12:22:51', '2022-02-19 18:38:16'),
(31, 3, 1, 8, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-01-20 12:22:51', '2022-02-19 18:38:16'),
(32, 5, 5, NULL, 1.00000000, 1.00000000, 500.00000000, 500000.00000000, '0', 'Yes', '2022-01-20 12:26:05', '2022-02-18 03:44:15'),
(33, 2, 1, 1, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(34, 2, 1, 2, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(35, 2, 1, 3, 1.00000000, 1.00000000, 1.00000000, 5000.00000000, '0', 'Yes', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(36, 2, 1, 4, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(37, 2, 1, 5, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(38, 2, 1, 6, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(39, 2, 1, 7, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(40, 2, 1, 8, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-15 06:35:47', '2022-02-15 06:35:47'),
(41, 5, 1, 1, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(42, 5, 1, 2, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(43, 5, 1, 3, 1.00000000, 1.00000000, 500.00000000, 500000.00000000, '0', 'Yes', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(44, 5, 1, 4, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(45, 5, 1, 5, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(46, 5, 1, 6, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(47, 5, 1, 7, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(48, 5, 1, 8, 0.00000000, 0.00000000, 1.00000000, NULL, '0', 'No', '2022-02-16 11:06:25', '2022-02-18 03:44:43'),
(49, 3, 2, 1, 2.00000000, 5.00000000, 1.00000000, 500000.00000000, '0', 'Yes', '2022-02-17 05:44:03', '2022-02-19 18:35:14'),
(50, 3, 2, 3, 1.00000000, 2.00000000, 1.00000000, 5000.00000000, '0', 'Yes', '2022-02-17 05:44:03', '2022-02-19 18:35:14'),
(51, 3, 2, 6, 1.00000000, 1.00000000, 1.00000000, 5000.00000000, '0', 'Yes', '2022-02-17 05:44:03', '2022-02-19 18:35:14'),
(52, 3, 3, NULL, 2.00000000, 1.00000000, 1.00000000, 100000.00000000, '0', 'Yes', '2022-02-18 03:43:00', '2022-02-18 03:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_reply_id` int(10) UNSIGNED DEFAULT NULL,
  `filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `originalname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `admin_id`, `user_id`, `ticket_id`, `ticket_reply_id`, `filename`, `originalname`, `type`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, NULL, '1642699882.jpg', '1615350323575.jpg', 'jpg', '2022-01-20 12:01:22', '2022-01-20 12:01:22'),
(2, NULL, 1, NULL, NULL, '1642700022.jpg', 'IMG-20200225-WA0051.jpg', 'jpg', '2022-01-20 12:03:42', '2022-01-20 12:03:42'),
(3, 1, NULL, NULL, NULL, '1642884371.png', 'Screenshot 2022-01-21 18.03.37.png', 'png', '2022-01-22 15:16:13', '2022-01-22 15:16:13'),
(4, 1, NULL, NULL, NULL, '1642884371.png', 'Screenshot 2022-01-21 18.03.37.png', 'png', '2022-01-22 15:16:13', '2022-01-22 15:16:13'),
(5, NULL, 3, NULL, NULL, '1642895467.png', 'Screenshot 2022-01-21 18.03.37.png', 'png', '2022-01-22 18:21:07', '2022-01-22 18:21:07'),
(6, NULL, 15, NULL, NULL, '1644907567.jpg', 'Screenshot_2022-02-15-12-21-23-911_site.paycash.x.jpg', 'jpg', '2022-02-15 01:16:07', '2022-02-15 01:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_name`, `flag`, `default`, `deletable`, `status`) VALUES
(1, 'English', 'en', '1530358989.png', '0', 'No', 'Active'),
(2, 'عربى', 'ar', '1530359409.png', '0', 'No', 'Active'),
(3, 'Français', 'Fr', '1530359431.png', '1', 'No', 'Active'),
(4, 'Português', 'pt', '1530359450.png', '0', 'No', 'Active'),
(5, 'Русский', 'ru', '1530359474.png', '0', 'No', 'Active'),
(6, 'Español', 'es', '1530360151.png', '0', 'No', 'Active'),
(7, 'Türkçe', 'tr', '1530696845.png', '0', 'No', 'Active'),
(8, '中文 (繁體)', 'ch', '1531227913.png', '0', 'No', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_group_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID for each Merchant',
  `business_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('standard','express') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `status` enum('Moderation','Disapproved','Approved') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Moderation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_apps`
--

CREATE TABLE `merchant_apps` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_groups`
--

CREATE TABLE `merchant_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `is_default` enum('No','Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant_groups`
--

INSERT INTO `merchant_groups` (`id`, `name`, `description`, `fee`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Premium', 'This is the premium merchant group', 0.51234567, 'No', NULL, NULL),
(2, 'Gold', 'This is the gold merchant group', 1.99933344, 'No', NULL, NULL),
(3, 'Silver', 'This is the silver merchant group', 1.50000044, 'No', NULL, '2022-02-19 18:30:11'),
(4, 'Bronze', 'This is the bronze merchant group', 2.77711194, 'No', NULL, NULL),
(5, 'TAXI', 'transport taaxi', 5.00000000, 'Yes', '2022-02-19 18:30:11', '2022-02-19 18:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_payments`
--

CREATE TABLE `merchant_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `gateway_reference` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `total` decimal(20,8) DEFAULT 0.00000000,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `url`, `title`, `description`, `keywords`) VALUES
(1, 'help', 'Help', 'Help', ''),
(2, 'À propos de nous', 'À propos de nous', 'À propos de nous', NULL),
(3, 'contact-us', 'Contact Us', 'Contact Us', ''),
(4, 'header', 'Header', 'Header', ''),
(5, 'connexion', 'connexion', 'connexion', NULL),
(6, 'register', 'Register', 'Register', ''),
(7, '/', 'Accueil', 'Accueil', NULL),
(8, 'dashboard', 'Dashboard', 'Dashboard', ''),
(9, 'moneytransfer', 'Money Transfer', 'Money Transfer', ''),
(10, 'transactions', 'Transactions', 'Transactions', ''),
(11, 'exchanges', 'Money Exchange', 'Money Exchange', ''),
(12, 'exchange', 'Money Exchange', 'Money Exchange', ''),
(13, 'merchants', 'Merchant', 'Merchant', ''),
(14, 'merchant/add', 'Add Merchant', 'Add Merchant', ''),
(15, 'request_payments', 'Request Payments', 'Request Payments', ''),
(16, 'request_payment/add', 'Request Payment', 'Request Payment', ''),
(17, 'request_payment/edit/{id}', 'Request Payment', 'Request Payment', ''),
(18, 'request_payment/detail/{id}', 'Request Payment', 'Request Payment', ''),
(19, 'request_payment/completes', 'Request Payment', 'Request Payment', ''),
(20, 'exchange/view/{id}', 'Money Exchange', 'Money Exchange', ''),
(21, 'merchant/edit/{id}', 'Edit Merchant', 'Edit Merchant', ''),
(22, 'merchant/payments', 'Merchant payments', 'Merchant payments', ''),
(23, 'deposit', 'Deposit', 'Deposit', ''),
(24, 'deposit/method/{id}', 'Deposit Amount', 'Deposit Amount', ''),
(25, 'deposit/stripe_payment', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(26, 'payout', 'Payout', 'Payout', ''),
(27, 'withdrawal/method/{id}', 'Payout', 'Payout', ''),
(28, 'payouts', 'Payouts', 'Payouts', ''),
(29, 'transactions/{id}', 'Transactions', 'Transactions', ''),
(30, 'request_payment/accept/{id}', 'Request Payment', 'Request Payment', ''),
(31, 'request_payment/accept/{id}', 'Request Payment', 'Request Payment', ''),
(32, 'disputes', 'Disputes', 'Disputes', ''),
(33, 'merchant/detail/{id}', 'View Merchant', 'View Merchant', ''),
(34, 'dispute/discussion/{id}', 'Dispute Details', 'Dispute Details', ''),
(35, 'dispute/add/{id}', 'Dispute Add', 'Dispute Add', ''),
(36, 'send-money', 'Send Money', 'Send Money', ''),
(37, 'request-money', 'Request Money', 'Request Money', ''),
(38, 'news', 'News', 'News', ''),
(39, 'profile', 'User Profile', 'User Profile', ''),
(40, 'tickets', 'Tickets', 'Tickets', ''),
(41, 'ticket/add', 'Add Ticket', 'Add Ticket', ''),
(42, 'ticket/reply/{id}', 'Ticket Reply', 'Ticket Reply', ''),
(43, 'exchange_of_base_currency', 'Money Exchange', 'Money Exchange', ''),
(44, 'exchange/exchange-of-base-currency-confirm', 'Money Exchange', 'Money Exchange', ''),
(45, 'deposit/stripe_payment_store', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(46, 'payout/setting', 'Payout', 'Payout', ''),
(47, 'send-money-confirm', 'Money Transfer', 'Money Transfer', ''),
(48, 'exchange_to_base_currency', 'Money Exchange', 'Money Exchange', ''),
(49, 'exchange/exchange-to-base-currency-confirm', 'Money Exchange', 'Money Exchange', ''),
(50, 'portfolio', 'Portfolio', 'Portfolio', ''),
(51, 'request_payment/store', 'Request Payment', 'Request Payment', ''),
(52, 'forget-password', 'Forgot Password', 'Forgot Password', ''),
(53, 'password/resets/{token}', 'Reset Password', 'Reset Password', ''),
(54, 'request-money-confirm', 'Request Money', 'Request Money', ''),
(55, 'request_payment/accepted', 'Request Payment', 'Request Payment', ''),
(56, 'request_payment/accept-money-confirm', 'Request Payment', 'Request Payment', ''),
(57, 'deposit/stripe_payment_store', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(58, 'policies', 'Policies', 'Policies', ''),
(59, 'transfer', 'Money Transfer', 'Money Transfer', ''),
(60, 'withdrawal/confirm-transaction', 'Payout', 'Payout', ''),
(61, 'request', 'Request Payment', 'Request Payment', ''),
(62, 'deposit/payumoney_success', 'Deposit With PayUMoney', 'Deposit With PayUMoney', ''),
(63, 'deposit/payment_success', 'Deposit Success', 'Deposit With PayMoney Success', ''),
(64, 'developer', 'Developer', 'Developer Page', ''),
(65, 'phone-verification', 'Verfy Phone', 'Verfy Phone', ''),
(66, 'authenticate', '2-Factor Authentication', '2-Factor Authentication', ''),
(67, 'profile/2fa', '2-FA', '2-FA', ''),
(68, '2fa', '2-Factor Authentication', '2-Factor Authentication', ''),
(69, 'deposit/bank-payment', 'Deposit', 'Deposit', ''),
(70, 'bank-transfer', 'Bank Transfer', 'Bank Transfer', ''),
(71, 'bank-transfer/confirm', 'Bank Transfer', 'Bank Transfer', ''),
(72, 'bank-transfer/success', 'Bank Transfer', 'Bank Transfer', ''),
(73, 'google2fa', 'Google 2FA', 'Google 2FA', ''),
(74, 'profile/personal-id', 'Identity Verification', 'Identity Verification', ''),
(75, 'profile/personal-address', 'Address Verification', 'Address Verification', ''),
(76, 'exchange-of-money', 'Money Exchange', 'Money Exchange', ''),
(77, 'exchange-of-money-success', 'Money Exchange', 'Money Exchange', ''),
(78, 'deposit/bank-payment', 'Deposit', 'Deposit', ''),
(79, 'deposit/payeer/payment/success', 'Deposit With Payeer', 'Deposit With Payeer', ''),
(80, 'deposit/checkout/payment/success', 'Deposit with 2checkout', 'Deposit with 2checkout', ''),
(81, 'merchant/payment', 'Merchant Payment', 'Merchant Payment', ''),
(82, 'check-user-status', 'Suspended!', 'Suspended', ''),
(83, 'check-request-creator-suspended-status', 'Suspended', 'Suspended', ''),
(84, 'check-request-creator-inactive-status', 'Inactive', 'Inactive', ''),
(85, 'deposit/stripe-payment/success', 'Deposit With Stripe', 'Deposit With Stripe', ''),
(86, 'deposit/paypal-payment/success', 'Deposit With PayPal', 'Deposit With PayPal', ''),
(87, 'deposit/bank-payment/success', 'Deposit With Bank', 'Deposit With Bank', ''),
(88, 'crpto/send/{walletCurrencyCode}/{walletId}', 'Send Crypto', 'Send Crypto', ''),
(89, 'crpto/send/confirm', 'Send Crypto Confirm', 'Send Crypto Confirm', ''),
(90, 'crpto/send/success', 'Send Crypto Success', 'Send Crypto Success', ''),
(91, 'crpto/receive/{walletCurrencyCode}/{walletId}', 'Receive Crypto', 'Receive Crypto', ''),
(92, 'user/crypto/preference-disabled', 'Crypto Disabled', 'Crypto Disabled', ''),
(93, 'wallet-list', 'Wallet List', 'Wallet List', ''),
(94, 'deposit/store', 'Deposit Fund', 'Deposit', 'Deposit'),
(95, 'deposit/coinpayment-transaction-info', 'Coinpayment Summery', 'Coinpayment Summery', ''),
(96, 'deposit/paypal-payment/success/{amount}', 'Deposit With PayPal', 'Deposit With PayPal', ''),
(99, 'a-propos-de-nous', 'À propos de nous', 'À propos de nous', ''),
(100, 'contactez-nous', 'Contactez-nous', 'Contactez-nous', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_09_01_0000000002_create_email_configs_table', 1),
(7, '2019_09_01_000000001_entrust_setup_tables', 1),
(8, '2019_09_01_0000001_create_activity_logs_table', 1),
(9, '2019_09_01_0000002_create_backups_table', 1),
(10, '2019_09_01_0000003_create_countries_table', 1),
(11, '2019_09_01_0000004_create_metas_table', 1),
(12, '2019_09_01_0000005_create_settings_table', 1),
(13, '2019_09_01_0000006_create_admins_table', 1),
(14, '2019_09_01_0000007_add_picture_to_admins_table', 1),
(15, '2019_09_01_0000010_create_payment_methods_table', 1),
(16, '2019_09_01_0000011_create_merchant_groups_table', 1),
(17, '2019_09_01_0000013_create_preferences_table', 1),
(18, '2019_09_01_0000014_create_reasons_table', 1),
(19, '2019_09_01_0000015_create_time_zones_table', 1),
(20, '2019_09_01_0000016_create_transaction_types_table', 1),
(21, '2019_09_01_0000017_create_socials_table', 1),
(22, '2019_09_01_0000018_create_ticket_statuses_table', 1),
(23, '2019_09_01_0000019_create_currencies_table', 1),
(24, '2019_09_01_0000020_create_currency_payment_methods_table', 1),
(25, '2019_09_01_0000021__create_users_table', 1),
(26, '2019_09_01_0000021_add_picture_to_users_table', 1),
(27, '2019_09_01_0000022_create_user_details_table', 1),
(28, '2019_09_01_0000023_create_fees_limits_table', 1),
(29, '2019_09_01_0000024_create_tickets_table', 1),
(30, '2019_09_01_0000025_create_ticket_replies_table', 1),
(31, '2019_09_01_0000026_create_files_table', 1),
(32, '2019_09_01_0000027_create_merchants_table', 1),
(33, '2019_09_01_0000028_create_merchant_apps_table', 1),
(34, '2019_09_01_0000029__create_banks_table', 1),
(35, '2019_09_01_0000029_create_merchant_payments_table', 1),
(36, '2019_09_01_0000030_create_deposits_table', 1),
(37, '2019_09_01_0000031_create_payout_settings_table', 1),
(38, '2019_09_01_0000032_create_withdrawals_table', 1),
(39, '2019_09_01_0000033_create_withdrawal_details_table', 1),
(40, '2019_09_01_0000034_create_transfers_table', 1),
(41, '2019_09_01_0000035_create_wallets_table', 1),
(42, '2019_09_01_0000036_create_currency_exchanges_table', 1),
(43, '2019_09_01_0000037_create_request_payments_table', 1),
(44, '2019_09_01_0000038_create_transactions_table', 1),
(45, '2019_09_01_0000039_create_disputes_table', 1),
(46, '2019_09_01_0000040_create_dispute_discussions_table', 1),
(47, '2019_09_01_0000043_create_app_tokens_table', 1),
(48, '2019_09_01_0000044_create_app_transactions_infos_table', 1),
(49, '2019_09_01_0000045_create_verify_users_table', 1),
(50, '2019_09_01_0000046_create_device_logs_table', 1),
(51, '2019_09_01_0000047_create_qr_codes_table', 1),
(52, '2019_09_01_0000048_create_password_resets_table', 1),
(53, '2019_09_01_0000049_create_document_verifications_table', 1),
(54, '2019_09_01_000004_create_app_store_credentials_table', 1),
(55, '2019_09_01_000005_create_languages_table', 1),
(56, '2019_09_01_000007_create_email_templates_table', 1),
(57, '2019_09_01_000009_create_pages_table', 1),
(58, '2019_10_22_054304_create_notification_types_table', 1),
(59, '2019_10_22_054339_create_notification_settings_table', 1),
(60, '2020_01_01_134930_create_crypto_currencies_settings_table', 1),
(61, '2020_01_04_131517_create_cryptoapi_logs_table', 1),
(62, '2020_01_27_101740_create_sms_configs_table', 1),
(63, '2021_07_12_071706_create_addons_table', 1),
(64, '2021_08_15_075359_create_coinpayment_log_trxes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` int(10) UNSIGNED NOT NULL,
  `recipient_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipient` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `notification_type_id`, `recipient_type`, `recipient`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'email', 'client@x-paycash.site', 'Yes', NULL, '2022-01-21 18:35:32'),
(2, 2, 'email', 'client@x-paycash.site', 'Yes', NULL, '2022-01-21 18:35:32'),
(3, 3, 'email', 'client@x-paycash.site', 'Yes', NULL, '2022-01-21 18:35:32'),
(4, 4, 'email', 'client@x-paycash.site', 'Yes', NULL, '2022-01-21 18:35:32'),
(5, 5, 'email', 'client@x-paycash.site', 'Yes', NULL, '2022-01-21 18:35:32'),
(6, 6, 'email', 'client@x-paycash.site', 'Yes', NULL, '2022-01-21 18:35:32'),
(7, 1, 'sms', NULL, 'No', NULL, NULL),
(8, 2, 'sms', NULL, 'No', NULL, NULL),
(9, 3, 'sms', NULL, 'No', NULL, NULL),
(10, 4, 'sms', NULL, 'No', NULL, NULL),
(11, 5, 'sms', NULL, 'No', NULL, NULL),
(12, 6, 'sms', NULL, 'No', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`id`, `name`, `alias`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deposit', 'deposit', 'Active', NULL, NULL),
(2, 'Payout', 'payout', 'Active', NULL, NULL),
(3, 'Send', 'send', 'Active', NULL, NULL),
(4, 'Request', 'request', 'Active', NULL, NULL),
(5, 'Exchange', 'exchange', 'Active', NULL, NULL),
(6, 'Payment', 'payment', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0312186f7992526b1b4e52bc297f2ae35e86fe9eafd409c8dc72d9adcba312423df4ed27daa8060e', 28, 3, 'Adolph Maliani', '[]', 0, '2022-02-19 15:24:04', '2022-02-19 15:24:04', '2023-02-19 20:54:04'),
('05b29bd3ddf5ed7805505e1ac8db4e53cda43aba764c8a4a00ba500cebd8bc03054527c9f91b77b6', 20, 3, 'Josepha BISELELE', '[]', 0, '2022-02-17 06:24:01', '2022-02-17 06:24:01', '2023-02-17 11:54:01'),
('2cbf5eabde0eb9f62dcbb11caefd9e4f7dd72481cc7b1802433d86d3288454cd1a0850ded24b783f', 18, 3, 'Josepha Biselele', '[]', 0, '2022-02-15 04:28:30', '2022-02-15 04:28:30', '2023-02-15 09:58:30'),
('3924139867ba182895ae49f951880c265e58703af5159bee54cead569a1353b0e734fb85a79dd487', 17, 3, 'Freddy Mukendi', '[]', 0, '2022-02-17 03:33:21', '2022-02-17 03:33:21', '2023-02-17 09:03:21'),
('4c996182404a70515207525cecfab68894bbf96e40f21d7c2e9e14a2eaaab8d8e73870aa4f913111', 24, 3, 'Carlos Kalonga', '[]', 0, '2022-02-17 10:12:09', '2022-02-17 10:12:09', '2023-02-17 15:42:09'),
('4dc64ea25e2202ac235c0896c8ac5b50fc4cf63f5bcf0560367aba9e721ef25530d1a1210cda608e', 31, 3, 'Zelda Black', '[]', 0, '2022-02-20 00:59:21', '2022-02-20 00:59:21', '2023-02-20 06:29:21'),
('502e277aa58f23e7e9f95ff94d8a05bdd55e509ea0ec0cb81b10697af2cf0fd72d6e02645e07dfab', 19, 3, 'Sandra Lumu Bintu', '[]', 0, '2022-02-22 12:15:29', '2022-02-22 12:15:29', '2023-02-22 17:45:29'),
('77c7447d750e6140f374cbfaefefea73e3ba62ae99669a84d36164eacff47e520fe049963197c7ed', 29, 3, 'Vincent Techvill', '[]', 0, '2022-02-20 00:45:11', '2022-02-20 00:45:11', '2023-02-20 06:15:11'),
('9030c100c376c856d7bc363f05f88ec4763348a3a0fe188304c172a7cb2781b7b392b155b96c0d16', 27, 3, 'Abu Sufian Rubel', '[]', 0, '2022-02-17 01:03:22', '2022-02-17 01:03:22', '2023-02-17 06:33:22'),
('9ef679af6151f8bb2ae96be3f295fc26446f8c7c52a8e528fc03ee802671dd995b659b1683adbace', 10, 3, 'PATRICK LOSALE', '[]', 0, '2022-02-16 15:14:01', '2022-02-16 15:14:01', '2023-02-16 20:44:01'),
('a4ab712949e033893c9cedb78c8951039ebf399a2e8dd9d68d1c3bc5f3ab2e46ac66ecbde9df0615', 23, 3, 'Trésor Omangolo', '[]', 0, '2022-02-16 01:41:54', '2022-02-16 01:41:54', '2023-02-16 07:11:54'),
('ac879bed826cc4cf5693edab843d1f6c20989b3841e94fb12440736068fc74bd76c38a0591922870', 12, 3, 'Sufian Techvill', '[]', 0, '2022-02-15 06:22:16', '2022-02-15 06:22:16', '2023-02-15 11:52:16'),
('ba80dd9c95f9a8e95ca90068fb05ce1bc341ad53dcff8a895a7843d80d547e56f8798a8f513a6b28', 36, 3, 'Kuna Kinda', '[]', 0, '2022-02-21 06:05:24', '2022-02-21 06:05:24', '2023-02-21 11:35:24'),
('bba9d50a6754f1ba3da8b8161f7c87fb09a98197f31d0a1ae67548626d8e6bf97df35373b835e48a', 30, 3, 'Vincent Techvill', '[]', 0, '2022-02-20 00:42:05', '2022-02-20 00:42:05', '2023-02-20 06:12:05'),
('c2e746ef967a43d151d8367966842823d3900a934a0abb9b5252fc6b3ed3c03d853f6d28ec82fea2', 21, 3, 'Abu Sufian Rubel', '[]', 0, '2022-02-15 05:43:44', '2022-02-15 05:43:44', '2023-02-15 11:13:44'),
('c8abbc064ae37c3298048fceb3941212855c1240c706337fe6ced0eff56ccc797361ec3f091ff406', 15, 3, 'Loqa Ns\'', '[]', 0, '2022-02-16 01:54:37', '2022-02-16 01:54:37', '2023-02-16 07:24:37'),
('ccef2b8b7884a99a88cf611204b41ba9b1d89453c2c5f7b371c1e014800103caa53f85fbb2fabaa6', 13, 3, 'Patrick Lobe', '[]', 0, '2022-02-13 08:55:58', '2022-02-13 08:55:58', '2023-02-13 14:25:58'),
('cf296db93ef1433914c118cebba78a17159d8892a1b92cf7fc0980d1b668401da4565109792b2584', 22, 3, 'Kolongi Junelle', '[]', 0, '2022-02-15 12:45:40', '2022-02-15 12:45:40', '2023-02-15 18:15:40'),
('d9464bc2d3be226a30f119ebfebe46a8e05f3878d7b7dcdfd643940ac244f1aefc978f4c5538215e', 16, 3, 'Abu Sufian Rubel', '[]', 0, '2022-02-15 01:41:39', '2022-02-15 01:41:39', '2023-02-15 07:11:39'),
('e494a784df644259efc6832c2e26c1355f7bdf368d857ffe41185a015517a51f0340aa7349f787e7', 35, 3, 'Jeremie Baruti', '[]', 0, '2022-02-20 10:07:11', '2022-02-20 10:07:11', '2023-02-20 15:37:11'),
('eb56abdd52731026effa6290fa8494887a7ee07039633400931f949ca029f39157e1bfd975075a60', 9, 3, 'PATRICK Bambuli', '[]', 0, '2022-02-23 10:04:24', '2022-02-23 10:04:24', '2023-02-23 15:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'agkL4ISxlzHE5z2zS2vwqZqqoF7ker3HMXo7De3v', 'http://localhost', 1, 0, 0, NULL, NULL),
(2, NULL, 'Laravel Password Grant Client', 'TwF6YvwSCLuVejXhUQCAqMaPAqhHZ29sEhhFfsM9', 'http://localhost', 0, 1, 0, NULL, NULL),
(3, NULL, 'Laravel Personal Access Client', 'YWG63Yjp0bcf7iL45MgK75Yc5Tq18KS9rcv8ltBM', 'http://localhost', 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `url`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(3, 'À propos de nous', 'a-propos-de-nous', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; font-size: 18px; line-height: 1.5; font-family: Lato !important;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 255); font-size: 24px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><b style=\"\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Notre histoire&nbsp;</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></b></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"color: rgb(0, 0, 255); font-family: Lato; font-size: 18px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">cr&eacute;&eacute; en 2016 par un jeune&nbsp;  </font></font></font></font></b></font></font></span><span style=\"background-color: rgb(255, 255, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">entrepreneur et d&eacute;veloppeur. </font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous avons entrepris de fournir une solution de paiement fiable, intelligente et transparente aux personnes qui ont longtemps eu du mal &agrave; payer et &agrave; accepter les paiements en ligne.</font></font></font></font></font></font></font></font></b></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 36px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nos Valeurs</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous avons 5 valeurs fondamentales que chaque membre de l\'&eacute;quipe incarne. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">C\'est ce qui d&eacute;finit qui nous sommes en tant qu\'entreprise&nbsp;:</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous communiquons avec respect</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous sommes ax&eacute;s sur le client</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous b&acirc;tissons une confiance solide</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous cr&eacute;ons de la valeur et innovons</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous sommes fid&egrave;les les uns aux autres.</font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><br></font></font></font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font face=\"Lato\"><span style=\"font-size: 24px; background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);\"><b style=\"\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Notre Mission</font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">La mission de X-PAY CASH est de raccourcir les paiements &agrave; des capacit&eacute;s infinies.</font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font face=\"Lato\"><span style=\"font-size: 24px; color: rgb(255, 0, 0); background-color: rgb(255, 255, 255);\"><b style=\"\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Notre Vision</font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit; font-size: 18px;\"><b><font style=\"vertical-align: inherit;\" color=\"#0000ff\" face=\"Lato\"></font></b></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; line-height: 1.5;\"><font color=\"#0000ff\" face=\"Lato\"><span style=\"font-size: 18px;\"><b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Notre vision est de permettre aux entrepreneurs africains d\'effectuer et d\'accepter les paiements partout en Afrique et dans le monde.</font></font></b></span></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; font-size: 18px; line-height: 1.5; font-family: Lato !important;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><b style=\"\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">JEUNESSE CONGOLAISE</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></b></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><span style=\"color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> c\'est une soci&eacute;t&eacute; commerciale bas&eacute;e sur la num&eacute;risation de nouvelles technologies et avant tout une entreprise familiale &agrave; taille humaine, constitu&eacute;e d\'amis, de passionn&eacute;s, d\'experts et de techniciens &agrave; votre service.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; font-size: 18px; line-height: 1.5; font-family: Lato !important;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit; color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">JEUNESSE CONGOLAISE c\'est le plus petit des gros entreprise et le plus gros des plus petits, vous avez ainsi le service, la proximit&eacute; et la qualit&eacute; d\'un artisan tout en ayant le rapport qualit&eacute; prix d\'un industriel.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; font-size: 18px; line-height: 1.5; font-family: Lato !important;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit; color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous n\'avons pas la volont&eacute; de grossir pour grossir mais de d&eacute;livrer le meilleur service possible &agrave; nos clients, en nous &eacute;quipant des meilleurs outils disponibles sur le march&eacute; et en proposant les meilleurs serveurs d&eacute;di&eacute;s (DELL).</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p><p style=\"text-align: justify; padding: 5px 0px 0px; margin-bottom: 0px; overflow-wrap: break-word; font-size: 18px; line-height: 1.5; font-family: Lato !important;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">La soci&eacute;t&eacute; </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\"> </span></font></font></font></font></font></font></font></font><span style=\"font-weight: bold; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">CONGOLESE YOUTH SA </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><span style=\"color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">est une soci&eacute;t&eacute; anonyme</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"color: rgb(0, 0, 255); vertical-align: inherit;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> cr&eacute;&eacute;e en 2016.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><span style=\"color: rgb(0, 0, 255);\">&nbsp;</span><font style=\"color: rgb(0, 0, 255); vertical-align: inherit;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"color: rgb(0, 0, 255); padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\">&nbsp;<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"></font></font></font></font></p><p style=\"text-align: left;\"><font style=\"font-family: euclid, Helvetica, Arial; font-size: 16px; background-color: rgb(245, 245, 250); vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit; color: rgb(0, 0, 255);\"><font style=\"font-family: Lato; font-size: 18px; background-color: rgb(255, 255, 255); padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Elle a &eacute;t&eacute; immatricul&eacute;e au Registre du commerce et cr&eacute;dit mobilier sous le num&eacute;ro :&nbsp;&nbsp;                  </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><span class=\"color_blue\" style=\"font-family: Lato; font-size: 18px; background-color: rgb(255, 255, 255); padding: 0px; margin: 0px; overflow-wrap: break-word; font-weight: bold;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">CD/KIS/RCCM/19-A-00080</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></p><p style=\"text-align: left;\"><font style=\"font-family: euclid, Helvetica, Arial; font-size: 16px; background-color: rgb(245, 245, 250); vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit; color: rgb(0, 0, 255);\"><font style=\"font-family: Lato; font-size: 18px; background-color: rgb(255, 255, 255); padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">ID NAT :</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"font-family: Lato; font-size: 18px; background-color: rgb(255, 255, 255); padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><span class=\"color_blue\" style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; font-weight: bold;\"><font style=\"padding: 0px; margin: 0px; overflow-wrap: break-word; vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> 4-93-N48524Z</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></font></p><p style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 255);\"><b><span style=\"font-family: arial, sans-serif; font-size: 18px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">L\'adresse&nbsp;</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></b><span style=\"font-family: arial, sans-serif; font-size: 16px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> du&nbsp;              </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><font style=\"vertical-align: inherit;\"><b style=\"font-family: arial, sans-serif; font-size: 16px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">si&egrave;ge&nbsp;              </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></b></font><b style=\"font-family: arial, sans-serif; font-size: 16px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">social </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></b><span style=\"font-family: arial, sans-serif; font-size: 16px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font st', '[\"header\",\"footer\"]', 'active', '2022-01-19 18:06:55', '2022-02-20 06:23:55');
INSERT INTO `pages` (`id`, `name`, `url`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Contactez-nous', 'contactez-nous', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><h2 style=\"text-align: justify; margin: -30px 0px 0px 25px; padding: 0px 0px 35px; border: 0px; outline: 0px; font-size: 41px; vertical-align: baseline; background: 0px 0px; font-weight: 700; font-family: asap; color: rgb(30, 73, 155); line-height: 52px; position: relative; z-index: 999; min-height: 52px; text-shadow: rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-size: 18px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nous sommes joignables</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background: 0px 0px; color: rgb(152, 180, 57); line-height: 42px; display: inline-block;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">7J/7</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></h2><h2 style=\"text-align: justify; margin: -30px 0px 0px 25px; padding: 0px 0px 35px; border: 0px; outline: 0px; font-size: 41px; vertical-align: baseline; background: 0px 0px; font-weight: 700; font-family: asap; line-height: 52px; position: relative; z-index: 999; min-height: 52px; text-shadow: rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background: 0px 0px; line-height: 42px; display: inline-block; color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><small style=\"margin: -4px 0px -6px -32px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; float: left; display: inline-block; font-family: lato; text-align: start;\"></small><span style=\"margin: 0px; padding: 13px 0px 0px 22px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background: 0px 0px; line-height: 26px; font-weight: 400; float: left; display: inline-block; text-align: start;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contactez nos sp&eacute;cialistes au </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 26px; vertical-align: baseline; background: 0px 0px; font-weight: 700; display: inline-block;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">+243 81 48 64 186 /+243 84 08 80 815</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></h2><h2 style=\"text-align: justify; margin: -30px 0px 0px 25px; padding: 0px 0px 35px; border: 0px; outline: 0px; font-size: 41px; vertical-align: baseline; background: 0px 0px; font-weight: 700; font-family: asap; line-height: 52px; position: relative; z-index: 999; min-height: 52px; text-shadow: rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background: 0px 0px; line-height: 42px; display: inline-block; color: rgb(0, 0, 255);\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"margin: 0px; padding: 13px 0px 0px 22px; border: 0px; outline: 0px; font-size: 24px; vertical-align: baseline; background: 0px 0px; line-height: 26px; font-weight: 400; float: left; display: inline-block; text-align: start;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 26px; vertical-align: baseline; background: 0px 0px; font-weight: 700; display: inline-block;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"color: rgb(30, 73, 155); font-size: 18px; font-weight: 400; text-align: center;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Pour les probl&egrave;mes techniques privil&eacute;giez l\'ouverture </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><br style=\"color: rgb(30, 73, 155); font-size: 18px; font-weight: 400; text-align: center;\"><span style=\"color: rgb(30, 73, 155); font-size: 18px; font-weight: 400; text-align: center;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">d\'un&nbsp;</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><big style=\"font-size: 18px; color: rgb(30, 73, 155); display: inline-block; text-align: center;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">billet d\'incidence</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></big><span style=\"color: rgb(30, 73, 155); font-size: 18px; font-weight: 400; text-align: center;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">&nbsp;depuis&nbsp;</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><a href=\"https://x-paycash.site/\" style=\"margin: 0px; padding: 0px; font-size: 18px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); outline: none; text-decoration-line: underline; color: rgb(152, 180, 57); display: inline-block; text-align: center;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">votre espace client.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></a></font></font></font></font></span><span style=\"color: inherit; font-family: inherit; text-align: center;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Assistance technique et commerciale 7j/7</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span><img style=\"width: 50%;\" data-filename=\"images (53).jpeg\" src=\"https://x-paycash.site/public/uploads/page-images/61e8c4ab053a6.jpeg\"></h2><h2 style=\"text-align: justify; margin: -30px 0px 0px 25px; padding: 0px 0px 35px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 52px; position: relative; z-index: 999; min-height: 52px; text-shadow: rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px, rgb(255, 255, 255) 0px 0px 6px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 42px; display: inline-block;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"margin: 0px; padding: 13px 0px 0px 22px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; line-height: 26px; float: left; display: inline-block; text-align: start;\"><div style=\"text-align: justify;\"><font color=\"#0000ff\" face=\"asap\"><span style=\"font-size: 24px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><a href=\"http://Client@x-paycash.site\" target=\"_blank\">Client@x-paycash.site</a></font></font></span></font></div><div style=\"text-align: justify;\"><font color=\"#0000ff\" face=\"asap\"><span style=\"font-size: 24px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><br></font></font></span></font></div><b style=\'font-family: \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-weight: 400; text-align: center;\'><div style=\"color: rgb(0, 255, 0); font-size: 24px; text-align: justify;\"><span style=\"background-color: initial;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Hotline T&eacute;l&eacute;phonique</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></div><div style=\"color: rgb(0, 255, 0); font-size: 24px; text-align: justify;\"><i style=\"font-size: 18px; color: rgb(51, 51, 51); background-color: initial;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><span style=\"font-size: 14px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Du lundi au vendredi de 09H00 &agrave; 19H00.</font></font></font></font></font></font></font></font></font></font></font></font></span></font></font></font></font></font></font></font></font></font></font></i></div><div style=\"text-align: justify;\"><font color=\"#333333\"><span style=\"font-size: 18px;\"><i><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">RD. </font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Congo : 0814864363</font></font></font></font></font></font></font></font></i></span></font></div><div style=\"color: rgb(0, 255, 0); font-size: 24px; text-align: justify;\"><i style=\"font-size: 18px; color: rgb(51, 51, 51); background-color: initial;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">internationale : +243840880815</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></i></div></b></span></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></span></h2></body></html>\n', '[\"header\",\"footer\"]', 'active', '2022-01-19 19:40:50', '2022-01-19 20:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `status`) VALUES
(1, 'Mts', 'Active'),
(2, 'Stripe', 'Active'),
(3, 'Paypal', 'Active'),
(4, '2Checkout', 'Active'),
(5, 'PayUmoney', 'Active'),
(6, 'Bank', 'Active'),
(7, 'Coinpayments', 'Active'),
(8, 'Payeer', 'Active'),
(9, 'BlockIo', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payout_settings`
--

CREATE TABLE `payout_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `swift_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_payout` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not default, 1=default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payout_settings`
--

INSERT INTO `payout_settings` (`id`, `user_id`, `type`, `email`, `account_name`, `account_number`, `bank_branch_name`, `bank_branch_city`, `bank_branch_address`, `country`, `swift_code`, `bank_name`, `default_payout`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'p.losale@congoleseyouth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-20 02:51:56', '2022-01-20 11:53:44'),
(2, 3, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-20 20:31:42', '2022-01-20 20:31:42'),
(3, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-21 05:10:54', '2022-01-21 05:10:54'),
(4, 5, 3, 'p.losale@congoleseyouth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-21 18:56:54', '2022-01-21 18:56:54'),
(5, 5, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-21 18:58:57', '2022-01-21 18:58:57'),
(6, 3, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-22 10:57:05', '2022-01-22 10:57:05'),
(7, 7, 3, 'p.losale@congoleseyouth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-22 14:01:36', '2022-01-22 14:01:36'),
(8, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-22 17:53:52', '2022-01-22 17:53:52'),
(9, 8, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-24 04:02:09', '2022-01-24 04:02:09'),
(10, 8, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-24 04:10:39', '2022-01-24 04:10:39'),
(11, 12, 3, 'rubel.nstu27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-02-14 03:43:16', '2022-02-14 03:43:16'),
(12, 15, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-02-15 00:31:17', '2022-02-15 00:31:17'),
(13, 15, 6, NULL, 'Abu Sufian Rubel', '25510529970887', 'losale', 'losale', 'Jjbhs', 50, 'ASDHJ12345', 'LosalePatrick', 0, '2022-02-15 00:32:58', '2022-02-15 00:32:58'),
(14, 12, 6, NULL, 'Abu Sufian Rubel', '3265738639636', 'Nikunjo-2', 'Khilkhet', 'Nikunjo-2', 18, 'AAADGT125', 'Dutch Bangla', 0, '2022-02-15 04:43:03', '2022-02-15 04:43:03'),
(15, 29, 3, 'rubel.nstu27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-02-19 21:48:07', '2022-02-19 21:48:07'),
(16, 29, 6, NULL, 'Abu Sufian Rubel', 'Abu Sufian Rubel', 'Abu Sufian Rubel', 'Dhaka', 'Dhaka', 18, 'Afhs', 'Dutch', 0, '2022-02-19 21:48:39', '2022-02-19 21:48:39'),
(19, 9, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-02-20 01:43:17', '2022-02-20 01:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Admin','User') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group`, `name`, `display_name`, `description`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'User', 'view_user', 'View User', 'View User', 'Admin', '2022-01-19 06:39:24', '2022-01-19 06:39:24'),
(2, 'User', 'add_user', 'Add User', 'Add User', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(3, 'User', 'edit_user', 'Edit User', 'Edit User', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(4, 'User', 'delete_user', 'Delete User', 'Delete User', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(5, 'Transaction', 'view_transaction', 'View Transaction', 'View Transaction', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(6, 'Transaction', 'add_transaction', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(7, 'Transaction', 'edit_transaction', 'Edit Transaction', 'Edit Transaction', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(8, 'Transaction', 'delete_transaction', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(9, 'Deposit', 'view_deposit', 'View Deposit', 'View Deposit', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(10, 'Deposit', 'add_deposit', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(11, 'Deposit', 'edit_deposit', 'Edit Deposit', 'Edit Deposit', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(12, 'Deposit', 'delete_deposit', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(13, 'Withdrawal', 'view_withdrawal', 'View Withdrawal', 'View Withdrawal', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(14, 'Withdrawal', 'add_withdrawal', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(15, 'Withdrawal', 'edit_withdrawal', 'Edit Withdrawal', 'Edit Withdrawal', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(16, 'Withdrawal', 'delete_withdrawal', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(17, 'Transfer', 'view_transfer', 'View Transfer', 'View Transfer', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(18, 'Transfer', 'add_transfer', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(19, 'Transfer', 'edit_transfer', 'Edit Transfer', 'Edit Transfer', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(20, 'Transfer', 'delete_transfer', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(21, 'Exchange', 'view_exchange', 'View Exchange', 'View Exchange', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(22, 'Exchange', 'add_exchange', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(23, 'Exchange', 'edit_exchange', 'Edit Exchange', 'Edit Exchange', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(24, 'Exchange', 'delete_exchange', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(29, 'Request Payment', 'view_request_payment', 'View Request Payment', 'View Request Payment', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(30, 'Request Payment', 'add_request_payment', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(31, 'Request Payment', 'edit_request_payment', 'Edit Request Payment', 'Edit Request Payment', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(32, 'Request Payment', 'delete_request_payment', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(33, 'Revenue', 'view_revenue', 'View Revenue', 'View Revenue', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(34, 'Revenue', 'add_revenue', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(35, 'Revenue', 'edit_revenue', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(36, 'Revenue', 'delete_revenue', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(37, 'Email Template', 'view_email_template', 'View Email Template', 'View Email Template', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(38, 'Email Template', 'add_email_template', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(39, 'Email Template', 'edit_email_template', 'Edit Email Template', 'Edit Email Template', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(40, 'Email Template', 'delete_email_template', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(41, 'Activity Log', 'view_activity_log', 'View Activity Log', 'View Activity Log', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(42, 'Activity Log', 'add_activity_log', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(43, 'Activity Log', 'edit_activity_log', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(44, 'Activity Log', 'delete_activity_log', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(45, 'General Setting', 'view_general_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(46, 'General Setting', 'add_general_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(47, 'General Setting', 'edit_general_setting', 'Edit General Setting', 'Edit General Setting', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(48, 'General Setting', 'delete_general_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(49, 'Social Links', 'view_social_links', 'View Social Links', 'View Social Links', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(50, 'Social Links', 'add_social_links', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(51, 'Social Links', 'edit_social_links', 'Edit Social Links', 'Edit Social Links', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(52, 'Social Links', 'delete_social_links', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(53, 'API Credentials', 'view_api_credentials', 'View API Credentials', 'View API Credentials', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(54, 'API Credentials', 'add_api_credentials', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(55, 'API Credentials', 'edit_api_credentials', 'Edit API Credentials', 'Edit API Credentials', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(56, 'API Credentials', 'delete_api_credentials', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(57, 'Payment Methods', 'view_payment_methods', 'View Payment Methods', 'View Payment Methods', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(58, 'Payment Methods', 'add_payment_methods', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(59, 'Payment Methods', 'edit_payment_methods', 'Edit Payment Methods', 'Edit Payment Methods', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(60, 'Payment Methods', 'delete_payment_methods', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(61, 'Email Setting', 'view_email_setting', 'View Email Setting', 'View Email Setting', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(62, 'Email Setting', 'add_email_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(63, 'Email Setting', 'edit_email_setting', 'Edit Email Setting', 'Edit Email Setting', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(64, 'Email Setting', 'delete_email_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(65, 'Currency', 'view_currency', 'View Currency', 'View Currency', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(66, 'Currency', 'add_currency', 'Add Currency', 'Add Currency', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(67, 'Currency', 'edit_currency', 'Edit Currency', 'Edit Currency', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(68, 'Currency', 'delete_currency', 'Delete Currency', 'Delete Currency', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(69, 'Country', 'view_country', 'View Country', 'View Country', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(70, 'Country', 'add_country', 'Add Country', 'Add Country', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(71, 'Country', 'edit_country', 'Edit Country', 'Edit Country', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(72, 'Country', 'delete_country', 'Delete Country', 'Delete Country', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(73, 'Language', 'view_language', 'View Language', 'View Language', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(74, 'Language', 'add_language', 'Add Language', 'Add Language', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(75, 'Language', 'edit_language', 'Edit Language', 'Edit Language', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(76, 'Language', 'delete_language', 'Delete Language', 'Delete Language', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(77, 'Role', 'view_role', 'View Role', 'View Role', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(78, 'Role', 'add_role', 'Add Role', 'Add Role', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(79, 'Role', 'edit_role', 'Edit Role', 'Edit Role', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(80, 'Role', 'delete_role', 'Delete Role', 'Delete Role', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(85, 'Database Backup', 'view_database_backup', 'View Database Backup', 'View Database Backup', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(86, 'Database Backup', 'add_database_backup', 'Add Database Backup', 'Add Database Backup', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(87, 'Database Backup', 'edit_database_backup', 'Edit Database Backup', 'Edit Database Backup', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(88, 'Database Backup', 'delete_database_backup', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(89, 'Meta', 'view_meta', 'View Meta', 'View Meta', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(90, 'Meta', 'add_meta', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(91, 'Meta', 'edit_meta', 'Edit Meta', 'Edit Meta', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(92, 'Meta', 'delete_meta', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(93, 'Page', 'view_page', 'View Page', 'View Page', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(94, 'Page', 'add_page', 'Add Page', 'Add Page', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(95, 'Page', 'edit_page', 'Edit Page', 'Edit Page', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(96, 'Page', 'delete_page', 'Delete Page', 'Delete Page', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(97, 'Preference', 'view_preference', 'View Preference', 'View Preference', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(98, 'Preference', 'add_preference', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(99, 'Preference', 'edit_preference', 'Edit Preference', 'Edit Preference', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(100, 'Preference', 'delete_preference', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(101, 'Merchant', 'view_merchant', 'View Merchant', 'View Merchant', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(102, 'Merchant', 'add_merchant', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(103, 'Merchant', 'edit_merchant', 'Edit Merchant', 'Edit Merchant', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(104, 'Merchant', 'delete_merchant', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(105, 'Merchant Payment', 'view_merchant_payment', 'View Merchant Payment', 'View Merchant Payment', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(106, 'Merchant Payment', 'add_merchant_payment', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(107, 'Merchant Payment', 'edit_merchant_payment', 'Edit Merchant Payment', 'Edit Merchant Payment', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(108, 'Merchant Payment', 'delete_merchant_payment', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(109, 'Transaction', 'manage_transaction', 'Manage Transaction', 'Manage Transaction', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(110, 'Deposit', 'manage_deposit', 'Manage Deposit', 'Manage Deposit', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(111, 'Withdrawal', 'manage_withdrawal', 'Manage Withdrawal', 'Manage Withdrawal', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(112, 'Transfer', 'manage_transfer', 'Manage Transfer', 'Manage Transfer', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(113, 'Exchange', 'manage_exchange', 'Manage Exchange', 'Manage Exchange', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(115, 'Request Payment', 'manage_request_payment', 'Manage Request Payment', 'Manage Request Payment', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(116, 'Merchant', 'manage_merchant', 'Manage Merchant', 'Manage Merchant', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(117, 'Merchant Payment', 'manage_merchant_payment', 'Manage Merchant Payment', 'Manage Merchant Payment', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(118, 'User Group', 'view_group', 'View User Group', 'View User Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(119, 'User Group', 'add_group', 'Add User Group', 'Add User Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(120, 'User Group', 'edit_group', 'Edit User Group', 'Edit User Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(121, 'User Group', 'delete_group', 'Delete User Group', 'Delete User Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(122, 'Admins', 'view_admins', 'View Admins', 'View Admins', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(123, 'Admins', 'add_admin', 'Add Admin', 'Add Admin', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(124, 'Admins', 'edit_admin', 'Edit Admin', 'Edit Admin', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(125, 'Admins', 'delete_admin', 'Delete Admin', 'Delete Admin', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(126, 'Disputes', 'view_disputes', 'View Disputes', 'View Disputes', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(127, 'Disputes', 'add_dispute', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(128, 'Disputes', 'edit_dispute', 'Edit Dispute', 'Edit Dispute', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(129, 'Disputes', 'delete_dispute', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(130, 'Tickets', 'view_tickets', 'View Tickets', 'View Tickets', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(131, 'Tickets', 'add_ticket', 'Add Ticket', 'Add Ticket', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(132, 'Tickets', 'edit_ticket', 'Edit Ticket', 'Edit Ticket', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(133, 'Tickets', 'delete_ticket', 'Delete Ticket', 'Delete Ticket', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(134, 'Dispute', 'manage_dispute', 'Manage Dispute', 'Manage Dispute', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(135, 'Ticket', 'manage_ticket', 'Manage Ticket', 'Manage Ticket', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(136, 'Settings', 'manage_setting', 'Manage Settings', 'Manage Settings', 'User', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(137, 'AppStore Credentials', 'view_appstore_credentials', 'View AppStore Credentials', 'View AppStore Credentials', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(138, 'AppStore Credentials', 'add_appstore_credentials', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(139, 'AppStore Credentials', 'edit_appstore_credentials', 'Edit AppStore Credentials', 'Edit AppStore Credentials', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(140, 'AppStore Credentials', 'delete_appstore_credentials', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(145, 'Merchant Groups', 'view_merchant_group', 'View Merchant Group', 'View Merchant Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(146, 'Merchant Groups', 'add_merchant_group', 'Add Merchant Group', 'Add Merchant Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(147, 'Merchant Groups', 'edit_merchant_group', 'Edit Merchant Group', 'Edit Merchant Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(148, 'Merchant Groups', 'delete_merchant_group', 'Delete Merchant Group', 'Delete Merchant Group', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(149, 'SMS Setting', 'view_sms_setting', 'View SMS Setting', 'View SMS Setting', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(150, 'SMS Setting', 'add_sms_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(151, 'SMS Setting', 'edit_sms_setting', 'Edit SMS Setting', 'Edit SMS Setting', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(152, 'SMS Setting', 'delete_sms_setting', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(153, 'Sms Template', 'view_sms_template', 'View Sms Template', 'View Sms Template', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(154, 'Sms Template', 'add_sms_template', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(155, 'Sms Template', 'edit_sms_template', 'Edit Sms Template', 'Edit Sms Template', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(156, 'Sms Template', 'delete_sms_template', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(157, 'Identity Verificattion', 'view_identity_verfication', 'View Identity Verificattion', 'View Identity Verificattion', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(158, 'Identity Verificattion', 'add_identity_verfication', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(159, 'Identity Verificattion', 'edit_identity_verfication', 'Edit Identity Verificattion', 'Edit Identity Verificattion', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(160, 'Identity Verificattion', 'delete_identity_verfication', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(161, 'Address Verificattion', 'view_address_verfication', 'View Address Verificattion', 'View Address Verificattion', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(162, 'Address Verificattion', 'add_address_verfication', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(163, 'Address Verificattion', 'edit_address_verfication', 'Edit Address Verificattion', 'Edit Address Verificattion', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(164, 'Address Verificattion', 'delete_address_verfication', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(165, 'Enable WooCommerce', 'view_enable_woocommerce', 'View Enable WooCommerce', 'View Enable WooCommerce', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(166, 'Enable WooCommerce', 'add_enable_woocommerce', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(167, 'Enable WooCommerce', 'edit_enable_woocommerce', 'Edit Enable WooCommerce', 'Edit Enable WooCommerce', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(168, 'Enable WooCommerce', 'delete_enable_woocommerce', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(169, 'BlockIo Settings', 'view_blockio_settings', 'View BlockIo Settings', 'View BlockIo Settings', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(170, 'BlockIo Settings', 'add_blockio_settings', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(171, 'BlockIo Settings', 'edit_blockio_settings', 'Edit BlockIo Settings', 'Edit BlockIo Settings', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(172, 'BlockIo Settings', 'delete_blockio_settings', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(173, 'Crypto Transactions', 'view_crypto_transactions', 'View Crypto Transactions', 'View Crypto Transactions', 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(174, 'Crypto Transactions', 'add_crypto_transactions', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(175, 'Crypto Transactions', 'edit_crypto_transactions', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25'),
(176, 'Crypto Transactions', 'delete_crypto_transactions', NULL, NULL, 'Admin', '2022-01-19 06:39:25', '2022-01-19 06:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(4, 1),
(1, 2),
(4, 2),
(1, 3),
(4, 3),
(1, 4),
(1, 5),
(4, 5),
(1, 7),
(4, 7),
(1, 9),
(4, 9),
(1, 11),
(4, 11),
(1, 13),
(4, 13),
(1, 15),
(4, 15),
(1, 17),
(4, 17),
(1, 19),
(4, 19),
(1, 21),
(4, 21),
(1, 23),
(4, 23),
(1, 29),
(4, 29),
(1, 31),
(4, 31),
(1, 33),
(1, 37),
(1, 39),
(1, 41),
(4, 41),
(1, 47),
(1, 49),
(1, 51),
(1, 53),
(1, 55),
(1, 57),
(4, 57),
(1, 59),
(4, 59),
(1, 61),
(1, 63),
(1, 65),
(4, 65),
(1, 66),
(1, 67),
(4, 67),
(1, 68),
(1, 69),
(4, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(4, 77),
(1, 78),
(1, 79),
(4, 79),
(1, 80),
(1, 85),
(1, 86),
(1, 87),
(1, 89),
(1, 91),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 99),
(1, 101),
(4, 101),
(1, 103),
(4, 103),
(1, 105),
(4, 105),
(1, 107),
(4, 107),
(2, 109),
(3, 109),
(2, 110),
(3, 110),
(2, 111),
(3, 111),
(2, 112),
(3, 112),
(2, 113),
(3, 113),
(2, 115),
(3, 115),
(1, 118),
(4, 118),
(1, 119),
(1, 120),
(4, 120),
(1, 121),
(4, 121),
(1, 122),
(4, 122),
(1, 123),
(1, 124),
(4, 124),
(1, 125),
(4, 125),
(1, 126),
(4, 126),
(1, 128),
(4, 128),
(1, 130),
(4, 130),
(1, 131),
(1, 132),
(4, 132),
(1, 133),
(4, 133),
(2, 134),
(3, 134),
(2, 135),
(3, 135),
(2, 136),
(3, 136),
(1, 137),
(1, 139),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 151),
(1, 153),
(1, 155),
(1, 157),
(4, 157),
(1, 159),
(4, 159),
(1, 161),
(4, 161),
(1, 163),
(4, 163),
(1, 165),
(4, 165),
(1, 167),
(4, 167),
(1, 169),
(4, 169),
(1, 171),
(4, 171),
(1, 173),
(4, 173);

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `category`, `field`, `value`) VALUES
(1, 'preference', 'row_per_page', '50'),
(2, 'preference', 'date_format', '1'),
(3, 'preference', 'date_sepa', '/'),
(4, 'preference', 'soft_name', 'Pay Money'),
(5, 'company', 'site_short_name', 'PM'),
(6, 'preference', 'percentage', '2'),
(7, 'preference', 'quantity', '0'),
(8, 'preference', 'date_format_type', 'dd/mm/yyyy'),
(9, 'company', 'company_name', 'Pay Money'),
(10, 'company', 'company_email', 'admin@techvill.net'),
(11, 'company', 'dflt_lang', 'Fr'),
(12, 'preference', 'default_money_format', '&nbsp;&#36;'),
(13, 'preference', 'money_format', 'before'),
(14, 'preference', 'decimal_format_amount', '2'),
(15, 'preference', 'thousand_separator', ','),
(16, 'preference', 'dflt_timezone', 'Africa/Kinshasa'),
(17, 'preference', 'verification_mail', 'Disabled'),
(18, 'preference', 'phone_verification', 'Disabled'),
(19, 'preference', 'two_step_verification', 'disabled'),
(20, 'preference', 'processed_by', 'email_or_phone'),
(21, 'preference', 'enable_currencies', 'fiat_and_crypto'),
(22, 'preference', 'admin_url_prefix', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qr_codes`
--

INSERT INTO `qr_codes` (`id`, `object_id`, `object_type`, `secret`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoNTIzQ3FjNk8rT3RIeE5yOTcramxmemsyTVh4clBXeEJUMTlHa3Z3WlRFa3p6dUN5NUJnVVVxY2E1ZUVwdlZYS1E9PQ==', 'Active', '2022-01-19 09:09:06', '2022-01-19 09:09:06'),
(2, 2, 'user', 'KytjUkowdUxrRnJib2dGMW9pano4Qks1K3I2SzB4Rmk3bENEWGI0V2pqM2xKZXYyU0FCQ0IwYTE4MWZBeWlQTklwVWVZa3hjSklPUDgvWndXRWpBb1E9PQ==', 'Active', '2022-01-20 11:14:29', '2022-01-20 11:14:29'),
(3, 3, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoOEFOVnFuc0dPVGtHeXl0TjM0K2I1VEhLYVpiYVZldEZ3Ym53VUJqam0yL1NJTjJaUGJjYTJENXkyellRd0s1Qnc9PQ==', 'Active', '2022-01-20 14:08:34', '2022-01-20 14:08:34'),
(4, 4, 'user', 'U2dkMWF3WmlDS0h1eHhFMkR1Si9BZkdndUVjYm5PNzRuYjJ4MnphN2xBeXExd3daVUI2SVdiMFNUTkhPeXM5Vmdac21FVDB0N2xjYjRPME9tUUhuNXc9PQ==', 'Active', '2022-01-21 03:20:24', '2022-01-21 03:20:24'),
(5, 5, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoNTIzQ3FjNk8rT3RIeE5yOTcramxmemMrR0M2ZkdVWnFCN1NsTGlmdGhtaW5LRXFmYitaeGtQQlpqNUhsbTgvSkE9PQ==', 'Active', '2022-01-21 18:54:14', '2022-01-21 18:54:14'),
(6, 6, 'user', 'UFZnUmE4bDMrRXpHRUNkeHJ2cGR2YkkvN0huYlRwbHZmaWtsYXVzNFdqQzNpUmM1cmxTOHN2V0Y5UGhlRHg5YTA4cGJYeWg5MVoweDFPSGZwR01IY2c9PQ==', 'Active', '2022-01-22 00:51:59', '2022-01-22 00:51:59'),
(7, 7, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoeXg1WHliejM4UGQxemRDbGZKZjRiWVJ2UDZHRSt1ZDFYbWN0UnlveUlUOGxTUzgxVXJLYjVDL3hjV2hpQW9Cbnc9PQ==', 'Active', '2022-01-22 13:59:59', '2022-01-22 13:59:59'),
(8, 8, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoOEFOVnFuc0dPVGtHeXl0TjM0K2I1UU0wR2hRQW90YVlPdlRhdGdVSWlQa0w0aXBsNVZ0ek9ZcmJLd3RHZ3U5VVE9PQ==', 'Active', '2022-01-24 03:58:51', '2022-01-24 03:58:51'),
(9, 9, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoOEFOVnFuc0dPVGtHeXl0TjM0K2I1VDI0L3MwV0h4QStPRGRNalFaZkVSbzFGOWZoQitrZWVsYjA3b1lXYXovZXc9PQ==', 'Active', '2022-01-25 12:27:21', '2022-01-25 12:27:21'),
(10, 10, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoNTIzQ3FjNk8rT3RIeE5yOTcramxmeGxRV2dtWlFEZ1FvYU1JcEN3dExUbndiSmhHWUk2RGtYWlljZnNPUFdTT0E9PQ==', 'Active', '2022-01-25 12:32:57', '2022-01-25 12:32:57'),
(11, 11, 'user', 'TTZIN2lvbnJISFErT2FXWGN5Z2gvMk82aG1EVExWZWs0U1V6aW4ybHVNZz0=', 'Active', '2022-01-31 11:09:06', '2022-01-31 11:09:06'),
(12, 12, 'user', 'L2RQMm82cUVqRFc5dk9nOGlQRFZrbk9YRXBUZ3B6VjJ1WkdzQms2cW1uRE5zRHE5cXFyd29GOUtBVFpZUkNLbw==', 'Active', '2022-02-13 03:05:51', '2022-02-13 03:05:51'),
(13, 13, 'user', 'S0IwM0ZHWExIdkJLdWNqR3pGZUxLVTQvaWV6OEdndElaRXlrS0o3QW14TnI0d2RPbHZZbjFVb0NDT2hFNkR0ZQ==', 'Active', '2022-02-13 03:45:22', '2022-02-13 03:45:22'),
(14, 14, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoeXg1WHliejM4UGQxemRDbGZKZjRiWk5Fd2szSC9Gdk13bmtHSEpwSzBIQWMxRDhYWWdnRk9Ed0FhTTMySGVHTEE9PQ==', 'Active', '2022-02-13 04:39:24', '2022-02-13 04:39:24'),
(15, 15, 'user', 'V1ZSbjhTZ0NGV09yZERJS1I3VjBoMnRnaHhpMVhYaStNQnVRKzVuY2twSzN1dkEwaXFVU3lQY05aS1BhSktpRzJtV0ZOZFlhSmROa2hBZzNtTEVLMWc9PQ==', 'Active', '2022-02-13 05:33:02', '2022-02-13 05:33:02'),
(16, 16, 'user', 'UzAzS2hUckc5YlJEOGEzNEF5OVM3NU01ZjFhQ0ZaR1JWckJnb1BDT2pDQVh3ZGRqV0F5S1NkL0w5Y2xINWNrZw==', 'Active', '2022-02-15 01:41:31', '2022-02-15 01:41:31'),
(17, 17, 'user', 'bmwrTXdVZ2E0SW1zTTh1dXd5WlY0TWtETkZ4QkZCcjI2RllSMWR3VkNEZmRCaDZ5bDcxcXhkVXVtTkU2MkNLR0dJUnNUSEJ5YUpud2R5aGl1eU84UEE9PQ==', 'Active', '2022-02-15 03:53:42', '2022-02-15 03:53:42'),
(18, 18, 'user', 'MHJ6M3c2aThJcUtCTHNMZkIrTC9wd0x6WVVjQkJkUFZ0aEUvODZyeXR5anE3dC9xb1lRanB3Smo1UXcvM0tPdkpyUVdIWUtTTjhud1h2Q0xybVhPelE9PQ==', 'Active', '2022-02-15 04:23:33', '2022-02-15 04:23:33'),
(19, 19, 'user', 'cy9nRkVOSWZReTNZM2FPN3o3dStjMVNQcXZmUVlWcmNGMUZYTG1UVmNMVnJ2UERQWC9sRnBrTUU5b2pZZG1CZXh4OWswM090aVZMUitJR0htUVJGTlE9PQ==', 'Active', '2022-02-15 04:26:14', '2022-02-15 04:26:14'),
(20, 20, 'user', 'MHJ6M3c2aThJcUtCTHNMZkIrTC9wd0x6WVVjQkJkUFZ0aEUvODZyeXR5Z2NQbnV1V0dtSFFPU21tZ1B3Nkt3WGUyU2Q4ekFhazJpYU5Lcnp1blFvcHc9PQ==', 'Active', '2022-02-15 04:37:08', '2022-02-15 04:37:08'),
(21, 21, 'user', 'bUNLUmJCaDdLM3R3b2F4MjdUa1p5Tkx0U3FhSXdMMjdkamlOS0pNcTA5MllDRHBBelZqd2k5SWFXOHdZVjQ4OQ==', 'Active', '2022-02-15 05:08:24', '2022-02-15 05:08:24'),
(22, 22, 'user', 'a29oa1ZZY3JDNldaR3N0Si9sZ0gzNnNXdHR4cHQvZW0veXd1RjdCUWp3Zm5UNkY0YmlWSERCQUFmY1NTVWFCTA==', 'Active', '2022-02-15 12:45:32', '2022-02-15 12:45:32'),
(23, 23, 'user', 'a0U4WmwvTXVoUFovVGdrMTNBajlCN3crdFZXVm5PWm1ESHkyYVlOL0Nscz0=', 'Active', '2022-02-16 01:40:37', '2022-02-16 01:40:37'),
(24, 24, 'user', 'YVlocDlLUW8rajYwOVZxZkY3OEY2NFJ6K1U4SUorTnQyUE5xbUd6THQ3KzBUYXNDenlyT2VVUmg3WmdkNzlXUVUyNXdTR0wvM2FDVnk1Q3crTExtL0E9PQ==', 'Active', '2022-02-16 04:42:15', '2022-02-16 04:42:15'),
(25, 25, 'user', 'VVhQdlJMVUlZb2IvT3dsaW1RdG5MM2R6bHVXQVBLdGNHMUZpQVNxQnV2WT0=', 'Active', '2022-02-16 22:48:31', '2022-02-16 22:48:31'),
(26, 26, 'user', 'cUwyZFpnVFlBMlh2YlpGK0JVYWFaNml4d2xxaC84N1ltOVI5QWYxQzBZTGFYYzJGUTVyTW04c2RvMWtVUFhpalpwWDhKZDFlejRnMDMxVmUwYXp2ekE9PQ==', 'Active', '2022-02-16 23:12:49', '2022-02-16 23:12:49'),
(27, 27, 'user', 'VTNrSUNaR2Q5em5yVUhUa0RkanpGWnB1d1RlaFlFV0NLKzY1Q1J2TnNFVmFmUFdqQVlWNlFGK0x4cGd4bDBzQQ==', 'Active', '2022-02-17 01:03:04', '2022-02-17 01:03:04'),
(28, 28, 'user', 'bWQ3MzE2UmVraE5hZEJqdVc1ck1aVkVtL0dscW0vRUd5RFA0WUpma1NYb2ZBVnkveGMvekhBVW9BNFMwMS9hcHF6R0U1QTIwUjRnTWVQUjVlRkhrOWc9PQ==', 'Active', '2022-02-19 14:30:21', '2022-02-19 14:30:21'),
(29, 29, 'user', 'L2RQMm82cUVqRFc5dk9nOGlQRFZraVZITDVpRlJuMm44NE42SEFvcy9rK1lrSWQrWnVwK3hFbmpIeHhuelhUbg==', 'Active', '2022-02-19 21:40:35', '2022-02-19 21:40:35'),
(30, 30, 'user', 'bUNLUmJCaDdLM3R3b2F4MjdUa1p5STBMQ3lKODRwVml5bUxWdFNhdmxVcGFLVSs2UXBrVmJKYStjd2I0NGU2MXBJb3BMSS92eDNMNlVkSFNRWmd2T1E9PQ==', 'Active', '2022-02-20 00:35:47', '2022-02-20 00:35:47'),
(31, 31, 'user', 'VTNrSUNaR2Q5em5yVUhUa0RkanpGY1F2MnczOUtiM3p1cGt4cTdaTlZ4NGp0MEg4Y3FybzhWUWZXYzhTYzZEVg==', 'Active', '2022-02-20 00:58:23', '2022-02-20 00:58:23'),
(32, 32, 'user', 'L2RQMm82cUVqRFc5dk9nOGlQRFZrcTUvRUlQaUlhSUtRbHNvVGhzS0xSaE5LM2k4QzZHOHpjVmRjNkJFVExnVUYrWnllbzJoaGhIekhkRWhQanFCUXc9PQ==', 'Active', '2022-02-20 06:23:52', '2022-02-20 06:23:52'),
(33, 33, 'user', 'L2RQMm82cUVqRFc5dk9nOGlQRFZrcTUvRUlQaUlhSUtRbHNvVGhzS0xSaUtZNjRkY0t6RGVvSHovZGZHQURYVXAwYXRaZG1EbHBSOXdVdzF4OC9Cc0E9PQ==', 'Active', '2022-02-20 07:21:27', '2022-02-20 07:21:27'),
(34, 34, 'user', 'bUNLUmJCaDdLM3R3b2F4MjdUa1p5STBMQ3lKODRwVml5bUxWdFNhdmxVbzkrWGJoZ2JiSVkwNUVkVzg5akNqc1Q2UlIza3N3dlhkaGcxNDI2Y0dvQ3c9PQ==', 'Active', '2022-02-20 07:22:38', '2022-02-20 07:22:38'),
(35, 35, 'user', 'SjJkYXZUM0NwcEo3cnJidS9xNzB1cUN5NU9Jb2hOMGhCQld6SWRZeFZ5aUlnbjArMHlCdG1yYjdPR1REemNmNWI1MlR2U1dvbmVMWUlWQjhvRzBTSXc9PQ==', 'Active', '2022-02-20 09:44:49', '2022-02-20 09:44:49'),
(36, 36, 'user', 'YkJRUkZDemlkcFNxVFVVMjJKZFZXYkswMjIwZEExdzJSZ2tUejBQN2dTT3p4TVpFTGxpcGw5RGloZVVxbkc5YUJLa0hJYmNPeGZreWdEYVVuSU4xTkE9PQ==', 'Active', '2022-02-21 06:04:58', '2022-02-21 06:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `title`) VALUES
(1, 'I have not received the goods'),
(2, 'Description does not match with product');

-- --------------------------------------------------------

--
-- Table structure for table `request_payments`
--

CREATE TABLE `request_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Payment Request)',
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `accept_amount` decimal(20,8) DEFAULT 0.00000000,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_payments`
--

INSERT INTO `request_payments` (`id`, `user_id`, `receiver_id`, `currency_id`, `uuid`, `amount`, `accept_amount`, `email`, `phone`, `purpose`, `note`, `status`, `created_at`, `updated_at`) VALUES
(3, 9, 15, 1, 'AEB11CD45176F', 25.00000000, 0.00000000, 'losalepatrick17@gmail.com', NULL, NULL, 'Ujr', 'Blocked', '2022-02-15 04:57:09', '2022-02-15 11:46:27'),
(4, 19, 20, 1, '1AFC4C15D8BDD', 10.00000000, 0.00000000, 'jbisselele2015@gmail.com', NULL, NULL, 'Aide urgence', 'Blocked', '2022-02-15 05:01:10', '2022-02-16 15:27:23'),
(6, 17, NULL, 1, '70C1CC9E7FC96', 100.00000000, 0.00000000, NULL, '+243820345535', NULL, 'Aide humanitaire', 'Pending', '2022-02-16 04:19:19', '2022-02-16 04:19:19'),
(7, 17, 24, 1, '47B74C52BC7DA', 50.00000000, 0.00000000, NULL, '+243825861808', NULL, 'Aide humanitaire', 'Blocked', '2022-02-17 03:42:00', '2022-02-17 03:44:43'),
(8, 17, 24, 1, 'A90BF59CF3ABC', 1.00000000, 0.00000000, NULL, '+243825861808', NULL, 'Charité', 'Pending', '2022-02-17 03:44:27', '2022-02-17 03:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('Admin','User') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` enum('user','merchant') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` enum('No','Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `user_type`, `customer_type`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'Admin', 'user', 'No', NULL, NULL),
(2, 'CLIENT', 'CLIENT', 'CLIENT', 'User', 'user', 'Yes', NULL, '2022-02-17 05:17:54'),
(3, 'Merchant Regular', 'Merchant Regular', 'Merchant Regular', 'User', 'user', 'No', NULL, '2022-02-17 05:08:05'),
(4, 'Backoffice', 'backoffice', 'support agent et client', 'Admin', 'user', 'No', '2022-01-19 09:34:34', '2022-01-19 09:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_type` enum('Admin','User') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `user_type`) VALUES
(1, 1, 'Admin'),
(2, 2, 'User'),
(2, 4, 'Admin'),
(3, 4, 'Admin'),
(4, 2, 'User'),
(4, 4, 'Admin'),
(6, 3, 'User'),
(9, 3, 'User'),
(11, 3, 'User'),
(17, 2, 'User'),
(19, 2, 'User'),
(20, 2, 'User'),
(23, 2, 'User'),
(24, 2, 'User'),
(26, 2, 'User'),
(28, 2, 'User'),
(33, 3, 'User'),
(35, 2, 'User'),
(36, 2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `type`) VALUES
(1, 'name', 'X-PAY CASH', 'general'),
(2, 'logo', '1645106588_logo.png', 'general'),
(3, 'favicon', '1644412376_favicon.png', 'general'),
(4, 'head_code', '', 'general'),
(5, 'default_currency', '1', 'general'),
(6, 'default_language', '3', 'general'),
(7, 'client_id', 'id', 'PayPal'),
(8, 'client_secret', 'secrect', 'PayPal'),
(9, 'signature', 'sign', 'PayPal'),
(10, 'mode', 'sandbox', 'PayPal'),
(11, 'publishable', '', 'Stripe'),
(12, 'secret', '', 'Stripe'),
(13, 'driver', 'sendmail', 'email'),
(14, 'host', 'mail.x-paycash.site', 'email'),
(15, 'port', '465', 'email'),
(16, 'from_address', 'losalepatrick@gmail.com', 'email'),
(17, 'from_name', 'X PAY CASH', 'email'),
(18, 'encryption', 'TLS', 'email'),
(19, 'username', 'support.x-paycash.site', 'email'),
(20, 'password', 'Support@2022', 'email'),
(21, 'site_key', '', 'recaptcha'),
(22, 'secret_key', '', 'recaptcha'),
(23, 'seller_id', '', '2Checkout'),
(24, 'mode', '', '2Checkout'),
(25, 'mode', '', 'PayUmoney'),
(26, 'key', '', 'PayUmoney'),
(27, 'salt', '', 'PayUmoney'),
(28, 'merchant_id', '', 'Coinpayments'),
(29, 'private_key', '', 'Coinpayments'),
(30, 'public_key', '', 'Coinpayments'),
(31, 'default_timezone', 'Asia/Dhaka', 'general'),
(32, 'has_captcha', 'Disabled', 'general'),
(33, 'login_via', 'phone_only', 'general'),
(34, 'default_crypto_currencies', 'none', 'general'),
(35, 'admin_access_ip_setting', 'Disabled', 'admin_security'),
(36, 'admin_access_ips', '::1', 'admin_security'),
(37, 'purchasecodeverificationstatus', '1', 'envato'),
(38, 'code_status', '1', 'envato');

-- --------------------------------------------------------

--
-- Table structure for table `sms_configs`
--

CREATE TABLE `sms_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sms_configs`
--

INSERT INTO `sms_configs` (`id`, `type`, `credentials`, `status`, `created_at`, `updated_at`) VALUES
(1, 'twilio', '', 'Inactive', '2022-01-19 06:39:24', '2022-01-19 06:39:24'),
(2, 'nexmo', '{\"Key\":\"ce2aee45\",\"Secret\":\"aUHHA1ErBkU2EenE\",\"default_nexmo_phone_number\":\"243814864363\"}', 'Active', '2022-01-19 06:39:24', '2022-02-13 14:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `icon`, `url`) VALUES
(1, 'facebook', '<i class=\"ti-facebook\" aria-hidden=\"true\"></i>', '#'),
(2, 'google_plus', '<i class=\"ti-google plus\" aria-hidden=\"true\"></i>', '#'),
(3, 'twitter', '<i class=\"ti-twitter\" aria-hidden=\"true\"></i>', '#'),
(4, 'linkedin', '<i class=\"ti-linkedin\" aria-hidden=\"true\"></i>', '#'),
(5, 'pinterest', '<i class=\"ti-pinterest\" aria-hidden=\"true\"></i>', '#'),
(6, 'youtube', '<i class=\"ti-youtube\" aria-hidden=\"true\"></i>', '#'),
(7, 'instagram', '<i class=\"ti-instagram\" aria-hidden=\"true\"></i>', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_status_id` int(10) UNSIGNED DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` enum('Low','Normal','High') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `admin_id`, `user_id`, `ticket_status_id`, `subject`, `message`, `code`, `priority`, `last_reply`, `created_at`, `updated_at`) VALUES
(2, 1, 9, 1, 'patrick', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">jai kee jky yky&nbsp; uxufffff uiiuff&nbsp; gj&nbsp;</font></font>', 'TIC-TKDQLY', 'Normal', NULL, '2022-01-28 05:43:50', '2022-02-16 07:16:20'),
(5, 1, 17, 1, 'Freddy', 'Test', 'TIC-4PI117', 'Low', NULL, '2022-02-16 03:13:11', '2022-02-16 03:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_statuses`
--

CREATE TABLE `ticket_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_statuses`
--

INSERT INTO `ticket_statuses` (`id`, `name`, `color`, `is_default`) VALUES
(1, 'Open', '00a65a', 0),
(2, 'In Progress', '3c8dbc', 1),
(3, 'Hold', 'f39c12', 0),
(4, 'Closed', 'dd4b39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `zone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `zone`, `gmt`, `created_at`, `updated_at`) VALUES
(1, 'Africa/Abidjan', 'UTC/GMT +00:00', NULL, NULL),
(2, 'Africa/Accra', 'UTC/GMT +00:00', NULL, NULL),
(3, 'Africa/Addis_Ababa', 'UTC/GMT +03:00', NULL, NULL),
(4, 'Africa/Algiers', 'UTC/GMT +01:00', NULL, NULL),
(5, 'Africa/Asmara', 'UTC/GMT +03:00', NULL, NULL),
(6, 'Africa/Bamako', 'UTC/GMT +00:00', NULL, NULL),
(7, 'Africa/Bangui', 'UTC/GMT +01:00', NULL, NULL),
(8, 'Africa/Banjul', 'UTC/GMT +00:00', NULL, NULL),
(9, 'Africa/Bissau', 'UTC/GMT +00:00', NULL, NULL),
(10, 'Africa/Blantyre', 'UTC/GMT +02:00', NULL, NULL),
(11, 'Africa/Brazzaville', 'UTC/GMT +01:00', NULL, NULL),
(12, 'Africa/Bujumbura', 'UTC/GMT +02:00', NULL, NULL),
(13, 'Africa/Cairo', 'UTC/GMT +02:00', NULL, NULL),
(14, 'Africa/Casablanca', 'UTC/GMT +01:00', NULL, NULL),
(15, 'Africa/Ceuta', 'UTC/GMT +01:00', NULL, NULL),
(16, 'Africa/Conakry', 'UTC/GMT +00:00', NULL, NULL),
(17, 'Africa/Dakar', 'UTC/GMT +00:00', NULL, NULL),
(18, 'Africa/Dar_es_Salaam', 'UTC/GMT +03:00', NULL, NULL),
(19, 'Africa/Djibouti', 'UTC/GMT +03:00', NULL, NULL),
(20, 'Africa/Douala', 'UTC/GMT +01:00', NULL, NULL),
(21, 'Africa/El_Aaiun', 'UTC/GMT +01:00', NULL, NULL),
(22, 'Africa/Freetown', 'UTC/GMT +00:00', NULL, NULL),
(23, 'Africa/Gaborone', 'UTC/GMT +02:00', NULL, NULL),
(24, 'Africa/Harare', 'UTC/GMT +02:00', NULL, NULL),
(25, 'Africa/Johannesburg', 'UTC/GMT +02:00', NULL, NULL),
(26, 'Africa/Juba', 'UTC/GMT +03:00', NULL, NULL),
(27, 'Africa/Kampala', 'UTC/GMT +03:00', NULL, NULL),
(28, 'Africa/Khartoum', 'UTC/GMT +02:00', NULL, NULL),
(29, 'Africa/Kigali', 'UTC/GMT +02:00', NULL, NULL),
(30, 'Africa/Kinshasa', 'UTC/GMT +01:00', NULL, NULL),
(31, 'Africa/Lagos', 'UTC/GMT +01:00', NULL, NULL),
(32, 'Africa/Libreville', 'UTC/GMT +01:00', NULL, NULL),
(33, 'Africa/Lome', 'UTC/GMT +00:00', NULL, NULL),
(34, 'Africa/Luanda', 'UTC/GMT +01:00', NULL, NULL),
(35, 'Africa/Lubumbashi', 'UTC/GMT +02:00', NULL, NULL),
(36, 'Africa/Lusaka', 'UTC/GMT +02:00', NULL, NULL),
(37, 'Africa/Malabo', 'UTC/GMT +01:00', NULL, NULL),
(38, 'Africa/Maputo', 'UTC/GMT +02:00', NULL, NULL),
(39, 'Africa/Maseru', 'UTC/GMT +02:00', NULL, NULL),
(40, 'Africa/Mbabane', 'UTC/GMT +02:00', NULL, NULL),
(41, 'Africa/Mogadishu', 'UTC/GMT +03:00', NULL, NULL),
(42, 'Africa/Monrovia', 'UTC/GMT +00:00', NULL, NULL),
(43, 'Africa/Nairobi', 'UTC/GMT +03:00', NULL, NULL),
(44, 'Africa/Ndjamena', 'UTC/GMT +01:00', NULL, NULL),
(45, 'Africa/Niamey', 'UTC/GMT +01:00', NULL, NULL),
(46, 'Africa/Nouakchott', 'UTC/GMT +00:00', NULL, NULL),
(47, 'Africa/Ouagadougou', 'UTC/GMT +00:00', NULL, NULL),
(48, 'Africa/Porto-Novo', 'UTC/GMT +01:00', NULL, NULL),
(49, 'Africa/Sao_Tome', 'UTC/GMT +00:00', NULL, NULL),
(50, 'Africa/Tripoli', 'UTC/GMT +02:00', NULL, NULL),
(51, 'Africa/Tunis', 'UTC/GMT +01:00', NULL, NULL),
(52, 'Africa/Windhoek', 'UTC/GMT +02:00', NULL, NULL),
(53, 'America/Adak', 'UTC/GMT -10:00', NULL, NULL),
(54, 'America/Anchorage', 'UTC/GMT -09:00', NULL, NULL),
(55, 'America/Anguilla', 'UTC/GMT -04:00', NULL, NULL),
(56, 'America/Antigua', 'UTC/GMT -04:00', NULL, NULL),
(57, 'America/Araguaina', 'UTC/GMT -03:00', NULL, NULL),
(58, 'America/Argentina/Buenos_Aires', 'UTC/GMT -03:00', NULL, NULL),
(59, 'America/Argentina/Catamarca', 'UTC/GMT -03:00', NULL, NULL),
(60, 'America/Argentina/Cordoba', 'UTC/GMT -03:00', NULL, NULL),
(61, 'America/Argentina/Jujuy', 'UTC/GMT -03:00', NULL, NULL),
(62, 'America/Argentina/La_Rioja', 'UTC/GMT -03:00', NULL, NULL),
(63, 'America/Argentina/Mendoza', 'UTC/GMT -03:00', NULL, NULL),
(64, 'America/Argentina/Rio_Gallegos', 'UTC/GMT -03:00', NULL, NULL),
(65, 'America/Argentina/Salta', 'UTC/GMT -03:00', NULL, NULL),
(66, 'America/Argentina/San_Juan', 'UTC/GMT -03:00', NULL, NULL),
(67, 'America/Argentina/San_Luis', 'UTC/GMT -03:00', NULL, NULL),
(68, 'America/Argentina/Tucuman', 'UTC/GMT -03:00', NULL, NULL),
(69, 'America/Argentina/Ushuaia', 'UTC/GMT -03:00', NULL, NULL),
(70, 'America/Aruba', 'UTC/GMT -04:00', NULL, NULL),
(71, 'America/Asuncion', 'UTC/GMT -03:00', NULL, NULL),
(72, 'America/Atikokan', 'UTC/GMT -05:00', NULL, NULL),
(73, 'America/Bahia', 'UTC/GMT -03:00', NULL, NULL),
(74, 'America/Bahia_Banderas', 'UTC/GMT -06:00', NULL, NULL),
(75, 'America/Barbados', 'UTC/GMT -04:00', NULL, NULL),
(76, 'America/Belem', 'UTC/GMT -03:00', NULL, NULL),
(77, 'America/Belize', 'UTC/GMT -06:00', NULL, NULL),
(78, 'America/Blanc-Sablon', 'UTC/GMT -04:00', NULL, NULL),
(79, 'America/Boa_Vista', 'UTC/GMT -04:00', NULL, NULL),
(80, 'America/Bogota', 'UTC/GMT -05:00', NULL, NULL),
(81, 'America/Boise', 'UTC/GMT -07:00', NULL, NULL),
(82, 'America/Cambridge_Bay', 'UTC/GMT -07:00', NULL, NULL),
(83, 'America/Campo_Grande', 'UTC/GMT -04:00', NULL, NULL),
(84, 'America/Cancun', 'UTC/GMT -05:00', NULL, NULL),
(85, 'America/Caracas', 'UTC/GMT -04:00', NULL, NULL),
(86, 'America/Cayenne', 'UTC/GMT -03:00', NULL, NULL),
(87, 'America/Cayman', 'UTC/GMT -05:00', NULL, NULL),
(88, 'America/Chicago', 'UTC/GMT -06:00', NULL, NULL),
(89, 'America/Chihuahua', 'UTC/GMT -07:00', NULL, NULL),
(90, 'America/Costa_Rica', 'UTC/GMT -06:00', NULL, NULL),
(91, 'America/Creston', 'UTC/GMT -07:00', NULL, NULL),
(92, 'America/Cuiaba', 'UTC/GMT -04:00', NULL, NULL),
(93, 'America/Curacao', 'UTC/GMT -04:00', NULL, NULL),
(94, 'America/Danmarkshavn', 'UTC/GMT +00:00', NULL, NULL),
(95, 'America/Dawson', 'UTC/GMT -07:00', NULL, NULL),
(96, 'America/Dawson_Creek', 'UTC/GMT -07:00', NULL, NULL),
(97, 'America/Denver', 'UTC/GMT -07:00', NULL, NULL),
(98, 'America/Detroit', 'UTC/GMT -05:00', NULL, NULL),
(99, 'America/Dominica', 'UTC/GMT -04:00', NULL, NULL),
(100, 'America/Edmonton', 'UTC/GMT -07:00', NULL, NULL),
(101, 'America/Eirunepe', 'UTC/GMT -05:00', NULL, NULL),
(102, 'America/El_Salvador', 'UTC/GMT -06:00', NULL, NULL),
(103, 'America/Fort_Nelson', 'UTC/GMT -07:00', NULL, NULL),
(104, 'America/Fortaleza', 'UTC/GMT -03:00', NULL, NULL),
(105, 'America/Glace_Bay', 'UTC/GMT -04:00', NULL, NULL),
(106, 'America/Goose_Bay', 'UTC/GMT -04:00', NULL, NULL),
(107, 'America/Grand_Turk', 'UTC/GMT -05:00', NULL, NULL),
(108, 'America/Grenada', 'UTC/GMT -04:00', NULL, NULL),
(109, 'America/Guadeloupe', 'UTC/GMT -04:00', NULL, NULL),
(110, 'America/Guatemala', 'UTC/GMT -06:00', NULL, NULL),
(111, 'America/Guayaquil', 'UTC/GMT -05:00', NULL, NULL),
(112, 'America/Guyana', 'UTC/GMT -04:00', NULL, NULL),
(113, 'America/Halifax', 'UTC/GMT -04:00', NULL, NULL),
(114, 'America/Havana', 'UTC/GMT -05:00', NULL, NULL),
(115, 'America/Hermosillo', 'UTC/GMT -07:00', NULL, NULL),
(116, 'America/Indiana/Indianapolis', 'UTC/GMT -05:00', NULL, NULL),
(117, 'America/Indiana/Knox', 'UTC/GMT -06:00', NULL, NULL),
(118, 'America/Indiana/Marengo', 'UTC/GMT -05:00', NULL, NULL),
(119, 'America/Indiana/Petersburg', 'UTC/GMT -05:00', NULL, NULL),
(120, 'America/Indiana/Tell_City', 'UTC/GMT -06:00', NULL, NULL),
(121, 'America/Indiana/Vevay', 'UTC/GMT -05:00', NULL, NULL),
(122, 'America/Indiana/Vincennes', 'UTC/GMT -05:00', NULL, NULL),
(123, 'America/Indiana/Winamac', 'UTC/GMT -05:00', NULL, NULL),
(124, 'America/Inuvik', 'UTC/GMT -07:00', NULL, NULL),
(125, 'America/Iqaluit', 'UTC/GMT -05:00', NULL, NULL),
(126, 'America/Jamaica', 'UTC/GMT -05:00', NULL, NULL),
(127, 'America/Juneau', 'UTC/GMT -09:00', NULL, NULL),
(128, 'America/Kentucky/Louisville', 'UTC/GMT -05:00', NULL, NULL),
(129, 'America/Kentucky/Monticello', 'UTC/GMT -05:00', NULL, NULL),
(130, 'America/Kralendijk', 'UTC/GMT -04:00', NULL, NULL),
(131, 'America/La_Paz', 'UTC/GMT -04:00', NULL, NULL),
(132, 'America/Lima', 'UTC/GMT -05:00', NULL, NULL),
(133, 'America/Los_Angeles', 'UTC/GMT -08:00', NULL, NULL),
(134, 'America/Lower_Princes', 'UTC/GMT -04:00', NULL, NULL),
(135, 'America/Maceio', 'UTC/GMT -03:00', NULL, NULL),
(136, 'America/Managua', 'UTC/GMT -06:00', NULL, NULL),
(137, 'America/Manaus', 'UTC/GMT -04:00', NULL, NULL),
(138, 'America/Marigot', 'UTC/GMT -04:00', NULL, NULL),
(139, 'America/Martinique', 'UTC/GMT -04:00', NULL, NULL),
(140, 'America/Matamoros', 'UTC/GMT -06:00', NULL, NULL),
(141, 'America/Mazatlan', 'UTC/GMT -07:00', NULL, NULL),
(142, 'America/Menominee', 'UTC/GMT -06:00', NULL, NULL),
(143, 'America/Merida', 'UTC/GMT -06:00', NULL, NULL),
(144, 'America/Metlakatla', 'UTC/GMT -09:00', NULL, NULL),
(145, 'America/Mexico_City', 'UTC/GMT -06:00', NULL, NULL),
(146, 'America/Miquelon', 'UTC/GMT -03:00', NULL, NULL),
(147, 'America/Moncton', 'UTC/GMT -04:00', NULL, NULL),
(148, 'America/Monterrey', 'UTC/GMT -06:00', NULL, NULL),
(149, 'America/Montevideo', 'UTC/GMT -03:00', NULL, NULL),
(150, 'America/Montserrat', 'UTC/GMT -04:00', NULL, NULL),
(151, 'America/Nassau', 'UTC/GMT -05:00', NULL, NULL),
(152, 'America/New_York', 'UTC/GMT -05:00', NULL, NULL),
(153, 'America/Nipigon', 'UTC/GMT -05:00', NULL, NULL),
(154, 'America/Nome', 'UTC/GMT -09:00', NULL, NULL),
(155, 'America/Noronha', 'UTC/GMT -02:00', NULL, NULL),
(156, 'America/North_Dakota/Beulah', 'UTC/GMT -06:00', NULL, NULL),
(157, 'America/North_Dakota/Center', 'UTC/GMT -06:00', NULL, NULL),
(158, 'America/North_Dakota/New_Salem', 'UTC/GMT -06:00', NULL, NULL),
(159, 'America/Nuuk', 'UTC/GMT -03:00', NULL, NULL),
(160, 'America/Ojinaga', 'UTC/GMT -07:00', NULL, NULL),
(161, 'America/Panama', 'UTC/GMT -05:00', NULL, NULL),
(162, 'America/Pangnirtung', 'UTC/GMT -05:00', NULL, NULL),
(163, 'America/Paramaribo', 'UTC/GMT -03:00', NULL, NULL),
(164, 'America/Phoenix', 'UTC/GMT -07:00', NULL, NULL),
(165, 'America/Port-au-Prince', 'UTC/GMT -05:00', NULL, NULL),
(166, 'America/Port_of_Spain', 'UTC/GMT -04:00', NULL, NULL),
(167, 'America/Porto_Velho', 'UTC/GMT -04:00', NULL, NULL),
(168, 'America/Puerto_Rico', 'UTC/GMT -04:00', NULL, NULL),
(169, 'America/Punta_Arenas', 'UTC/GMT -03:00', NULL, NULL),
(170, 'America/Rainy_River', 'UTC/GMT -06:00', NULL, NULL),
(171, 'America/Rankin_Inlet', 'UTC/GMT -06:00', NULL, NULL),
(172, 'America/Recife', 'UTC/GMT -03:00', NULL, NULL),
(173, 'America/Regina', 'UTC/GMT -06:00', NULL, NULL),
(174, 'America/Resolute', 'UTC/GMT -06:00', NULL, NULL),
(175, 'America/Rio_Branco', 'UTC/GMT -05:00', NULL, NULL),
(176, 'America/Santarem', 'UTC/GMT -03:00', NULL, NULL),
(177, 'America/Santiago', 'UTC/GMT -03:00', NULL, NULL),
(178, 'America/Santo_Domingo', 'UTC/GMT -04:00', NULL, NULL),
(179, 'America/Sao_Paulo', 'UTC/GMT -03:00', NULL, NULL),
(180, 'America/Scoresbysund', 'UTC/GMT -01:00', NULL, NULL),
(181, 'America/Sitka', 'UTC/GMT -09:00', NULL, NULL),
(182, 'America/St_Barthelemy', 'UTC/GMT -04:00', NULL, NULL),
(183, 'America/St_Johns', 'UTC/GMT -03:30', NULL, NULL),
(184, 'America/St_Kitts', 'UTC/GMT -04:00', NULL, NULL),
(185, 'America/St_Lucia', 'UTC/GMT -04:00', NULL, NULL),
(186, 'America/St_Thomas', 'UTC/GMT -04:00', NULL, NULL),
(187, 'America/St_Vincent', 'UTC/GMT -04:00', NULL, NULL),
(188, 'America/Swift_Current', 'UTC/GMT -06:00', NULL, NULL),
(189, 'America/Tegucigalpa', 'UTC/GMT -06:00', NULL, NULL),
(190, 'America/Thule', 'UTC/GMT -04:00', NULL, NULL),
(191, 'America/Thunder_Bay', 'UTC/GMT -05:00', NULL, NULL),
(192, 'America/Tijuana', 'UTC/GMT -08:00', NULL, NULL),
(193, 'America/Toronto', 'UTC/GMT -05:00', NULL, NULL),
(194, 'America/Tortola', 'UTC/GMT -04:00', NULL, NULL),
(195, 'America/Vancouver', 'UTC/GMT -08:00', NULL, NULL),
(196, 'America/Whitehorse', 'UTC/GMT -07:00', NULL, NULL),
(197, 'America/Winnipeg', 'UTC/GMT -06:00', NULL, NULL),
(198, 'America/Yakutat', 'UTC/GMT -09:00', NULL, NULL),
(199, 'America/Yellowknife', 'UTC/GMT -07:00', NULL, NULL),
(200, 'Antarctica/Casey', 'UTC/GMT +08:00', NULL, NULL),
(201, 'Antarctica/Davis', 'UTC/GMT +07:00', NULL, NULL),
(202, 'Antarctica/DumontDUrville', 'UTC/GMT +10:00', NULL, NULL),
(203, 'Antarctica/Macquarie', 'UTC/GMT +11:00', NULL, NULL),
(204, 'Antarctica/Mawson', 'UTC/GMT +05:00', NULL, NULL),
(205, 'Antarctica/McMurdo', 'UTC/GMT +13:00', NULL, NULL),
(206, 'Antarctica/Palmer', 'UTC/GMT -03:00', NULL, NULL),
(207, 'Antarctica/Rothera', 'UTC/GMT -03:00', NULL, NULL),
(208, 'Antarctica/Syowa', 'UTC/GMT +03:00', NULL, NULL),
(209, 'Antarctica/Troll', 'UTC/GMT +00:00', NULL, NULL),
(210, 'Antarctica/Vostok', 'UTC/GMT +06:00', NULL, NULL),
(211, 'Arctic/Longyearbyen', 'UTC/GMT +01:00', NULL, NULL),
(212, 'Asia/Aden', 'UTC/GMT +03:00', NULL, NULL),
(213, 'Asia/Almaty', 'UTC/GMT +06:00', NULL, NULL),
(214, 'Asia/Amman', 'UTC/GMT +02:00', NULL, NULL),
(215, 'Asia/Anadyr', 'UTC/GMT +12:00', NULL, NULL),
(216, 'Asia/Aqtau', 'UTC/GMT +05:00', NULL, NULL),
(217, 'Asia/Aqtobe', 'UTC/GMT +05:00', NULL, NULL),
(218, 'Asia/Ashgabat', 'UTC/GMT +05:00', NULL, NULL),
(219, 'Asia/Atyrau', 'UTC/GMT +05:00', NULL, NULL),
(220, 'Asia/Baghdad', 'UTC/GMT +03:00', NULL, NULL),
(221, 'Asia/Bahrain', 'UTC/GMT +03:00', NULL, NULL),
(222, 'Asia/Baku', 'UTC/GMT +04:00', NULL, NULL),
(223, 'Asia/Bangkok', 'UTC/GMT +07:00', NULL, NULL),
(224, 'Asia/Barnaul', 'UTC/GMT +07:00', NULL, NULL),
(225, 'Asia/Beirut', 'UTC/GMT +02:00', NULL, NULL),
(226, 'Asia/Bishkek', 'UTC/GMT +06:00', NULL, NULL),
(227, 'Asia/Brunei', 'UTC/GMT +08:00', NULL, NULL),
(228, 'Asia/Chita', 'UTC/GMT +09:00', NULL, NULL),
(229, 'Asia/Choibalsan', 'UTC/GMT +08:00', NULL, NULL),
(230, 'Asia/Colombo', 'UTC/GMT +05:30', NULL, NULL),
(231, 'Asia/Damascus', 'UTC/GMT +02:00', NULL, NULL),
(232, 'Asia/Dhaka', 'UTC/GMT +06:00', NULL, NULL),
(233, 'Asia/Dili', 'UTC/GMT +09:00', NULL, NULL),
(234, 'Asia/Dubai', 'UTC/GMT +04:00', NULL, NULL),
(235, 'Asia/Dushanbe', 'UTC/GMT +05:00', NULL, NULL),
(236, 'Asia/Famagusta', 'UTC/GMT +02:00', NULL, NULL),
(237, 'Asia/Gaza', 'UTC/GMT +02:00', NULL, NULL),
(238, 'Asia/Hebron', 'UTC/GMT +02:00', NULL, NULL),
(239, 'Asia/Ho_Chi_Minh', 'UTC/GMT +07:00', NULL, NULL),
(240, 'Asia/Hong_Kong', 'UTC/GMT +08:00', NULL, NULL),
(241, 'Asia/Hovd', 'UTC/GMT +07:00', NULL, NULL),
(242, 'Asia/Irkutsk', 'UTC/GMT +08:00', NULL, NULL),
(243, 'Asia/Jakarta', 'UTC/GMT +07:00', NULL, NULL),
(244, 'Asia/Jayapura', 'UTC/GMT +09:00', NULL, NULL),
(245, 'Asia/Jerusalem', 'UTC/GMT +02:00', NULL, NULL),
(246, 'Asia/Kabul', 'UTC/GMT +04:30', NULL, NULL),
(247, 'Asia/Kamchatka', 'UTC/GMT +12:00', NULL, NULL),
(248, 'Asia/Karachi', 'UTC/GMT +05:00', NULL, NULL),
(249, 'Asia/Kathmandu', 'UTC/GMT +05:45', NULL, NULL),
(250, 'Asia/Khandyga', 'UTC/GMT +09:00', NULL, NULL),
(251, 'Asia/Kolkata', 'UTC/GMT +05:30', NULL, NULL),
(252, 'Asia/Krasnoyarsk', 'UTC/GMT +07:00', NULL, NULL),
(253, 'Asia/Kuala_Lumpur', 'UTC/GMT +08:00', NULL, NULL),
(254, 'Asia/Kuching', 'UTC/GMT +08:00', NULL, NULL),
(255, 'Asia/Kuwait', 'UTC/GMT +03:00', NULL, NULL),
(256, 'Asia/Macau', 'UTC/GMT +08:00', NULL, NULL),
(257, 'Asia/Magadan', 'UTC/GMT +11:00', NULL, NULL),
(258, 'Asia/Makassar', 'UTC/GMT +08:00', NULL, NULL),
(259, 'Asia/Manila', 'UTC/GMT +08:00', NULL, NULL),
(260, 'Asia/Muscat', 'UTC/GMT +04:00', NULL, NULL),
(261, 'Asia/Nicosia', 'UTC/GMT +02:00', NULL, NULL),
(262, 'Asia/Novokuznetsk', 'UTC/GMT +07:00', NULL, NULL),
(263, 'Asia/Novosibirsk', 'UTC/GMT +07:00', NULL, NULL),
(264, 'Asia/Omsk', 'UTC/GMT +06:00', NULL, NULL),
(265, 'Asia/Oral', 'UTC/GMT +05:00', NULL, NULL),
(266, 'Asia/Phnom_Penh', 'UTC/GMT +07:00', NULL, NULL),
(267, 'Asia/Pontianak', 'UTC/GMT +07:00', NULL, NULL),
(268, 'Asia/Pyongyang', 'UTC/GMT +09:00', NULL, NULL),
(269, 'Asia/Qatar', 'UTC/GMT +03:00', NULL, NULL),
(270, 'Asia/Qostanay', 'UTC/GMT +06:00', NULL, NULL),
(271, 'Asia/Qyzylorda', 'UTC/GMT +05:00', NULL, NULL),
(272, 'Asia/Riyadh', 'UTC/GMT +03:00', NULL, NULL),
(273, 'Asia/Sakhalin', 'UTC/GMT +11:00', NULL, NULL),
(274, 'Asia/Samarkand', 'UTC/GMT +05:00', NULL, NULL),
(275, 'Asia/Seoul', 'UTC/GMT +09:00', NULL, NULL),
(276, 'Asia/Shanghai', 'UTC/GMT +08:00', NULL, NULL),
(277, 'Asia/Singapore', 'UTC/GMT +08:00', NULL, NULL),
(278, 'Asia/Srednekolymsk', 'UTC/GMT +11:00', NULL, NULL),
(279, 'Asia/Taipei', 'UTC/GMT +08:00', NULL, NULL),
(280, 'Asia/Tashkent', 'UTC/GMT +05:00', NULL, NULL),
(281, 'Asia/Tbilisi', 'UTC/GMT +04:00', NULL, NULL),
(282, 'Asia/Tehran', 'UTC/GMT +03:30', NULL, NULL),
(283, 'Asia/Thimphu', 'UTC/GMT +06:00', NULL, NULL),
(284, 'Asia/Tokyo', 'UTC/GMT +09:00', NULL, NULL),
(285, 'Asia/Tomsk', 'UTC/GMT +07:00', NULL, NULL),
(286, 'Asia/Ulaanbaatar', 'UTC/GMT +08:00', NULL, NULL),
(287, 'Asia/Urumqi', 'UTC/GMT +06:00', NULL, NULL),
(288, 'Asia/Ust-Nera', 'UTC/GMT +10:00', NULL, NULL),
(289, 'Asia/Vientiane', 'UTC/GMT +07:00', NULL, NULL),
(290, 'Asia/Vladivostok', 'UTC/GMT +10:00', NULL, NULL),
(291, 'Asia/Yakutsk', 'UTC/GMT +09:00', NULL, NULL),
(292, 'Asia/Yangon', 'UTC/GMT +06:30', NULL, NULL),
(293, 'Asia/Yekaterinburg', 'UTC/GMT +05:00', NULL, NULL),
(294, 'Asia/Yerevan', 'UTC/GMT +04:00', NULL, NULL),
(295, 'Atlantic/Azores', 'UTC/GMT -01:00', NULL, NULL),
(296, 'Atlantic/Bermuda', 'UTC/GMT -04:00', NULL, NULL),
(297, 'Atlantic/Canary', 'UTC/GMT +00:00', NULL, NULL),
(298, 'Atlantic/Cape_Verde', 'UTC/GMT -01:00', NULL, NULL),
(299, 'Atlantic/Faroe', 'UTC/GMT +00:00', NULL, NULL),
(300, 'Atlantic/Madeira', 'UTC/GMT +00:00', NULL, NULL),
(301, 'Atlantic/Reykjavik', 'UTC/GMT +00:00', NULL, NULL),
(302, 'Atlantic/South_Georgia', 'UTC/GMT -02:00', NULL, NULL),
(303, 'Atlantic/St_Helena', 'UTC/GMT +00:00', NULL, NULL),
(304, 'Atlantic/Stanley', 'UTC/GMT -03:00', NULL, NULL),
(305, 'Australia/Adelaide', 'UTC/GMT +10:30', NULL, NULL),
(306, 'Australia/Brisbane', 'UTC/GMT +10:00', NULL, NULL),
(307, 'Australia/Broken_Hill', 'UTC/GMT +10:30', NULL, NULL),
(308, 'Australia/Currie', 'UTC/GMT +11:00', NULL, NULL),
(309, 'Australia/Darwin', 'UTC/GMT +09:30', NULL, NULL),
(310, 'Australia/Eucla', 'UTC/GMT +08:45', NULL, NULL),
(311, 'Australia/Hobart', 'UTC/GMT +11:00', NULL, NULL),
(312, 'Australia/Lindeman', 'UTC/GMT +10:00', NULL, NULL),
(313, 'Australia/Lord_Howe', 'UTC/GMT +11:00', NULL, NULL),
(314, 'Australia/Melbourne', 'UTC/GMT +11:00', NULL, NULL),
(315, 'Australia/Perth', 'UTC/GMT +08:00', NULL, NULL),
(316, 'Australia/Sydney', 'UTC/GMT +11:00', NULL, NULL),
(317, 'Europe/Amsterdam', 'UTC/GMT +01:00', NULL, NULL),
(318, 'Europe/Andorra', 'UTC/GMT +01:00', NULL, NULL),
(319, 'Europe/Astrakhan', 'UTC/GMT +04:00', NULL, NULL),
(320, 'Europe/Athens', 'UTC/GMT +02:00', NULL, NULL),
(321, 'Europe/Belgrade', 'UTC/GMT +01:00', NULL, NULL),
(322, 'Europe/Berlin', 'UTC/GMT +01:00', NULL, NULL),
(323, 'Europe/Bratislava', 'UTC/GMT +01:00', NULL, NULL),
(324, 'Europe/Brussels', 'UTC/GMT +01:00', NULL, NULL),
(325, 'Europe/Bucharest', 'UTC/GMT +02:00', NULL, NULL),
(326, 'Europe/Budapest', 'UTC/GMT +01:00', NULL, NULL),
(327, 'Europe/Busingen', 'UTC/GMT +01:00', NULL, NULL),
(328, 'Europe/Chisinau', 'UTC/GMT +02:00', NULL, NULL),
(329, 'Europe/Copenhagen', 'UTC/GMT +01:00', NULL, NULL),
(330, 'Europe/Dublin', 'UTC/GMT +00:00', NULL, NULL),
(331, 'Europe/Gibraltar', 'UTC/GMT +01:00', NULL, NULL),
(332, 'Europe/Guernsey', 'UTC/GMT +00:00', NULL, NULL),
(333, 'Europe/Helsinki', 'UTC/GMT +02:00', NULL, NULL),
(334, 'Europe/Isle_of_Man', 'UTC/GMT +00:00', NULL, NULL),
(335, 'Europe/Istanbul', 'UTC/GMT +03:00', NULL, NULL),
(336, 'Europe/Jersey', 'UTC/GMT +00:00', NULL, NULL),
(337, 'Europe/Kaliningrad', 'UTC/GMT +02:00', NULL, NULL),
(338, 'Europe/Kiev', 'UTC/GMT +02:00', NULL, NULL),
(339, 'Europe/Kirov', 'UTC/GMT +03:00', NULL, NULL),
(340, 'Europe/Lisbon', 'UTC/GMT +00:00', NULL, NULL),
(341, 'Europe/Ljubljana', 'UTC/GMT +01:00', NULL, NULL),
(342, 'Europe/London', 'UTC/GMT +00:00', NULL, NULL),
(343, 'Europe/Luxembourg', 'UTC/GMT +01:00', NULL, NULL),
(344, 'Europe/Madrid', 'UTC/GMT +01:00', NULL, NULL),
(345, 'Europe/Malta', 'UTC/GMT +01:00', NULL, NULL),
(346, 'Europe/Mariehamn', 'UTC/GMT +02:00', NULL, NULL),
(347, 'Europe/Minsk', 'UTC/GMT +03:00', NULL, NULL),
(348, 'Europe/Monaco', 'UTC/GMT +01:00', NULL, NULL),
(349, 'Europe/Moscow', 'UTC/GMT +03:00', NULL, NULL),
(350, 'Europe/Oslo', 'UTC/GMT +01:00', NULL, NULL),
(351, 'Europe/Paris', 'UTC/GMT +01:00', NULL, NULL),
(352, 'Europe/Podgorica', 'UTC/GMT +01:00', NULL, NULL),
(353, 'Europe/Prague', 'UTC/GMT +01:00', NULL, NULL),
(354, 'Europe/Riga', 'UTC/GMT +02:00', NULL, NULL),
(355, 'Europe/Rome', 'UTC/GMT +01:00', NULL, NULL),
(356, 'Europe/Samara', 'UTC/GMT +04:00', NULL, NULL),
(357, 'Europe/San_Marino', 'UTC/GMT +01:00', NULL, NULL),
(358, 'Europe/Sarajevo', 'UTC/GMT +01:00', NULL, NULL),
(359, 'Europe/Saratov', 'UTC/GMT +04:00', NULL, NULL),
(360, 'Europe/Simferopol', 'UTC/GMT +03:00', NULL, NULL),
(361, 'Europe/Skopje', 'UTC/GMT +01:00', NULL, NULL),
(362, 'Europe/Sofia', 'UTC/GMT +02:00', NULL, NULL),
(363, 'Europe/Stockholm', 'UTC/GMT +01:00', NULL, NULL),
(364, 'Europe/Tallinn', 'UTC/GMT +02:00', NULL, NULL),
(365, 'Europe/Tirane', 'UTC/GMT +01:00', NULL, NULL),
(366, 'Europe/Ulyanovsk', 'UTC/GMT +04:00', NULL, NULL),
(367, 'Europe/Uzhgorod', 'UTC/GMT +02:00', NULL, NULL),
(368, 'Europe/Vaduz', 'UTC/GMT +01:00', NULL, NULL),
(369, 'Europe/Vatican', 'UTC/GMT +01:00', NULL, NULL),
(370, 'Europe/Vienna', 'UTC/GMT +01:00', NULL, NULL),
(371, 'Europe/Vilnius', 'UTC/GMT +02:00', NULL, NULL),
(372, 'Europe/Volgograd', 'UTC/GMT +04:00', NULL, NULL),
(373, 'Europe/Warsaw', 'UTC/GMT +01:00', NULL, NULL),
(374, 'Europe/Zagreb', 'UTC/GMT +01:00', NULL, NULL),
(375, 'Europe/Zaporozhye', 'UTC/GMT +02:00', NULL, NULL),
(376, 'Europe/Zurich', 'UTC/GMT +01:00', NULL, NULL),
(377, 'Indian/Antananarivo', 'UTC/GMT +03:00', NULL, NULL),
(378, 'Indian/Chagos', 'UTC/GMT +06:00', NULL, NULL),
(379, 'Indian/Christmas', 'UTC/GMT +07:00', NULL, NULL),
(380, 'Indian/Cocos', 'UTC/GMT +06:30', NULL, NULL),
(381, 'Indian/Comoro', 'UTC/GMT +03:00', NULL, NULL),
(382, 'Indian/Kerguelen', 'UTC/GMT +05:00', NULL, NULL),
(383, 'Indian/Mahe', 'UTC/GMT +04:00', NULL, NULL),
(384, 'Indian/Maldives', 'UTC/GMT +05:00', NULL, NULL),
(385, 'Indian/Mauritius', 'UTC/GMT +04:00', NULL, NULL),
(386, 'Indian/Mayotte', 'UTC/GMT +03:00', NULL, NULL),
(387, 'Indian/Reunion', 'UTC/GMT +04:00', NULL, NULL),
(388, 'Pacific/Apia', 'UTC/GMT +14:00', NULL, NULL),
(389, 'Pacific/Auckland', 'UTC/GMT +13:00', NULL, NULL),
(390, 'Pacific/Bougainville', 'UTC/GMT +11:00', NULL, NULL),
(391, 'Pacific/Chatham', 'UTC/GMT +13:45', NULL, NULL),
(392, 'Pacific/Chuuk', 'UTC/GMT +10:00', NULL, NULL),
(393, 'Pacific/Easter', 'UTC/GMT -05:00', NULL, NULL),
(394, 'Pacific/Efate', 'UTC/GMT +11:00', NULL, NULL),
(395, 'Pacific/Enderbury', 'UTC/GMT +13:00', NULL, NULL),
(396, 'Pacific/Fakaofo', 'UTC/GMT +13:00', NULL, NULL),
(397, 'Pacific/Fiji', 'UTC/GMT +12:00', NULL, NULL),
(398, 'Pacific/Funafuti', 'UTC/GMT +12:00', NULL, NULL),
(399, 'Pacific/Galapagos', 'UTC/GMT -06:00', NULL, NULL),
(400, 'Pacific/Gambier', 'UTC/GMT -09:00', NULL, NULL),
(401, 'Pacific/Guadalcanal', 'UTC/GMT +11:00', NULL, NULL),
(402, 'Pacific/Guam', 'UTC/GMT +10:00', NULL, NULL),
(403, 'Pacific/Honolulu', 'UTC/GMT -10:00', NULL, NULL),
(404, 'Pacific/Kiritimati', 'UTC/GMT +14:00', NULL, NULL),
(405, 'Pacific/Kosrae', 'UTC/GMT +11:00', NULL, NULL),
(406, 'Pacific/Kwajalein', 'UTC/GMT +12:00', NULL, NULL),
(407, 'Pacific/Majuro', 'UTC/GMT +12:00', NULL, NULL),
(408, 'Pacific/Marquesas', 'UTC/GMT -09:30', NULL, NULL),
(409, 'Pacific/Midway', 'UTC/GMT -11:00', NULL, NULL),
(410, 'Pacific/Nauru', 'UTC/GMT +12:00', NULL, NULL),
(411, 'Pacific/Niue', 'UTC/GMT -11:00', NULL, NULL),
(412, 'Pacific/Norfolk', 'UTC/GMT +12:00', NULL, NULL),
(413, 'Pacific/Noumea', 'UTC/GMT +11:00', NULL, NULL),
(414, 'Pacific/Pago_Pago', 'UTC/GMT -11:00', NULL, NULL),
(415, 'Pacific/Palau', 'UTC/GMT +09:00', NULL, NULL),
(416, 'Pacific/Pitcairn', 'UTC/GMT -08:00', NULL, NULL),
(417, 'Pacific/Pohnpei', 'UTC/GMT +11:00', NULL, NULL),
(418, 'Pacific/Port_Moresby', 'UTC/GMT +10:00', NULL, NULL),
(419, 'Pacific/Rarotonga', 'UTC/GMT -10:00', NULL, NULL),
(420, 'Pacific/Saipan', 'UTC/GMT +10:00', NULL, NULL),
(421, 'Pacific/Tahiti', 'UTC/GMT -10:00', NULL, NULL),
(422, 'Pacific/Tarawa', 'UTC/GMT +12:00', NULL, NULL),
(423, 'Pacific/Tongatapu', 'UTC/GMT +13:00', NULL, NULL),
(424, 'Pacific/Wake', 'UTC/GMT +12:00', NULL, NULL),
(425, 'Pacific/Wallis', 'UTC/GMT +12:00', NULL, NULL),
(426, 'UTC', 'UTC/GMT +00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `end_user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `merchant_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID',
  `refund_reference` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Refund Reference',
  `transaction_reference_id` int(11) NOT NULL DEFAULT 0,
  `transaction_type_id` int(10) UNSIGNED DEFAULT NULL,
  `user_type` enum('registered','unregistered') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'registered',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(20,8) DEFAULT 0.00000000,
  `percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `total` decimal(20,8) DEFAULT 0.00000000,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `end_user_id`, `currency_id`, `payment_method_id`, `merchant_id`, `bank_id`, `file_id`, `uuid`, `refund_reference`, `transaction_reference_id`, `transaction_type_id`, `user_type`, `email`, `phone`, `subtotal`, `percentage`, `charge_percentage`, `charge_fixed`, `total`, `note`, `status`, `created_at`, `updated_at`) VALUES
(32, NULL, 8, 1, NULL, NULL, NULL, NULL, '61CF5ECEF2880', NULL, 2, 4, 'unregistered', NULL, '+24381486363', 10.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 'dot', 'Pending', '2022-01-24 04:11:59', '2022-01-24 04:11:59'),
(39, 9, 8, 1, NULL, NULL, NULL, NULL, 'A7AA45B07EE61', NULL, 3, 4, 'registered', 'losalepatrick@gmail.com', NULL, 10.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 'Th', 'Success', '2022-01-27 06:32:52', '2022-01-27 06:32:52'),
(40, 9, NULL, 1, NULL, NULL, NULL, NULL, '2C928EE5CDEC0', NULL, 10, 5, 'registered', NULL, NULL, 5.00000000, 0.00000000, 0.00000000, 0.00000000, -5.00000000, NULL, 'Success', '2022-02-13 03:38:46', '2022-02-13 03:38:46'),
(41, 9, NULL, 5, NULL, NULL, NULL, NULL, '2C928EE5CDEC0', NULL, 10, 6, 'registered', NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, 'Success', '2022-02-13 03:38:46', '2022-02-13 03:38:46'),
(42, 9, NULL, 1, NULL, NULL, NULL, NULL, 'C8AF4A17779AE', NULL, 4, 3, 'unregistered', 'losalepatricke@gmail.com', NULL, 2.00000000, 0.00000000, 0.00000000, 0.00000000, -2.00000000, 'Y', 'Pending', '2022-02-13 03:40:28', '2022-02-13 03:40:28'),
(43, NULL, 9, 1, NULL, NULL, NULL, NULL, 'C8AF4A17779AE', NULL, 4, 4, 'unregistered', 'losalepatricke@gmail.com', NULL, 2.00000000, 0.00000000, 0.00000000, 0.00000000, 2.00000000, 'Y', 'Pending', '2022-02-13 03:40:28', '2022-02-13 03:40:28'),
(78, 17, NULL, 1, 1, NULL, NULL, NULL, '5989750BA15EF', NULL, 11, 1, 'registered', NULL, NULL, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 50.00000000, NULL, 'Success', '2022-02-15 03:55:52', '2022-02-15 03:55:52'),
(79, 17, 19, 1, NULL, NULL, NULL, NULL, 'A594B1C8CF37A', NULL, 12, 3, 'registered', NULL, '+243819856860', 10.00000000, 0.00000000, 0.00000000, 0.00000000, -10.00000000, 'Salut', 'Success', '2022-02-15 04:15:50', '2022-02-15 04:26:14'),
(80, 19, 17, 1, NULL, NULL, NULL, NULL, 'A594B1C8CF37A', NULL, 12, 4, 'registered', NULL, '+243819856860', 10.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 'Salut', 'Success', '2022-02-15 04:15:50', '2022-02-15 04:26:14'),
(81, 17, 20, 1, NULL, NULL, NULL, NULL, '17BF79516B655', NULL, 13, 3, 'registered', NULL, '+243820345535', 10.00000000, 0.00000000, 0.00000000, 0.00000000, -10.00000000, 'Pour boire', 'Success', '2022-02-15 04:27:47', '2022-02-15 04:37:08'),
(82, 20, 17, 1, NULL, NULL, NULL, NULL, '17BF79516B655', NULL, 13, 4, 'registered', NULL, '+243820345535', 10.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 'Pour boire', 'Success', '2022-02-15 04:27:47', '2022-02-15 04:37:08'),
(91, 20, NULL, 1, NULL, NULL, NULL, NULL, '7BC49454D907B', NULL, 18, 5, 'registered', NULL, NULL, 5.00000000, 0.00000000, 0.00000000, 0.00000000, -5.00000000, NULL, 'Blocked', '2022-02-15 04:46:52', '2022-02-16 04:27:29'),
(92, 20, NULL, 5, NULL, NULL, NULL, NULL, '7BC49454D907B', NULL, 18, 6, 'registered', NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, 'Blocked', '2022-02-15 04:46:52', '2022-02-16 04:27:29'),
(93, 19, NULL, 1, NULL, NULL, NULL, NULL, 'BF1435F43FBF0', NULL, 19, 5, 'registered', NULL, NULL, 4.00000000, 0.00000000, 0.00000000, 0.00000000, -4.00000000, NULL, 'Blocked', '2022-02-15 04:47:35', '2022-02-16 04:31:39'),
(94, 19, NULL, 3, NULL, NULL, NULL, NULL, 'BF1435F43FBF0', NULL, 19, 6, 'registered', NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, 'Blocked', '2022-02-15 04:47:35', '2022-02-16 04:31:39'),
(95, 17, NULL, 1, NULL, NULL, NULL, NULL, '93EAB45A933B0', NULL, 20, 5, 'registered', NULL, NULL, 10.00000000, 0.00000000, 0.00000000, 0.00000000, -10.00000000, NULL, 'Success', '2022-02-15 04:48:25', '2022-02-15 04:48:25'),
(96, 17, NULL, 5, NULL, NULL, NULL, NULL, '93EAB45A933B0', NULL, 20, 6, 'registered', NULL, NULL, 2040.00000000, 0.00000000, 0.00000000, 0.00000000, 2040.00000000, NULL, 'Success', '2022-02-15 04:48:25', '2022-02-15 04:48:25'),
(101, 20, 17, 1, NULL, NULL, NULL, NULL, '692D87AE3FBFE', NULL, 15, 3, 'registered', 'freddymukendi12@gmail.com', NULL, 3.00000000, 1.00000000, 0.03000000, 1.00000000, -4.03000000, 'C\'est tout ce que j\'ai 🙄🙄🙄', 'Success', '2022-02-15 04:59:43', '2022-02-15 04:59:43'),
(102, 17, 20, 1, NULL, NULL, NULL, NULL, '692D87AE3FBFE', NULL, 15, 4, 'registered', 'freddymukendi12@gmail.com', NULL, 3.00000000, 0.00000000, 0.00000000, 0.00000000, 3.00000000, 'C\'est tout ce que j\'ai 🙄🙄🙄', 'Success', '2022-02-15 04:59:43', '2022-02-15 04:59:43'),
(103, 19, 20, 1, NULL, NULL, NULL, NULL, '1AFC4C15D8BDD', NULL, 4, 9, 'registered', 'jbisselele2015@gmail.com', NULL, 10.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, 'Aide urgence', 'Blocked', '2022-02-15 05:01:10', '2022-02-16 15:27:23'),
(104, 20, 19, 1, NULL, NULL, NULL, NULL, '1AFC4C15D8BDD', NULL, 4, 10, 'registered', 'jbisselele2015@gmail.com', NULL, 10.00000000, 0.00000000, 0.00000000, 0.00000000, -10.00000000, 'Aide urgence', 'Blocked', '2022-02-15 05:01:10', '2022-02-16 15:27:23'),
(114, 17, NULL, 1, NULL, NULL, NULL, NULL, '70C1CC9E7FC96', NULL, 6, 9, 'unregistered', NULL, '+243820345535', 100.00000000, 0.00000000, 0.00000000, 0.00000000, 100.00000000, 'Aide humanitaire', 'Pending', '2022-02-16 04:19:19', '2022-02-16 04:19:19'),
(115, NULL, 17, 1, NULL, NULL, NULL, NULL, '70C1CC9E7FC96', NULL, 6, 10, 'unregistered', NULL, '+243820345535', 100.00000000, 0.00000000, 0.00000000, 0.00000000, -100.00000000, 'Aide humanitaire', 'Pending', '2022-02-16 04:19:19', '2022-02-16 04:19:19'),
(116, 17, NULL, 1, NULL, NULL, NULL, NULL, '5B83EC9B7A9D3', NULL, 24, 5, 'registered', NULL, NULL, 10.00000000, 1.00000000, 0.10000000, 1.00000000, -11.10000000, NULL, 'Success', '2022-02-16 04:35:24', '2022-02-16 04:35:24'),
(117, 17, NULL, 5, NULL, NULL, NULL, NULL, '5B83EC9B7A9D3', NULL, 24, 6, 'registered', NULL, NULL, 20400.00000000, 0.00000000, 0.00000000, 0.00000000, 20400.00000000, NULL, 'Success', '2022-02-16 04:35:24', '2022-02-16 04:35:24'),
(118, 24, NULL, 1, 1, NULL, NULL, NULL, '0D4CE8A09C184', NULL, 14, 1, 'registered', NULL, NULL, 10.00000000, 0.00000000, 0.00000000, 0.00000000, 10.00000000, NULL, 'Blocked', '2022-02-16 04:46:29', '2022-02-17 09:29:31'),
(119, 20, NULL, 1, NULL, NULL, NULL, NULL, 'DDC20A9D6A3BB', NULL, 25, 5, 'registered', NULL, NULL, 2.00000000, 1.00000000, 0.02000000, 1.00000000, -3.02000000, NULL, 'Success', '2022-02-16 15:28:29', '2022-02-16 15:28:29'),
(120, 20, NULL, 5, NULL, NULL, NULL, NULL, 'DDC20A9D6A3BB', NULL, 25, 6, 'registered', NULL, NULL, 4080.00000000, 0.00000000, 0.00000000, 0.00000000, 4080.00000000, NULL, 'Success', '2022-02-16 15:28:29', '2022-02-16 15:28:29'),
(121, 17, 24, 1, NULL, NULL, NULL, NULL, '47B74C52BC7DA', NULL, 7, 9, 'registered', NULL, '+243825861808', 50.00000000, 0.00000000, 0.00000000, 0.00000000, 50.00000000, 'Aide humanitaire', 'Blocked', '2022-02-17 03:42:00', '2022-02-17 03:44:43'),
(122, 24, 17, 1, NULL, NULL, NULL, NULL, '47B74C52BC7DA', NULL, 7, 10, 'registered', NULL, '+243825861808', 50.00000000, 0.00000000, 0.00000000, 0.00000000, -50.00000000, 'Aide humanitaire', 'Blocked', '2022-02-17 03:42:00', '2022-02-17 03:44:43'),
(123, 17, 24, 1, NULL, NULL, NULL, NULL, 'A90BF59CF3ABC', NULL, 8, 9, 'registered', NULL, '+243825861808', 1.00000000, 0.00000000, 0.00000000, 0.00000000, 1.00000000, 'Charité', 'Pending', '2022-02-17 03:44:27', '2022-02-17 03:44:27'),
(124, 24, 17, 1, NULL, NULL, NULL, NULL, 'A90BF59CF3ABC', NULL, 8, 10, 'registered', NULL, '+243825861808', 1.00000000, 0.00000000, 0.00000000, 0.00000000, -1.00000000, 'Charité', 'Pending', '2022-02-17 03:44:27', '2022-02-17 03:44:27'),
(125, 9, NULL, 1, 1, NULL, NULL, NULL, '8EB845C99957E', NULL, 15, 1, 'registered', NULL, NULL, 1020.00000000, 0.00000000, 0.00000000, 0.00000000, 1020.00000000, NULL, 'Success', '2022-02-17 09:42:04', '2022-02-17 09:42:04'),
(126, 9, NULL, 1, NULL, NULL, NULL, NULL, '4B3BB2B6F4D5E', NULL, 26, 5, 'registered', NULL, NULL, 150.00000000, 1.00000000, 1.50000000, 1.00000000, -152.50000000, NULL, 'Success', '2022-02-17 11:51:14', '2022-02-17 11:51:14'),
(127, 9, NULL, 3, NULL, NULL, NULL, NULL, '4B3BB2B6F4D5E', NULL, 26, 6, 'registered', NULL, NULL, 131.94000000, 0.00000000, 0.00000000, 0.00000000, 131.94000000, NULL, 'Success', '2022-02-17 11:51:14', '2022-02-17 11:51:14'),
(128, 9, NULL, 1, NULL, NULL, NULL, NULL, 'D99E1EAFB32B2', NULL, 27, 5, 'registered', NULL, NULL, 100.00000000, 1.00000000, 1.00000000, 1.00000000, -102.00000000, NULL, 'Success', '2022-02-17 11:53:06', '2022-02-17 11:53:06'),
(129, 9, NULL, 5, NULL, NULL, NULL, NULL, 'D99E1EAFB32B2', NULL, 27, 6, 'registered', NULL, NULL, 204000.00000000, 0.00000000, 0.00000000, 0.00000000, 204000.00000000, NULL, 'Success', '2022-02-17 11:53:06', '2022-02-17 11:53:06'),
(130, 9, NULL, 3, NULL, NULL, NULL, NULL, 'B2728A57DDC5B', NULL, 16, 3, 'unregistered', NULL, '+243814864362', 25.00000000, 2.00000000, 0.50000000, 1.00000000, -26.50000000, 'Uf', 'Pending', '2022-02-18 04:25:18', '2022-02-18 04:25:18'),
(131, NULL, 9, 3, NULL, NULL, NULL, NULL, 'B2728A57DDC5B', NULL, 16, 4, 'unregistered', NULL, '+243814864362', 25.00000000, 0.00000000, 0.00000000, 0.00000000, 25.00000000, 'Uf', 'Pending', '2022-02-18 04:25:18', '2022-02-18 04:25:18'),
(132, 9, NULL, 1, NULL, NULL, NULL, NULL, 'BED5D78CEF69B', NULL, 28, 5, 'registered', NULL, NULL, 400.00000000, 2.00000000, 8.00000000, 1.00000000, -409.00000000, NULL, 'Success', '2022-02-19 06:11:38', '2022-02-19 06:11:38'),
(133, 9, NULL, 5, NULL, NULL, NULL, NULL, 'BED5D78CEF69B', NULL, 28, 6, 'registered', NULL, NULL, 816000.00000000, 0.00000000, 0.00000000, 0.00000000, 816000.00000000, NULL, 'Success', '2022-02-19 06:11:38', '2022-02-19 06:11:38'),
(134, 9, 28, 1, NULL, NULL, NULL, NULL, '385B9A37CBC55', NULL, 17, 3, 'registered', NULL, '+243825883037', 20.00000000, 1.00000000, 0.20000000, 1.00000000, -21.20000000, 'Dépôt', 'Success', '2022-02-19 14:34:00', '2022-02-19 14:34:00'),
(135, 28, 9, 1, NULL, NULL, NULL, NULL, '385B9A37CBC55', NULL, 17, 4, 'registered', NULL, '+243825883037', 20.00000000, 0.00000000, 0.00000000, 0.00000000, 20.00000000, 'Dépôt', 'Success', '2022-02-19 14:34:00', '2022-02-19 14:34:00'),
(138, 9, NULL, 1, 6, NULL, NULL, NULL, '62CE1528921F2', NULL, 16, 2, 'registered', NULL, NULL, 288.00000000, 1.00000000, 2.88000000, 1.00000000, -291.88000000, NULL, 'Pending', '2022-02-20 00:04:52', '2022-02-20 00:04:52'),
(139, 9, NULL, 3, 3, NULL, NULL, NULL, '71A7ECEC4EEDE', NULL, 17, 2, 'registered', NULL, NULL, 28.00000000, 1.00000000, 0.28000000, 2.00000000, -30.28000000, NULL, 'Pending', '2022-02-20 00:05:20', '2022-02-20 00:05:20'),
(141, NULL, 29, 1, NULL, NULL, NULL, NULL, 'CFC6CC0F88880', NULL, 9, 10, 'unregistered', 'rubel.nstu27@gmail.com', NULL, 100.00000000, 0.00000000, 0.00000000, 0.00000000, -100.00000000, 'Test', 'Pending', '2022-02-20 00:34:45', '2022-02-20 00:34:45'),
(154, 9, NULL, 1, NULL, NULL, NULL, NULL, 'B705666A78AE6', NULL, 29, 5, 'registered', NULL, NULL, 25.00000000, 2.00000000, 0.50000000, 1.00000000, -26.50000000, NULL, 'Success', '2022-02-20 01:27:49', '2022-02-20 01:27:49'),
(155, 9, NULL, 3, NULL, NULL, NULL, NULL, 'B705666A78AE6', NULL, 29, 6, 'registered', NULL, NULL, 22.06000000, 0.00000000, 0.00000000, 0.00000000, 22.06000000, NULL, 'Success', '2022-02-20 01:27:49', '2022-02-20 01:27:49'),
(156, 33, NULL, 1, 1, NULL, NULL, NULL, '09A6353901816', NULL, 19, 1, 'registered', NULL, NULL, 1000.00000000, 0.00000000, 0.00000000, 0.00000000, 1000.00000000, NULL, 'Success', '2022-02-20 07:23:43', '2022-02-20 07:23:43'),
(162, 9, NULL, 1, NULL, NULL, NULL, NULL, '87209506071EB', NULL, 20, 3, 'unregistered', NULL, '+243812290362', 20.00000000, 1.00000000, 0.20000000, 1.00000000, -21.20000000, 'Dépôt', 'Pending', '2022-02-20 09:50:52', '2022-02-20 09:50:52'),
(163, NULL, 9, 1, NULL, NULL, NULL, NULL, '87209506071EB', NULL, 20, 4, 'unregistered', NULL, '+243812290362', 20.00000000, 0.00000000, 0.00000000, 0.00000000, 20.00000000, 'Dépôt', 'Pending', '2022-02-20 09:50:52', '2022-02-20 09:50:52'),
(164, 9, NULL, 5, NULL, NULL, NULL, NULL, '745A2F8EBABB8', NULL, 30, 5, 'registered', NULL, NULL, 70000.00000000, 1.00000000, 700.00000000, 1.00000000, -70701.00000000, NULL, 'Success', '2022-02-20 09:53:34', '2022-02-20 09:53:34'),
(165, 9, NULL, 1, NULL, NULL, NULL, NULL, '745A2F8EBABB8', NULL, 30, 6, 'registered', NULL, NULL, 35.07350000, 0.00000000, 0.00000000, 0.00000000, 35.07350000, NULL, 'Success', '2022-02-20 09:53:34', '2022-02-20 09:53:34'),
(166, 35, NULL, 1, 1, NULL, NULL, NULL, '4BDF3BF12C29F', NULL, 21, 1, 'registered', NULL, NULL, 50.00000000, 0.00000000, 0.00000000, 0.00000000, 50.00000000, NULL, 'Success', '2022-02-20 10:04:25', '2022-02-20 10:19:19'),
(167, 19, NULL, 1, NULL, NULL, NULL, NULL, 'E67D31906CA53', NULL, 31, 5, 'registered', NULL, NULL, 5.00000000, 2.00000000, 0.10000000, 1.00000000, -6.10000000, NULL, 'Success', '2022-02-21 02:21:44', '2022-02-21 02:21:44'),
(168, 19, NULL, 5, NULL, NULL, NULL, NULL, 'E67D31906CA53', NULL, 31, 6, 'registered', NULL, NULL, 10200.00000000, 0.00000000, 0.00000000, 0.00000000, 10200.00000000, NULL, 'Success', '2022-02-21 02:21:44', '2022-02-21 02:21:44'),
(169, 9, NULL, 1, 1, NULL, NULL, NULL, '9D425244984CC', NULL, 22, 1, 'registered', NULL, NULL, 37.00000000, 0.00000000, 0.00000000, 0.00000000, 37.00000000, NULL, 'Success', '2022-02-21 16:24:57', '2022-02-21 16:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` enum('Deposit','Withdrawal','Transferred','Received','Exchange_From','Exchange_To','Request_From','Request_To','Payment_Sent','Payment_Received','Crypto_Sent','Crypto_Received') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `name`) VALUES
(1, 'Deposit'),
(2, 'Withdrawal'),
(3, 'Transferred'),
(4, 'Received'),
(5, 'Exchange_From'),
(6, 'Exchange_To'),
(9, 'Request_From'),
(10, 'Request_To'),
(11, 'Payment_Sent'),
(12, 'Payment_Received'),
(13, 'Crypto_Sent'),
(14, 'Crypto_Received');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `receiver_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `bank_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `sender_id`, `receiver_id`, `currency_id`, `bank_id`, `file_id`, `uuid`, `fee`, `amount`, `note`, `email`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(4, 9, NULL, 1, NULL, NULL, 'C8AF4A17779AE', 0.00000000, 2.00000000, 'Y', 'losalepatricke@gmail.com', NULL, 'Pending', '2022-02-13 03:40:28', '2022-02-13 03:40:28'),
(12, 17, 19, 1, NULL, NULL, 'A594B1C8CF37A', 0.00000000, 10.00000000, 'Salut', NULL, '+243819856860', 'Success', '2022-02-15 04:15:50', '2022-02-15 04:26:14'),
(13, 17, 20, 1, NULL, NULL, '17BF79516B655', 0.00000000, 10.00000000, 'Pour boire', NULL, '+243820345535', 'Success', '2022-02-15 04:27:47', '2022-02-15 04:37:08'),
(15, 20, 17, 1, NULL, NULL, '692D87AE3FBFE', 1.03000000, 3.00000000, 'C\'est tout ce que j\'ai 🙄🙄🙄', 'freddymukendi12@gmail.com', NULL, 'Success', '2022-02-15 04:59:43', '2022-02-15 04:59:43'),
(16, 9, NULL, 3, NULL, NULL, 'B2728A57DDC5B', 1.50000000, 25.00000000, 'Uf', NULL, '+243814864362', 'Pending', '2022-02-18 04:25:18', '2022-02-18 04:25:18'),
(17, 9, 28, 1, NULL, NULL, '385B9A37CBC55', 1.20000000, 20.00000000, 'Dépôt', NULL, '+243825883037', 'Success', '2022-02-19 14:33:58', '2022-02-19 14:33:58'),
(20, 9, NULL, 1, NULL, NULL, '87209506071EB', 1.20000000, 20.00000000, 'Dépôt', NULL, '+243812290362', 'Pending', '2022-02-20 09:50:48', '2022-02-20 09:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('user','merchant') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `formattedPhone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google2fa_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `defaultCountry` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrierCode` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phrase` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_verified` tinyint(1) NOT NULL DEFAULT 0,
  `identity_verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `type`, `first_name`, `last_name`, `formattedPhone`, `phone`, `google2fa_secret`, `defaultCountry`, `carrierCode`, `email`, `password`, `phrase`, `address_verified`, `identity_verified`, `status`, `remember_token`, `created_at`, `updated_at`, `picture`) VALUES
(2, 2, 'user', 'Lafontaine', 'Mukobelwa', '+243993073881', '993073881', NULL, 'cd', '243', 'lafontainewebmaster1@gmail.com', '$2y$10$p6jDixYgfinBRvHRCdPlsufr8DWH6TbZ7Jsur5Jk4jarKNd7gRgqW', NULL, 0, 0, 'Active', NULL, '2022-01-20 11:14:29', '2022-01-20 11:14:29', ''),
(4, 2, 'user', 'Jabinho', 'Tayeye', '+243824447575', '824447575', NULL, 'cd', '243', 'jabinhojttayeye@gmail.com', '$2y$10$9cyo25UWzDnlUvtn05F4SOsgLV8yRua7O3ShLAg4AHGtzABE5to8m', NULL, 0, 0, 'Active', NULL, '2022-01-21 03:20:24', '2022-01-21 03:20:24', ''),
(6, 3, 'merchant', 'Charles', 'DIMANDJA', '+243816028888', '816028888', NULL, 'cd', '243', 'jhondimandja@gmail.com', '$2y$10$9DzDWCZDu/vVjZZNinJVe.x2tTr0jWfl0UTrSuI8yn5pjG6lVpTmm', NULL, 0, 0, 'Active', NULL, '2022-01-22 00:51:59', '2022-01-22 00:51:59', ''),
(9, 3, 'merchant', 'PATRICK', 'Bambuli', NULL, '814864363', NULL, 'cd', '243', 'losalepatrick@gmail.com', '$2y$10$BmRjwFcOyf2rIIZZORGsROpSxswJP5BoG7/qSRVEN./Dvqhv0GcLm', NULL, 0, 0, 'Active', NULL, '2022-01-25 12:27:21', '2022-02-21 06:03:47', '1645443227.jpg'),
(11, 3, 'merchant', 'John', 'Temig', NULL, NULL, NULL, NULL, NULL, 'johntemig@gmail.com', '$2y$10$0AWeQzRPrjGXXebtREtC8OQr0lt4TxNO3iVnw1xH/XXIn4yCHAIDC', NULL, 0, 0, 'Active', NULL, '2022-01-31 11:09:06', '2022-01-31 11:09:06', ''),
(17, 2, 'user', 'Freddy', 'Mukendi', '+243840720752', '840720752', NULL, NULL, NULL, 'freddymukendi12@gmail.com', '$2y$10$pl4EHscLDchmslur1F2lF.Pj8V8dN.zJVRs1BU8bC4ixY0EbXnRp2', NULL, 0, 0, 'Active', NULL, '2022-02-15 03:53:42', '2022-02-16 04:16:36', ''),
(19, 2, 'user', 'Sandra', 'Lumu Bintu', NULL, '819856860', NULL, NULL, NULL, 'sandralumubintu@gmail.com', '$2y$10$sge.8yabqMQqAjVrrbGvHufH1bbNvBSKTjTV02TXwIif7bI/TnbzG', NULL, 0, 0, 'Active', NULL, '2022-02-15 04:26:14', '2022-02-21 02:20:26', '1645429826.jpg'),
(20, 2, 'user', 'Josepha', 'BISELELE', '+243820345535', '820345535', NULL, 'cd', '243', 'jbisselele2015@gmail.com', '$2y$10$2iqW9KJ71qveK063iCaCh.oYLxRo6ngHer8gf8zF.7o5TVl.RtfnW', NULL, 0, 0, 'Active', NULL, '2022-02-15 04:37:08', '2022-02-16 07:37:31', ''),
(23, 2, 'user', 'Trésor', 'Omangolo', NULL, NULL, NULL, NULL, NULL, 'tresor@gmail.com', '$2y$10$bcfAEPestK6fiiD.FExKleefQg7ywNYiPU8535qeZPOsIwHK33/T6', NULL, 0, 0, 'Active', NULL, '2022-02-16 01:40:37', '2022-02-16 07:23:37', ''),
(24, 2, 'user', 'Carlos', 'Kalonga', '+243825861808', '825861808', NULL, 'cd', '243', 'carloskalonga71@gmail.com', '$2y$10$yfE89akIHtMptGceBpNIVenXfMoxWEUi8CYoNrl5JGKtY8vR45GcW', NULL, 0, 0, 'Active', NULL, '2022-02-16 04:42:15', '2022-02-16 08:12:42', ''),
(26, 2, 'user', 'Elton', 'Padilla', '+2436754256', '6754256', NULL, 'cd', '243', 'peqezimobi@mailinator.com', '$2y$10$q5tNsMlYBM1VeHvCxwpvhOhStL8DcdOExjdbPVMbvSR3uKQTF6PQ.', NULL, 0, 0, 'Suspended', NULL, '2022-02-16 23:12:49', '2022-02-18 07:15:37', ''),
(28, 2, 'user', 'Adolph', 'Maliani', '+243825883037', '825883037', NULL, 'cd', '243', 'malianiadolph@hotmail.com', '$2y$10$3dSbWKYWmETivhY6IGTx5eCOiu7kRWwNPs/TRoWKDKb0VeZKaqZfm', NULL, 0, 0, 'Active', NULL, '2022-02-19 14:30:21', '2022-02-19 14:30:21', ''),
(33, 3, 'user', 'Admin', 'Techvill`', '+8801838327939', '1838327939', NULL, 'bd', '880', 'sufian.techvill@gmail.com', '$2y$10$OeEfwnkP3KFKFRY3aawwK.KpRlLHcZO72aMLufkKZaU8VwGn7MHM2', NULL, 0, 0, 'Active', NULL, '2022-02-20 07:21:27', '2022-02-20 07:21:27', ''),
(35, 2, 'user', 'Jeremie', 'Baruti', '+243812290362', '812290362', NULL, 'cd', '243', 'jeremie.mondongab@gmail.com', '$2y$10$I0G1hEkPybYsnlch5LXGm.iYa1Baj3hOVvchv1.Kn02phi2KmefMK', NULL, 0, 0, 'Active', NULL, '2022-02-20 09:44:49', '2022-02-20 09:58:37', '1645370271.jpg'),
(36, 2, 'user', 'Kuna', 'Kinda', '+243814864186', '814864186', NULL, 'cd', '243', 'p.losale@congoleseyouth.com', '$2y$10$LhtOcpEVgG9gmF/0FVDLn.HY4LyGuUOXRx.Cswg9ARRoofk4PMBM2', NULL, 0, 0, 'Active', NULL, '2022-02-21 06:04:57', '2022-02-21 06:04:57', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verification_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_step_verification_type` enum('disabled','email','phone','google_authenticator') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_step_verification_code` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_step_verification` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `country_id`, `email_verification`, `phone_verification_code`, `two_step_verification_type`, `two_step_verification_code`, `two_step_verification`, `last_login_at`, `last_login_ip`, `city`, `state`, `address_1`, `address_2`, `default_currency`, `timezone`) VALUES
(1, 1, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-20 07:17:51', '103.197.152.79', 'kinshasa', 'HAUT-CONGO', 'Blvd du 30 juin, nouvelles galeries présidentielles, local 26C au 26è étage', 'Blvd du 30 juin, nouvelles galeries présidentielles, local 26C au 26è étage', NULL, 'Asia/Dhaka'),
(2, 2, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-20 11:15:03', '169.239.159.1', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(3, 3, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-22 18:18:56', '169.159.220.23', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(4, 4, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-21 03:21:05', '169.159.220.141', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(5, 5, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-22 18:14:36', '169.159.220.32', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(6, 6, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-22 00:54:01', '169.159.212.243', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(7, 7, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-22 17:53:19', '169.159.211.32', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(8, 8, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-27 11:22:48', '169.159.210.63', NULL, NULL, NULL, NULL, NULL, 'Asia/Dhaka'),
(9, 9, 50, 1, NULL, 'disabled', NULL, 0, '2022-02-23 10:04:21', '169.159.210.105', 'Kinshasa', 'Kinshasa', 'Avenue du 30 juin nouvelle galerie', NULL, NULL, 'Africa/Kinshasa'),
(10, 10, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-16 15:14:01', '169.159.210.221', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(11, 11, 50, 0, NULL, 'disabled', NULL, 0, '2022-01-31 11:14:47', '41.243.11.182', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(12, 12, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-15 06:22:16', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(13, 13, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-13 08:55:58', '169.159.212.137', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(14, 14, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-14 10:43:40', '169.159.211.25', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(15, 15, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-16 01:54:37', '103.197.152.79', 'Kinshasa', 'Kindu', 'Avenue de la justice', NULL, NULL, 'Africa/Kinshasa'),
(16, 16, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-15 01:41:39', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(17, 17, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-23 04:46:06', '169.159.212.120', 'Kinshasa', 'Kinshasa', 'Kalamu', NULL, NULL, 'Africa/Kinshasa'),
(18, 18, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-15 04:28:30', '169.159.210.134', 'Kinshasa', 'Kinshasa', 'Lukula 183', NULL, NULL, 'Africa/Kinshasa'),
(19, 19, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-22 12:30:28', '169.159.212.108', 'Kinshasa', 'Kinshasa', '97bis kindu Kinshasa', NULL, NULL, 'Africa/Kinshasa'),
(20, 20, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-17 06:24:01', '169.159.210.10', 'Kinshasa', 'Kinshasa', 'Lukula 182', NULL, NULL, 'Africa/Kinshasa'),
(21, 21, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-15 05:43:44', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(22, 22, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-15 12:45:40', '169.159.210.5', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(23, 23, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-16 01:41:54', '169.159.211.144', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(24, 24, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-17 10:12:09', '197.231.252.150', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(25, 25, 50, 0, NULL, 'disabled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(26, 26, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-16 23:13:50', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(27, 27, 18, 0, NULL, 'disabled', NULL, 0, '2022-02-17 01:03:21', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(28, 28, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-19 15:24:04', '41.243.17.117', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(29, 29, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-20 00:45:11', '37.111.206.216', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(30, 30, 18, 0, NULL, 'disabled', NULL, 0, '2022-02-20 00:42:05', '37.111.206.216', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(31, 31, 18, 0, NULL, 'disabled', NULL, 0, '2022-02-20 00:59:21', '37.111.206.216', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(32, 32, 18, 0, NULL, 'disabled', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(33, 33, 18, 0, NULL, 'disabled', NULL, 0, '2022-02-20 07:25:38', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(34, 34, 18, 0, NULL, 'disabled', NULL, 0, '2022-02-20 07:24:50', '103.197.152.79', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(35, 35, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-20 10:07:11', '169.159.220.4', 'Kinshasa', NULL, NULL, NULL, NULL, 'Africa/Kinshasa'),
(36, 36, 50, 0, NULL, 'disabled', NULL, 0, '2022-02-21 06:05:23', '169.159.210.196', NULL, NULL, NULL, NULL, NULL, 'Africa/Kinshasa');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 8, '5bTPjKRNRrbwcsQYM3sdvuxqYx8PoDpiwOrAXioF', '2022-01-25 04:45:23', '2022-01-25 04:45:23'),
(2, 9, 'f6PI9KkEUUKvbFBAXFvXAwdR8QZfjheW9FjoAYhB', '2022-01-25 12:27:21', '2022-01-25 12:27:21'),
(3, 10, 'ej8J9TGgrjgvelZF1B8htKYfLuxRXihDBrTdcaY8', '2022-01-25 12:32:57', '2022-01-25 12:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `balance` decimal(20,8) DEFAULT 0.00000000,
  `is_default` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency_id`, `balance`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1.00000000, 'Yes', '2022-01-19 09:09:06', '2022-01-20 12:55:01'),
(2, 2, 1, 0.00000000, 'Yes', '2022-01-20 11:14:29', '2022-01-20 11:14:29'),
(3, 1, 3, 6.17641500, 'No', '2022-01-20 12:24:08', '2022-01-20 12:54:18'),
(4, 3, 1, 0.42400000, 'Yes', '2022-01-20 14:08:34', '2022-01-22 10:57:58'),
(5, 3, 5, 713.50000000, 'No', '2022-01-20 21:42:14', '2022-01-20 21:45:14'),
(6, 4, 1, 0.00000000, 'Yes', '2022-01-21 03:20:24', '2022-01-21 03:20:24'),
(7, 3, 3, 2.64439500, 'No', '2022-01-21 18:32:49', '2022-01-21 18:43:11'),
(8, 5, 1, 5.00000000, 'Yes', '2022-01-21 18:54:14', '2022-01-21 18:57:34'),
(9, 6, 1, 0.00000000, 'Yes', '2022-01-22 00:51:59', '2022-01-22 00:51:59'),
(10, 7, 1, 0.00000000, 'Yes', '2022-01-22 13:59:59', '2022-01-22 13:59:59'),
(11, 8, 1, 4710.00000000, 'Yes', '2022-01-24 03:58:51', '2022-01-27 06:32:52'),
(12, 9, 1, 75.79350000, 'Yes', '2022-01-25 12:27:21', '2022-02-21 16:54:59'),
(13, 10, 1, 0.00000000, 'Yes', '2022-01-25 12:32:57', '2022-01-25 12:32:57'),
(14, 8, 5, 4080.00000000, 'No', '2022-01-27 06:31:22', '2022-01-27 06:31:22'),
(15, 8, 3, 224.05750000, 'No', '2022-01-27 06:31:45', '2022-01-27 06:31:45'),
(16, 11, 1, 0.00000000, 'Yes', '2022-01-31 11:09:06', '2022-01-31 11:09:06'),
(17, 12, 1, 7.99000000, 'Yes', '2022-02-13 03:05:51', '2022-02-15 04:51:51'),
(18, 9, 5, 949299.00000000, 'No', '2022-02-13 03:38:45', '2022-02-20 09:53:34'),
(19, 13, 1, 995.00000000, 'Yes', '2022-02-13 03:45:22', '2022-02-13 03:48:17'),
(20, 13, 5, 5100.00000000, 'No', '2022-02-13 03:48:17', '2022-02-13 03:48:17'),
(21, 14, 1, 0.00000000, 'Yes', '2022-02-13 04:39:24', '2022-02-13 04:39:24'),
(22, 15, 1, 741.48000000, 'Yes', '2022-02-13 05:33:02', '2022-02-15 06:31:13'),
(23, 15, 3, 0.00000000, 'No', '2022-02-13 14:01:51', '2022-02-15 01:45:57'),
(24, 15, 5, 52317.95000000, 'No', '2022-02-13 15:09:54', '2022-02-15 06:31:13'),
(25, 16, 1, 0.00000000, 'Yes', '2022-02-15 01:41:31', '2022-02-15 01:41:31'),
(26, 17, 1, 11.90000000, 'Yes', '2022-02-15 03:53:42', '2022-02-16 04:35:24'),
(27, 18, 1, 0.00000000, 'Yes', '2022-02-15 04:23:33', '2022-02-15 04:23:33'),
(28, 19, 1, 3.90000000, 'Yes', '2022-02-15 04:26:14', '2022-02-21 02:21:44'),
(29, 20, 1, 2.95000000, 'Yes', '2022-02-15 04:37:08', '2022-02-16 15:28:29'),
(30, 12, 5, 0.00000000, 'No', '2022-02-15 04:45:32', '2022-02-15 04:45:32'),
(31, 20, 5, -6120.00000000, 'No', '2022-02-15 04:46:52', '2022-02-16 15:28:29'),
(32, 19, 3, -3.40000000, 'No', '2022-02-15 04:47:35', '2022-02-16 04:31:39'),
(33, 17, 5, 22440.00000000, 'No', '2022-02-15 04:48:25', '2022-02-16 04:35:24'),
(34, 12, 3, 0.85000000, 'No', '2022-02-15 04:51:51', '2022-02-15 04:51:51'),
(35, 21, 1, 12.00000000, 'Yes', '2022-02-15 05:08:24', '2022-02-15 05:46:25'),
(36, 15, 2, 0.00000000, 'No', '2022-02-15 06:30:59', '2022-02-15 06:30:59'),
(37, 22, 1, 0.00000000, 'Yes', '2022-02-15 12:45:32', '2022-02-15 12:45:32'),
(38, 23, 1, 0.00000000, 'Yes', '2022-02-16 01:40:37', '2022-02-16 01:40:37'),
(39, 24, 1, 0.00000000, 'Yes', '2022-02-16 04:42:15', '2022-02-17 09:29:31'),
(40, 25, 1, 0.00000000, 'Yes', '2022-02-16 22:48:31', '2022-02-16 22:48:31'),
(41, 26, 1, 0.00000000, 'Yes', '2022-02-16 23:12:49', '2022-02-16 23:12:49'),
(42, 27, 1, 0.00000000, 'Yes', '2022-02-17 01:03:04', '2022-02-17 01:03:04'),
(43, 9, 3, 97.22000000, 'No', '2022-02-17 11:51:14', '2022-02-21 16:54:59'),
(44, 28, 1, 20.00000000, 'Yes', '2022-02-19 14:30:21', '2022-02-19 14:34:00'),
(45, 29, 1, 1098.30000000, 'Yes', '2022-02-19 21:40:35', '2022-02-20 01:33:46'),
(46, 30, 1, 876.10000000, 'Yes', '2022-02-20 00:35:47', '2022-02-20 01:33:46'),
(47, 31, 1, 912.15000000, 'Yes', '2022-02-20 00:58:23', '2022-02-20 01:01:21'),
(48, 32, 1, 0.00000000, 'Yes', '2022-02-20 06:23:52', '2022-02-20 06:23:52'),
(49, 33, 1, 975.78000000, 'Yes', '2022-02-20 07:21:27', '2022-02-20 07:25:49'),
(50, 34, 1, 1022.00000000, 'Yes', '2022-02-20 07:22:38', '2022-02-20 07:25:49'),
(51, 35, 1, 50.00000000, 'Yes', '2022-02-20 09:44:49', '2022-02-20 10:19:20'),
(52, 19, 5, 10200.00000000, 'No', '2022-02-21 02:21:44', '2022-02-21 02:21:44'),
(53, 36, 1, 0.00000000, 'Yes', '2022-02-21 06:04:58', '2022-02-21 06:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `uuid` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Withdrawal)',
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `subtotal` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `payment_method_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `currency_id`, `payment_method_id`, `uuid`, `charge_percentage`, `charge_fixed`, `subtotal`, `amount`, `payment_method_info`, `status`, `created_at`, `updated_at`) VALUES
(16, 9, 1, 6, '62CE1528921F2', 2.88000000, 1.00000000, 284.12000000, 288.00000000, 'Bank', 'Pending', '2022-02-20 00:04:52', '2022-02-20 00:04:52'),
(17, 9, 3, 3, '71A7ECEC4EEDE', 0.28000000, 2.00000000, 25.72000000, 28.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-02-20 00:05:20', '2022-02-20 00:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_details`
--

CREATE TABLE `withdrawal_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `withdrawal_id` int(10) UNSIGNED DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1=Bank, 2=Paypal',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `swift_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawal_details`
--

INSERT INTO `withdrawal_details` (`id`, `withdrawal_id`, `type`, `email`, `account_name`, `account_number`, `bank_branch_name`, `bank_branch_city`, `bank_branch_address`, `country`, `swift_code`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 10:51:58', '2022-01-20 10:51:58'),
(2, 2, 3, 'p.losale@congoleseyouth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 11:55:05', '2022-01-20 11:55:05'),
(3, 3, 3, 'p.losale@congoleseyouth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 12:55:01', '2022-01-20 12:55:01'),
(4, 4, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-20 20:32:19', '2022-01-20 20:32:19'),
(5, 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-21 05:12:14', '2022-01-21 05:12:14'),
(6, 6, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-21 12:24:56', '2022-01-21 12:24:56'),
(7, 7, 3, 'p.losale@congoleseyouth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-21 18:57:34', '2022-01-21 18:57:34'),
(8, 8, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-22 09:50:01', '2022-01-22 09:50:01'),
(9, 9, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-22 10:57:58', '2022-01-22 10:57:58'),
(10, 10, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-24 08:31:18', '2022-01-24 08:31:18'),
(11, 11, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 00:34:01', '2022-02-15 00:34:01'),
(12, 12, 6, NULL, 'Abu Sufian Rubel', '3265738639636', 'Nikunjo-2', 'Khilkhet', 'Nikunjo-2', 18, 'AAADGT125', 'Dutch Bangla', '2022-02-15 04:43:26', '2022-02-15 04:43:26'),
(13, 13, 6, NULL, 'Abu Sufian Rubel', '25510529970887', 'losale', 'losale', 'Jjbhs', 50, 'ASDHJ12345', 'LosalePatrick', '2022-02-15 06:29:31', '2022-02-15 06:29:31'),
(14, 14, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 06:29:59', '2022-02-15 06:29:59'),
(15, 15, 3, 'rubel.nstu27@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 21:49:24', '2022-02-19 21:49:24'),
(16, 16, 6, NULL, 'Kdknd', 'Nxnxnnx', 'Bxnnd', 'Jxnnx', 'Jxjnx', 169, 'Jxjx', 'Hxjnx', '2022-02-20 00:04:52', '2022-02-20 00:04:52'),
(17, 17, 3, 'losalepatrick@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-20 00:05:20', '2022-02-20 00:05:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_index` (`user_id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD KEY `admins_role_id_index` (`role_id`);

--
-- Indexes for table `app_store_credentials`
--
ALTER TABLE `app_store_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_tokens`
--
ALTER TABLE `app_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_tokens_app_id_index` (`app_id`);

--
-- Indexes for table `app_transactions_infos`
--
ALTER TABLE `app_transactions_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_transactions_infos_app_id_index` (`app_id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banks_user_id_index` (`user_id`),
  ADD KEY `banks_admin_id_index` (`admin_id`),
  ADD KEY `banks_currency_id_index` (`currency_id`),
  ADD KEY `banks_country_id_index` (`country_id`),
  ADD KEY `banks_file_id_index` (`file_id`);

--
-- Indexes for table `coinpayment_log_trxes`
--
ALTER TABLE `coinpayment_log_trxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_short_name_unique` (`short_name`);

--
-- Indexes for table `cryptoapi_logs`
--
ALTER TABLE `cryptoapi_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cryptoapi_logs_payment_method_id_index` (`payment_method_id`),
  ADD KEY `cryptoapi_logs_object_id_index` (`object_id`),
  ADD KEY `cryptoapi_logs_object_type_index` (`object_type`),
  ADD KEY `cryptoapi_logs_confirmations_index` (`confirmations`);

--
-- Indexes for table `crypto_currencies_settings`
--
ALTER TABLE `crypto_currencies_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crypto_currencies_settings_payment_method_id_index` (`payment_method_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchanges`
--
ALTER TABLE `currency_exchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_exchanges_user_id_index` (`user_id`),
  ADD KEY `currency_exchanges_from_wallet_index` (`from_wallet`),
  ADD KEY `currency_exchanges_to_wallet_index` (`to_wallet`),
  ADD KEY `currency_exchanges_currency_id_index` (`currency_id`);

--
-- Indexes for table `currency_payment_methods`
--
ALTER TABLE `currency_payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency_payment_methods_currency_id_index` (`currency_id`),
  ADD KEY `currency_payment_methods_method_id_index` (`method_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_index` (`user_id`),
  ADD KEY `deposits_currency_id_index` (`currency_id`),
  ADD KEY `deposits_payment_method_id_index` (`payment_method_id`),
  ADD KEY `deposits_bank_id_index` (`bank_id`),
  ADD KEY `deposits_file_id_index` (`file_id`);

--
-- Indexes for table `device_logs`
--
ALTER TABLE `device_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_logs_user_id_index` (`user_id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disputes_claimant_id_index` (`claimant_id`),
  ADD KEY `disputes_defendant_id_index` (`defendant_id`),
  ADD KEY `disputes_transaction_id_index` (`transaction_id`),
  ADD KEY `disputes_reason_id_index` (`reason_id`);

--
-- Indexes for table `dispute_discussions`
--
ALTER TABLE `dispute_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dispute_discussions_dispute_id_index` (`dispute_id`),
  ADD KEY `dispute_discussions_user_id_index` (`user_id`);

--
-- Indexes for table `document_verifications`
--
ALTER TABLE `document_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_verifications_user_id_index` (`user_id`),
  ADD KEY `document_verifications_file_id_index` (`file_id`);

--
-- Indexes for table `email_configs`
--
ALTER TABLE `email_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_language_id_index` (`language_id`);

--
-- Indexes for table `fees_limits`
--
ALTER TABLE `fees_limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_limits_transaction_type_id_foreign` (`transaction_type_id`),
  ADD KEY `fees_limits_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `fees_limits_currency_id_index` (`currency_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_admin_id_index` (`admin_id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_ticket_id_index` (`ticket_id`),
  ADD KEY `files_ticket_reply_id_index` (`ticket_reply_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchants_user_id_index` (`user_id`),
  ADD KEY `merchants_currency_id_index` (`currency_id`),
  ADD KEY `merchants_merchant_group_id_index` (`merchant_group_id`);

--
-- Indexes for table `merchant_apps`
--
ALTER TABLE `merchant_apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_apps_client_id_unique` (`client_id`),
  ADD KEY `merchant_apps_merchant_id_index` (`merchant_id`);

--
-- Indexes for table `merchant_groups`
--
ALTER TABLE `merchant_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `merchant_groups_name_unique` (`name`);

--
-- Indexes for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merchant_payments_merchant_id_index` (`merchant_id`),
  ADD KEY `merchant_payments_currency_id_index` (`currency_id`),
  ADD KEY `merchant_payments_payment_method_id_index` (`payment_method_id`),
  ADD KEY `merchant_payments_user_id_index` (`user_id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_settings_notification_type_id_index` (`notification_type_id`),
  ADD KEY `notification_settings_recipient_index` (`recipient`),
  ADD KEY `notification_settings_status_index` (`status`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_types_name_unique` (`name`),
  ADD UNIQUE KEY `notification_types_alias_unique` (`alias`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_url_unique` (`url`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payout_settings`
--
ALTER TABLE `payout_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qr_codes_object_id_index` (`object_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_payments`
--
ALTER TABLE `request_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_payments_user_id_index` (`user_id`),
  ADD KEY `request_payments_receiver_id_index` (`receiver_id`),
  ADD KEY `request_payments_currency_id_index` (`currency_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_configs`
--
ALTER TABLE `sms_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_configs_type_index` (`type`),
  ADD KEY `sms_configs_status_index` (`status`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_admin_id_index` (`admin_id`),
  ADD KEY `tickets_user_id_index` (`user_id`),
  ADD KEY `tickets_ticket_status_id_index` (`ticket_status_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_admin_id_index` (`admin_id`),
  ADD KEY `ticket_replies_user_id_index` (`user_id`),
  ADD KEY `ticket_replies_ticket_id_index` (`ticket_id`);

--
-- Indexes for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_transaction_type_id_foreign` (`transaction_type_id`),
  ADD KEY `transactions_user_id_index` (`user_id`),
  ADD KEY `transactions_end_user_id_index` (`end_user_id`),
  ADD KEY `transactions_currency_id_index` (`currency_id`),
  ADD KEY `transactions_payment_method_id_index` (`payment_method_id`),
  ADD KEY `transactions_merchant_id_index` (`merchant_id`),
  ADD KEY `transactions_bank_id_index` (`bank_id`),
  ADD KEY `transactions_file_id_index` (`file_id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_sender_id_index` (`sender_id`),
  ADD KEY `transfers_receiver_id_index` (`receiver_id`),
  ADD KEY `transfers_currency_id_index` (`currency_id`),
  ADD KEY `transfers_bank_id_index` (`bank_id`),
  ADD KEY `transfers_file_id_index` (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_details_user_id_index` (`user_id`),
  ADD KEY `user_details_country_id_index` (`country_id`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_index` (`user_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_index` (`user_id`),
  ADD KEY `wallets_currency_id_index` (`currency_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_index` (`user_id`),
  ADD KEY `withdrawals_currency_id_index` (`currency_id`),
  ADD KEY `withdrawals_payment_method_id_index` (`payment_method_id`);

--
-- Indexes for table `withdrawal_details`
--
ALTER TABLE `withdrawal_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawal_details_withdrawal_id_index` (`withdrawal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_store_credentials`
--
ALTER TABLE `app_store_credentials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app_tokens`
--
ALTER TABLE `app_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_transactions_infos`
--
ALTER TABLE `app_transactions_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coinpayment_log_trxes`
--
ALTER TABLE `coinpayment_log_trxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `cryptoapi_logs`
--
ALTER TABLE `cryptoapi_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_currencies_settings`
--
ALTER TABLE `crypto_currencies_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `currency_exchanges`
--
ALTER TABLE `currency_exchanges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `currency_payment_methods`
--
ALTER TABLE `currency_payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `device_logs`
--
ALTER TABLE `device_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispute_discussions`
--
ALTER TABLE `dispute_discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_verifications`
--
ALTER TABLE `document_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_configs`
--
ALTER TABLE `email_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `fees_limits`
--
ALTER TABLE `fees_limits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_apps`
--
ALTER TABLE `merchant_apps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `merchant_groups`
--
ALTER TABLE `merchant_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `merchant_payments`
--
ALTER TABLE `merchant_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payout_settings`
--
ALTER TABLE `payout_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_payments`
--
ALTER TABLE `request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sms_configs`
--
ALTER TABLE `sms_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `withdrawal_details`
--
ALTER TABLE `withdrawal_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
