-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql113.epizy.com
-- Generation Time: May 11, 2018 at 11:03 PM
-- Server version: 5.6.35-81.0
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_22066031_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Followers`
--

CREATE TABLE IF NOT EXISTS `Followers` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FollowerEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Following`
--

CREATE TABLE IF NOT EXISTS `Following` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FollowingEmail` mediumtext CHARACTER SET ucs2 COLLATE ucs2_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GenreMoods`
--

CREATE TABLE IF NOT EXISTS `GenreMoods` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MoodString` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `GenreMoods`
--

INSERT INTO `GenreMoods` (`UserEmail`, `MoodString`) VALUES
('jordanmicahbennett@gmail.com', 'african:excited.african,blues:happy.blues,comedy:angry.comedy,country:sad.country,dancehall:bored.dancehall,electronic:default.electronic,folk:default.folk,heavymetal:default.heavymetal,hiphop:default.hiphop,jazz:default.jazz'),
('giorimann@gmail.com', 'african:default.african,blues:default.blues,comedy:default.comedy,country:default.country,dancehall:default.dancehall,electronic:default.electronic,folk:default.folk,heavymetal:default.heavymetal,hiphop:default.hiphop,jazz:default.jazz'),
('natreve.ag20@gmail.com', 'african:default.african,blues:default.blues,comedy:default.comedy,country:default.country,dancehall:default.dancehall,electronic:default.electronic,folk:default.folk,heavymetal:default.heavymetal,hiphop:default.hiphop,jazz:default.jazz'),
('d.hibberts@hotmail.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('qqueenbee550@gmail.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('odecebrooks@yahoo.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('odecebrooks@yahoo.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('stone@gmail.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('1', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('2', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('3', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('jordan@gmail.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('69', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default'),
('jordan@gmail.com', 'african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_African`
--

CREATE TABLE IF NOT EXISTS `Genre_African` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_African`
--

INSERT INTO `Genre_African` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Seether - Remedy', ' Seether - Remedy', 'https://www.youtube.com/watch?v=FZLILV18ut8', 'https://www.youtube.com/embed/FZLILV18ut8', '2014-07-24 23:00:17', 'public'),
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:37:24', 'public'),
('jordan@gmail.com', 'Cog Sci', ' ', 'https://www.youtube.com/watch?v=YUVLgccVi54', 'https://www.youtube.com/embed/YUVLgccVi54', '2018-05-11 22:55:08', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Blues`
--

CREATE TABLE IF NOT EXISTS `Genre_Blues` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_Blues`
--

INSERT INTO `Genre_Blues` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:37:41', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Comedy`
--

CREATE TABLE IF NOT EXISTS `Genre_Comedy` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_Comedy`
--

INSERT INTO `Genre_Comedy` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:37:48', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Country`
--

CREATE TABLE IF NOT EXISTS `Genre_Country` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_Country`
--

INSERT INTO `Genre_Country` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:37:59', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Dancehall`
--

CREATE TABLE IF NOT EXISTS `Genre_Dancehall` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_Dancehall`
--

INSERT INTO `Genre_Dancehall` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:06', 'public'),
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:14', 'public'),
('natreve.ag20@gmail.com', 'efafdfda', 'dvssdfs ', 'https://www.youtube.com/watch?v=KTjF1CjTOi4', 'https://www.youtube.com/embed/KTjF1CjTOi4', '2014-07-28 14:50:59', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Electronic`
--

CREATE TABLE IF NOT EXISTS `Genre_Electronic` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Folk`
--

CREATE TABLE IF NOT EXISTS `Genre_Folk` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_Folk`
--

INSERT INTO `Genre_Folk` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:23', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_HeavyMetal`
--

