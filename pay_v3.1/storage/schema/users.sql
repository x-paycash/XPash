-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2022 at 05:19 PM
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
(9, 3, 'merchant', 'PATRICK', 'Bambuli', '+243814864363', '814864363', NULL, 'cd', '243', 'losalepatrick@gmail.com', '$2y$10$BmRjwFcOyf2rIIZZORGsROpSxswJP5BoG7/qSRVEN./Dvqhv0GcLm', NULL, 0, 0, 'Active', NULL, '2022-01-25 12:27:21', '2022-02-16 15:37:44', '1644742298.jpg'),
(11, 3, 'merchant', 'John', 'Temig', NULL, NULL, NULL, NULL, NULL, 'johntemig@gmail.com', '$2y$10$0AWeQzRPrjGXXebtREtC8OQr0lt4TxNO3iVnw1xH/XXIn4yCHAIDC', NULL, 0, 0, 'Active', NULL, '2022-01-31 11:09:06', '2022-01-31 11:09:06', ''),
(17, 2, 'user', 'Freddy', 'Mukendi', '+243840720752', '840720752', NULL, NULL, NULL, 'freddymukendi12@gmail.com', '$2y$10$pl4EHscLDchmslur1F2lF.Pj8V8dN.zJVRs1BU8bC4ixY0EbXnRp2', NULL, 0, 0, 'Active', NULL, '2022-02-15 03:53:42', '2022-02-16 04:16:36', ''),
(19, 2, 'user', 'Sandra', 'Lumu Bintu', '+243819856860', '819856860', NULL, NULL, NULL, 'sandralumubintu@gmail.com', '$2y$10$sge.8yabqMQqAjVrrbGvHufH1bbNvBSKTjTV02TXwIif7bI/TnbzG', NULL, 0, 0, 'Active', NULL, '2022-02-15 04:26:14', '2022-02-15 04:45:15', ''),
(20, 2, 'user', 'Josepha', 'BISELELE', '+243820345535', '820345535', NULL, 'cd', '243', 'jbisselele2015@gmail.com', '$2y$10$2iqW9KJ71qveK063iCaCh.oYLxRo6ngHer8gf8zF.7o5TVl.RtfnW', NULL, 0, 0, 'Active', NULL, '2022-02-15 04:37:08', '2022-02-16 07:37:31', ''),
(23, 2, 'user', 'Trésor', 'Omangolo', NULL, NULL, NULL, NULL, NULL, 'tresor@gmail.com', '$2y$10$bcfAEPestK6fiiD.FExKleefQg7ywNYiPU8535qeZPOsIwHK33/T6', NULL, 0, 0, 'Active', NULL, '2022-02-16 01:40:37', '2022-02-16 07:23:37', ''),
(24, 2, 'user', 'Carlos', 'Kalonga', '+243825861808', '825861808', NULL, 'cd', '243', 'carloskalonga71@gmail.com', '$2y$10$yfE89akIHtMptGceBpNIVenXfMoxWEUi8CYoNrl5JGKtY8vR45GcW', NULL, 0, 0, 'Active', NULL, '2022-02-16 04:42:15', '2022-02-16 08:12:42', ''),
(26, 2, 'user', 'Elton', 'Padilla', '+2436754256', '6754256', NULL, 'cd', '243', 'peqezimobi@mailinator.com', '$2y$10$q5tNsMlYBM1VeHvCxwpvhOhStL8DcdOExjdbPVMbvSR3uKQTF6PQ.', NULL, 0, 0, 'Suspended', NULL, '2022-02-16 23:12:49', '2022-02-18 07:15:37', ''),
(28, 2, 'user', 'Adolph', 'Maliani', '+243825883037', '825883037', NULL, 'cd', '243', 'malianiadolph@hotmail.com', '$2y$10$3dSbWKYWmETivhY6IGTx5eCOiu7kRWwNPs/TRoWKDKb0VeZKaqZfm', NULL, 0, 0, 'Active', NULL, '2022-02-19 14:30:21', '2022-02-19 14:30:21', ''),
(29, 3, 'user', 'Vincent', 'Techvill', '+8801838327939', '1838327939', NULL, 'bd', '880', 'sufian.techvill@gmail.com', '$2y$10$dozg/VBiilc4jL/6qNQ6l.4aJZNuAtvsPP0Etfhh2eyeEwJRLTTYi', NULL, 0, 0, 'Active', NULL, '2022-02-19 21:40:35', '2022-02-19 21:47:19', ''),
(30, 3, 'user', 'Vincent', 'Techvill', NULL, NULL, NULL, NULL, NULL, 'rubel.techvill@gmail.com', '$2y$10$.X9dBsblb7MnN04tnrVvGeLCiGlUWY5lKkldrxcGhz45eCq15v80y', NULL, 0, 0, 'Active', NULL, '2022-02-20 00:35:47', '2022-02-20 00:57:47', ''),
(31, 3, 'user', 'Zelda', 'Black', '+8801320583389', '1320583389', NULL, 'bd', '880', 'techvill@gmail.com', '$2y$10$ikah7Q8CJ3qcA1.tY7xXAOMEagtSTjhfN8mCtVWeLKtryUWzLvmOy', NULL, 0, 0, 'Active', NULL, '2022-02-20 00:58:23', '2022-02-20 00:58:23', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
