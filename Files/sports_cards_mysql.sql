-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 08:32 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports cards`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `BrandID` int(11) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `Collection` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`BrandID`, `Brand`, `Collection`) VALUES
(1, 'Topps', NULL),
(2, 'Upper Deck', NULL),
(3, 'Fleer', NULL),
(4, 'Score', NULL),
(5, 'Donruss', NULL),
(9, 'Hoops', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `CardID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  `BrandID` int(11) NOT NULL,
  `QualityID` int(11) NOT NULL,
  `ValueID` int(11) NOT NULL,
  `SportID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL,
  `Year` year(4) NOT NULL,
  `CurrentWorth` decimal(5,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `CardNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`CardID`, `PlayerID`, `BrandID`, `QualityID`, `ValueID`, `SportID`, `PositionID`, `Year`, `CurrentWorth`, `Quantity`, `CardNumber`) VALUES
(2, 1, 1, 3, 1, 2, 22, 1991, '0.35', 1, 287),
(3, 2, 1, 3, 2, 2, 19, 1991, '0.55', 1, 81),
(4, 3, 1, 3, 2, 2, 12, 1991, '0.80', 1, 73),
(5, 4, 1, 3, 1, 2, 13, 1991, '0.35', 1, 99),
(6, 5, 1, 3, 1, 2, 19, 1991, '0.43', 1, 368),
(7, 6, 1, 3, 2, 2, 12, 1991, '0.55', 1, 371),
(8, 7, 1, 3, 2, 2, 13, 1991, '1.80', 1, 360),
(9, 8, 1, 3, 1, 2, 26, 1991, '0.43', 1, 582),
(10, 9, 1, 3, 1, 2, 19, 1991, '0.43', 1, 563),
(11, 10, 1, 3, 1, 2, 25, 1991, '0.43', 1, 427),
(12, 11, 2, 2, 1, 3, 32, 1993, '0.43', 1, 475),
(13, 12, 2, 2, 1, 3, 29, 1993, '0.48', 1, 295),
(14, 13, 2, 2, 2, 3, 33, 1991, '0.55', 1, 92),
(15, 14, 9, 2, 2, 3, 32, 1990, '0.55', 1, 374),
(16, 15, 3, 2, 2, 3, 30, 1991, '1.75', 1, 220),
(17, 15, 3, 2, 2, 3, 30, 1991, '1.75', 1, 211),
(18, 16, 2, 2, 2, 3, 30, 1991, '0.55', 1, 98),
(19, 18, 2, 2, 2, 3, 31, 1991, '2.50', 1, 344),
(20, 17, 9, 3, 1, 3, 30, 1990, '0.43', 1, 365),
(21, 19, 9, 2, 2, 3, 29, 1991, '0.55', 1, 101),
(22, 20, 4, 2, 2, 1, 5, 1991, '1.25', 1, 876),
(23, 21, 5, 2, 2, 1, 7, 1991, '0.80', 1, 359),
(24, 22, 2, 2, 2, 1, 3, 1990, '0.75', 1, 254),
(25, 8, 2, 2, 2, 1, 6, 1990, '2.25', 1, 13),
(26, 20, 4, 2, 2, 1, 5, 1991, '1.25', 1, 668),
(27, 23, 5, 4, 2, 1, 6, 1991, '0.75', 1, 77),
(28, 23, 2, 2, 2, 1, 6, 1992, '1.25', 1, 650),
(29, 23, 3, 1, 2, 1, 6, 1992, '4.25', 1, 23),
(30, 20, 3, 1, 3, 1, 5, 1992, '9.60', 1, 3),
(31, 24, 3, 1, 2, 1, 1, 1992, '2.00', 1, 11);

-- --------------------------------------------------------

--
-- Stand-in structure for view `mostvaluable`
-- (See below for the actual view)
--
CREATE TABLE `mostvaluable` (
`PlayerID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`Brand` varchar(50)
,`Year` year(4)
,`CardNumber` int(10)
,`CurrentWorth` decimal(5,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `PlayerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `Suffix` varchar(25) DEFAULT NULL,
  `Birthdate` date NOT NULL,
  `HomeTown` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`PlayerID`, `FirstName`, `LastName`, `MiddleName`, `Suffix`, `Birthdate`, `HomeTown`, `State`, `Country`) VALUES
