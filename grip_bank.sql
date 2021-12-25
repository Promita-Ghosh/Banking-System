-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 05, 2021 at 06:58 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grip_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Suman Dey', 'Ujjwal Gorai', 10000,'2021-12-01 00:10:47'),
(2, 'Palash biswas', 'Suvam Roy', 3000, '2021-12-01 00:11:41'),
(3, 'Sourav Mondal', 'Arjun Mishra', 2000, '2021-12-01 00:12:20'),
(4, 'Arnab Das', 'Ujjwal Gorai', 250, '2021-12-01 00:14:01'),
(5, 'Suman Dey', 'Arka Mukherjee', 1000, '2021-12-01 00:14:29'),
(6, 'Palash biswas', 'Arunava Ghosh', 2000, '2021-12-01 00:15:15'),
(7, 'Suman Dey', 'Ujjwal Gorai', 2000, '2021-12-01 00:16:19'),
(8, 'Palash biswas', 'Arnab Das', 1000, '2021-12-01 00:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54655 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(100, 'Rohit Bose', 'rohit.bose@gmail.com', 40000),
(101, 'Arunava Ghosh' , 'arunava99@gmail.com', 39020),
(102, 'Suvam Roy', 'subham66@gmail.com', 40232),
(103, 'Suman Roy', 'suman15@gmail.com', 38887),
(104, 'Ujjwal Gorai', 'gorai@gmail.com', 37250),
(105, 'Arka Mukherjee', 'arka78@gmail.com', 40995),
(106, 'Arjun Mishra', 'armishra@gmail.com', 40539),
(107, 'Palash biswas', 'palash@gmail.com', 41558),
(108, 'Sourav Mondal', 'sourav@gmail.com', 36668),
(109, 'Arnab Das', 'arnab@gmail.com', 43274);
COMMIT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

--
-- Reset Auto increment
--

set @autoid :=0; 
update transaction set sno= @autoid := (@autoid+1);
alter table transaction Auto_Increment = 1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
