-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 09:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_purchase_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_19_011601_create_products_table', 2),
(10, '2023_09_19_032419_create_purchase_order_lines_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Sapiente dolorum sint et a nesciunt ipsam illo est.', 'ut', 246143000, '1979-07-02 14:39:31', '1983-06-16 08:20:27'),
(2, 'Nesciunt eum quas pariatur eum voluptatum perspiciatis et.', 'dolorem', 100000, '1980-05-02 21:36:01', '1980-06-08 03:49:37'),
(3, 'Iste libero deleniti quas est iure deleniti.', 'et', 100000, '2010-11-24 19:23:32', '1991-08-05 10:35:23'),
(4, 'Cum aperiam repellendus harum quaerat consequuntur possimus debitis.', 'ea', 100000, '2013-08-15 00:08:20', '1999-05-27 16:42:46'),
(5, 'Voluptatem eius soluta fugiat sit ut.', 'veritatis', 203552000, '2009-09-18 12:35:15', '1974-05-04 14:24:44'),
(6, 'Rerum molestiae dolores qui inventore omnis deleniti.', 'earum', 151637, '1987-02-05 19:29:18', '2020-11-07 21:16:23'),
(7, 'Repudiandae qui molestiae ad ut eos voluptas.', 'nemo', 4089820, '2004-07-04 18:34:30', '2018-11-18 22:37:09'),
(8, 'Nesciunt magnam quidem aperiam alias porro animi.', 'esse', 100000, '2019-07-15 14:21:59', '1991-03-21 02:12:51'),
(9, 'Voluptate quae voluptatem et temporibus facilis inventore.', 'qui', 100000, '1979-06-05 01:24:22', '2004-10-02 16:04:21'),
(10, 'Voluptas doloribus a eum iste.', 'laborum', 100000, '1993-03-10 10:08:44', '2003-01-16 21:08:43'),
(11, 'Ut voluptas dicta nihil consequatur velit quam hic.', 'harum', 355872000, '2012-02-12 10:48:52', '1981-01-04 09:46:21'),
(12, 'Esse expedita sapiente aut sed.', 'saepe', 100000, '2022-10-11 07:35:10', '2012-08-05 19:58:11'),
(13, 'Molestiae officiis pariatur temporibus et.', 'ea', 423016000, '1988-07-25 11:23:43', '1993-09-09 08:26:53'),
(14, 'Animi dicta quidem iste.', 'alias', 247696, '2004-03-20 02:28:27', '2012-07-14 12:15:39'),
(15, 'Voluptatem ipsa beatae occaecati error a ut.', 'vitae', 100000, '2006-05-13 01:51:40', '1997-12-20 02:02:34'),
(16, 'Necessitatibus omnis id odit eaque.', 'porro', 33645900, '1992-02-12 04:21:12', '2023-02-21 19:05:45'),
(17, 'Possimus repellendus similique facere similique molestiae aliquid sint.', 'distinctio', 171044, '1972-07-05 01:01:29', '2003-04-20 04:22:17'),
(18, 'Repellendus non adipisci inventore voluptatibus sed.', 'nisi', 100000, '1976-01-26 00:20:55', '1982-05-11 07:25:34'),
(19, 'Repellendus et quia nam voluptatibus.', 'quibusdam', 100000, '2005-11-05 05:06:13', '2006-04-04 23:15:03'),
(20, 'Aut at ducimus eius sint dolorum libero.', 'voluptatem', 100000, '1997-09-29 00:54:40', '1979-06-01 11:53:32'),
(21, 'Et provident non ipsa earum.', 'voluptatem', 100000, '2004-09-26 02:09:52', '1997-12-23 08:31:22'),
(22, 'Tenetur labore error eos sit et fugit.', 'ut', 100000, '2020-09-02 14:32:43', '1992-08-09 06:16:11'),
(23, 'Est eos aut maxime consequuntur ex.', 'ratione', 100000, '2011-12-28 16:01:52', '1987-03-22 18:04:09'),
(24, 'Dolorem a aperiam omnis accusamus.', 'voluptas', 623705, '2009-04-30 03:15:33', '1996-02-22 05:12:04'),
(25, 'Autem soluta voluptatibus quod placeat nostrum.', 'voluptatibus', 100000, '2022-12-06 18:36:51', '2021-02-14 10:40:46'),
(26, 'Dolorum qui sunt id.', 'enim', 100000, '1984-04-30 03:18:28', '2004-06-14 04:07:41'),
(27, 'Aut animi quaerat distinctio maxime neque quidem.', 'ipsum', 100000, '1980-04-10 15:55:33', '1973-04-12 00:23:02'),
(28, 'Cum dicta rerum voluptatem aut voluptatem quibusdam.', 'saepe', 100000, '1981-02-24 19:58:47', '2022-09-29 21:35:24'),
(29, 'Culpa consequatur sunt illum et rerum voluptatem voluptate.', 'voluptatem', 100000, '2023-02-14 10:06:18', '1996-08-07 02:26:25'),
(30, 'Quia dolores sit quae repudiandae sequi soluta qui.', 'dignissimos', 100000, '1996-05-22 05:38:34', '2007-04-01 20:05:07'),
(31, 'Libero delectus dicta provident nihil.', 'libero', 100000, '1987-04-26 05:39:14', '2018-11-24 19:48:40'),
(32, 'Optio in vitae et voluptate qui placeat.', 'eum', 547132, '1987-04-27 03:54:43', '2019-02-05 12:15:00'),
(33, 'Hic tenetur molestiae dolor.', 'aut', 100000, '2017-10-08 16:28:13', '1973-09-20 18:24:42'),
(34, 'Dolor ratione qui delectus sit molestiae et unde.', 'deleniti', 100000, '2004-07-09 14:40:52', '1999-09-24 10:39:47'),
(35, 'Est sequi ipsum consectetur nesciunt sit necessitatibus exercitationem.', 'ratione', 402799000, '1989-11-06 07:20:01', '1984-11-01 13:48:31'),
(36, 'Necessitatibus minus est et et rem.', 'omnis', 212620, '2021-05-14 14:27:19', '2023-02-19 05:58:20'),
(37, 'Veritatis maxime earum sunt deleniti neque qui.', 'voluptatem', 100000, '2002-03-16 13:38:43', '1983-12-25 09:43:54'),
(38, 'Doloremque commodi quia facilis pariatur sit accusamus.', 'facilis', 3751040, '1973-06-24 19:50:35', '2009-05-15 02:00:50'),
(39, 'Explicabo aliquam alias in.', 'facilis', 127511, '2008-09-27 10:58:49', '1981-04-11 16:46:49'),
(40, 'Quia culpa nulla similique quo commodi voluptas ipsam.', 'explicabo', 101694, '1971-12-01 11:03:04', '1991-07-27 09:44:29'),
(41, 'Id provident ullam quidem.', 'ducimus', 100000, '1971-11-01 06:24:12', '1999-10-04 09:39:43'),
(42, 'Dolores eligendi ea est est assumenda voluptatem et.', 'nemo', 100000, '1982-12-11 15:24:55', '2010-04-07 22:16:40'),
(43, 'Facere repellendus repellendus ipsa est.', 'expedita', 74650000, '1986-02-26 04:56:32', '1978-08-25 11:05:52'),
(44, 'Qui sed quo in debitis tempore debitis.', 'expedita', 100000, '1985-04-14 11:04:54', '1988-03-26 19:45:30'),
(45, 'Modi officiis aut repudiandae.', 'qui', 100000, '1987-04-09 18:35:31', '1987-12-28 21:33:20'),
(46, 'At qui eos ut ea.', 'officia', 102546, '2006-11-01 11:57:14', '1996-11-20 03:19:09'),
(47, 'Dicta quis tenetur eveniet sed.', 'magni', 437868, '1991-10-09 17:38:44', '1990-11-23 00:20:38'),
(48, 'Quaerat minus optio sit iusto aut modi vel.', 'mollitia', 100000, '2010-06-24 11:44:04', '2022-11-03 02:29:00'),
(49, 'Exercitationem voluptate eos modi odio.', 'explicabo', 873201000, '2018-05-23 02:52:54', '1978-07-30 13:44:13'),
(50, 'Eum ex nihil suscipit hic velit laborum veniam perspiciatis.', 'facilis', 9150850, '2003-05-12 07:07:10', '2002-01-04 04:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, NULL, 12, 5000, 10, 59500, '2023-09-18 23:42:56', '2023-09-18 23:42:56'),
(2, NULL, 10, 1000, 50, 9500, '2023-09-18 23:50:42', '2023-09-18 23:50:42'),
(3, NULL, 10, 1000, 50, 5000, '2023-09-18 23:54:00', '2023-09-18 23:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$n347QgGJxDWGRAufzpR81umCaVlWCoHSm6ixVpFEDvgXWcNWLMWEm', 1, '767c9965-55cf-4a38-873c-88546322fa34', 1, NULL, NULL, '2023-09-18 19:41:41', '2023-09-18 19:51:59', NULL, '2023-09-19 02:51:59'),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$cdMx0E9q0sjhHD7fnoZIl.WENv.2K.tpWynkXq9rCtugHNPLm9G9C', 1, '22d2010f-5702-4620-87ad-5d68b9191edc', 1, NULL, NULL, '2023-09-18 19:41:41', '2023-09-18 19:41:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
