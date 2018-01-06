-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2012 at 02:35 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tcpdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Movies'),
(2, 'TV shows'),
(4, 'Trailers'),
(15, 'DVDs'),
(16, 'Videos');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `con_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `con_title` varchar(255) NOT NULL,
  `con_tagline` varchar(255) NOT NULL,
  `con_release_date` date NOT NULL,
  `con_genre` varchar(255) NOT NULL,
  `con_language` varchar(30) NOT NULL,
  `con_cast` varchar(255) NOT NULL,
  `con_crew` varchar(255) NOT NULL,
  `con_prodhouse` varchar(255) NOT NULL,
  `con_category` varchar(255) NOT NULL,
  `con_alt_txt` varchar(255) NOT NULL,
  `con_article` varchar(50000) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`con_id`, `con_title`, `con_tagline`, `con_release_date`, `con_genre`, `con_language`, `con_cast`, `con_crew`, `con_prodhouse`, `con_category`, `con_alt_txt`, `con_article`) VALUES
(54, 'inkscape', 'inkscape session 1', '2012-02-11', 'Education', 'English', 'Vasu', 'MSc(CA)', 'SISR', 'DVDs', 'new_img', 'How do you like being here'),
(55, 'Mediawiki', 'Hackathon', '2012-02-11', 'Education', 'English', 'Thomasz Finc\r\nAmir Amrohi\r\nArtur Richards', 'Alolita Sharma\r\nSeibrand Mazeland\r\nRachel', 'Wikipedia', 'DVDs', 'mediawiki', 'Mediawiki Hackathon was hosted by SICSR pune, on 10th to 12th of feb 2012. Professionals from mediawiki had gathered for the Hackathon at SICSR. The Hackathon was attended by nearly 50 personnels from various fields and 15 were choosen to be accompanied on to the following days at the hackathon for contributions to mediawiki and translate.wiki. '),
(56, 'Wolf', 'Wolf open source', '2012-01-05', 'Animation', 'French', 'gorden', 'Filich', 'Cramberry', 'TV', 'wolf', 'TV show: Wolf'),
(58, 'Sita Sings the Blues', 'The greatest breakup story ever told', '2012-03-28', 'Animation', 'English', 'Nina Paley Sanjiv Jhaveri', 'Annette Hanshaw et al. Aseem Chhabra', 'Nina Paley', 'Movies', 'Sita sings the blues', 'The film uses a pared-down adaptation of the legend that retains many of its finer details while adopting a perspective sympathetic towards Sita; in the director''s words, the film is "a tale of truth, justice and a womans cry for equal treatment'),
(59, 'The Big Buck Bunny', 'www.BIGBUCKBUNNY.org', '2008-04-10', 'Animation', 'English', 'Sacha Goedegebure aka "Sago"', 'Jan Morgenstern', 'Ton Roosendaal', 'Movies', 'Big Buck Bunny', 'Big Buck Bunny (code-named Peach) is a short computer animated film by the Blender Institute, part of the Blender Foundation'),
(60, 'Jathias Wager', 'Open Source SciFi movie', '2009-03-01', 'Action', 'English', 'Jathia SOLOMON D ROTHMAN\r\nEzra KARLY SHEA\r\nDARREN DIFRANCISCO', 'SOLOMON D ROTHMAN\r\nDARREN DIFRANCISCO\r\nAMBER', 'Computer Athlete Handbook', 'Movies', 'Jathias Wager', 'The film was shot in Ventura, CA with 50% of the footage using green screen, with the backgrounds inserted afterwards. '),
(63, 'hallo', 'j', '2008-04-05', 'Drama', 'English', 'fox', 'foxy', 'g', 'Movies', 'bat', 'hollllo'),
(64, 'sayak', 'sarkar', '2012-02-03', 'Classics', 'Bengali', 'sayak', 'sayak', 'sarkar', 'Trailers', 'syak', 'sayak as a wolf'),
(65, 'kalshd', 'ndlsakjd', '0000-00-00', 'Drama', 'asjd', 'askdjalk', 'salkjd', 'aslkjd', 'Trailers', 'c', 'lqkjd'),
(66, 'del', 'delete it', '0004-05-06', 'Comedy', 'Hindi', 'asldh\r\nlasd\r\n;ajsd', 'asdj\r\nasmd', 'asd', 'Trailers', 'sss1.jpg', 'airoewiyruweyiruiweyri');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `gen_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `gen_name` varchar(255) NOT NULL,
  PRIMARY KEY (`gen_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`gen_id`, `gen_name`) VALUES
(1, 'Action Adventure'),
(2, 'Animation'),
(3, 'Classics'),
(4, 'Comedy'),
(5, 'Drama'),
(7, 'Education'),
(8, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `header_id` int(11) NOT NULL AUTO_INCREMENT,
  `header_image_name` varchar(50) NOT NULL,
  PRIMARY KEY (`header_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`header_id`, `header_image_name`) VALUES
(11, 'mysite'),
(12, 'mif'),
(13, 'dc'),
(14, 'eg'),
(15, 'fedora'),
(16, 'fedora'),
(17, 'fedora');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `img_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `img_header_name` varchar(50) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `usr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `usr_fname` varchar(255) NOT NULL,
  `usr_lname` varchar(255) NOT NULL,
  `usr_dob` date NOT NULL,
  `usr_gender` varchar(1) NOT NULL,
  `usr_uid` varchar(50) NOT NULL,
  `usr_password` varchar(50) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  `usr_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`usr_id`, `usr_fname`, `usr_lname`, `usr_dob`, `usr_gender`, `usr_uid`, `usr_password`, `usr_email`, `usr_type`) VALUES
(5, 'ham', 'jebarwokie', '2012-12-09', 'M', 'ham', 'hamy123', 'jam@tcp.com', 1),
(9, 'hulk', 'incredible', '2012-12-12', 'M', 'hulk', 'hulk123', 'hulk@avengers.com', 0),
(10, 'urk', 'urky', '0000-00-00', 'F', 'urk', 'urk123', 'urk@er.com', 1),
(11, 'tom', 'tomy', '1950-03-06', 'M', 'tom', 'tom123', 'tom@tomy.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_articles`
--

CREATE TABLE IF NOT EXISTS `video_articles` (
  `va_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `va_publicationDate` date NOT NULL,
  `va_title` varchar(255) NOT NULL,
  `va_summary` text NOT NULL,
  `va_content` mediumtext NOT NULL,
  PRIMARY KEY (`va_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_4` FOREIGN KEY (`img_id`) REFERENCES `content` (`con_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
