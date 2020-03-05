-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 06:11 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_pass`) VALUES
(1, 'shifasajid555@gmail.com', 'shif1234');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_author` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`, `vote`) VALUES
(2, 10, 1, 'irio3jioj', 'shifa sajid', '2019-09-27 18:19:58', 8),
(3, 10, 1, 'jefiojqiojg', 'shifa sajid', '2019-10-28 16:51:44', 10),
(4, 9, 1, 'by including in style tag ', 'shifa sajid', '2019-09-21 16:31:57', 0),
(5, 9, 1, 'helloo everyone', 'shifa sajid', '2019-09-21 16:33:31', 0),
(6, 10, 1, 'strings are defined within double quotation mark', 'shifa sajid', '2019-10-28 16:51:40', 8),
(7, 10, 1, 'kjioj2ifr2', 'sabiha', '2019-10-28 16:51:53', 11),
(8, 11, 7, 'bgcolor attribute', 'sabiha', '2019-10-28 17:09:20', 0),
(9, 11, 1, '', 'shifa sajid', '2019-11-03 11:31:54', 6),
(10, 11, 1, 'get lost', 'shifa sajid', '2019-11-03 11:31:24', 3),
(11, 13, 1, 'joiq', 'shifa sajid', '2019-11-03 12:00:05', 2),
(12, 13, 1, 'jjjio', 'shifa sajid', '2019-11-03 12:00:10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `msg_sub` text NOT NULL,
  `msg_topic` text NOT NULL,
  `reply` text NOT NULL,
  `status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `sender`, `receiver`, `msg_sub`, `msg_topic`, `reply`, `status`, `msg_date`) VALUES
(7, 7, 1, 'hellooo', 'i want you to help me in writing a program in python', ' later', 'read', '2019-09-20 17:31:49'),
(8, 2, 1, 'help', 'how to write program in php', ' helloo', 'read', '2019-09-20 17:30:01'),
(9, 1, 7, 'holaii', 'hi sabiha ssup...', ' nm', 'read', '2019-10-28 19:13:44'),
(10, 7, 1, 'please help ', 'hey i want to kow something about javascript', ' javascript.....', 'read', '2019-09-20 17:36:37'),
(11, 1, 1, 'hgfg', 'kljkljijopj', 'no_reply', 'read', '2019-09-21 16:18:24'),
(12, 7, 1, 'kljlijlkjij', 'kopko', 'no_reply', 'unread', '2019-10-28 18:31:51'),
(13, 1, 7, 'nwh5', 'hu67k8l6', ' rftt65u', 'read', '2019-11-03 11:33:26'),
(14, 1, 7, 'iuio', 'kyiy8u', 'no_reply', 'read', '2019-11-03 12:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_content` text NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `topic_id`, `post_title`, `post_content`, `post_date`) VALUES
(3, 7, 4, 'query for python', 'how dictionaries are defined in python,please help', '2019-08-30'),
(5, 7, 6, 'info for jquery', 'what exactly in jquery please explain', '2019-09-08'),
(9, 1, 1, 'query for html', 'how to add external style sheet in html page ', '2019-09-15'),
(10, 1, 4, 'python query', 'how strings are defined in python', '2019-09-15'),
(11, 8, 1, 'info for html colour', 'how to give background color in html', '2019-09-28'),
(13, 1, 3, 'uwhduiuiouo', 'ywqfijiq', '2019-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL,
  `topic_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic_title`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'PYTHON'),
(5, 'JAVA'),
(6, 'JQUERY');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_country` varchar(100) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_image` text NOT NULL,
  `register_date` date NOT NULL,
  `last_login` date NOT NULL,
  `status` text NOT NULL,
  `posts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `register_date`, `last_login`, `status`, `posts`) VALUES
(1, 'shifa sajid', 'shif1234', 'shifasajid555@gmail.com', 'USA', 'female', '2019-08-14', 'shifu.jpg', '2019-08-13', '2019-08-14', 'unverified', 'yes'),
(2, 'zayaan', 'zaya1234', 'zay123@gmail.com', '', '', '0000-00-00', 'default.jpeg', '0000-00-00', '0000-00-00', '', ''),
(6, 'sanu', 'sanu4567', 'sanu123@gmail.com', 'India', '', '2019-08-17', 'default.jpeg', '2019-08-08', '2019-08-08', 'unverified', 'no'),
(7, 'sabiha', 'simmi786', 'firdous123@gmail.com', 'USA', 'on', '2019-08-16', 'IMG_20181226_224548.jpg', '2019-08-08', '2019-08-08', 'unverified', 'yes'),
(8, 'sajid', 'sajid786', 'akhtar786@gmail.com', 'India', 'on', '2019-08-24', 'default.jpeg', '2019-08-08', '2019-08-08', 'unverified', 'yes'),
(12, 'jas', 'fghj4563', 'preet123@gmail.com', 'Afghanistan', 'Female', '2019-08-30', 'default.jpeg', '2019-08-09', '2019-08-09', 'unverified', 'no'),
(17, 'manisha', 'kitty456', 'kittymeow@gmail.com', 'USA', 'Female', '2019-08-05', 'IMG_20181226_230156_HDR.jpg', '2019-08-09', '2019-08-09', 'unverified', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topic_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