CREATE TABLE IF NOT EXISTS `Genre_HeavyMetal` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_HeavyMetal`
--

INSERT INTO `Genre_HeavyMetal` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Seether - Tied My Hands (Live)', ' Seether - Tied My Hands (Live)', 'https://www.youtube.com/watch?v=pULe7-6yRo4', 'https://www.youtube.com/embed/pULe7-6yRo4', '2014-07-23 08:25:36', 'public'),
('jordanmicahbennett@gmail.com', 'Paramore: Decode', 'Paramore: Decode, cool', 'https://www.youtube.com/watch?v=RvnkAtWcKYg', 'https://www.youtube.com/embed/RvnkAtWcKYg', '2014-07-23 08:52:56', 'public'),
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:30', 'public'),
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:37', 'public'),
('jordanmicahbennett@gmail.com', 'Seether - Breakdown', 'Seether - Breakdown ', 'https://www.youtube.com/watch?v=BDKM181eTsM', 'https://www.youtube.com/embed/BDKM181eTsM', '2014-08-20 04:51:29', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_HipHop`
--

CREATE TABLE IF NOT EXISTS `Genre_HipHop` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_HipHop`
--

INSERT INTO `Genre_HipHop` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:45', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `Genre_Jazz`
--

CREATE TABLE IF NOT EXISTS `Genre_Jazz` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Source` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Stream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DateAdded` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PublicationStatus` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Genre_Jazz`
--

INSERT INTO `Genre_Jazz` (`UserEmail`, `Title`, `Description`, `Source`, `Stream`, `DateAdded`, `PublicationStatus`) VALUES
('jordanmicahbennett@gmail.com', 'The Jolly Boys - Hangging on the telephone - track 5 - Great Expectations', 'The Jolly Boys - Hangging on the telephone - track 5 - Great Expectations ', 'https://www.youtube.com/watch?v=Xmv74qMkuRI', 'https://www.youtube.com/embed/Xmv74qMkuRI', '2014-07-23 02:29:37', 'public'),
('jordanmicahbennett@gmail.com', 'The Jolly Boys - Blue Monday (New Order cover)', ' The Jolly Boys - Blue Monday (New Order cover)', 'https://www.youtube.com/watch?v=70YF-hNymGE', 'https://www.youtube.com/embed/70YF-hNymGE', '2014-07-23 07:27:40', 'public'),
('jordanmicahbennett@gmail.com', 'The Passenger - The Jolly Boys', 'The Passenger - The Jolly Boys ', 'https://www.youtube.com/watch?v=z1KsFiPJIRg', 'https://www.youtube.com/embed/z1KsFiPJIRg', '2014-07-23 07:54:11', 'public'),
('jordanmicahbennett@gmail.com', 'Drowning Pool - Tear Away', 'Drowning Pool - Tear Away ', 'https://www.youtube.com/watch?v=gCSs5QggRUk', 'https://www.youtube.com/embed/gCSs5QggRUk', '2014-07-24 23:38:55', 'public'),
('', 'Untitled', ' ', 'http://www.youtube.com/watch?v=xg5YN3LAGw4', 'https://www.youtube.com/embed/xg5YN3LAGw4', '2014-07-23 19:50:03', 'public'),
('jordanmicahbennett@gmail.com', 'Seether - Remedy', 'Seether - Remedy ', 'https://www.youtube.com/watch?v=FZLILV18ut8', 'https://www.youtube.com/embed/FZLILV18ut8', '2014-07-24 00:50:51', 'public'),
('stone@gmail.com', 'wrak', 'gfhjb ', 'https://www.youtube.com/watch?v=uwswhoKfkmM', 'https://www.youtube.com/watch?v=uwswhoKfkmM', '2014-09-09 17:25:09', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `LastMood`
--

CREATE TABLE IF NOT EXISTS `LastMood` (
  `UserEmail` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `LastMood`
--

INSERT INTO `LastMood` (`UserEmail`, `Title`) VALUES
('jordanmicahbennett@gmail.com', 'excited'),
('giorimann@gmail.com', 'default'),
('natreve.ag20@gmail.com', 'default'),
('qqueenbee550@gmail.com', 'default'),
('d.hibberts@hotmail.com', 'default'),
('odecebrooks@yahoo.com', 'default'),
('odecebrooks@yahoo.com', 'default'),
('stone@gmail.com', 'excited'),
('1', 'default'),
('2', 'default'),
('3', 'default'),
('jordan@gmail.com', 'undefined'),
('69', 'default'),
('jordan@gmail.com', 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `Moods`
--

CREATE TABLE IF NOT EXISTS `Moods` (
  `Title` mediumtext COLLATE latin1_general_ci NOT NULL,
  `Colour` mediumtext COLLATE latin1_general_ci NOT NULL,
  `DeepColour` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `Moods`
--

INSERT INTO `Moods` (`Title`, `Colour`, `DeepColour`) VALUES
('angry', 'rgba(255, 81, 95, 1)', 'rgba(136, 33, 41, 1)'),
('sad', 'rgba(77, 91, 245, 1)', 'rgba(42, 51, 143, 1)'),
('happy', 'rgba(199, 218, 61, 1)', 'rgba(127, 139, 39, 1)'),
('excited', 'rgba(247, 86, 234, 1)', 'rgba(85, 29, 80, 1)'),
('default', 'rgba(52, 250, 226, 1)', 'rgba(31, 107, 98, 1)'),
('loving', 'rgba(255, 128, 184, 1)', 'rgba(131, 54, 88, 1)'),
('bored', 'rgba(108, 255, 179, 1)', 'rgba(48, 112, 79, 1)');

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE IF NOT EXISTS `Notifications` (
  `UserEmail` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `UserEmail` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserName` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserPassword` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserTitle` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserNotificationCardinality` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserFollowerCardinality` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserFollowingCardinality` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UserProfilePictureStream` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserEmail`, `UserName`, `UserPassword`, `UserTitle`, `UserNotificationCardinality`, `UserFollowerCardinality`, `UserFollowingCardinality`, `UserProfilePictureStream`) VALUES
('jordanmicahbennett@gmail.com', 'Jordan Bennett', 'jordan!', 'coder, music lover', '1', '1', '1', 'data/images/users/jordanmicahbennett@gmail.com/profile.picture.png'),
('giorimann@gmail.com', 'Giovani Rimann', 'grimann', 'entrepreneur, music lover', '1', '1', '1', 'data/images/users/giorimann@gmail.com/profile.picture.png'),
('natreve.ag20@gmail.com', 'Andrew', 'natreveag19', 'doctor, music lover', '1', '1', '1', 'data/images/users/natreve.ag20@gmail.com/profile.picture.png'),
('d.hibberts@hotmail.com', 'Kogeepearl', 'Soul', '', '1', '1', '1', 'data/images/users/d.hibberts@hotmail.com/profile.picture.png'),
('qqueenbee550@gmail.com', 'TanTan', 'frenches', 'killer, music lover', '1', '1', '1', 'data/images/users/qqueenbee550@gmail.com/profile.picture.png'),
('odecebrooks@yahoo.com', 'obbaby', 'newpass', 'lover', '1', '1', '1', 'data/images/users/odecebrooks@yahoo.com/profile.picture.png'),
('stone@gmail.com', 'antoinette stone', 'stone', '', '1', '1', '1', 'data/images/users/stone@gmail.com/profile.picture.png'),
('1', '1', '1', '1', '1', '1', '1', 'data/images/users/1/profile.picture.png'),
('2', '2', '2', '2', '1', '1', '1', 'data/images/users/2/profile.picture.png'),
('3', '3', '3', '3', '1', '1', '1', 'data/images/users/3/profile.picture.png'),
('jordan@gmail.com', 'Jordan', 'admin', 'coder, ai researcher', '1', '1', '1', 'data/images/users/jordan@gmail.com/profile.picture.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
