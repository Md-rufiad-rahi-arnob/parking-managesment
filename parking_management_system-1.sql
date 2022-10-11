-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 08:40 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `passwords` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`user_id`, `user_name`, `passwords`) VALUES
(20101006, 'arnob', '1234'),
(20101019, 'niaz', '7878');

-- --------------------------------------------------------

--
-- Table structure for table `parking_slot`
--

CREATE TABLE `parking_slot` (
  `parking_slot_id` int(11) NOT NULL,
  `parking_slot_number` int(4) NOT NULL,
  `parking_slot_status` int(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_time` varchar(5) NOT NULL,
  `exit_time` varchar(5) NOT NULL,
  `duration` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_slot`
--

INSERT INTO `parking_slot` (`parking_slot_id`, `parking_slot_number`, `parking_slot_status`, `user_id`, `entry_time`, `exit_time`, `duration`) VALUES
(1, 1, 1, 20101006, '9:00', '10:00', '60'),
(2, 5, 1, 20101019, '10:30', '12:00', '90'),
(3, 6, 0, 20101019, '10:00', '11:30', '90'),
(4, 9, 2, 20101006, '1:00', '2:00', '60'),
(5, 3, 1, 20101021, '11:30', '12:00', '30');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `user_id` int(11) NOT NULL,
  `paid_by` varchar(30) NOT NULL,
  `payment_status` int(1) NOT NULL,
  `amount_due` float NOT NULL,
  `amount_paid` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`user_id`, `paid_by`, `payment_status`, `amount_due`, `amount_paid`) VALUES
(20101006, '20101001', 0, 20, 10),
(20101006, '20101002', 1, 0, 30),
(20101006, '20101003', 0, 100, 50),
(20101019, '20101004', 0, 55, 25),
(20101019, '20101006', 1, 0, 30),
(20101019, '20101008', 1, 0, 65),
(20101019, '20101009', 0, 85, 25),
(20101019, '20101032', 1, 10, 70),
(20101006, '20103012', 1, 0, 15),
(20101006, '20201021', 0, 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(15) NOT NULL,
  `vehecle_owner_id` int(11) NOT NULL,
  `vehecle_plate_number` varchar(15) NOT NULL,
  `vehicle_type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehecle_owner_id`, `vehecle_plate_number`, `vehicle_type`) VALUES
(7561, 20101001, '5846', 'Car'),
(3214, 20101002, '3241', 'Taxi'),
(9012, 20101003, '1209', 'Cycle'),
(6521, 20101004, '1562', 'Truck'),
(1111, 20101006, '1212', 'Car'),
(3254, 20101008, '4589', 'Car'),
(6578, 20101009, '7598', 'Truck'),
(8520, 20101032, '2058', 'Car'),
(1212, 20103012, '2211', 'Pickup'),
(1122, 20201021, '9854', 'Truck');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle owner`
--

CREATE TABLE `vehicle owner` (
  `vehecle_owner_id` int(11) NOT NULL,
  `vehecle_owner_name` varchar(30) NOT NULL,
  `vehecle_owner_contact_no` varchar(15) NOT NULL,
  `vehecle_owner_email` varchar(30) NOT NULL,
  `owner_password` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle owner`
--

INSERT INTO `vehicle owner` (`vehecle_owner_id`, `vehecle_owner_name`, `vehecle_owner_contact_no`, `vehecle_owner_email`, `owner_password`, `user_id`) VALUES
(20101001, 'alia', '0939823238', 'aliakapur@gmail.com', '1111', 20101019),
(20101002, 'nasiba', '01738347278', 'nasiba@yahoo.com', '3456', 20101019),
(20101003, 'halal', '01912871234', 'halal@gmail.com', '5555', 20101019),
(20101004, 'dipto', '01723383293', 'dipto@gmail.com', '7878', 20101019),
(20101006, 'arnob', '01717807699', 'rufiadarnob@gmail.com', '8542', 20101006),
(20101008, 'nakib', '01791129812', 'nakib@yahoo.com', '1256', 20101006),
(20101009, 'habib', '01788923678', 'habib@yahoo.com', '2233', 20101006),
(20101032, 'safi', '01723493435', 'safi@gmail.com', '9999', 20101019),
(20103012, 'pori', '01527182187', 'porimoni@gmail.com', '0000', 20101006),
(20201021, 'mahi', '013284494312', 'mahiyamahi@gmail.com', '8542', 20101019);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parking_slot`
--
ALTER TABLE `parking_slot`
  ADD PRIMARY KEY (`parking_slot_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paid_by`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehecle_owner_id`);

--
-- Indexes for table `vehicle owner`
--
ALTER TABLE `vehicle owner`
  ADD PRIMARY KEY (`vehecle_owner_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`vehecle_owner_id`) REFERENCES `vehicle owner` (`vehecle_owner_id`);

--
-- Constraints for table `vehicle owner`
--
ALTER TABLE `vehicle owner`
  ADD CONSTRAINT `vehicle owner_ibfk_1` FOREIGN KEY (`vehecle_owner_id`) REFERENCES `vehicle` (`vehecle_owner_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
