-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 07:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_07_10_060353_create_videos_table', 1),
(4, '2020_07_10_060426_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `long_description`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BGB officially protests Anandabazar report on ‘Bangladeshis stepping into unprotected land’ BGB officially protests Anandabazar report on ‘Bangladeshis stepping into unprotected land’', 'The Border Guard Bangladesh (BGB) has officially protested a news published in the Indian newspaper Anandabazar on July 7, under the headline “Bangladeshis stepping into unprotected land”.', 'BGB officially protests Anandabazar report on ‘Bangladeshis stepping into unprotected land’\r\nBGB officially protests Anandabazar report on ‘Bangladeshis stepping into unprotected land’. The Border Guard Bangladesh (BGB) has officially protested a news published in the Indian newspaper Anandabazar on July 7, under the headline “Bangladeshis stepping into unprotected land”.', '1594400281.jpg', 'yes', '2020-07-10 10:58:01', '2020-07-10 10:58:01'),
(2, 'Hagia Sophia: Turkey turns iconic Istanbul museum into mosque', 'In the protest letter, the BGB said, \"The news says that Bangladeshis are cultivating freely in Raninagar 1 and 2 blocks of the border and about 22,000 acres of unprotected land across Jalang', 'The BGB statement reads: \"The newspaper mentioned the Raninagar border as the place of the incident but in fact, no incident happened there. The area is under the jurisdiction of Rajshahi BGB and it extends from Charghat BOP (Border Outpost) to Talaimari BOP. The zero line crosses along the river Padma and there are vast chars on both sides.\"\r\n\r\nIn the protest letter, the BGB said, \"The news says that Bangladeshis are cultivating freely in Raninagar 1 and 2 blocks of the border and about 22,000 acres of unprotected land across Jalangi.\r\n\r\n\"In this context, the real picture is completely different. Far from cultivating inside India, it is now almost impossible to cultivate along international borders. BGB members are patrolling the border day and night along the zero line,\" it said.', '1594400344.jpg', 'yes', '2020-07-10 10:59:04', '2020-07-10 10:59:04'),
(3, '157 Bangladeshi citizens return from Maldives', 'On July 2, two incidents took place at the Jalangi border, which contradicted the report published by the newspaper, reads the statement.', 'BGB said that two residents of Jalangi border—Nayan Sheikh and Shahidul Sheikh—illegally crossed the international border around 11:30am on July 2. They trespassed into Yousufpur village inside Bangladesh territory over narcotics dealing and financial transaction.', '1594400391.png', 'no', '2020-07-10 10:59:51', '2020-07-10 10:59:51'),
(4, 'Lawyers and activists term speedy energy supply act ‘unconstitutional’', '\"Locals did not take the matter lightly and surrounded them. Subsequently, the Yusufpur BGB camp took the two Indians into their custody out of concern for their safety,\" BGB said.', 'Lawyers and activists term speedy energy supply act ‘unconstitutional’\"Locals did not take the matter lightly and surrounded them. Subsequently, the Yusufpur BGB camp took the two Indians into their custody out of concern for their safety,\" BGB said.\"A BGB-BSF flag meeting was held on the same day in the aftermath of both the incidents. Later, on July 3, the matter was settled amicably through peaceful transfer of citizens of both the countries,\" BGB said in their statement.', '1594400462.jpg', 'yes', '2020-07-10 11:01:02', '2020-07-10 11:01:02'),
(5, 'Condolences pour in for Sahara Khatun.', 'In the protest letter, the BGB said, \"The news says that Bangladeshis are cultivating freely in Raninagar 1 and 2 blocks of the border and about 22,000 acres of unprotected land across Jalang', 'The BGB statement reads: \"The newspaper mentioned the Raninagar border as the place of the incident but in fact, no incident happened there. The area is under the jurisdiction of Rajshahi BGB and it extends from Charghat BOP (Border Outpost) to Talaimari BOP. The zero line crosses along the river Padma and there are vast chars on both sides.\"', '1594400506.jpg', 'yes', '2020-07-10 11:01:46', '2020-07-10 11:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Md. Shohidul Islam Saju', 'saju@gmail.com', NULL, '$2y$10$NCuAmVo2CklNUZ1fUM.Nt.GzIS9dfo4kcT0FqSHygPjtWlyREpAlS', NULL, '2020-07-10 10:53:53', '2020-07-10 10:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `short_description`, `long_description`, `short_link`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hagia Sophia: Turkey turns iconic Istanbul museum into mosque', 'In the protest letter, the BGB said, \"The news says that Bangladeshis are cultivating freely in Raninagar 1 and 2 blocks of the border and about 22,000 acres of unprotected land across Jalang', 'The BGB statement reads: \"The newspaper mentioned the Raninagar border as the place of the incident but in fact, no incident happened there. The area is under the jurisdiction of Rajshahi BGB and it extends from Charghat BOP (Border Outpost) to Talaimari BOP. The zero line crosses along the river Padma and there are vast chars on both sides.\"\r\n\r\nIn the protest letter, the BGB said, \"The news says that Bangladeshis are cultivating freely in Raninagar 1 and 2 blocks of the border and about 22,000 acres of unprotected land across Jalangi.', 'https://www.youtube.com/embed=orrs-I3kkrg', '1594400687.jpg', 'yes', '2020-07-10 11:04:47', '2020-07-10 11:04:47'),
(2, 'Biden says his $700 billion economic plan would create 5 million new US jobs', '\"Locals did not take the matter lightly and surrounded them. Subsequently, the Yusufpur BGB camp took the two Indians into their custody out of concern for their safety,\" BGB said.', 'On the other hand, around 12:00 noon on the same day, the BSF patrol team illegally crossed the international border and entered 300 metres inside Bangladesh (along Pillar 72/4-S) and captured three innocent farmers from Yusufpur area who were returning home after cultivating in the char area, reads the BGB statement.\r\n\r\n\"A BGB-BSF flag meeting was held on the same day in the aftermath of both the incidents. Later, on July 3, the matter was settled amicably through peaceful transfer of citizens of both the countries,\" BGB said in their statement.', 'https://www.youtube.com/embed=orrs-I3kkrg', '1594400740.png', 'yes', '2020-07-10 11:05:40', '2020-07-10 11:05:40'),
(3, '157 Bangladeshi citizens return from Maldives', 'On the other hand, around 12:00 noon on the same day, the BSF patrol team illegally crossed the international border and entered 300 metres inside Bangladesh', 'On the other hand, around 12:00 noon on the same day, the BSF patrol team illegally crossed the international border and entered 300 metres inside Bangladesh (along Pillar 72/4-S) and captured three innocent farmers from Yusufpur area who were returning home after cultivating in the char area, reads the BGB statement.\r\n\r\n\"A BGB-BSF flag meeting was held on the same day in the aftermath of both the incidents. Later, on July 3, the matter was settled amicably through peaceful transfer of citizens of both the countries,\" BGB said in their statement.', 'https://www.youtube.com/embed=orrs-I3kkrg', '1594400851.png', 'yes', '2020-07-10 11:07:31', '2020-07-10 11:07:31'),
(4, 'Lawyers and activists term speedy energy supply act ‘unconstitutional’', '\"A BGB-BSF flag meeting was held on the same day in the aftermath of both the incidents. Later, on July 3, the matter was settled amicably through peaceful transfer of citizens of both the co', 'On the other hand, around 12:00 noon on the same day, the BSF patrol team illegally crossed the international border and entered 300 metres inside Bangladesh (along Pillar 72/4-S) and captured three innocent farmers from Yusufpur area who were returning home after cultivating in the char area, reads the BGB statement.\r\n\r\n\"A BGB-BSF flag meeting was held on the same day in the aftermath of both the incidents. Later, on July 3, the matter was settled amicably through peaceful transfer of citizens of both the countries,\" BGB said in their statement.', 'https://www.youtube.com/embed=orrs-I3kkrg', '1594400893.png', 'yes', '2020-07-10 11:08:13', '2020-07-10 11:08:13'),
(5, 'Tk 1 apiece: Man held with 10,000 yaba pills; could face death', 'A statement signed by BGB Public Relation Officer Md Shariful Islam said the news published in Anandabazar was \"baseless, fabricated and motivated\".', 'A statement signed by BGB Public Relation Officer Md Shariful Islam said the news published in Anandabazar was \"baseless, fabricated and motivated\".\r\n\r\nThe BGB statement reads: \"The newspaper mentioned the Raninagar border as the place of the incident but in fact, no incident happened there. The area is under the jurisdiction of Rajshahi BGB and it extends from Charghat BOP (Border Outpost) to Talaimari BOP. The zero line crosses along the river Padma and there are vast chars on both sides.\"', 'https://www.youtube.com/embed=orrs-I3kkrg', '1594401058.jpg', 'no', '2020-07-10 11:10:58', '2020-07-10 11:10:58');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
