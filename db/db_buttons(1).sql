-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2016 at 07:26 PM
-- Server version: 5.6.28-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buttons`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` varchar(700) NOT NULL,
  `post_id` int(254) NOT NULL,
  `SeenByAdmin` enum('Y','N','','') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`name`, `email`, `comment`, `post_id`, `SeenByAdmin`) VALUES
('', '', ' this is my first comment.', 21, 'N'),
('Shashwat', 'shashwatshagun2581@gmail.com', 'hello,world', 20, 'N'),
('', '', 'hello,world this is my first comment.', 21, 'N'),
('', '', 'hi there', 20, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post` longtext NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `date_posted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`ID`, `title`, `post`, `author_id`, `date_posted`) VALUES
(23, 'hells yes', 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\r\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvvwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwvvvwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 1, '2016-05-23 18:20:26'),
(24, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> </p>', 1, '2016-05-25 21:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `blog_post_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`blog_post_id`, `tag_id`) VALUES
(22, 1),
(22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(4096) NOT NULL,
  `ReadOrNot` enum('Y','N','','') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `name`, `email`, `message`, `ReadOrNot`) VALUES
(12, 'shashwat shagun', 'shashwatshagun2581@gmail.com', 'hi,there', 'Y'),
(13, 'shashwat shagun', 'shashwatshagun2581@gmail.com', 'hi', 'Y'),
(14, 'shashwat shagun', 'shashwatshagun2581@gmail.com', 'hi', 'Y'),
(15, 'shash', 'shashwatshagun2581@gmail.com', 'hi,there', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `first_name`, `last_name`, `url`, `email`) VALUES
(1, 'Shashwat', 'shagun', '', 'shashwatshagun2581@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'lorem ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `userID` int(10) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPass` varchar(100) NOT NULL,
  `userStatus` enum('Y','N') NOT NULL DEFAULT 'N',
  `tokenCode` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `first_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`userID`, `userName`, `userEmail`, `userPass`, `userStatus`, `tokenCode`, `phone`, `first_name`) VALUES
(1, 'shashwat shagun', 'shashwatshagun2581@gmail.com', '91a0af2bd41f8c2cbff608576962d6e1', 'Y', '823b670670e1d2bffcf839717ef1907e', '8507801594', 'shashwat'),
(14, 'shashwat shagun', 'shashwat@gmail.com', 'f2b01e630ddbd88f60bcab3f6f7ac379', 'N', 'ef3243dd57955aeb1521ff5eb860452d', '8507801594', 'shashwat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPass` varchar(100) NOT NULL,
  `userStatus` enum('Y','N') NOT NULL DEFAULT 'N',
  `tokenCode` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `first_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_table`
--

CREATE TABLE `visitors_table` (
  `ID` int(11) NOT NULL,
  `visitor_ip` varchar(32) DEFAULT NULL,
  `visitor_browser` varchar(255) DEFAULT NULL,
  `visitor_hour` smallint(2) NOT NULL DEFAULT '0',
  `visitor_minute` smallint(2) NOT NULL DEFAULT '0',
  `visitor_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visitor_day` smallint(2) NOT NULL,
  `visitor_month` smallint(2) NOT NULL,
  `visitor_year` smallint(4) NOT NULL,
  `visitor_refferer` varchar(255) DEFAULT NULL,
  `visitor_page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors_table`
--

INSERT INTO `visitors_table` (`ID`, `visitor_ip`, `visitor_browser`, `visitor_hour`, `visitor_minute`, `visitor_date`, `visitor_day`, `visitor_month`, `visitor_year`, `visitor_refferer`, `visitor_page`) VALUES
(1, '', 'mozilla', 5, 52, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(2, '', 'mozilla', 6, 8, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(3, '', 'mozilla', 6, 10, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(4, '', 'mozilla', 6, 15, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(5, '', 'mozilla', 6, 16, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(6, '', 'mozilla', 6, 19, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(7, '', 'mozilla', 6, 27, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(8, '', 'mozilla', 6, 27, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(9, '', 'mozilla', 6, 27, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(10, '', 'mozilla', 6, 28, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(11, '', 'mozilla', 9, 44, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(12, '', 'mozilla', 9, 45, '0000-00-00 00:00:00', 17, 5, 2016, '', ''),
(13, '', 'mozilla', 2, 22, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(14, '', 'mozilla', 2, 23, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(15, '', 'mozilla', 2, 59, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(16, '', 'mozilla', 3, 1, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(17, '', 'mozilla', 3, 1, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(18, '', 'mozilla', 3, 2, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(19, '', 'mozilla', 4, 8, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(20, '', 'mozilla', 6, 45, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(21, '', 'mozilla', 6, 59, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(22, '', 'mozilla', 6, 59, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(23, '', 'mozilla', 7, 18, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(24, '', 'mozilla', 7, 19, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(25, '', 'mozilla', 7, 19, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(26, '', 'mozilla', 7, 19, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(27, '', 'mozilla', 10, 59, '0000-00-00 00:00:00', 18, 5, 2016, '', ''),
(28, '', 'mozilla', 1, 1, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(29, '', 'mozilla', 1, 5, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(30, '', 'mozilla', 1, 6, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(31, '', 'mozilla', 1, 8, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(32, '', 'mozilla', 1, 11, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(33, '', 'mozilla', 1, 14, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(34, '', 'mozilla', 1, 58, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(35, '', 'mozilla', 2, 1, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(36, '', 'mozilla', 2, 3, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(37, '', 'mozilla', 2, 3, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(38, '', 'mozilla', 2, 3, '0000-00-00 00:00:00', 19, 5, 2016, '', ''),
(39, '', 'mozilla', 5, 30, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(40, '', 'mozilla', 5, 31, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(41, '', 'mozilla', 5, 32, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(42, '', 'mozilla', 5, 32, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(43, '', 'mozilla', 5, 32, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(44, '', 'mozilla', 5, 33, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(45, '', 'mozilla', 5, 33, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(46, '', 'mozilla', 5, 46, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(47, '', 'mozilla', 5, 47, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(48, '', 'mozilla', 8, 36, '0000-00-00 00:00:00', 20, 5, 2016, '', ''),
(49, '127.0.0.1', 'mozilla', 2, 10, '0000-00-00 00:00:00', 21, 5, 2016, '', ''),
(50, '127.0.0.1', 'mozilla', 2, 15, '0000-00-00 00:00:00', 21, 5, 2016, '', ''),
(51, '127.0.0.1', 'mozilla', 12, 35, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(52, '127.0.0.1', 'mozilla', 12, 36, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(53, '127.0.0.1', 'mozilla', 12, 36, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(54, '127.0.0.1', 'mozilla', 12, 36, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(55, '127.0.0.1', 'mozilla', 12, 36, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(56, '127.0.0.1', 'mozilla', 12, 37, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(57, '127.0.0.1', 'mozilla', 12, 38, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(58, '127.0.0.1', 'mozilla', 12, 38, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(59, '127.0.0.1', 'mozilla', 12, 52, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(60, '127.0.0.1', 'mozilla', 12, 53, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(61, '127.0.0.1', 'mozilla', 12, 54, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(62, '127.0.0.1', 'mozilla', 12, 56, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(63, '127.0.0.1', 'mozilla', 12, 56, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(64, '127.0.0.1', 'mozilla', 1, 22, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(65, '127.0.0.1', 'mozilla', 1, 24, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(66, '127.0.0.1', 'mozilla', 1, 45, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(67, '127.0.0.1', 'mozilla', 1, 47, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(68, '127.0.0.1', 'mozilla', 1, 48, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(69, '127.0.0.1', 'mozilla', 1, 48, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(70, '127.0.0.1', 'mozilla', 1, 48, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(71, '127.0.0.1', 'mozilla', 1, 49, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(72, '127.0.0.1', 'mozilla', 1, 49, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(73, '127.0.0.1', 'mozilla', 2, 27, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(74, '127.0.0.1', 'mozilla', 2, 29, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(75, '127.0.0.1', 'mozilla', 2, 30, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(76, '127.0.0.1', 'mozilla', 2, 31, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(77, '127.0.0.1', 'mozilla', 2, 44, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(78, '127.0.0.1', 'mozilla', 2, 44, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(79, '127.0.0.1', 'mozilla', 2, 45, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(80, '127.0.0.1', 'mozilla', 2, 46, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(81, '127.0.0.1', 'mozilla', 2, 47, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(82, '127.0.0.1', 'mozilla', 2, 50, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(83, '127.0.0.1', 'mozilla', 2, 53, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(84, '127.0.0.1', 'mozilla', 2, 54, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(85, '127.0.0.1', 'mozilla', 2, 54, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(86, '127.0.0.1', 'mozilla', 2, 55, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(87, '127.0.0.1', 'mozilla', 4, 38, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(88, '127.0.0.1', 'mozilla', 4, 39, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(89, '127.0.0.1', 'mozilla', 4, 41, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(90, '127.0.0.1', 'mozilla', 4, 41, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(91, '127.0.0.1', 'mozilla', 4, 41, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(92, '127.0.0.1', 'mozilla', 4, 42, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(93, '127.0.0.1', 'mozilla', 5, 19, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(94, '127.0.0.1', 'mozilla', 5, 20, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(95, '127.0.0.1', 'mozilla', 5, 29, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(96, '127.0.0.1', 'mozilla', 5, 31, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(97, '127.0.0.1', 'mozilla', 5, 32, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(98, '127.0.0.1', 'mozilla', 5, 33, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(99, '127.0.0.1', 'mozilla', 5, 33, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(100, '127.0.0.1', 'mozilla', 5, 35, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(101, '127.0.0.1', 'mozilla', 6, 7, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(102, '127.0.0.1', 'mozilla', 6, 8, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(103, '127.0.0.1', 'mozilla', 6, 9, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(104, '127.0.0.1', 'mozilla', 6, 9, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(105, '127.0.0.1', 'mozilla', 6, 10, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(106, '127.0.0.1', 'mozilla', 6, 10, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(107, '127.0.0.1', 'mozilla', 6, 10, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(108, '127.0.0.1', 'mozilla', 6, 11, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(109, '127.0.0.1', 'mozilla', 6, 12, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(110, '127.0.0.1', 'mozilla', 6, 13, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(111, '127.0.0.1', 'mozilla', 6, 15, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(112, '127.0.0.1', 'mozilla', 6, 17, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(113, '127.0.0.1', 'mozilla', 6, 18, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(114, '127.0.0.1', 'mozilla', 6, 20, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(115, '127.0.0.1', 'mozilla', 6, 32, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(116, '127.0.0.1', 'mozilla', 6, 47, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(117, '127.0.0.1', 'mozilla', 7, 0, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(118, '127.0.0.1', 'mozilla', 7, 0, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(119, '127.0.0.1', 'mozilla', 7, 1, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(120, '127.0.0.1', 'mozilla', 7, 3, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(121, '127.0.0.1', 'mozilla', 7, 3, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(122, '127.0.0.1', 'mozilla', 7, 35, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(123, '127.0.0.1', 'mozilla', 7, 38, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(124, '127.0.0.1', 'mozilla', 7, 38, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(125, '127.0.0.1', 'mozilla', 8, 4, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(126, '127.0.0.1', 'mozilla', 8, 5, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(127, '127.0.0.1', 'mozilla', 8, 47, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(128, '127.0.0.1', 'mozilla', 8, 48, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(129, '127.0.0.1', 'mozilla', 8, 51, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(130, '127.0.0.1', 'mozilla', 8, 51, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(131, '127.0.0.1', 'mozilla', 8, 52, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(132, '127.0.0.1', 'mozilla', 8, 53, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(133, '127.0.0.1', 'mozilla', 8, 55, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(134, '127.0.0.1', 'mozilla', 8, 56, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(135, '127.0.0.1', 'mozilla', 8, 57, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(136, '127.0.0.1', 'mozilla', 8, 58, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(137, '127.0.0.1', 'mozilla', 8, 59, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(138, '127.0.0.1', 'mozilla', 9, 4, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(139, '127.0.0.1', 'mozilla', 10, 26, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(140, '127.0.0.1', 'mozilla', 10, 29, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(141, '127.0.0.1', 'mozilla', 10, 30, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(142, '127.0.0.1', 'mozilla', 10, 33, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(143, '127.0.0.1', 'mozilla', 10, 34, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(144, '127.0.0.1', 'mozilla', 10, 35, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(145, '127.0.0.1', 'mozilla', 10, 36, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(146, '127.0.0.1', 'mozilla', 10, 36, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(147, '127.0.0.1', 'mozilla', 11, 12, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(148, '127.0.0.1', 'mozilla', 11, 13, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(149, '127.0.0.1', 'mozilla', 11, 16, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(150, '127.0.0.1', 'mozilla', 11, 17, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(151, '127.0.0.1', 'mozilla', 11, 18, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(152, '127.0.0.1', 'mozilla', 11, 19, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(153, '127.0.0.1', 'mozilla', 11, 20, '0000-00-00 00:00:00', 23, 5, 2016, '', ''),
(154, '127.0.0.1', 'mozilla', 1, 15, '0000-00-00 00:00:00', 24, 5, 2016, '', ''),
(155, '127.0.0.1', 'mozilla', 6, 53, '0000-00-00 00:00:00', 24, 5, 2016, '', ''),
(156, '127.0.0.1', 'mozilla', 10, 19, '0000-00-00 00:00:00', 24, 5, 2016, '', ''),
(157, '127.0.0.1', 'mozilla', 10, 43, '0000-00-00 00:00:00', 24, 5, 2016, '', ''),
(158, '127.0.0.1', 'mozilla', 10, 46, '0000-00-00 00:00:00', 24, 5, 2016, '', ''),
(159, '127.0.0.1', 'mozilla', 2, 37, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(160, '127.0.0.1', 'mozilla', 2, 39, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(161, '127.0.0.1', 'mozilla', 2, 39, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(162, '127.0.0.1', 'mozilla', 2, 40, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(163, '127.0.0.1', 'mozilla', 2, 41, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(164, '127.0.0.1', 'mozilla', 2, 42, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(165, '127.0.0.1', 'mozilla', 2, 43, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(166, '127.0.0.1', 'mozilla', 2, 44, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(167, '127.0.0.1', 'mozilla', 2, 44, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(168, '127.0.0.1', 'mozilla', 2, 45, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(169, '127.0.0.1', 'mozilla', 2, 46, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(170, '127.0.0.1', 'mozilla', 2, 47, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(171, '127.0.0.1', 'mozilla', 2, 48, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(172, '127.0.0.1', 'mozilla', 2, 49, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(173, '127.0.0.1', 'mozilla', 2, 49, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(174, '127.0.0.1', 'mozilla', 2, 49, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(175, '127.0.0.1', 'mozilla', 2, 50, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(176, '127.0.0.1', 'mozilla', 2, 50, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(177, '127.0.0.1', 'mozilla', 2, 50, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(178, '127.0.0.1', 'mozilla', 2, 50, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(179, '127.0.0.1', 'mozilla', 3, 2, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(180, '127.0.0.1', 'mozilla', 3, 3, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(181, '127.0.0.1', 'mozilla', 3, 8, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(182, '127.0.0.1', 'mozilla', 3, 10, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(183, '127.0.0.1', 'mozilla', 3, 11, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(184, '127.0.0.1', 'mozilla', 3, 12, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(185, '127.0.0.1', 'mozilla', 3, 58, '0000-00-00 00:00:00', 25, 5, 2016, '', ''),
(186, '127.0.0.1', 'mozilla', 2, 16, '0000-00-00 00:00:00', 26, 5, 2016, '', ''),
(187, '127.0.0.1', 'mozilla', 6, 14, '0000-00-00 00:00:00', 26, 5, 2016, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`comment`,`post_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- Indexes for table `visitors_table`
--
ALTER TABLE `visitors_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visitors_table`
--
ALTER TABLE `visitors_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
