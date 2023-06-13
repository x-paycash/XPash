-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2022 at 05:28 PM
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
(1, 1, 1, 1, 'Patrick', 'Bonjour comment allez-vous', 'TIC-XAB9AO', 'Normal', NULL, '2022-01-19 21:14:26', '2022-01-19 21:14:26'),
(2, 1, 9, 1, 'patrick', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">jai kee jky yky&nbsp; uxufffff uiiuff&nbsp; gj&nbsp;</font></font>', 'TIC-TKDQLY', 'Normal', NULL, '2022-01-28 05:43:50', '2022-02-16 07:16:20'),
(3, 2, 15, 2, 'mauvaise depot', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">jjjjh</font></font>', 'TIC-CMJ7NR', 'Normal', NULL, '2022-02-13 14:00:15', '2022-02-13 14:01:09'),
(4, 1, 13, 4, 'demande de API', '<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">gx vhgf nfnf0978627 bbfh,dcj lk;jghjuhg j</font></font>', 'TIC-TF138L', 'High', NULL, '2022-02-14 07:28:14', '2022-02-14 07:32:19'),
(5, 1, 17, 1, 'Freddy', 'Test', 'TIC-4PI117', 'Low', NULL, '2022-02-16 03:13:11', '2022-02-16 03:13:11'),
(6, 1, 10, 1, 'mauvaise depot', '<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">g h ugnufnuf ufnnuffnu ufufnu uffn&nbsp;</font></font></p>', 'TIC-DXODVT', 'Low', NULL, '2022-02-16 07:13:32', '2022-02-16 07:13:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_admin_id_index` (`admin_id`),
  ADD KEY `tickets_user_id_index` (`user_id`),
  ADD KEY `tickets_ticket_status_id_index` (`ticket_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