(1, 'Cortez', 'Kennedy', NULL, NULL, '1968-08-23', 'Wilson', 'Arkansas', 'USA'),
(2, 'Jerry', 'Rice', NULL, NULL, '1962-10-13', 'Starkville', 'MIssissippi', 'USA'),
(3, 'Joe', 'Montana', NULL, NULL, '1956-06-11', 'New Eagle', 'Pennsylvania', 'USA'),
(4, 'Bo', 'Jackson', NULL, NULL, '1962-11-30', 'Bessemer', 'Alabama', 'USA'),
(5, 'MIchael', 'Irvin', NULL, NULL, '1966-03-05', 'Fort Lauderdale', 'Florida', 'USA'),
(6, 'Troy', 'Aikman', NULL, NULL, '1966-11-21', 'Henryetta', 'Oklahoma', 'USA'),
(7, 'Emmitt', 'Smith', NULL, NULL, '1969-05-15', 'Pensacola', 'Florida', 'USA'),
(8, 'Deion', 'Sanders', NULL, NULL, '1967-08-09', 'Alpharetta', 'Georgia', 'USA'),
(9, 'Shannon', 'Sharpe', NULL, NULL, '1968-06-26', 'Glennville', 'Georgia', 'USA'),
(10, 'Junior', 'Seau', NULL, NULL, '1969-01-19', 'Oceanside', 'California', 'USA'),
(11, 'Shawn', 'Kemp', NULL, NULL, '1969-11-26', 'Elkhart', 'Indiana', 'USA'),
(12, 'Gary', 'Payton', NULL, NULL, '1968-07-23', 'Oakland', 'California', 'USA'),
(13, 'Hakeem', 'Olajuwon', NULL, NULL, '1963-01-21', 'Lagos', 'Lagos', 'Nigeria'),
(14, 'Charles', 'Barkley', 'Wade', NULL, '1963-02-20', 'Leeds', 'Alabama', 'USA'),
(15, 'Michael', 'Jordan', 'Jeffrey', NULL, '1963-02-17', 'Brooklyn', 'New York', 'USA'),
(16, 'Clyde', 'Drexler', 'Austin', NULL, '1962-06-22', 'New Orleans', 'Louisiana', 'USA'),
(17, 'Riggie', 'Miller', 'Wayne', NULL, '1965-08-24', 'Riverside', 'California', 'USA'),
(18, 'Larry', 'Bird', 'Joe', NULL, '1956-12-07', 'West Baden Springs', 'Indiana', 'USA'),
(19, 'Magic', 'Johnson', NULL, 'Jr', '1959-08-14', 'Lansing', 'Michigan', 'USA'),
(20, 'Barry', 'Bonds', 'Lamar', NULL, '1964-07-24', 'Riverside', 'California', 'USA'),
(21, 'Larry', 'Walker', 'Kenneth', NULL, '1966-12-01', 'Maple Ridge', 'British Columbia', 'Canada'),
(22, 'Paul', 'Molitor', NULL, NULL, '1956-08-22', 'St. Paul', 'Minnesota', 'USA'),
(23, 'George', 'Griffey', 'Kenneth', 'Jr', '1969-11-21', 'Donora', 'Pennsylvania', 'USA'),
(24, 'Frank', 'Thomas', 'Edward', 'Jr', '1968-05-27', 'Columbus', 'Georgia', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PositionID` int(11) NOT NULL,
  `Position` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`PositionID`, `Position`) VALUES
(1, '1B'),
(2, '2B'),
(3, '3B'),
(4, 'SS'),
(5, 'LF'),
(6, 'CF'),
(7, 'RF'),
(8, 'C'),
(9, 'SP'),
(10, 'RP'),
(11, 'CL'),
(12, 'QB'),
(13, 'RB'),
(14, 'FB'),
(15, 'TE'),
(16, 'OLT'),
(17, 'OLG'),
(18, 'OLC'),
(19, 'WR'),
(20, 'K'),
(21, 'P'),
(22, 'DL'),
(23, 'DE'),
(24, 'OLB'),
(25, 'ILB'),
(26, 'DBC'),
(27, 'DBFS'),
(28, 'DBSS'),
(29, 'PG'),
(30, 'SG'),
(31, 'SF'),
(32, 'PF'),
(33, 'CNTR');

-- --------------------------------------------------------

--
-- Stand-in structure for view `positionaverage`
-- (See below for the actual view)
--
CREATE TABLE `positionaverage` (
`Position` varchar(15)
,`AveValue` decimal(9,6)
);

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE `quality` (
  `QualityID` int(11) NOT NULL,
  `Quality` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`QualityID`, `Quality`) VALUES
(1, 'Mint'),
(2, 'Very Good'),
(3, 'Good'),
(4, 'Poor'),
(5, 'Very Poor');

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `SportID` int(11) NOT NULL,
  `Sport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`SportID`, `Sport`) VALUES
