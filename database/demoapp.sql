-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 16 2017 г., 23:49
-- Версия сервера: 10.1.9-MariaDB
-- Версия PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demoapp`
--
CREATE DATABASE IF NOT EXISTS `demoapp` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `demoapp`;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_16_002327_create_permission_tables', 1),
(4, '2017_07_16_173530_add_username_field_to_users_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'create', '2017-07-19 19:00:00', '2017-07-02 19:00:00'),
(2, 'edit', '2017-07-15 19:00:00', '2017-07-15 19:00:00'),
(3, 'delete', '2017-07-15 19:00:00', '2017-07-15 19:00:00'),
(4, 'status', '2017-07-15 19:00:00', '2017-07-15 19:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `active`, `first_name`, `last_name`) VALUES
(2, '$2y$10$uHjSZqg4lKi0ybCjBoVjHeSSWNTD2bAcTxtqD3WogTUH3stOxttc2', '6w0bBqbEoXZyPMDJiravBdzuZI5gcXR9WblvqTlgcALhev5u75rwXe3QbHbO', '2017-07-16 14:23:32', '2017-07-16 15:26:06', 'admin', 1, 'Admin', 'Admin'),
(3, '$2y$10$Fm46q6Y8O6tpycLqpIZLbue5TX3D3I4dttiSvZxLl/Hirjp44uANu', '9fCEbX0XsTNZgTNHQefdIehgz01ZsXcu3KV9j1dWCCScArss4Fy1USvkBzJS', '2017-07-16 14:26:21', '2017-07-16 15:26:27', 'user', 1, 'User', 'User'),
(6, '$2y$10$eALW/OlgflFQgiqhGlZxXONN3qQxsRhBAvYTjaTEQRS/69v3J7r1i', NULL, '2017-07-16 15:28:24', '2017-07-16 15:28:24', 'user2', 0, 'Disabled', 'User'),
(7, '$2y$10$uHjSZqg4lKi0ybCjBoVjHeSSWNTD2bAcTxtqD3WogTUH3stOxttc2', '6w0bBqbEoXZyPMDJiravBdzuZI5gcXR9WblvqTlgcALhev5u75rwXe3QbHbO', '2017-07-16 09:23:32', '2017-07-16 10:26:06', 'admin2', 1, 'Admin2', 'Admin2'),
(8, '$2y$10$Fm46q6Y8O6tpycLqpIZLbue5TX3D3I4dttiSvZxLl/Hirjp44uANu', '9fCEbX0XsTNZgTNHQefdIehgz01ZsXcu3KV9j1dWCCScArss4Fy1USvkBzJS', '2017-07-16 09:26:21', '2017-07-16 10:26:27', 'user3', 1, 'User3', 'User'),
(9, '$2y$10$eALW/OlgflFQgiqhGlZxXONN3qQxsRhBAvYTjaTEQRS/69v3J7r1i', NULL, '2017-07-16 10:28:24', '2017-07-16 10:28:24', 'user4', 0, 'Disabled', 'User'),
(10, '$2y$10$uHjSZqg4lKi0ybCjBoVjHeSSWNTD2bAcTxtqD3WogTUH3stOxttc2', '6w0bBqbEoXZyPMDJiravBdzuZI5gcXR9WblvqTlgcALhev5u75rwXe3QbHbO', '2017-07-16 09:23:32', '2017-07-16 10:26:06', 'admin3', 1, 'Admin2', 'Admin2'),
(11, '$2y$10$Fm46q6Y8O6tpycLqpIZLbue5TX3D3I4dttiSvZxLl/Hirjp44uANu', '9fCEbX0XsTNZgTNHQefdIehgz01ZsXcu3KV9j1dWCCScArss4Fy1USvkBzJS', '2017-07-16 09:26:21', '2017-07-16 10:26:27', 'user545', 1, 'User3', 'User'),
(12, '$2y$10$eALW/OlgflFQgiqhGlZxXONN3qQxsRhBAvYTjaTEQRS/69v3J7r1i', NULL, '2017-07-16 10:28:24', '2017-07-16 10:28:24', 'user45', 0, 'Disabled', 'User'),
(13, '$2y$10$uHjSZqg4lKi0ybCjBoVjHeSSWNTD2bAcTxtqD3WogTUH3stOxttc2', '6w0bBqbEoXZyPMDJiravBdzuZI5gcXR9WblvqTlgcALhev5u75rwXe3QbHbO', '2017-07-16 09:23:32', '2017-07-16 10:26:06', 'admin72', 1, 'Admin2', 'Admin2'),
(14, '$2y$10$Fm46q6Y8O6tpycLqpIZLbue5TX3D3I4dttiSvZxLl/Hirjp44uANu', '9fCEbX0XsTNZgTNHQefdIehgz01ZsXcu3KV9j1dWCCScArss4Fy1USvkBzJS', '2017-07-16 09:26:21', '2017-07-16 10:26:27', 'user375', 1, 'User3', 'User'),
(15, '$2y$10$eALW/OlgflFQgiqhGlZxXONN3qQxsRhBAvYTjaTEQRS/69v3J7r1i', NULL, '2017-07-16 10:28:24', '2017-07-16 10:28:24', 'user467', 0, 'Disabled', 'User'),
(16, '$2y$10$uHjSZqg4lKi0ybCjBoVjHeSSWNTD2bAcTxtqD3WogTUH3stOxttc2', '6w0bBqbEoXZyPMDJiravBdzuZI5gcXR9WblvqTlgcALhev5u75rwXe3QbHbO', '2017-07-16 09:23:32', '2017-07-16 10:26:06', 'admin2ee', 1, 'Admin2', 'Admin2'),
(17, '$2y$10$Fm46q6Y8O6tpycLqpIZLbue5TX3D3I4dttiSvZxLl/Hirjp44uANu', '9fCEbX0XsTNZgTNHQefdIehgz01ZsXcu3KV9j1dWCCScArss4Fy1USvkBzJS', '2017-07-16 09:26:21', '2017-07-16 10:26:27', 'user3qwe', 1, 'User3', 'User'),
(18, '$2y$10$eALW/OlgflFQgiqhGlZxXONN3qQxsRhBAvYTjaTEQRS/69v3J7r1i', NULL, '2017-07-16 10:28:24', '2017-07-16 10:28:24', 'user4ewr', 0, 'Disabled', 'User');

-- --------------------------------------------------------

--
-- Структура таблицы `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Индексы таблицы `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
