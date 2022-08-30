-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220820.c36dd24b59
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 03:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_auth_laravel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(1) DEFAULT NULL,
  `favoriteColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `favoriteColor`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'M. Novianto Anggoro', 'user@gmail.com', 2, NULL, NULL, '$2y$10$SnM2PclTVUYl56Emtk1A5ORUA7UTfEripYjfigz1y6U/RTaW3lUyG', NULL, '2022-08-27 08:47:42', '2022-08-27 08:47:42'),
(2, 'admin 1', 'admin1@admin.com', 1, NULL, NULL, '$2y$10$xPF0sV904ECDTDZm7RssEuPRXfxyPr1TxbdYO4N1a0gQI5SighiEm', NULL, '2022-08-28 04:54:06', '2022-08-28 04:54:06'),
(3, 'User 2', 'user2@gmail.com', 2, 'Hijau', NULL, '$2y$10$ronr/3ABndFWmVshu8n3yuXgy83fUaviXmI65jON41OqWrXe2fEqe', NULL, '2022-08-28 06:32:18', '2022-08-28 06:32:18'),
(4, 'User 3', 'user3@gmail.com', 2, 'Kuning', NULL, '$2y$10$.pfD7mxf5OgjYqrvfRWC/OitoOK6sr0zCIG1XCOznPPAqS6cEQt72', NULL, '2022-08-28 06:53:49', '2022-08-28 06:53:49'),
(5, 'User 4', 'user4@gmail.com', 2, 'Hitam', NULL, '$2y$10$nJ1cci2ayETrQ6MFFM3Oc.R.rXZGuptVGlNDHq5G/Uv68O9DtEtuC', NULL, '2022-08-28 06:58:47', '2022-08-28 06:58:47'),
(6, 'User 5', 'user5@gmail.com', 2, 'Kelabu', NULL, '$2y$10$veBv0CFOQC/9GLGlOWUU8uydBwH62ywwM0RWsS5f0sAzhIQuRGyLO', NULL, '2022-08-28 07:00:51', '2022-08-28 07:00:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