(1, 'Baseball'),
(2, 'Football'),
(3, 'Basketball');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sportaverage`
-- (See below for the actual view)
--
CREATE TABLE `sportaverage` (
`Sport` varchar(50)
,`AveValue` decimal(9,6)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sportvalue`
-- (See below for the actual view)
--
CREATE TABLE `sportvalue` (
`Sport` varchar(50)
,`TotalValue` decimal(27,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `value`
--

CREATE TABLE `value` (
  `ValueID` int(11) NOT NULL,
  `ValueLevel` varchar(50) NOT NULL,
  `ValueRange` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `value`
--

INSERT INTO `value` (`ValueID`, `ValueLevel`, `ValueRange`) VALUES
(1, 'Low', '< .50'),
(2, 'Medium', '> .50 < 5.00'),
(3, 'High', '> 5.00 < 15.00'),
(4, 'Rare', '< 15.00');

-- --------------------------------------------------------

--
-- Structure for view `mostvaluable`
--
DROP TABLE IF EXISTS `mostvaluable`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mostvaluable`  AS  select `cards`.`PlayerID` AS `PlayerID`,`players`.`FirstName` AS `FirstName`,`players`.`LastName` AS `LastName`,`brand`.`Brand` AS `Brand`,`cards`.`Year` AS `Year`,`cards`.`CardNumber` AS `CardNumber`,`cards`.`CurrentWorth` AS `CurrentWorth` from ((`cards` join `players` on((`cards`.`PlayerID` = `players`.`PlayerID`))) join `brand` on((`cards`.`BrandID` = `brand`.`BrandID`))) order by `cards`.`CurrentWorth` desc ;

-- --------------------------------------------------------

--
-- Structure for view `positionaverage`
--
DROP TABLE IF EXISTS `positionaverage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `positionaverage`  AS  select `position`.`Position` AS `Position`,avg(`cards`.`CurrentWorth`) AS `AveValue` from (`cards` join `position` on((`cards`.`PositionID` = `position`.`PositionID`))) group by `position`.`Position` order by avg(`cards`.`CurrentWorth`) desc ;

-- --------------------------------------------------------

--
-- Structure for view `sportaverage`
--
DROP TABLE IF EXISTS `sportaverage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sportaverage`  AS  select `sport`.`Sport` AS `Sport`,avg(`cards`.`CurrentWorth`) AS `AveValue` from (`cards` join `sport` on((`cards`.`SportID` = `sport`.`SportID`))) group by `sport`.`Sport` ;

-- --------------------------------------------------------

--
-- Structure for view `sportvalue`
--
DROP TABLE IF EXISTS `sportvalue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sportvalue`  AS  select `sport`.`Sport` AS `Sport`,sum(`cards`.`CurrentWorth`) AS `TotalValue` from (`cards` join `sport` on((`cards`.`SportID` = `sport`.`SportID`))) group by `sport`.`Sport` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`CardID`),
  ADD KEY `BrandID` (`BrandID`),
  ADD KEY `PlayerID` (`PlayerID`),
  ADD KEY `PositionID` (`PositionID`),
  ADD KEY `QualityID` (`QualityID`),
  ADD KEY `SportID` (`SportID`),
  ADD KEY `ValueID` (`ValueID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`PlayerID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PositionID`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`QualityID`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`SportID`);

--
-- Indexes for table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`ValueID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `CardID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `PlayerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `PositionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `QualityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sport`
--
ALTER TABLE `sport`
  MODIFY `SportID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `value`
--
ALTER TABLE `value`
  MODIFY `ValueID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`BrandID`) REFERENCES `brand` (`BrandID`),
  ADD CONSTRAINT `cards_ibfk_2` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`),
  ADD CONSTRAINT `cards_ibfk_3` FOREIGN KEY (`PositionID`) REFERENCES `position` (`PositionID`),
  ADD CONSTRAINT `cards_ibfk_4` FOREIGN KEY (`QualityID`) REFERENCES `quality` (`QualityID`),
  ADD CONSTRAINT `cards_ibfk_5` FOREIGN KEY (`SportID`) REFERENCES `sport` (`SportID`),
  ADD CONSTRAINT `cards_ibfk_6` FOREIGN KEY (`ValueID`) REFERENCES `value` (`ValueID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
