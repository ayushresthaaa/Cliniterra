-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 07:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `appointment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_status`) VALUES
(2, '2025-04-21 09:00:00', 'Not Completed');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_schedule`
--

CREATE TABLE `appointment_schedule` (
  `appointment_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(11) NOT NULL,
  `doc_first_name` varchar(50) NOT NULL,
  `doc_last_name` varchar(50) NOT NULL,
  `doc_gender` varchar(50) NOT NULL,
  `doc_email` varchar(50) NOT NULL,
  `doc_phone` varchar(50) NOT NULL,
  `doc_dob` date NOT NULL,
  `doc_speciality` varchar(50) NOT NULL,
  `doc_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doc_first_name`, `doc_last_name`, `doc_gender`, `doc_email`, `doc_phone`, `doc_dob`, `doc_speciality`, `doc_address`) VALUES
(2, 'Diwas', 'Gurung', 'Male', 'diwas@gmail.com', '9844513345', '1991-08-11', 'Cardiology', 'Arubari'),
(3, 'Sanduk', 'Ruit', 'male', 'sanduk@gmail.com', '9841144158', '2001-02-02', 'Marine Medicine', 'Kapan'),
(13, 'Ramesh', 'Silwal', 'male', 'ram@gmail.com', '981234567', '2001-02-02', 'Gynologist', 'Kapan'),
(18, 'Prithvi ', 'Maharjan', 'male', 'prithivi@gmail.com', '9834215602', '2001-02-22', 'Neurologist', 'Kapan'),
(21, 'Sarala', 'Shrestha', 'female', 'sarala@gmail.com', '+9779842433499', '2002-02-22', 'Opthalmologist', 'Faika');

-- --------------------------------------------------------

--
-- Table structure for table `doc_schedule`
--

CREATE TABLE `doc_schedule` (
  `doc_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doc_schedule`
--

INSERT INTO `doc_schedule` (`doc_id`, `schedule_id`) VALUES
(2, 2),
(3, 3),
(13, 1),
(18, 4),
(21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_desc` varchar(100) NOT NULL,
  `feedback_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_desc`, `feedback_date`) VALUES
(1, 'The facility is good', '2025-04-12 07:20:33'),
(3, 'asdasfassadasdsad', '2025-05-27 00:00:00'),
(4, 'asdsadsadsadd', '2025-05-13 00:00:00'),
(5, 'The hospital is good', '2025-05-06 00:00:00'),
(6, 'bababaaaaaa', '2001-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `schedule_day` varchar(50) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `slot_num` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `schedule_day`, `start_time`, `end_time`, `slot_num`) VALUES
(1, 'Sunday', '09:00:00', '04:00:00', 30),
(2, 'Monday', '09:00:00', '04:00:00', 30),
(3, 'Tuesday', '09:00:00', '04:00:00', 30),
(4, 'Wednesday', '09:00:00', '04:00:00', 30),
(5, 'Thursday', '09:00:00', '04:00:00', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_phone` varchar(50) NOT NULL,
  `user_dob` date NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `image_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `first_name`, `last_name`, `user_gender`, `user_phone`, `user_dob`, `user_type`, `user_email`, `user_password`, `image_path`) VALUES
(1, 'Admin', 'Aayush', 'Shrestha', 'Male', '9849591020', '2005-02-15', 'Admin', 'ayushrestha2fb5@gmail.com', 'ayu54@0', 'ayush.jpg'),
(2, 'ayusha.', 'Aayusha', 'Kandel', 'Female', '9849590000', '2004-04-16', 'user', 'aayushakandel@gmail.com', 'ayk50@#', 'ayusha.jpg'),
(3, 'namratak', 'Namrata', 'Karki', 'Female', '9841144187', '2003-08-09', 'user', 'namratakarki@gmail.com', 'nam@00', ''),
(4, 'helo', 'Himal', 'Shrestha', 'male', '9849591021', '2001-02-02', 'user', 'himal@gmail.com', 'Hello123@', 'G2mJk.oq1b-small-Revenge-of-the-Northern-Bla.jpg'),
(5, 'kamba', 'Aashika', 'Kambong', 'male', '9849591044', '2001-02-02', 'user', 'aashika@gmail.com', 'Hello123@', 'GYwN7bEbQAQZsxn.jpeg'),
(6, 'rachina', 'Rachina', 'Shrestha', 'male', '9849591043', '2001-02-02', 'user', 'rachina@gmail.com', 'WZGG6dFzqQmH/zSbbkpyWkN0otH+d6PveRG1xzFlMm4=', 'wallpaperflare.com_wallpaper (7).jpg'),
(7, 'seerpant', 'Seer', 'Kandel', 'male', '9849593020', '2005-02-22', 'user', 'seerpanto@gmail.com', 'Hello123@', 'GYwN7bEbQAQZsxn.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user_appointment`
--

CREATE TABLE `user_appointment` (
  `user_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `user_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`user_id`, `feedback_id`) VALUES
(2, 1),
(2, 4),
(2, 5),
(2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `appointment_schedule`
--
ALTER TABLE `appointment_schedule`
  ADD UNIQUE KEY `appointment_id` (`appointment_id`),
  ADD UNIQUE KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `doc_email` (`doc_email`),
  ADD UNIQUE KEY `doc_phone` (`doc_phone`),
  ADD UNIQUE KEY `doc_speciality` (`doc_speciality`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `user_appointment`
--
ALTER TABLE `user_appointment`
  ADD KEY `fk_ua_user_id` (`user_id`),
  ADD KEY `fk_ua_appointment_id` (`appointment_id`),
  ADD KEY `fk_ua_doc_id` (`doc_id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD KEY `fk_uf_user_id` (`user_id`),
  ADD KEY `fk_uf_feedback_id` (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_schedule`
--
ALTER TABLE `appointment_schedule`
  ADD CONSTRAINT `fk_as_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `fk_as_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`);

--
-- Constraints for table `user_appointment`
--
ALTER TABLE `user_appointment`
  ADD CONSTRAINT `fk_ua_appointment_id` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`),
  ADD CONSTRAINT `fk_ua_doc_id` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`doc_id`),
  ADD CONSTRAINT `fk_ua_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD CONSTRAINT `fk_uf_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`),
  ADD CONSTRAINT `fk_uf_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
