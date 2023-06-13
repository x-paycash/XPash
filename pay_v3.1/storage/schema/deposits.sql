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
(1, 1, 1, 1, NULL, NULL, 'D3140046B1907', 0.00000000, 0.00000000, 25.00000000, 'Success', '2022-01-19 09:39:19', '2022-01-19 09:39:19'),
(2, 3, 1, 1, NULL, NULL, '315F374535DDC', 0.00000000, 0.00000000, 50.00000000, 'Success', '2022-01-20 14:09:26', '2022-01-20 14:09:26'),
(3, 3, 1, 1, NULL, NULL, '8ECA7AF180317', 0.00000000, 0.00000000, 5.00000000, 'Blocked', '2022-01-20 22:27:28', '2022-01-21 09:38:17'),
(4, 3, 1, 6, 2, 5, '2A98DB69E4239', 0.00000000, 0.00000000, 24.00000000, 'Pending', '2022-01-22 18:21:07', '2022-01-22 18:21:07'),
(5, 8, 1, 1, NULL, NULL, '108FE823C93D3', 0.00000000, 0.00000000, 5000.00000000, 'Success', '2022-01-24 04:00:59', '2022-01-24 04:00:59'),
(6, 13, 1, 1, NULL, NULL, '6097D32A5DB17', 0.00000000, 0.00000000, 1020.00000000, 'Success', '2022-02-13 03:46:56', '2022-02-13 03:46:56'),
(7, 15, 1, 1, NULL, NULL, '54CA49191F408', 0.00000000, 0.00000000, 24.00000000, 'Success', '2022-02-13 08:32:44', '2022-02-13 08:32:44'),
(8, 15, 1, 2, NULL, NULL, '7F65540C9E3E8', 0.00000000, 0.00000000, 1000.00000000, 'Success', '2022-02-15 00:33:47', '2022-02-15 00:33:47'),
(9, 15, 1, 6, 1, 6, '63F45EC00CD95', 0.00000000, 0.00000000, 12.00000000, 'Pending', '2022-02-15 01:16:07', '2022-02-15 01:16:07'),
(10, 15, 1, 1, NULL, NULL, '5D8981BDC1F0E', 0.00000000, 0.00000000, 12.00000000, 'Success', '2022-02-15 03:51:11', '2022-02-15 03:51:11'),
(11, 17, 1, 1, NULL, NULL, '5989750BA15EF', 0.00000000, 0.00000000, 50.00000000, 'Success', '2022-02-15 03:55:52', '2022-02-15 03:55:52'),
(12, 12, 1, 2, NULL, NULL, 'B087341C8028D', 0.00000000, 0.00000000, 12.00000000, 'Success', '2022-02-15 04:41:52', '2022-02-15 04:41:52'),
(13, 21, 1, 2, NULL, NULL, '7AC29068372E0', 0.00000000, 0.00000000, 12.00000000, 'Success', '2022-02-15 05:46:24', '2022-02-15 05:46:24'),
(14, 24, 1, 1, NULL, NULL, '0D4CE8A09C184', 0.00000000, 0.00000000, 10.00000000, 'Blocked', '2022-02-16 04:46:29', '2022-02-17 09:29:31'),
(15, 9, 1, 1, NULL, NULL, '8EB845C99957E', 0.00000000, 0.00000000, 1020.00000000, 'Success', '2022-02-17 09:42:04', '2022-02-17 09:42:04'),
(16, 29, 1, 1, NULL, NULL, '08CEE271DE507', 0.00000000, 0.00000000, 1000.00000000, 'Success', '2022-02-19 21:49:08', '2022-02-19 21:49:08'),
(17, 30, 1, 1, NULL, NULL, 'B305CDBB50D08', 0.00000000, 0.00000000, 1000.00000000, 'Success', '2022-02-20 00:37:08', '2022-02-20 00:37:08'),
(18, 31, 1, 1, NULL, NULL, '990FC5BA0C06D', 0.00000000, 0.00000000, 1000.00000000, 'Success', '2022-02-20 01:00:14', '2022-02-20 01:00:14');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
