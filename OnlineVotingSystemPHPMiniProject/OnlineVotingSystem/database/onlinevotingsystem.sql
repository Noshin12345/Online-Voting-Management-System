-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 07:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinevotingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_details`
--

CREATE TABLE `candidate_details` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_details` text DEFAULT NULL,
  `candidate_photo` text DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate_details`
--

INSERT INTO `candidate_details` (`id`, `election_id`, `candidate_name`, `candidate_details`, `candidate_photo`, `inserted_by`, `inserted_on`) VALUES
(2, 2, 'Sumaiya', 'CSE Department,10th Semester', '../assets/images/candidate_photos/43944385300_31936791168web icons-06.png', 'Noshin', '2023-12-24'),
(3, 2, 'Shifa', 'CSE Department,10th Semester', '../assets/images/candidate_photos/54153203372_20775697032web icons-07.png', 'Noshin', '2023-12-24'),
(4, 6, 'Nita', 'CSE Department,12th Semester', '../assets/images/candidate_photos/38274754374_6275173542543944385300_31936791168web icons-06.png', 'Noshin', '2023-12-27'),
(5, 6, 'Tina', 'CSE Department,12th Semester', '../assets/images/candidate_photos/16301879756_1364930772954153203372_20775697032web icons-07.png', 'Noshin', '2023-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `id` int(11) NOT NULL,
  `election_topic` varchar(255) DEFAULT NULL,
  `no_of_candidates` int(11) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `inserted_by` varchar(255) DEFAULT NULL,
  `inserted_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elections`
--

INSERT INTO `elections` (`id`, `election_topic`, `no_of_candidates`, `starting_date`, `ending_date`, `status`, `inserted_by`, `inserted_on`) VALUES
(6, 'Club vice President', 2, '2023-12-25', '2023-12-30', 'Active', 'Noshin', '2023-12-27'),
(11, 'Club President', 2, '2024-01-01', '2024-02-02', 'InActive', 'Noshin', '2023-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `student_id` varchar(45) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `student_id`, `password`, `user_role`) VALUES
(1, 'Noshin', '2020-1-60-221', 'a9993e364706816aba3e25717850c26c9cd0d89d', 'Admin'),
(13, 'Ayesha', '2020-1-60-009', 'e175ea4ce0a553260a14bc5e922a935b40425c1e', 'Voter'),
(15, 'Nira', '2020-1-60-111', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Voter'),
(16, 'Shifa', '2020-1-68-013', '7c12b5f75af904d7adffb56a0611ab308d8698c4', 'Voter'),
(18, 'Anika', '2020-1-60-254', 'c9f13c16144065a9ebccb216f3ec832b33e1693c', 'Voter'),
(20, 'Tasnim', '2020-1-60-000', '8aefb06c426e07a0a671a1e2488b4858d694a730', 'Voter'),
(22, 'Rimi', '2020-1-60-006', '20dd129da16a9afb802d8b595485f8d2719aea44', 'Voter'),
(24, 'Bob', '2020-1-60-006', '20dd129da16a9afb802d8b595485f8d2719aea44', 'Voter');

-- --------------------------------------------------------

--
-- Table structure for table `votings`
--

CREATE TABLE `votings` (
  `id` int(11) NOT NULL,
  `election_id` int(11) DEFAULT NULL,
  `voters_id` int(11) DEFAULT NULL,
  `candidate_id` int(11) NOT NULL,
  `vote_date` date DEFAULT NULL,
  `vote_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votings`
--

INSERT INTO `votings` (`id`, `election_id`, `voters_id`, `candidate_id`, `vote_date`, `vote_time`) VALUES
(2, 2, 3, 2, '2022-11-01', '09:47:46'),
(3, 2, 4, 2, '2022-11-01', '09:53:38'),
(4, 2, 5, 3, '2022-11-01', '09:54:05'),
(8, 6, 16, 5, '2023-12-27', '08:00:51'),
(9, 6, 18, 4, '2023-12-27', '08:02:02'),
(10, 6, 20, 5, '2023-12-27', '08:08:53'),
(11, 6, 22, 5, '2023-12-27', '08:35:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_details`
--
ALTER TABLE `candidate_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votings`
--
ALTER TABLE `votings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_details`
--
ALTER TABLE `candidate_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `elections`
--
ALTER TABLE `elections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `votings`
--
ALTER TABLE `votings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
