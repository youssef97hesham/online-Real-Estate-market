-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 12:41 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minisocialnetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `type`, `rooms`, `area`, `location`, `price`, `created_at`, `updated_at`, `cover_image`, `state`) VALUES
(15, 1, 'villa', 4, 200, 'pp', 300, '2018-11-25 00:05:28', '2018-11-25 00:05:28', '46492974_2261400257422326_3232214613978251264_n_1543111528.jpg', ''),
(16, 1, 'office', 10, 55, 'cairo', 200000, '2018-11-25 00:37:20', '2018-11-25 00:37:20', 'download_1543113440.jpg', ''),
(17, 3, 'office', 3, 20, 'kkjn', 200, '2018-12-20 14:40:07', '2018-12-20 14:40:07', 'Screenshot (5)_1545324006.png', ''),
(18, 1, 'castle', 13, 12, 'kjhgjh', 5000, '2019-01-07 22:57:08', '2019-01-07 22:57:08', 'Screenshot (10)_1546909027.png', ''),
(19, 1, 'villa', 4, 9, 'sdgsdf', 40000, '2019-01-08 02:15:05', '2019-01-08 02:15:05', 'Screenshot (8)_1546920905.png', ''),
(20, 13, 'villa', 4, 2000, 'wvwev', 200000, '2019-03-13 02:21:10', '2019-03-13 02:21:10', 'Screenshot (38)_1552450870.png', ''),
(22, 13, 'househouse', 2, 20, 'dcdc', 6, '2019-03-31 01:42:05', '2019-03-31 16:18:50', 'Screenshot (54)_1554003725.png', 'approved'),
(27, 13, 'ssvsc', 9, 14, 'dcdc', 14, '2019-03-31 18:46:48', '2019-03-31 18:46:59', 'Screenshot (5)_1554065208.png', 'approved'),
(28, 20, 'villa', 2, 2, 'oct', 1234, '2019-04-01 05:58:15', '2019-04-01 05:58:15', 'images (4)_1554105495.jpg', 'requested');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `type`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'hey thereee', 13, 19, '2019-04-27 23:39:32', '2019-04-27 23:39:32'),
(2, 'hey new', 13, 22, '2019-04-28 00:22:15', '2019-04-28 00:22:15'),
(3, 'no way', 13, 22, '2019-04-29 00:27:42', '2019-04-29 00:27:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_13_153907_create_advertisements_table', 2),
(4, '2018_11_18_012620_rename_advertisements_to_articles', 3),
(5, '2018_11_24_222902_add_cover_image_to_articles', 4),
(6, '2019_03_12_070645_add_cover_image_to_users', 5),
(7, '2019_03_17_233712_add_state_to_articles', 6),
(8, '2019_04_27_225751_create_comments_table', 7);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `cover_image`) VALUES
(1, 'update', 'update@f.com', NULL, '$2y$10$U.MTeiXxUGyi0dxp/pg3Geje88v2A/5CwAbDzu2wEay1/YaCntJ82', '1HQRjKnaOJqvSgIx0LzbFaKgR6PUd4mdMtaOuOwy63pIyjqIPILcJYnB2dix', '2018-09-28 15:33:41', '2019-03-31 03:30:34', ''),
(2, 'khaled', 'khaled@gmail.com', NULL, '$2y$10$qx/iMqHWZuzj6Bb91XdDleeBmvg0wbMuErTrcMPbdLpqTx3hkz0Wy', 'tNwQZtlwC9V2ej9c4lygWdzpdTwVXYraHaqMmebKeXnbSnhta746TK07sOhd', '2018-11-18 20:49:02', '2018-11-18 20:49:02', ''),
(3, 'karim', 'karim@gmail.com', NULL, '$2y$10$uglwUfWlbNO763Z7zvykBehI973/qSCYoCE.yd8xoH9vx6txgXrZ2', 'gHCUJzgNOntxX8iLjhOU9E3ks5GCO6GtVoh4yDu1F0OBCvyXDcEnRb97xTXO', '2018-11-18 20:50:37', '2018-11-18 20:50:37', ''),
(4, 'adel', 'adel@gmail.com', NULL, '$2y$10$zfZ/cXBu8fsFgG4IegRbmOItJWMe.d1eisNurRnOjerS2./yO60pW', 'mUtjSHgPoWPYL9O4JHUNOal0eVh7gbcITuf7tVSDIRfKkL24v3EsjSZWImGh', '2018-11-18 20:51:29', '2018-11-18 20:51:29', ''),
(5, 'rayan', 'rayan@gmail.com', NULL, '$2y$10$BZTmsHs65RC9lIGm7ZuCU.O9nxLEqrCj/FPioXCmQ6c.9R5TLhvBK', '4gu35tad3I9U5HIlLXIl1E55Q2bzFLksDJ5NlXQ8nqunOizqaAP4028b17LM', '2018-11-18 20:52:19', '2018-11-18 20:52:19', ''),
(6, 'rall', 'rall@gmail.com', NULL, '$2y$10$9KCost4dsMNK1ZhDA5UovOuTPGK9bQL/viRRNrT9709WGfXhL7PqO', 'VZKFoblPXQs36MJd4MntLSCEAYwcdBT43OtR6RlCYCUfrQ63CAz29PwXyQaz', '2018-11-18 20:53:14', '2018-11-18 20:53:14', ''),
(7, 'dt', 'dt@gmail.com', NULL, '$2y$10$ZAdWYWQZEhzEClj.gjsvuuV5EQ5YVNCIOepCoLrO.3PayFO6IPIce', '9UJ4ZjE9DjGu2xEmzxhfnx2YZshsbRbOJTUeZsv9Qjazei0cdfxOqlKTvBpC', '2018-11-18 20:53:54', '2018-11-18 20:53:54', ''),
(8, 'hgyy', 'hgyy@gmail.com', NULL, '$2y$10$6t1EGzWRbXBMDpO.deDAge4rLzdsEEZevFEN7Y53/gLC2BanISBcy', '7WdAVGZI641P43Kzw6ovyvHHXavU8hfjUpq1hX3GZsHjLiSFA4uegI7vI9Ym', '2018-11-18 20:54:34', '2018-11-18 20:54:34', ''),
(9, 'rafeal', 'raf@gmail.com', NULL, '$2y$10$WTrNrF/XaQVUNu3Ng/VTf.LVSTLCLk0vxPlx3IHsycO2CPdYhIwda', NULL, '2018-11-23 11:56:36', '2018-11-23 11:56:36', ''),
(10, 'bassem', 'bs@gmail.com', NULL, '$2y$10$keU.ROxGEKxJPVVEd9kiGuXo862jT1kN3TmipyXuxnN0i1Um6G62W', 'SodArCozNlUKs0xOrlu7H446CZaUStLkmBt34Jpos4mOsbdnIxcEJeaFEKjp', '2018-11-25 00:39:15', '2018-11-25 00:39:15', ''),
(11, 'Youssefff', 'youssefff@gmail.com', NULL, '$2y$10$T1O.rjCh/lHimfpPWS4WfOVL6jh59atl0WoSXPfLFlfvjuuKaA.Ja', 'SqeWEU3JzqEzS9DAjbSrYR49bREPACj8KWA34tfJVQ7MVSMqa3Yjv0nj4dqR', '2019-03-12 20:52:53', '2019-03-12 20:52:53', 'C:\\xampp\\tmp\\phpF9B9.tmp'),
(12, 'sfewwe', 'sfewwe@gmail.com', NULL, '$2y$10$si7UKncxpZwVvmD1o1cdyeUXVsIKSHmzI/udZa3GcGXlqNEi.hoa.', 'dMMfuhPop4AryGWMXieQInv6190okftnkKdI5sFeBeAzV0poxDjOZqPTrclo', '2019-03-12 22:15:25', '2019-03-12 22:15:25', 'Screenshot (35)_1552436125.png'),
(13, 'Youssef', 'youssef@gmail.com', NULL, '$2y$10$ZRnLu9oUWpFnNzssXhY6PeAgttY/1K7KiR8/6B7Zp4K.t2HTFjfBG', 'aI6LMBzE1rzxOLYfMY94Qp5bpuxGIelTmZBkypo6ABxA6qSWNeh3pfmgvd9Q', '2019-03-12 22:45:07', '2019-03-31 20:26:10', '14642458_153780061747300_1215708293022451385_n_1552437907.jpg'),
(14, 'bdfs', 'dtwg@gmf.com', NULL, '$2y$10$yXJPkPTavG3caotZT6o/Bup8wV91yTcIf.R2bxkd0Z8j.gBHeFEQm', 'Oh1DAfz0tm6lXiV9hynOBUSCrdShFtcd1hN9CHNIetvZIXu02yesKC1fG6p0', '2019-03-30 20:00:39', '2019-03-30 20:00:39', 'Screenshot (36)_1553983238.png'),
(15, 'assd', 'ababab@gmd.com', NULL, '$2y$10$Pk1r6wtvAT0Cn.gGRD9xWeaeNHePz91KBzPWv9SMBQj1l227AgiT.', NULL, '2019-03-30 22:21:05', '2019-03-30 22:21:05', 'Screenshot (51)_1553991664.png'),
(16, 'qaz', 'qaz@ss.com', NULL, '$2y$10$95HKtg3XeHqbaKKajJu5Y.KHJnVkWg24OQqegIDcwbUaVbMbsXlwu', 'blqOwa1DLMNHwcZ2SpkSz4cSuwQYzZtZkT6u5iQ5NrBvCJLRDkupefRtzY3z', '2019-03-31 00:54:33', '2019-03-31 00:54:33', 'noimage.jpg'),
(17, 'klll', 'kll@gg.com', NULL, '$2y$10$TYwz.Y/7a13zAt5Sph1bT.cIgV/6guNq6pLGNoa.zlH9lDbiDTiZ6', 'z00O3OWTBOk563zjkZILZD5ou7WI5VKCniG839esguxZYdDdFnmPpeFp43ep', '2019-03-31 18:25:56', '2019-03-31 18:25:56', 'Screenshot (5)_1554063956.png'),
(18, 'tarek', 'tarek@g.com', NULL, '$2y$10$LC9Wh.Dgwmc1SwOgRufCROUIBdYAXTBuzK4JNeiQd/oeVThdetWKK', 'ufPjfibDfBaoPFaEW03obWzl9XMiJpOenZdsS6x7kgfz3dQln9dw1I0FLKny', '2019-03-31 20:56:47', '2019-03-31 20:56:47', 'Screenshot (5)_1554073006.png'),
(19, 'ahmeddd', 'ahmeddd@g.com', NULL, '$2y$10$pzZYH7IwLHUQY89oGv2Lxec6DwnX7rBKiB5y/z3XKqMMFlHpmu4V.', 'Rf4ZqokmuZeF0i6eaHm54XMaf7TuVkxejMx1vRcy8OikiLUuOanp8EwXKxDN', '2019-03-31 21:07:28', '2019-03-31 21:07:28', 'Screenshot (5)_1554073648.png'),
(20, 'mohamed', 'mohamed@g.com', NULL, '$2y$10$rKA.SirxqvF/m79QqSAvrOrlntJa6HUQClIWL6uoUjIh8BA5jYqcm', NULL, '2019-04-01 05:55:46', '2019-04-01 05:55:46', '28379473_1147787492023763_7090359244062841892_n_1554105346.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
