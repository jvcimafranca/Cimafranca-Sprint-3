-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 07:54 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(5) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(20) NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `number_of_people` int(5) NOT NULL,
  `reservation_time` time NOT NULL,
  `reservation_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `clients` (`client_id`, `client_name`, `client_phone`, `client_email`, `number_of_people`,`reservation_time`, `reservation_message`) VALUES
(1, 'Idriss Jairi', '0634308303', 'qsdqsdq@gmail.com', 7, '2020-06-22 12:01:00', 'Conflicting Schedule'),
(2, 'Khalid Lee', '0638383933', 'khalid.lee@gmail.com', 7, '2020-06-23 06:07:00', 'Conflicting Schedule'),
(3, 'Keltoum', '06242556272', 'keltoum.ar@gmail.com', 8, '2020-06-24 16:40:00', 'Conflicting Schedule'),
(4, 'Shukhrat Nayimov', '030303030202', 'shukh.nayi@gmail.com', 1, '2020-06-25 16:40:00', 'Conflicting Schedule'),
(5, 'Khalid Essaidani', '030303030', 'khalid.essaidani@yahoo.fr', 2, '2020-06-25 16:40:00', 'Conflicting Schedule');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--
-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiry_id` int(5) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `inquiry_message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `inquiry` (`inquiry_id`, `customer_name`, `phone_number`, `customer_email`, `inquiry_message`) VALUES
(1, 'Idriss Jairi', '0634308303', 'qsdqsdq@gmail.com','Where is your cafe located?'),
(2, 'Khalid Lee', '0638383933', 'khalid.lee@gmail.com',''),
(3, 'Keltoum', '06242556272', 'keltoum.ar@gmail.com','');


--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);


--
-- Indexes for table `reservation`
--

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inquiry_id`);

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservations`
--
/*ALTER TABLE `reservation`
  MODIFY `reservation_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
*/
--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inquiry_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
