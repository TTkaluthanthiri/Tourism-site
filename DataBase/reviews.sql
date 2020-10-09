-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 12:18 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism2_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(11) NOT NULL,
  `Rate` double DEFAULT NULL,
  `Review` varchar(500) DEFAULT NULL,
  `Reviewer` varchar(50) DEFAULT NULL,
  `ProID` int(11) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `Owner` varchar(50) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ID`, `Rate`, `Review`, `Reviewer`, `ProID`, `Category`, `Owner`, `Total`) VALUES
(8, 4, '', 'No-Name', 2, 'Event', '0', 4),
(9, 3, '', 'No-Name', 2, 'Event', '0', 3),
(10, 2, '', 'No-Name', 2, 'Event', '0', 3),
(11, 1, '', 'No-Name', 2, 'Event', '0', 2),
(12, 3, '', 'No-Name', 1, 'Event', '0', 3),
(13, 3, '', 'No-Name', 4, 'Event', '0', 3),
(14, 5, 'Fuck Shazam', 'No-Name', 1, 'Offer', '0', 4),
(15, 5, '', 'No-Name', 1, 'Offer', '', 4),
(16, 5, 'fg', 'No-Name', 3, 'Offer', '', 5),
(17, 2, 'g', 'No-Name', 3, 'Offer', '', 3),
(18, 5, 'gj', 'No-Name', 3, 'Offer', '', 4),
(19, 5, '', 'No-Name', 4, 'Event', 'No-Name', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
