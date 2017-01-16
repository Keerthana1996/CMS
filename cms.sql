-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2017 at 06:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `hashed_password`) VALUES
(5, 'keerthana', '$2y$10$Nzc4YjBhOWU1MDAxMzk4MOHQlfYdrxeAUEgTo15AfZWY3ZOTRo0ji');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(12, 7, 'Basic Concept', 1, 1, 'A CMS or a ''Content Management System'' quite literally allows you to control and manage the content within your web site - without technical training. Using this uncomplicated system you can very easily add, delete images and edit text in your web site on the fly. You can also have an unlimited number of pages and a full site-search engine.'),
(13, 7, 'Why opt for CMS?', 2, 1, 'Many companies find it difficult to keep their web site content as up to date as they would like. Often there are delays getting new content online, the site stagnates and your clients get to see outdated information . Thatâ€™s why so many companies are turning to CMS. \r\n\r\nA CMS web presence allows you to manage your web site even if you have no technical knowledge, experience with HTML or web site design. It also reduces the calls to your web design agency or IT department for changes to the web site. CMS reduces the time required to publish, allowing you to get your content on-line faster. This is a very important issue for any professional web site.'),
(14, 7, 'Top 3 CMS''s', 3, 1, '1. Drupal\r\n2. Wordpress\r\n3. Radiant CMS'),
(15, 9, 'Features', 1, 1, 'Drupal is easily the most functional open source CMS available today. It allows for the editing of content directly on the page, and is easily extended through the use of modules. Themes can be developed easily with CSS and though it has a few issues, it is the least frustrating CMS of any available. Drupal'),
(16, 10, 'Features', 1, 1, 'WordPress began as a simple blogging system but has grown into one of the most powerful CMSâ€™s on the Internet. The administration interface which has become so easy to use for millions of bloggers translates over to extended versions of WordPress.\r\nAs developers have realized its potential to act as a user friendly CMS, many plugins and extensions have been produced. With the release of BuddyPress for WordPress MU, it matches most other open source systems available in functionality and far surpasses them in user friendliness.'),
(17, 11, 'Features', 1, 1, 'A simple CMS powered by Ruby on Rails. Itâ€™s simplistic design and method of content management makes editing content easy. The focus of this CMS is to offer minimum functionality for small development teams, which allows those who know how to write Ruby on Rails to easily customize their own systems.');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(7, 'What is a CMS?', 1, 1),
(9, 'Drupal', 2, 1),
(10, 'Wordpress', 3, 1),
(11, 'Radiant CMS', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
