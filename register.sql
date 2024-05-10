-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:46 AM
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
-- Database: `pixelpeak`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `UserName`, `Email`, `Gender`, `Phone`, `Password`, `UserImage`) VALUES
(7, 'XnezOptimus', 'Saman123@gmail.com', 'male', '9861841694', 'saman123', NULL),
(8, 'RamPrasad', 'Ramu@gmail.com', 'male', '12345678901', 'Xnez123', NULL),
(9, 'Sita', 'sita@gmail.com', 'female', '9828941231', 'sita123', NULL),
(10, 'Henry', 'Henry58@gmail.com', 'male', '9861111111', 'man123', NULL),
(11, 'Saman21', 'saman21@gmail.com', 'male', '123456789', '1234', NULL),
(12, 'roronoa', 'roor12@gmail.com', 'female', '12345678', 'saman123', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
