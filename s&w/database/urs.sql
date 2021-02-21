-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 07:04 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urs`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Blood_pressure` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `username`, `Blood_pressure`) VALUES
(1, 'Bhuvanesh', '160'),
(2, 'Appu', '200');

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Body Temperature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`id`, `username`, `Body Temperature`) VALUES
(1, 'bhuvanesh', '76degree'),
(2, 'appu', '65degree');

-- --------------------------------------------------------

--
-- Table structure for table `heart`
--

CREATE TABLE `heart` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Heart rate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `heart`
--

INSERT INTO `heart` (`id`, `username`, `Heart rate`) VALUES
(1, 'Bhuvanesh', '76%');

-- --------------------------------------------------------

--
-- Table structure for table `newemp`
--

CREATE TABLE `newemp` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `date` date NOT NULL,
  `department` enum('Department 1','Department 2','Department 3','Department 4') NOT NULL,
  `device` enum('Device 1','Device 2','Device 3','Device 4') NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oxygen`
--

CREATE TABLE `oxygen` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Oxygen_Saturation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oxygen`
--

INSERT INTO `oxygen` (`id`, `username`, `Oxygen_Saturation`) VALUES
(1, 'Bhuvanesh', '45%');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `date` date NOT NULL,
  `department` set('HR','trainee','Manager') NOT NULL,
  `device` set('fitbit','google fit','ios') NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `email`, `phone`, `date`, `department`, `device`, `message`) VALUES
(1, 'vev', 'vbhfvu@gmail.com', 1234567890, '2000-11-22', 'trainee', 'google fit', '35yqa35');

-- --------------------------------------------------------

--
-- Table structure for table `respiration`
--

CREATE TABLE `respiration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Respiration rate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `respiration`
--

INSERT INTO `respiration` (`id`, `username`, `Respiration rate`) VALUES
(1, 'Bhuvanesh', '100percent');

-- --------------------------------------------------------

--
-- Table structure for table `user_bio`
--

CREATE TABLE `user_bio` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_bio`
--

INSERT INTO `user_bio` (`id`, `username`, `email`, `password`, `cpassword`) VALUES
(1, 'vishva', 'vishvapriyad30@gmail.com', '202cb962ac59075b964b07152d234b70', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heart`
--
ALTER TABLE `heart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newemp`
--
ALTER TABLE `newemp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oxygen`
--
ALTER TABLE `oxygen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respiration`
--
ALTER TABLE `respiration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bio`
--
ALTER TABLE `user_bio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `heart`
--
ALTER TABLE `heart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newemp`
--
ALTER TABLE `newemp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oxygen`
--
ALTER TABLE `oxygen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `respiration`
--
ALTER TABLE `respiration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_bio`
--
ALTER TABLE `user_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
