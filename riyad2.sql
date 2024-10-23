-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2024 at 05:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riyad2`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_11_134409_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `descreption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `descreption`, `image`, `created_at`, `updated_at`) VALUES
(33, 'T-shirt', 5000.00, 'RM', '1729610347.jpg', '2024-10-22 09:19:07', '2024-10-22 09:19:07'),
(34, 'T-shirt', 4000.00, 'RM', '1729610373.jpg', '2024-10-22 09:19:33', '2024-10-22 09:19:33'),
(36, 'T-shirt', 3000.00, 'RM', '1729610648.jpg', '2024-10-22 09:22:28', '2024-10-22 09:24:08'),
(37, 'Hawaiian shirt', 3000.00, 'RM', '1729610992.jpg', '2024-10-22 09:29:52', '2024-10-22 09:29:52'),
(39, 'Hawaiian shirt', 3500.00, 'RM', '1729611046.jpg', '2024-10-22 09:30:46', '2024-10-22 09:30:46'),
(40, 'Hawaiian shirt', 4500.00, 'RM', '1729611157.jpg', '2024-10-22 09:31:35', '2024-10-22 09:32:37'),
(41, 'Polo shirt', 3600.00, 'RM', '1729611389.jpg', '2024-10-22 09:36:29', '2024-10-22 09:36:29'),
(42, 'Polo shirt', 2600.00, 'RM', '1729611508.jpg', '2024-10-22 09:38:28', '2024-10-22 09:38:28'),
(43, 'Polo shirt', 2700.00, 'RM', '1729611535.jpg', '2024-10-22 09:38:55', '2024-10-22 09:38:55'),
(44, 'Shorts', 600.00, 'RM', '1729611743.jpg', '2024-10-22 09:42:23', '2024-10-22 09:42:23'),
(45, 'Shorts', 700.00, 'RM', '1729611781.jpg', '2024-10-22 09:43:01', '2024-10-22 09:43:01'),
(46, 'Shorts', 550.00, 'RM', '1729611798.jpg', '2024-10-22 09:43:18', '2024-10-22 09:43:18'),
(47, 'Blazer', 5000.00, 'RM', '1729611979.jpg', '2024-10-22 09:45:28', '2024-10-22 09:46:19'),
(48, 'Blazer', 3000.00, 'RM', '1729612039.jpg', '2024-10-22 09:47:19', '2024-10-22 09:47:19'),
(49, 'Blazer', 6000.00, 'RM', '1729612084.jpg', '2024-10-22 09:48:04', '2024-10-22 09:48:04'),
(50, 'Sweater', 5000.00, 'RM', '1729612259.jpg', '2024-10-22 09:50:59', '2024-10-22 09:50:59'),
(51, 'Sweater', 3000.00, 'RM', '1729612282.jpg', '2024-10-22 09:51:22', '2024-10-22 09:51:22'),
(52, 'Sweater', 4500.00, 'RM', '1729612313.jpg', '2024-10-22 09:51:53', '2024-10-22 09:51:53'),
(53, 'Saree', 7050.00, 'RM', '1729612899.webp', '2024-10-22 10:01:39', '2024-10-22 10:01:39'),
(54, 'Saree', 3300.00, 'RM', '1729612978.webp', '2024-10-22 10:02:58', '2024-10-22 10:02:58'),
(55, 'Saree', 2500.00, 'RM', '1729613022.webp', '2024-10-22 10:03:25', '2024-10-22 10:03:42'),
(56, 'Three piece', 2700.00, 'RM', '1729614406.webp', '2024-10-22 10:26:46', '2024-10-22 10:26:46'),
(57, 'Three piece', 5000.00, 'RM', '1729614437.webp', '2024-10-22 10:27:17', '2024-10-22 10:27:17'),
(58, 'Three piece', 3700.00, 'RM', '1729614505.webp', '2024-10-22 10:27:38', '2024-10-22 10:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'md riyad', 'redwan@gmail.com', NULL, '$2y$12$mFo/HYkGK2YG/he0etQycO0yV7CRHA6EIj.WSZ9wXr6R4QzSKWKmO', 'EAwaAy24hneu6B9jvzf0nUMA8WQU9nwn14DF5nGiJbxGRuEpm8cX3hqWzCpW', '2024-09-08 21:01:39', '2024-09-08 21:01:39'),
(2, 'Limon', 'limon@gmail.com', NULL, '$2y$12$fGnnArrcMVf0jMr8m.FYwufB3VJNJeRu.m3uoZeQJYi9FB5knxFdi', NULL, '2024-10-22 10:59:15', '2024-10-22 10:59:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
