-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 09:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hindustani`
--

-- --------------------------------------------------------

--
-- Table structure for table `childran`
--

CREATE TABLE `childran` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `adhhar` varchar(50) NOT NULL,
  `bday` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `childran`
--

INSERT INTO `childran` (`id`, `name`, `lastname`, `adhhar`, `bday`, `occupation`, `education`) VALUES
(1, 'child 1', 'lchild1', '123456789', '1/12/98', 'student', 'LKG'),
(2, 'child 2', 'snayee 2 ', '7418520963', '11/2/2020', 'Student', 'Jn.Kg'),
(3, 'child 3', 'nayee 3', '12345676520', '2021-02-27', 'std', 'sr.KG');

-- --------------------------------------------------------

--
-- Table structure for table `father`
--

CREATE TABLE `father` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `adhhar` varchar(50) NOT NULL,
  `bday` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `father`
--

INSERT INTO `father` (`id`, `name`, `lastname`, `adhhar`, `bday`, `occupation`, `education`) VALUES
(1, 'Satishbhai', 'nayee', '78945612852', '1/6/1977', 'Ex army', 'BA'),
(2, 'father 2', 'nayee 2', '0123456789', '1/6/1977', 'Security Officer ', 'Bede'),
(3, 'father 3', 'nayee3', '02364712852', '2020-05-19', 'So', 'BA');

-- --------------------------------------------------------

--
-- Table structure for table `mothers`
--

CREATE TABLE `mothers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `adhhar` varchar(50) NOT NULL,
  `bday` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mothers`
--

INSERT INTO `mothers` (`id`, `name`, `lastname`, `adhhar`, `bday`, `occupation`, `education`) VALUES
(1, 'sumitra', 'nayee', '7418528520', '22/09/1987', 'house wife', 'Mtech'),
(2, 'mother 2', 'nayee 2', '123456798', '22/09/1987', 'home HR', 'BCom'),
(3, 'mother 3', 'nayee3', '123156749865', '2020-05-19', 'CEO', 'Arts');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `adhhar` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `father` int(11) NOT NULL,
  `mothers` int(11) NOT NULL,
  `childran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `lastname`, `adhhar`, `bday`, `occupation`, `education`, `email`, `father`, `mothers`, `childran`) VALUES
(1, 'akshay', 'nayee', '123465789', '0000-00-00', 'Engineer', 'Btech', 'akshay@gmail.com', 1, 1, 1),
(2, 'akshay2', 'nayee2', '1324567851', '2021-02-02', 'developer', 'Betch', 'akshay@gmail.com', 2, 2, 2),
(3, 'akshay3', 'nayee3', '123156749865', '2021-02-27', 'IT engineeer', 'BE BTech', 'akshay@gmail.com', 3, 3, 3),
(4, 'kumar', 'nayee', 'a123156486', '2021-02-03', 'laravel developer', 'BE', 'admin@gmail.com', 2, 2, 2),
(5, 'akshaykumar', 'nayee', '7418520963', '2020-05-19', 'Software ', 'Mtech', 'kumarnayee!@gmail.com', 1, 1, 1),
(6, '6th name', 'nayee 6', '78945612852', '2021-02-04', 'HR', 'HR/MBA', 'akshay@gmail.com', 3, 3, 3),
(7, '7thname', 'nayee 7', '123156749865', '2021-02-28', 'Bussiness Executive', 'Mtech', 'kumarnayee@gmail.com', 3, 3, 3),
(8, 'akshay 8', 'nayee 8', '1324567851', '2020-07-09', 'CEO', 'PHD', 'admin@gmail.com', 2, 2, 2),
(9, 'akshay9', 'nayee 9', '12345676520', '2021-02-27', 'CTO', 'Mtech', 'kumarnayee@gmail.com', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `childran`
--
ALTER TABLE `childran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `father`
--
ALTER TABLE `father`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mothers`
--
ALTER TABLE `mothers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `childran`
--
ALTER TABLE `childran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `father`
--
ALTER TABLE `father`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mothers`
--
ALTER TABLE `mothers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
