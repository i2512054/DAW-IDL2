-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2025 at 06:34 PM
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
-- Database: `db_daw_idl2`
--
DROP DATABASE IF EXISTS db_daw_idl2;
CREATE DATABASE db_daw_idl2;
USE db_daw_idl2;
-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `ind_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `ind_status`, `created_at`, `updated_at`) VALUES
(1, 'BMW', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(2, 'Jeep', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(3, 'Toyota', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(4, 'Hyundai', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(5, 'Subaru', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(6, 'Volkswagen', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(7, 'Nissan', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(8, 'Mazda', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(9, 'Honda', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(10, 'Mitsubishi', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(11, 'Audi', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(12, 'Baic', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(13, 'Brilliance', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(14, 'Changan', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(15, 'Chery', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(16, 'Chevrolet', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(17, 'Citroen', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(18, 'Cupra', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(19, 'Daihatsu', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(20, 'DFSK', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(21, 'Dodge', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(22, 'Dongfeng', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(23, 'DS', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(24, 'Fiat', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(25, 'Ford', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(26, 'GAC', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(27, 'Geely', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(28, 'Great Wall', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(29, 'Haval', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(30, 'Hummer', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(31, 'JAC', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(32, 'Jaguar', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(33, 'Jetour', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(34, 'Kaiyi', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(35, 'KIA', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(36, 'Land Rover', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(37, 'Lexus', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(38, 'Mahindra', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(39, 'Maserati', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(40, 'Maxus', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(41, 'Mercedes Benz', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(42, 'MG', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(43, 'Mini', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(44, 'Peugeot', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(45, 'Porsche', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(46, 'Renault', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(47, 'Seat', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(48, 'Ssangyong', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(49, 'Suzuki', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(50, 'SWM', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40'),
(51, 'Volvo', b'1', '2025-06-05 09:02:40', '2025-06-05 09:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `resource` varchar(30) DEFAULT NULL,
  `ind_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `resource`, `ind_status`, `created_at`, `updated_at`) VALUES
(1, 'Camioneta', 'camioneta.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31'),
(2, 'Deportivo', 'deportivo.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31'),
(3, 'Hatchback', 'hatchback.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31'),
(4, 'Pick Up', 'pick-up.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31'),
(5, 'Sedan', 'sedan.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31'),
(6, 'Station Wagon', 'station-wagon.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31'),
(7, 'Van', 'van.png', b'1', '2025-06-05 08:54:31', '2025-06-05 08:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `ind_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `ind_status`, `created_at`, `updated_at`) VALUES
(1, 'Blanco', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(2, 'Negro', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(3, 'Rojo', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(4, 'Verde', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(5, 'Azul', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(6, 'Amarillo', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(7, 'Plateado', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(8, 'Naranja', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44'),
(9, 'Plomo', b'1', '2025-06-05 09:09:44', '2025-06-05 09:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `ind_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuels`
--

INSERT INTO `fuels` (`id`, `name`, `ind_status`, `created_at`, `updated_at`) VALUES
(1, 'Gasolina', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(2, 'Dual', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(3, 'Gasolina Híbrido', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(4, 'Gas GLP', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(5, 'Diesel', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(6, 'Híbrido', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(7, 'Eléctrico', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(8, 'Gas GNV', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54'),
(9, 'Gas', b'1', '2025-06-05 09:14:54', '2025-06-05 09:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `fuel_id` int(11) DEFAULT NULL,
  `plate` varchar(10) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `ind_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `category_id`, `brand_id`, `color_id`, `fuel_id`, `plate`, `year`, `price`, `ind_status`, `created_at`, `updated_at`) VALUES
(1, 6, 9, 3, 7, 'MKL-123', '2025', 22900.00, b'1', '2025-06-05 17:03:17', '2025-06-05 17:03:17'),
(2, 4, 3, 1, 8, 'B4K-996', '2025', 940000.00, b'1', '2025-06-05 21:06:47', '2025-06-05 21:06:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuels`
--
ALTER TABLE `fuels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fuels`
--
ALTER TABLE `fuels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
