-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 16 2017 г., 23:27
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

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
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

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
