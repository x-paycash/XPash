-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2022 at 05:33 PM
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
(1, 3, 5, 1, NULL, NULL, '0DBC9A3F5A60C', 0.00000000, 10.00000000, '2', 'losalepatrick1@gmail.com', NULL, 'Success', '2022-01-20 21:39:58', '2022-01-21 18:54:14'),
(2, 8, NULL, 1, NULL, NULL, '61CF5ECEF2880', 0.00000000, 10.00000000, 'dot', NULL, '+24381486363', 'Pending', '2022-01-24 04:11:59', '2022-01-24 04:11:59'),
(3, 8, 9, 1, NULL, NULL, 'A7AA45B07EE61', 0.00000000, 10.00000000, 'Th', 'losalepatrick@gmail.com', NULL, 'Success', '2022-01-27 06:32:52', '2022-01-27 06:32:52'),
(4, 9, NULL, 1, NULL, NULL, 'C8AF4A17779AE', 0.00000000, 2.00000000, 'Y', 'losalepatricke@gmail.com', NULL, 'Pending', '2022-02-13 03:40:28', '2022-02-13 03:40:28'),
(5, 15, 9, 1, NULL, NULL, '22588B96A09F5', 0.00000000, 5.00000000, 'Bien', 'losalepatrick@gmail.com', NULL, 'Success', '2022-02-13 13:46:42', '2022-02-13 13:46:42'),
(6, 15, NULL, 1, NULL, NULL, '7D3D1D2C316C4', 0.00000000, 5.00000000, 'D', NULL, '+243814864363', 'Pending', '2022-02-13 13:47:25', '2022-02-13 13:47:25'),
(7, 15, NULL, 1, NULL, NULL, '7DBC58F4ACC00', 0.00000000, 2.00000000, 'J', NULL, '+243814864363', 'Pending', '2022-02-13 15:07:17', '2022-02-13 15:07:17'),
(8, 15, NULL, 1, NULL, NULL, '8B8EBAF8DAE3C', 0.00000000, 2.00000000, 'X', NULL, '+243814864363', 'Pending', '2022-02-13 15:11:53', '2022-02-13 15:11:53'),
(9, 15, NULL, 1, NULL, NULL, 'F3BCC78065D79', 0.00000000, 1.00000000, 'R', NULL, '+243814864363', 'Pending', '2022-02-13 15:23:16', '2022-02-13 15:23:16'),
(10, 15, NULL, 1, NULL, NULL, '579B50D895AFE', 0.00000000, 2.00000000, 'D', NULL, '+243814864363', 'Pending', '2022-02-14 11:00:45', '2022-02-14 11:00:45'),
(11, 15, 12, 1, NULL, NULL, '4822B921A5475', 0.00000000, 24.00000000, 'Test', 'sufian.techvill@gmail.com', NULL, 'Success', '2022-02-15 00:34:19', '2022-02-15 00:34:19'),
(12, 17, 19, 1, NULL, NULL, 'A594B1C8CF37A', 0.00000000, 10.00000000, 'Salut', NULL, '+243819856860', 'Success', '2022-02-15 04:15:50', '2022-02-15 04:26:14'),
(13, 17, 20, 1, NULL, NULL, '17BF79516B655', 0.00000000, 10.00000000, 'Pour boire', NULL, '+243820345535', 'Success', '2022-02-15 04:27:47', '2022-02-15 04:37:08'),
(14, 12, 15, 1, NULL, NULL, 'C0017BDCEBF20', 0.00000000, 10.00000000, 'Test', 'losalepatrick17@gmail.com', NULL, 'Success', '2022-02-15 04:44:04', '2022-02-15 04:44:04'),
(15, 20, 17, 1, NULL, NULL, '692D87AE3FBFE', 1.03000000, 3.00000000, 'C\'est tout ce que j\'ai 🙄🙄🙄', 'freddymukendi12@gmail.com', NULL, 'Success', '2022-02-15 04:59:43', '2022-02-15 04:59:43'),
(16, 9, NULL, 3, NULL, NULL, 'B2728A57DDC5B', 1.50000000, 25.00000000, 'Uf', NULL, '+243814864362', 'Pending', '2022-02-18 04:25:18', '2022-02-18 04:25:18'),
(17, 9, 28, 1, NULL, NULL, '385B9A37CBC55', 1.20000000, 20.00000000, 'Dépôt', NULL, '+243825883037', 'Success', '2022-02-19 14:33:58', '2022-02-19 14:33:58'),
(18, 31, 29, 1, NULL, NULL, 'D0E2ADF752711', 1.45000000, 45.00000000, 'Test', 'sufian.techvill@gmail.com', NULL, 'Success', '2022-02-20 01:01:20', '2022-02-20 01:01:20');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
