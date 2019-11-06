-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 04:37 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online lawyer`
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
(5, 'zulfiqar', 'zulfiqar', '23', 'male', '03025590826', '3740998898098', 'zk@mail.com', 'zk@gmail.com', '123456789'),
(6, 'zulfiqar', 'zulfiqar', '23', 'male', '03025590826', '3740998898098', 'zk@mail.com', 'zk@gmail.com', '123456789'),
(7, 'Lareib', 'Lareib', '23', 'Female', '787821398', '8989080998890', 'Lareib@gmail.com', 'Lareib@gmail.com', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `casedet`
--

CREATE TABLE `casedet` (
  `CID` int(100) NOT NULL,
  `UserID` int(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `UserNIC` varchar(50) NOT NULL,
  `CaseType` text NOT NULL,
  `CaseDetail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casedet`
--

INSERT INTO `casedet` (`CID`, `UserID`, `UserName`, `UserNIC`, `CaseType`, `CaseDetail`) VALUES
(0, 1, 'Hamza', '3740607766041', 'Family Case', 'Child Issues');

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
-- Table structure for table `lawyerdet`
--

CREATE TABLE `lawyerdet` (
  `Sno` int(50) NOT NULL,
  `LawyerName` text NOT NULL,
  `LastName` text NOT NULL,
  `Gender` text NOT NULL,
  `CNIC` varchar(50) NOT NULL,
  `Area` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyerdet`
--

INSERT INTO `lawyerdet` (`Sno`, `LawyerName`, `LastName`, `Gender`, `CNIC`, `Area`) VALUES
(0, 'Syed Yawar', 'Abbas', 'Male', '3740607766041', 'Taxila');

-- --------------------------------------------------------

--
-- Table structure for table `lawyerreg`
--

CREATE TABLE `lawyerreg` (
  `Sno` int(11) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Gender` text NOT NULL,
  `CNICNo` text NOT NULL,
  `NTNNo` int(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `RetypePassword` int(50) NOT NULL,
  `Organization` text NOT NULL,
  `Email` varchar(50) NOT NULL,
  `RetypeEmail` varchar(50) NOT NULL,
  `MobileNo` text NOT NULL,
  `LandLineNo` text NOT NULL,
  `Country` text NOT NULL,
  `Province` text NOT NULL,
  `City` text NOT NULL,
  `SecurityQuestion` text NOT NULL,
  `Answer` text NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyerreg`
--

INSERT INTO `lawyerreg` (`Sno`, `FirstName`, `LastName`, `Gender`, `CNICNo`, `NTNNo`, `Username`, `Password`, `RetypePassword`, `Organization`, `Email`, `RetypeEmail`, `MobileNo`, `LandLineNo`, `Country`, `Province`, `City`, `SecurityQuestion`, `Answer`, `Address`) VALUES
(16, 'Hamza', 'Saleem', 'Male', '3740607766041', 980980, 'zulfiqar12', '12345', 12345, 'PCA', 'hamza@gmail.com', 'hamza@gmail.com', '03170537357', '0541536199', 'Pakistan', 'Punjab', 'Rawalpandi', 'School', 'FBISE', 'Wah Cantt'),
(21, 'Laraib', 'Fatime', 'Feamle', '37406077066041', 676767, 'laraib', '1234', 1234, 'PCA', 'laraib@gmail.com', 'laraib@gmail.com', '03126851844', '0541536199', 'Pakistan', 'Punjab', 'Rawalpandi', 'School', 'HIT', 'Hit Taxila'),
(23, 'Laraib', 'Fatima', 'Female', '3740607766041', 9876, 'Fatima', '1234', 1234, 'PCA', 'Fatima@gmail.com', 'Fatima@gmail.com', '03126851844', '0541536199', 'Pakistan', 'Punjab', 'Rawalpnadi', 'School', 'HITECH', 'HIT'),
(24, 'Ali', 'Raza', 'Male', '980980990', 98098, 'ali', '123', 123, 'PCA', 'ali@gmail.com', 'ali@gmail.com', '80989809', '9800989', 'Pakistan', 'Punjab', 'Lahore', 'friend', 'Hamza', 'Lahore'),
(30, 'Syed Yawar', 'Abbas', 'Male', '3740607766041', 58990, 'Yawar', '4567', 4567, 'PCA', 'yawar@gmail.com', 'yawar@gmail.com', '03021298654', '541787654', 'Pakistan', 'Punjab', 'Taxila', 'friend', 'yawar', 'barrier no 2');

-- --------------------------------------------------------

--
-- Table structure for table `user_portal`
--

CREATE TABLE `user_portal` (
  `CID` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `usernic` varchar(100) NOT NULL,
  `lawyername` varchar(100) NOT NULL,
  `casetype` varchar(100) NOT NULL,
  `app` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_portal`
--

INSERT INTO `user_portal` (`CID`, `username`, `usernic`, `lawyername`, `casetype`, `app`) VALUES
(0, 'Hamza', '3740607766041', 'Lareib', 'Family Case', 'Child Issues'),
(1, 'Hamza', '3740607766041', 'Lareib', 'Family Case', 'Child Issues');

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
-- Indexes for table `casedet`
--
ALTER TABLE `casedet`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lawyerdet`
--
ALTER TABLE `lawyerdet`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `lawyerreg`
--
ALTER TABLE `lawyerreg`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `user_portal`
--
ALTER TABLE `user_portal`
  ADD PRIMARY KEY (`CID`);

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lawyerreg`
--
ALTER TABLE `lawyerreg`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
