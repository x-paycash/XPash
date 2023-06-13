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
(1, 15, 16, 1, '92E1ABAE8F7DE', 213.00000000, 0.00000000, 'rubel.nstu27@gmail.com', NULL, NULL, 'Test', 'Pending', '2022-02-15 00:34:38', '2022-02-15 01:41:31'),
(2, 12, 15, 1, 'E70D19A505FA6', 45.00000000, 0.00000000, 'losalepatrick17@gmail.com', NULL, NULL, 'Test transactions', 'Pending', '2022-02-15 04:44:59', '2022-02-15 04:44:59'),
(3, 9, 15, 1, 'AEB11CD45176F', 25.00000000, 0.00000000, 'losalepatrick17@gmail.com', NULL, NULL, 'Ujr', 'Blocked', '2022-02-15 04:57:09', '2022-02-15 11:46:27'),
(4, 19, 20, 1, '1AFC4C15D8BDD', 10.00000000, 0.00000000, 'jbisselele2015@gmail.com', NULL, NULL, 'Aide urgence', 'Blocked', '2022-02-15 05:01:10', '2022-02-16 15:27:23'),
(5, 15, 10, 1, '2EBB622C79579', 25.00000000, 0.00000000, NULL, '+243814864186', NULL, 'U', 'Pending', '2022-02-15 06:30:37', '2022-02-15 06:30:37'),
(6, 17, NULL, 1, '70C1CC9E7FC96', 100.00000000, 0.00000000, NULL, '+243820345535', NULL, 'Aide humanitaire', 'Pending', '2022-02-16 04:19:19', '2022-02-16 04:19:19'),
(7, 17, 24, 1, '47B74C52BC7DA', 50.00000000, 0.00000000, NULL, '+243825861808', NULL, 'Aide humanitaire', 'Blocked', '2022-02-17 03:42:00', '2022-02-17 03:44:43'),
(8, 17, 24, 1, 'A90BF59CF3ABC', 1.00000000, 0.00000000, NULL, '+243825861808', NULL, 'Charité', 'Pending', '2022-02-17 03:44:27', '2022-02-17 03:44:27'),
(9, 29, NULL, 1, 'CFC6CC0F88880', 100.00000000, 0.00000000, 'rubel.nstu27@gmail.com', NULL, NULL, 'Test', 'Pending', '2022-02-20 00:34:45', '2022-02-20 00:34:45'),
(10, 29, 30, 1, '27FEF69F4176B', 100.00000000, 70.00000000, 'rubel.techvill@gmail.com', NULL, NULL, 'Test', 'Success', '2022-02-20 00:41:35', '2022-02-20 00:42:27'),
(11, 30, 29, 1, '2B6BF53A5A4E1', 50.00000000, 70.00000000, 'sufian.techvill@gmail.com', NULL, NULL, 'Test', 'Success', '2022-02-20 00:43:49', '2022-02-20 00:45:44'),
(12, 29, 30, 1, '5A06D292B5C3F', 120.00000000, 120.00000000, 'rubel.techvill@gmail.com', NULL, NULL, 'Test', 'Success', '2022-02-20 00:55:30', '2022-02-20 01:33:46'),
(13, 29, 31, 1, '704DA8CC65FA2', 80.00000000, 40.00000000, 'techvill@gmail.com', NULL, NULL, 'Test', 'Success', '2022-02-20 00:56:57', '2022-02-20 01:00:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `request_payments`
--
ALTER TABLE `request_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_payments_user_id_index` (`user_id`),
  ADD KEY `request_payments_receiver_id_index` (`receiver_id`),
  ADD KEY `request_payments_currency_id_index` (`currency_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request_payments`
--
ALTER TABLE `request_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
