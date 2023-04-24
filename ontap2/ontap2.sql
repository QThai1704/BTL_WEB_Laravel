-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2023 lúc 08:16 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ontap2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plane_code` varchar(255) NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `passenger_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`id`, `plane_code`, `flight_id`, `passenger_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'heq-393', 8, 3, '2023-01-16 05:41:02', '2022-09-11 17:40:26', NULL),
(2, 'elp-595', 10, 1, '2023-01-03 17:58:56', '2022-08-11 00:17:34', NULL),
(3, 'heq-393', 8, 2, '2022-11-28 18:15:55', '2022-07-28 20:20:59', NULL),
(4, 'xdb-781', 9, 3, '2022-04-30 22:10:02', '2023-01-19 08:37:54', NULL),
(5, 'elp-595', 8, 3, '2023-01-22 06:22:20', '2022-12-18 16:39:58', NULL),
(6, 'hdt-192', 8, 2, '2022-05-30 00:36:10', '2022-12-30 16:31:17', NULL),
(7, 'elp-595', 7, 2, '2023-03-05 16:06:20', '2022-12-15 21:08:18', NULL),
(8, 'heq-393', 8, 3, '2022-05-01 01:32:18', '2022-04-26 13:13:54', NULL),
(9, 'elp-595', 6, 3, '2022-04-12 16:40:01', '2022-12-12 19:52:59', NULL),
(10, 'cwj-751', 8, 2, '2022-04-22 08:41:00', '2022-06-14 21:54:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flights`
--

CREATE TABLE `flights` (
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `plane_code` varchar(255) NOT NULL,
  `departure_airport` text NOT NULL,
  `arrival_airport` text NOT NULL,
  `departure_time` date NOT NULL,
  `arrival_time` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flights`
--

INSERT INTO `flights` (`flight_id`, `plane_code`, `departure_airport`, `arrival_airport`, `departure_time`, `arrival_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ilx-517', 'North Dexter', 'South Libbieborough', '2023-04-22', '2025-03-04', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(2, 'dfz-537', 'East Elnoraland', 'Lake Deron', '2023-05-10', '2024-12-22', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(3, 'dfz-537', 'Thompsonshire', 'Lake Yvetteborough', '2023-05-02', '2024-11-07', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(4, 'elp-595', 'Lake Juddtown', 'South Claudine', '2023-05-26', '2024-09-10', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(5, 'cwj-751', 'Mannhaven', 'Port Anika', '2023-07-03', '2024-09-18', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(6, 'dfz-537', 'North Lysanne', 'Ernieview', '2024-04-05', '2025-03-23', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(7, 'xdb-781', 'Schummside', 'North Shainahaven', '2024-03-06', '2024-05-20', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(8, 'elp-595', 'North Cassandreshire', 'New Alejandrin', '2024-02-09', '2025-02-26', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(9, 'heq-393', 'Reannaville', 'South Ryleighland', '2023-11-03', '2025-03-29', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL),
(10, 'ilx-517', 'East Jarretside', 'Alberttown', '2023-07-30', '2024-09-28', '2023-04-06 00:26:20', '2023-04-06 00:26:20', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_06_063104_create_planes_table', 1),
(6, '2023_04_06_063119_create_flights_table', 1),
(7, '2023_04_06_063131_create_passengers_table', 1),
(8, '2023_04_06_063142_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `name`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'John Doe', 'johndoe@example.com', NULL, NULL, NULL),
(2, 'Jane Doe', 'janedoe@example.com', NULL, NULL, NULL),
(3, 'Bob Smith', 'bobsmith@example.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `planes`
--

CREATE TABLE `planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plane_code` varchar(255) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `passenger` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `planes`
--

INSERT INTO `planes` (`id`, `plane_code`, `registration_number`, `passenger`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'xdb-781', '528-mrrv', 308, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(2, 'pub-821', '479-psmu', 420, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(3, 'dfz-537', '264-qvpy', 192, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(4, 'ilx-517', '293-utlh', 229, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(5, 'cwj-751', '346-wgxo', 117, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(6, 'bje-940', '095-wwmt', 367, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(7, 'gna-034', '758-eycp', 147, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(8, 'heq-393', '531-dkzm', 179, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(9, 'hdt-192', '098-ltkf', 105, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL),
(10, 'elp-595', '555-yobj', 490, '2023-04-06 00:17:43', '2023-04-06 00:17:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_plane_code_foreign` (`plane_code`),
  ADD KEY `bookings_flight_id_foreign` (`flight_id`),
  ADD KEY `bookings_passenger_id_foreign` (`passenger_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `flights_plane_code_foreign` (`plane_code`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`),
  ADD UNIQUE KEY `passengers_email_unique` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `planes_plane_code_unique` (`plane_code`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `passengers`
--
ALTER TABLE `passengers`
  MODIFY `passenger_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `planes`
--
ALTER TABLE `planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_passenger_id_foreign` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_plane_code_foreign` FOREIGN KEY (`plane_code`) REFERENCES `planes` (`plane_code`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_plane_code_foreign` FOREIGN KEY (`plane_code`) REFERENCES `planes` (`plane_code`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
