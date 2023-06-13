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
(1, 1, 1, 3, '55AFC36C135D3', 0.00000000, 0.00000000, 10.00000000, 10.00000000, 'losalepatrick@gmail.com', 'Success', '2022-01-20 10:51:58', '2022-01-20 11:28:23'),
(2, 1, 1, 3, '086BFE632E10A', 0.00000000, 0.00000000, 5.00000000, 5.00000000, 'p.losale@congoleseyouth.com', 'Success', '2022-01-20 11:55:05', '2022-01-20 11:55:48'),
(3, 1, 1, 3, 'C495CDE5DC17D', 0.00000000, 0.00000000, 2.00000000, 2.00000000, 'p.losale@congoleseyouth.com', 'Success', '2022-01-20 12:55:01', '2022-01-20 12:55:36'),
(4, 3, 1, 3, '0E3ED5BAA4593', 0.00000000, 0.00000000, 10.00000000, 10.00000000, 'losalepatrick@gmail.com', 'Success', '2022-01-20 20:32:19', '2022-01-20 20:37:04'),
(5, 3, 1, 6, '9E55605DA8B82', 0.00000000, 0.00000000, 10.00000000, 10.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-01-21 05:12:14', '2022-01-21 05:12:14'),
(6, 3, 1, 3, '546684833356C', 0.00000000, 0.00000000, 10.00000000, 10.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-01-21 12:24:56', '2022-01-21 12:24:56'),
(7, 5, 1, 3, 'CB3ACB2B86BDB', 0.00000000, 0.00000000, 5.00000000, 5.00000000, 'p.losale@congoleseyouth.com', 'Success', '2022-01-21 18:57:34', '2022-01-21 19:00:21'),
(8, 3, 1, 3, '7785ADD96A517', 0.00000000, 0.00000000, 5.00000000, 5.00000000, 'losalepatrick@gmail.com', 'Success', '2022-01-22 09:50:01', '2022-01-22 09:52:05'),
(9, 3, 1, 6, '7C74227059263', 0.00000000, 0.00000000, 1.00000000, 1.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-01-22 10:57:58', '2022-01-22 10:57:58'),
(10, 8, 1, 3, '5BE3D503C1625', 0.00000000, 0.00000000, 25.00000000, 25.00000000, 'losalepatrick@gmail.com', 'Blocked', '2022-01-24 08:31:18', '2022-01-24 09:35:39'),
(11, 15, 1, 3, '038891CB9BAF4', 0.00000000, 0.00000000, 124.00000000, 124.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-02-15 00:34:00', '2022-02-15 00:34:00'),
(12, 12, 1, 6, 'ADA7B58B3DB9B', 0.00000000, 0.00000000, 12.00000000, 12.00000000, 'Bank', 'Pending', '2022-02-15 04:43:26', '2022-02-15 04:43:26'),
(13, 15, 1, 6, 'CC147D0C78360', 0.00000000, 0.00000000, 25.00000000, 25.00000000, 'Bank', 'Pending', '2022-02-15 06:29:31', '2022-02-15 06:29:31'),
(14, 15, 1, 3, 'FC4F2B02C7DA6', 0.02000000, 1.00000000, 0.98000000, 2.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-02-15 06:29:59', '2022-02-15 06:29:59'),
(15, 29, 1, 3, 'C96CCD6781A77', 2.00000000, 3.00000000, 95.00000000, 100.00000000, 'rubel.nstu27@gmail.com', 'Pending', '2022-02-19 21:49:24', '2022-02-19 21:49:24'),
(16, 9, 1, 6, '62CE1528921F2', 2.88000000, 1.00000000, 284.12000000, 288.00000000, 'Bank', 'Pending', '2022-02-20 00:04:52', '2022-02-20 00:04:52'),
(17, 9, 3, 3, '71A7ECEC4EEDE', 0.28000000, 2.00000000, 25.72000000, 28.00000000, 'losalepatrick@gmail.com', 'Pending', '2022-02-20 00:05:20', '2022-02-20 00:05:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_index` (`user_id`),
  ADD KEY `withdrawals_currency_id_index` (`currency_id`),
  ADD KEY `withdrawals_payment_method_id_index` (`payment_method_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
