-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 02:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_login`
--

CREATE TABLE `a_login` (
  `ID` int(5) NOT NULL,
  `username` int(20) NOT NULL,
  `passwords` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_login`
--

INSERT INTO `a_login` (`ID`, `username`, `passwords`) VALUES
(1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `a_signin`
--

CREATE TABLE `a_signin` (
  `id` int(5) NOT NULL,
  `yourname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `ages` varchar(20) NOT NULL,
  `genders` varchar(20) NOT NULL,
  `cont` varchar(20) NOT NULL,
  `cnic` varchar(20) NOT NULL,
  `emails` varchar(20) NOT NULL,
  `addresses` varchar(20) NOT NULL,
  `passwords` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_signin`
--

INSERT INTO `a_signin` (`id`, `yourname`, `username`, `ages`, `genders`, `cont`, `cnic`, `emails`, `addresses`, `passwords`) VALUES
(3, 'asad', 'asad12', '12', 'male', '009090900', '0012939012838', 'asad@gmail.com', 'asad@gmail.com', '1234'),
(4, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `useremail` varchar(20) NOT NULL,
  `userpassword` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_portal`
--

CREATE TABLE `user_portal` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `useremail` varchar(20) NOT NULL,
  `app` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_portal`
--

INSERT INTO `user_portal` (`id`, `username`, `useremail`, `app`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '', '', ''),
(4, '', '', ''),
(5, '', '', ''),
(6, '', '', ''),
(7, '', '', ''),
(8, '', '', ''),
(9, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_login`
--
ALTER TABLE `a_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `a_signin`
--
ALTER TABLE `a_signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_portal`
--
ALTER TABLE `user_portal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_login`
--
ALTER TABLE `a_login`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a_signin`
--
ALTER TABLE `a_signin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_portal`
--
ALTER TABLE `user_portal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
