-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2022 at 12:09 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egygym`
--

-- --------------------------------------------------------

--
-- Table structure for table `creataccount`
--

CREATE TABLE `creataccount` (
  `id` int(11) NOT NULL,
  `Confirm_Password` varchar(128) DEFAULT NULL,
  `Email` varchar(128) DEFAULT NULL,
  `First_Name` varchar(128) DEFAULT NULL,
  `Last_Name` varchar(128) DEFAULT NULL,
  `My_Password` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `coustmer_id` int(11) NOT NULL DEFAULT 1,
  `fname` varchar(128) DEFAULT NULL,
  `lname` varchar(128) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `branch` varchar(125) NOT NULL,
  `comment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creataccount`
--
ALTER TABLE `creataccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Confirm_Password` (`Confirm_Password`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `My_Password` (`My_Password`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coustmer_id` (`coustmer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `creataccount`
--
ALTER TABLE `creataccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD CONSTRAINT `subscribe_ibfk_1` FOREIGN KEY (`coustmer_id`) REFERENCES `creataccount` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
