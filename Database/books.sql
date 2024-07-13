-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 05:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `ANAME`, `APASS`) VALUES
(1, 'MAFRAS', 'pass'),
(2, 'admin', '1212');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BID` int(11) NOT NULL,
  `BTITLE` varchar(150) NOT NULL,
  `KEYWORDS` varchar(150) NOT NULL,
  `FILE` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BID`, `BTITLE`, `KEYWORDS`, `FILE`) VALUES
(5, 'City-Of-Ember', 'story book,novel,ember', 'upload/City-Of-Ember.pdf'),
(6, 'Fire And Blood', 'story,education,life ', 'upload/Fire And Blood.pdf'),
(7, 'It Ends with Us', 'colleen hoover,story,best book,', 'upload/It Ends with Us.pdf'),
(8, 'The Hobbit', 'best selling book,hobbit,life story', 'upload/The Hobbit.pdf'),
(9, 'Rich Dad Poor Dad', 'financial,motivation,best sellin book ', 'upload/Rich Dad Poor Dad.pdf'),
(10, 'Laws of Human NAture', 'human,nature,life changing,novel', 'upload/Laws of Human NAture.pdf'),
(11, 'Reminders of him', 'reminder,motivation,', 'upload/Reminders of him.pdf'),
(12, 'php', 'php,html,css,programming', 'upload/new report.pdf'),
(13, 'Java Full Course', 'java,c++,c,programming', 'upload/It Starts with Us.pdf'),
(14, 'Html', 'html,css,js,html5', 'upload/Simple Business Meeting by Slidesgo.pptx'),
(15, 'Its Start with you', 'This is a family drama book', 'upload/It Starts with Us.pdf'),
(16, 'the time traveler', 'novel', 'upload/Laws of Human NAture.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `CID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `COMMENT` varchar(150) NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`CID`, `BID`, `SID`, `COMMENT`, `LOGS`) VALUES
(12, 5, 23, 'nice book', '2023-12-06 20:55:15'),
(13, 5, 25, 'Really good book. highly request', '2023-12-06 20:56:29'),
(14, 6, 25, 'nice', '2023-12-06 20:57:12'),
(15, 12, 1, 'its very help full i really like it.', '2023-12-06 20:58:33'),
(16, 7, 24, 'nice book', '2023-12-06 20:59:40'),
(17, 10, 24, 'Amazing!!! I really like this book', '2023-12-06 21:00:47'),
(18, 11, 1, 'I love it!!!', '2023-12-06 21:02:00'),
(19, 12, 3, 'good', '2023-12-06 21:04:48'),
(20, 7, 2, 'best story book', '2023-12-06 21:06:56'),
(21, 8, 25, 'Nice book!!!', '2023-12-06 21:09:21'),
(22, 5, 2, 'nice', '2023-12-07 14:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `RID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `MESSAGE` text NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`RID`, `ID`, `MESSAGE`, `LOGS`) VALUES
(1, 1, 'I want a php book', '2023-11-28 17:12:09'),
(2, 2, 'Need a html book', '2023-11-14 21:56:04'),
(3, 3, 'i need a story book', '2023-12-03 14:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `PASSWORD` varchar(150) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `DEP` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `NAME`, `PASSWORD`, `EMAIL`, `DEP`) VALUES
(1, 'Asmeer', '1732', 'mohamedasmeer123@gmail.com', 'HNDIT'),
(2, 'Kamal', '1236', 'kamal45@gmail.com', 'HNDIT'),
(3, 'john', 'pass', 'john114@gmail.com', 'HNDA'),
(23, 'user', '100', 'nimal@gmail.com', 'HNDIT'),
(24, 'nimal', '4152', 'nimal11@gmail.com', 'HNDA'),
(25, 'hari', '789', 'hari55@gmail.com', 'HNDF'),
(26, 'MAFRAS', '1234', 'mafras@gmail.com', 'HNDIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
