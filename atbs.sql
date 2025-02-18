-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2025 at 05:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sec_Q` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('muntasir', 'Nafiz Muntasir', '1234', 'what is your nick name?', 'nafiz');

-- --------------------------------------------------------

--
-- Table structure for table `book_ticket`
--

CREATE TABLE `book_ticket` (
  `Ticket_No` int(50) NOT NULL,
  `Flight_Id` int(50) NOT NULL,
  `Flight_Name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Total_Price` int(50) NOT NULL,
  `Seats` int(50) NOT NULL,
  `C_Name` varchar(100) NOT NULL,
  `pss` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_ticket`
--

INSERT INTO `book_ticket` (`Ticket_No`, `Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Date`, `Arrival_Time`, `Departure_Time`, `Total_Price`, `Seats`, `C_Name`, `pss`) VALUES
(585, 6, 'flight 005', 'Dhaka', 'Cox\'s Bazar', '2024-05-23', '6:00 AM', '8:00 PM', 15000, 3, 'Tasnim Mahmud', 'B1'),
(41, 6, 'flight 005', 'Dhaka', 'Cox\'s Bazar', '2024-05-23', '6:00 AM', '8:00 PM', 5000, 1, 'Nafiz Muntasir', 'A1'),
(443, 1, 'Flight 001', 'New York', 'Los Angeles', '2024-04-10', '18:00', '15:00', 1500, 5, 'Nahid', 'A1B1'),
(100, 6, 'flight 005', 'Dhaka', 'Cox\'s Bazar', '2024-05-23', '6:00 AM', '8:00 PM', 5000, 1, 'Pranto', 'A3B3'),
(738, 1, 'Flight 001', 'New York', 'Los Angeles', '2024-04-10', '18:00', '15:00', 600, 2, 'Munni Farhan ', 'M1F1'),
(200, 7, 'BD_AIR', 'Mirpur', 'Narsingdi', '2024-05-23', '6 :30 AM', '6:00AM', 12000, 3, 'Muntasir', 'X1Y1');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_ticket`
--

CREATE TABLE `cancel_ticket` (
  `Ticket_No` int(50) NOT NULL,
  `Flight_Id` int(50) NOT NULL,
  `Flight_Name` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Booking_Date` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Price` int(100) NOT NULL,
  `Seats` int(100) NOT NULL,
  `C_Name` varchar(200) NOT NULL,
  `Return_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancel_ticket`
--

INSERT INTO `cancel_ticket` (`Ticket_No`, `Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Booking_Date`, `Arrival_Time`, `Departure_Time`, `Price`, `Seats`, `C_Name`, `Return_Date`) VALUES
(680, 6, 'flight 005', 'Dhaka', 'Cox\'s Bazar', '2024-05-23', '6:00 AM', '8:00 PM', 10000, 2, 'Nafiz Muntasir', '2024-05-22'),
(661, 6, 'flight 005', 'Dhaka', 'Cox\'s Bazar', '2024-05-23', '6:00 AM', '8:00 PM', 10000, 2, 'Tasnim', '2024-05-22'),
(101, 7, 'BDAIR', 'Mirpur', 'Narsingdi', '2024-05-23', '6 :30 AM', '6:00AM', 40000, 10, 'Sharmin', '2024-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_Id` int(100) NOT NULL,
  `Flight_Name` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Seat` varchar(100) DEFAULT NULL,
  `Date` varchar(100) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Flight_Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Seat`, `Date`, `Arrival_Time`, `Departure_Time`, `Flight_Price`) VALUES
(1, 'Flight 001', 'New York', 'Los Angeles', '3', '2024-04-10', '18:00', '15:00', 300),
(2, 'Flight 002', 'Los Angeles', 'Chicago', '5', '2024-04-11', '12:00', '10:00', 250),
(3, 'Flight 003', 'Chicago', 'Houston', '20', '2024-04-12', '16:00', '14:00', 200),
(4, 'Flight 004', 'Houston', 'Miami', '8', '2024-04-13', '20:00', '18:00', 350),
(6, 'flight 005', 'Dhaka', 'Cox\'s Bazar', '2', '2024-05-23', '6:00 AM', '8:00 PM', 5000),
(7, 'BD_AIR', 'Mirpur', 'Narsingdi', '1', '2024-05-23', '6 :30 AM', '6:00AM', 4000),
(8, 'XYZ', 'Dhaka', 'Berlin', '97', '2024-05-24', '11:00PM', '1:00AM', 100000),
(389, 'In mirpur ', 'mirpur', 'mirpur 2', '50', '2024-12-05', '8', '2', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `Username` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sec_Q` varchar(100) NOT NULL,
  `Answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('nahid', 'Nahid', 'nahid1234', 'what is your nick name?', 'nahid'),
('tasnim', 'Tasnim', '1234', 'what is your first  school name?', 'ywca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Flight_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
