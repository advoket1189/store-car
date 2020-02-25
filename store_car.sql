-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 07:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_car`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `_id` int(12) NOT NULL,
  `firstName` varchar(196) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(196) COLLATE utf8_bin NOT NULL,
  `email` varchar(196) COLLATE utf8_bin NOT NULL,
  `username` varchar(196) COLLATE utf8_bin NOT NULL,
  `password` varchar(196) COLLATE utf8_bin NOT NULL,
  `is_staff` int(1) NOT NULL,
  `is_superuser` int(1) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` int(1) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `_id` int(8) NOT NULL,
  `brandName` varchar(196) COLLATE utf8_bin NOT NULL,
  `carModel` varchar(196) COLLATE utf8_bin NOT NULL,
  `manufactureYear` year(4) NOT NULL,
  `carPrice` float(8,2) NOT NULL,
  `carDescription` text COLLATE utf8_bin NOT NULL,
  `coverPhoto` varchar(196) COLLATE utf8_bin NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(2) NOT NULL,
  `downpayment` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`_id`, `brandName`, `carModel`, `manufactureYear`, `carPrice`, `carDescription`, `coverPhoto`, `createdAt`, `updatedAt`, `status`, `downpayment`) VALUES
(4, 'Shelby', 'Car', 2019, 150000.00, 'aaaaaaaaaaaaaaaa', 'images/84666893_1648166518670356_3307361994604019712_o.jpg', '2020-02-25 18:02:54', '2020-02-25 18:02:54', 1, 150.00);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `img01` varchar(196) COLLATE utf8_bin NOT NULL,
  `img02` varchar(196) COLLATE utf8_bin NOT NULL,
  `img03` varchar(196) COLLATE utf8_bin NOT NULL,
  `img04` varchar(196) COLLATE utf8_bin NOT NULL,
  `img05` varchar(196) COLLATE utf8_bin NOT NULL,
  `img06` varchar(196) COLLATE utf8_bin DEFAULT NULL,
  `img07` varchar(196) COLLATE utf8_bin DEFAULT NULL,
  `img08` varchar(196) COLLATE utf8_bin DEFAULT NULL,
  `img09` varchar(196) COLLATE utf8_bin DEFAULT NULL,
  `img10` varchar(196) COLLATE utf8_bin DEFAULT NULL,
  `img11` varchar(196) COLLATE utf8_bin DEFAULT NULL,
  `img12` varchar(196) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `_id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
