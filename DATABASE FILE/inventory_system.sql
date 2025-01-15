-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 09:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(10, 'Fancy Rice'),
(9, 'Ordinary Rice'),
(14, 'Special Rice');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(6, '[Cherry Tree] [Ordinary Rice] [5 Kilo Sack].png', 'image/png'),
(7, '[Green Mango] [Ordinary Rice] [25 Kilos].png', 'image/png'),
(8, '[Aromatic Broken Rice] [Ordinary Rice] [25 Kilos].png', 'image/png'),
(9, '[Golden Rice] [Fancy Rice] [5 Kilo Sack].png', 'image/png'),
(10, '[Golden Rice] [Fancy Rice] [10 Kilo Sack].png', 'image/png'),
(11, '[Panda Rice] [Fancy Rice] [5 Kilo Sack].png', 'image/png'),
(12, '[Panda Rice] [Fancy Rice] [10 Kilo Sack].png', 'image/png'),
(14, '[Jasmine Fragrant] [Fancy Rice] [5 Kilo Sack].png', 'image/png'),
(15, '[Jasmine Fragrant] [Fancy Rice] [10 Kilo Sack].png', 'image/png'),
(16, '[Jasmine Fragrant] [Fancy Rice] [25 Kilo Sack].png', 'image/png'),
(17, '[Super Sarap] [Fancy Rice] [5 Kilo Sack].png', 'image/png'),
(18, '[Super Sarap] [Fancy Rice] [10 Kilo Sack].png', 'image/png'),
(21, '[Super Sarap] [Fancy Rice] [25 Kilo Sack].png', 'image/png'),
(22, '[Pinoy Rice] [Fancy Rice] [5 Kilo Sack].png', 'image/png'),
(23, '[Pinoy Rice] [Fancy Rice] [10 Kilo Sack].png', 'image/png'),
(24, '[Senador] [Fancy Rice] [10 Kilos].png', 'image/png'),
(25, '[Senador] [Fancy Rice] [25 Kilos].png', 'image/png'),
(26, '[Jasmine Denorado] [Fancy Rice] [10 Kilo Sack].png', 'image/png'),
(27, '[Jasmine Denorado] [Fancy Rice] [25 Kilo Sack].png', 'image/png'),
(28, '[Cocopandan] [Fancy Rice] [25 Kilos].png', 'image/png'),
(29, '[Del\'s Denorado] [Fancy Rice] [25 Kilos].png', 'image/png'),
(30, '[Wonder] [Fancy Rice] [25 Kilos].png', 'image/png'),
(31, '[Mi Favorito] [Fancy Rice] [25 Kilos].png', 'image/png'),
(32, '[Royal Sheep] [Fancy Rice] [25 Kilos].png', 'image/png'),
(33, '[Bachelor] [Fancy Rice] [25 Kilos].png', 'image/png'),
(35, '[Yellow Magic Castle] [Fancy Rice] [25 Kilos].png', 'image/png'),
(36, '[Buddha] [Fancy Rice] [25 Kilos].png', 'image/png'),
(37, '[Ifugao] [Fancy Rice] [25 Kilos].png', 'image/png'),
(38, '[Kokuyu] [Fancy Rice] [25 Kilos].png', 'image/png'),
(39, '[Dona Bee] [Special Rice Red  Rice] [25 Kilo Sack].png', 'image/png'),
(40, '[Sakura] [Special Rice Japanese Rice] [25 Kilo Sack].png', 'image/png'),
(41, '[Bee Hive] [Special Rice Brown Rice] [25 Kilo Sack].png', 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(16, 'Aromatic Broken', '1000', 40.00, 45.00, 9, 8, '2025-01-07 23:56:29'),
(17, 'Cherry Tree', '1000', 45.00, 50.00, 9, 6, '2025-01-07 23:57:06'),
(18, 'Green Mango', '1000', 38.00, 42.00, 9, 7, '2025-01-07 23:57:57'),
(19, 'Bachelor', '1000', 57.00, 60.00, 10, 33, '2025-01-07 23:59:01'),
(20, 'Buddha', '1000', 51.00, 58.00, 10, 36, '2025-01-08 00:00:34'),
(21, 'Coco Pandan', '345', 54.00, 58.00, 10, 28, '2025-01-08 00:01:10'),
(22, 'Del&#039;s Denorado', '567', 55.00, 64.00, 10, 29, '2025-01-08 00:01:54'),
(23, 'Ifugao', '862', 62.00, 68.00, 10, 37, '2025-01-08 00:02:25'),
(24, 'Jasmine Denorado', '900', 62.00, 68.00, 10, 14, '2025-01-08 00:02:55'),
(25, 'Jasmine Fragrant', '880', 55.00, 60.00, 10, 14, '2025-01-08 00:04:15'),
(26, 'Kokuyu', '687', 64.00, 68.00, 10, 38, '2025-01-08 00:04:46'),
(27, 'Mi Favorito', '778', 50.00, 54.00, 10, 31, '2025-01-08 00:05:12'),
(28, 'Panda Rice', '496', 51.00, 59.00, 10, 0, '2025-01-08 00:05:41'),
(29, 'Pinoy Rice', '783', 53.00, 55.00, 10, 22, '2025-01-08 00:06:23'),
(30, 'Royal Sheep', '754', 55.00, 60.00, 10, 32, '2025-01-08 00:07:02'),
(31, 'Senador', '778', 55.00, 60.00, 10, 24, '2025-01-08 00:07:37'),
(32, 'Super Sarap', '545', 55.00, 60.00, 10, 17, '2025-01-08 00:08:20'),
(33, 'Wonder', '313', 54.00, 57.00, 10, 30, '2025-01-08 00:08:46'),
(34, 'Yellow Magic Castle', '732', 53.00, 57.00, 10, 35, '2025-01-08 00:09:25'),
(35, 'Golden Rice', '69', 55.00, 62.00, 10, 9, '2025-01-08 00:10:12'),
(36, 'Beehive', '678', 65.00, 70.00, 14, 41, '2025-01-08 00:10:54'),
(37, 'Dona Bee', '690', 70.00, 85.00, 14, 39, '2025-01-08 00:11:25'),
(38, 'Sakura', '975', 61.00, 65.00, 14, 40, '2025-01-08 00:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(9, 35, 20, 1240.00, '2024-10-17'),
(10, 38, 23, 1495.00, '2024-11-14'),
(11, 28, 89, 5251.00, '2024-12-30'),
(12, 24, 14, 952.00, '2024-12-20'),
(13, 33, 65, 3705.00, '2024-11-22'),
(14, 31, 10, 600.00, '2025-01-02'),
(15, 30, 14, 840.00, '2025-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Angelo Padilla', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'o76qincg1.jpeg', 1, '2025-01-09 09:17:26'),
(6, 'Edan Raymundo', 'Edan', '8596edf8964c665d1252c4f3291529c970c37404', 1, 'no_image.jpg', 1, NULL),
(7, 'Jestro De Castro', 'Jestro', '8fe211db12e7f00af5959b8ecf4347adf42c4e21', 1, 'no_image.jpg', 1, NULL),
(8, 'Nolly Alvarado', 'Nolly', '568db7f6a245f6e940ce16d65a57ffe2c0d85ec6', 1, 'no_image.jpg', 1, NULL),
(9, 'Ronald Jr Labrado', 'Ronald', 'cee3e6f63af1254029b4d4930a78fd3e860075f2', 1, 'no_image.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'special', 2, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
