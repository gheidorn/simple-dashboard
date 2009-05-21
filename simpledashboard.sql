-- phpMyAdmin SQL Dump
-- version 2.11.9.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2009 at 03:37 PM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simpledashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `name`, `desc`, `type`, `state`) VALUES
('dpe01', 'njqp1csmwas01', 'ibm blade server', 'application server', 'free'),
('dpe02', 'njqp1csmwas02', 'ibm blade server', 'application server', 'under maintenance'),
('dpe03', 'njqp1csmwas03', 'ibm blade server', 'application server', 'in use'),
('dpe04', 'njqp1csmwas04', 'ibm blade server', 'application server', 'in use'),
('dpe05', 'njqp1csmwas05', '', '', ''),
('dpe06', 'njqp1csmwas06', '', '', ''),
('dpe08', 'njqp1csmwas08', '', '', ''),
('ldap-server-1', 'njqp1csmldap01', '', '', ''),
('team-web-server-1', 'njqp1csmweb01', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `resource_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `posted` datetime NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`resource_id`, `user_id`, `posted`, `message`) VALUES
('dpe01', 'heidorn', '2009-05-19 14:30:07', 'installing phprof and updating wily pbds'),
('dpe01', 'heidorn', '2009-05-19 14:30:51', 'completed phprof/pbd install'),
('dpe02', 'perkins', '2009-05-18 14:31:22', 'provisioning WAS/WP'),
('dpe02', 'perkins', '2009-05-19 14:31:51', 'completed provisioning'),
('dpe03', 'oakes', '2009-05-19 14:32:07', 'installing id&v'),
('dpe04', 'beal', '2009-05-17 14:32:23', 'profiling me2me'),
('dpe04', 'beal', '2009-05-19 14:32:45', 'still profiling me2me'),
('dpe01', 'perkins', '2009-05-19 14:33:02', 'installing portal fixpack 12'),
('dpe02', 'perkins', '2009-05-19 14:33:26', 'restarting jvms (1, 2, 3 and 4)'),
('dpe01', 'monkey', '2009-05-20 10:24:30', 'installing phprof and updating wily pbds'),
('dpe01', 'monkey', '2009-05-20 10:24:39', 'adsfasd'),
('dpe02', 'monkey', '2009-05-20 10:25:36', 'get out of here!'),
('dpe03', 'monkey', '2009-05-20 10:29:44', 'working for the man'),
('dpe03', 'monkey', '2009-05-20 10:29:58', 'working for the man every night and day'),
('dpe01', 'monkey', '2009-05-20 10:30:45', 'bowling'),
('dpe01', 'monkey', '2009-05-20 10:36:54', 'puttin on the ritz'),
('dpe02', 'monkey', '2009-05-20 10:52:16', 'the plane has arrived'),
('dpe01', 'monkey', '2009-05-20 10:52:42', 'lost episode 12asdf'),
('dpe01', 'monkey', '2009-05-20 10:52:51', 'lost episode 12asdfasdf'),
('dpe01', 'monkey', '2009-05-20 10:53:43', 'argentina'),
('dpe01', 'monkey', '2009-05-20 10:53:58', 'argentinaasdf'),
('dpe01', 'monkey', '2009-05-20 10:54:21', 'madonna'),
('dpe01', 'monkey', '2009-05-20 10:54:29', 'asdf'),
('dpe04', 'monkey', '2009-05-20 10:58:55', 'let''s get it started'),
('dpe01', 'monkey', '2009-05-20 10:59:36', 'again, i want you to find the source'),
('dpe01', 'monkey', '2009-05-20 10:59:50', 'asdf'),
('dpe01', 'monkey', '2009-05-20 11:01:14', 'pppppp'),
('dpe01', 'monkey', '2009-05-20 11:02:07', 'qqqqqqq'),
('dpe01', 'monkey', '2009-05-20 11:02:14', 'aasdfas'),
('dpe02', 'monkey', '2009-05-20 11:02:56', 'and it has landed on runway seven'),
('dpe02', 'monkey', '2009-05-20 11:03:07', 'make that runway eight'),
('dpe01', 'monkey', '2009-05-20 11:04:05', '100010010101 101010 10001  01'),
('dpe01', 'monkey', '2009-05-20 11:04:13', 'asdfasfda'),
('dpe01', 'monkey', '2009-05-20 11:08:35', 'under provisioning'),
('dpe01', 'monkey', '2009-05-20 11:16:34', 'running a load test'),
('dpe02', 'monkey', '2009-05-20 11:17:07', 'make that runway ok 10'),
('dpe02', 'monkey', '2009-05-20 11:17:31', 'asdfasdfas'),
('dpe01', 'monkey', '2009-05-20 11:18:02', 'clearing out log files'),
('dpe01', 'monkey', '2009-05-20 11:18:41', 'whoops'),
('dpe02', 'monkey', '2009-05-20 11:18:44', 'adsfasfd'),
('dpe03', 'monkey', '2009-05-20 11:18:47', 'asasvv'),
('dpe04', 'monkey', '2009-05-20 11:19:08', 'afda'),
('dpe01', 'monkey', '2009-05-20 11:21:03', 'asdfasd'),
('dpe01', 'monkey', '2009-05-20 11:26:29', 'capital city'),
('dpe02', 'monkey', '2009-05-20 11:27:15', 'apples and bananas'),
('dpe02', 'monkey', '2009-05-20 11:28:59', 'oranges are cool too'),
('dpe02', 'monkey', '2009-05-20 11:29:14', 'wait, no there are not'),
('dpe01', 'monkey', '2009-05-20 11:29:39', 'busy - get out'),
('dpe01', 'monkey', '2009-05-20 11:48:00', 'asdfasd'),
('dpe01', 'monkey', '2009-05-20 11:48:42', 'asfdads'),
('dpe01', 'monkey', '2009-05-20 11:49:42', 'asdfasd'),
('dpe02', 'monkey', '2009-05-20 11:49:45', 'asdfasd'),
('dpe01', 'monkey', '2009-05-20 11:50:15', 'asdfsa'),
('dpe02', 'monkey', '2009-05-20 11:50:19', 'asdfas'),
('dpe03', 'monkey', '2009-05-20 11:50:29', 'asdfad'),
('dpe01', 'monkey', '2009-05-20 11:50:52', 'asdfsa'),
('dpe02', 'monkey', '2009-05-20 11:50:58', 'asdfas'),
('dpe01', 'monkey', '2009-05-20 11:51:10', 'asfd'),
('dpe01', 'monkey', '2009-05-20 11:53:00', 'asdfass'),
('dpe02', 'monkey', '2009-05-20 11:53:05', 'asdfasd'),
('dpe02', 'monkey', '2009-05-20 11:53:48', '555151'),
('dpe03', 'monkey', '2009-05-20 11:53:54', 'pp'),
('dpe01', 'monkey', '2009-05-20 11:54:58', 'asdfa'),
('dpe01', 'monkey', '2009-05-20 11:59:17', 'asdfsa'),
('dpe01', 'monkey', '2009-05-20 11:59:25', 'adfasd'),
('dpe01', 'monkey', '2009-05-20 12:00:05', 'asdfasda'),
('dpe02', 'monkey', '2009-05-20 12:00:09', 'asfdasd'),
('dpe01', 'monkey', '2009-05-20 12:02:53', 'aaaaaaaaaaaaa'),
('dpe02', 'monkey', '2009-05-20 12:02:59', 'asfdasdasdfasfas'),
('dpe01', 'monkey', '2009-05-20 12:03:28', 'bvvvvvvvv'),
('dpe01', 'monkey', '2009-05-20 12:03:50', 'asdfasdfsa'),
('dpe01', 'monkey', '2009-05-20 12:03:52', 'asdfasda'),
('dpe01', 'monkey', '2009-05-20 12:04:21', 'asdfsfd'),
('dpe02', 'monkey', '2009-05-20 12:04:25', 'adsfasfda'),
('dpe03', 'monkey', '2009-05-20 12:04:34', 'working for the man every night and day'),
('dpe01', 'monkey', '2009-05-20 12:04:51', 'rotflmaorotflmaorotflmaorotflmaorotflmao'),
('dpe02', 'monkey', '2009-05-20 12:04:55', 'rotflmaorotflmaorotflmaorotflmao '),
('dpe03', 'monkey', '2009-05-20 12:04:58', 'rotflmaorotflmao'),
('dpe01', 'monkey', '2009-05-20 12:05:08', 'rotflmao'),
('dpe02', 'monkey', '2009-05-20 12:05:13', 'asdfa rotflmao'),
('dpe03', 'monkey', '2009-05-20 12:05:16', ' a vavs'),
('dpe02', 'monkey', '2009-05-20 12:05:40', 'asdfa'),
('dpe05', 'monkey', '2009-05-20 12:07:30', 'new to the world'),
('dpe05', 'monkey', '2009-05-20 12:07:44', '2nd day on earth'),
('dpe06', 'monkey', '2009-05-20 12:08:11', 'also new'),
('dpe01', 'monkey', '2009-05-20 12:08:52', 'asdfasd'),
('dpe04', 'monkey', '2009-05-20 12:09:01', 'adsfadsa'),
('team-web-server-1', 'monkey', '2009-05-20 12:10:36', 'adsfasda'),
('team-web-server-1', 'monkey', '2009-05-20 12:10:39', 'aasdfsvavssav'),
('team-web-server-1', 'monkey', '2009-05-20 12:12:09', 'aasdfsvavssav'),
('dpe08', 'monkey', '2009-05-20 12:16:21', 'asdfasd'),
('dpe08', 'monkey', '2009-05-20 12:35:59', '551551'),
('dpe03', 'monkey', '2009-05-20 12:51:28', 'asdfasdfas'),
('dpe08', 'monkey', '2009-05-20 13:04:52', 'asdfasdf'),
('dpe08', 'monkey', '2009-05-20 13:13:16', 'dfasfsa'),
('dpe08', 'monkey', '2009-05-20 13:16:18', 'asdfasd'),
('dpe03', 'monkey', '2009-05-20 15:39:59', 'sdfasasd'),
('dpe04', 'monkey', '2009-05-20 15:40:17', 'asdfasdfa'),
('dpe05', 'monkey', '2009-05-20 15:40:24', 'asda'),
('dpe05', 'monkey', '2009-05-20 15:40:27', 'axcvacvaccva'),
('dpe05', 'monkey', '2009-05-20 15:40:30', 'asvass'),
('dpe05', 'monkey', '2009-05-20 15:40:36', 'asvasas'),
('dpe03', 'monkey', '2009-05-20 15:40:44', 'aaa'),
('dpe03', 'monkey', '2009-05-20 15:40:46', 'bbbb'),
('dpe04', 'monkey', '2009-05-20 15:41:24', 'asdfasdf'),
('dpe01', 'monkey', '2009-05-20 15:43:42', 'asdfasfasfd'),
('dpe01', 'monkey', '2009-05-20 15:45:42', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
('dpe01', 'monkey', '2009-05-20 15:45:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor '),
('dpe01', 'monkey', '2009-05-20 15:46:11', 'amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
('dpe01', 'monkey', '2009-05-20 15:46:14', 'asdfas'),
('dpe01', 'monkey', '2009-05-20 15:48:11', 'asdf'),
('dpe01', 'monkey', '2009-05-20 15:54:32', 'asdfasfd'),
('dpe01', 'monkey', '2009-05-20 15:54:36', 'aaaa'),
('dpe01', 'monkey', '2009-05-20 15:54:40', 'aaa'),
('dpe01', 'monkey', '2009-05-20 15:54:49', 'd'),
('dpe01', 'monkey', '2009-05-20 15:55:02', '1'),
('dpe01', 'monkey', '2009-05-20 15:55:35', '123'),
('dpe01', 'monkey', '2009-05-20 15:55:40', '1234'),
('dpe01', 'monkey', '2009-05-20 15:55:44', '1122'),
('dpe02', 'monkey', '2009-05-20 15:55:50', 'asdfa'),
('dpe02', 'monkey', '2009-05-20 15:55:54', 'asdfa'),
('dpe02', 'monkey', '2009-05-20 15:55:56', 'asdfa'),
('dpe05', 'monkey', '2009-05-20 15:56:08', '9'),
('dpe05', 'monkey', '2009-05-20 15:56:13', '99'),
('dpe05', 'monkey', '2009-05-20 15:56:26', '7'),
('dpe05', 'monkey', '2009-05-20 15:56:30', '77'),
('dpe05', 'monkey', '2009-05-20 15:56:34', '777'),
('dpe01', 'monkey', '2009-05-20 15:58:49', 'asdfasd'),
('dpe01', 'monkey', '2009-05-20 15:58:57', 'asdfasdasfasadfasfda'),
('dpe01', 'monkey', '2009-05-20 16:00:13', '111'),
('dpe01', 'monkey', '2009-05-20 16:00:26', 'ready for testing'),
('dpe01', 'monkey', '2009-05-20 16:00:35', 'testing in progress'),
('dpe01', 'monkey', '2009-05-20 16:02:36', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
('dpe01', 'monkey', '2009-05-20 16:02:47', 'server is down'),
('dpe01', 'monkey', '2009-05-20 16:03:32', 'asdfas'),
('dpe01', 'monkey', '2009-05-20 16:03:58', 'asfdasd'),
('dpe01', 'monkey', '2009-05-20 16:04:02', 'aaa'),
('dpe01', 'monkey', '2009-05-20 16:06:45', 'asdfaasdfsaf'),
('dpe01', 'monkey', '2009-05-20 16:06:48', 'a'),
('dpe01', 'monkey', '2009-05-20 16:06:51', 'b'),
('dpe01', 'monkey', '2009-05-20 16:06:55', 'c'),
('dpe01', 'monkey', '2009-05-20 16:08:38', 'adsfasdfav adsf asd fa'),
('dpe01', 'monkey', '2009-05-20 16:13:58', 'asdfa'),
('dpe01', 'monkey', '2009-05-20 16:14:02', 'adsfads'),
('dpe01', 'monkey', '2009-05-20 16:19:36', 'asdfa'),
('dpe01', 'monkey', '2009-05-20 16:20:34', 'sdfasfd'),
('dpe01', 'monkey', '2009-05-20 16:21:01', 'asdfsa'),
('dpe01', 'monkey', '2009-05-20 16:24:51', 'on the mend'),
('dpe01', 'monkey', '2009-05-20 16:30:51', 'on the mend'),
('dpe01', 'monkey', '2009-05-20 16:31:26', 'on the mend'),
('dpe01', 'monkey', '2009-05-20 16:31:37', 'on the mend'),
('dpe01', 'monkey', '2009-05-20 16:35:59', 'on the mendon the mendon the mendon the mendon the mendon the mendon the mendon the mend'),
('dpe01', 'monkey', '2009-05-20 16:36:00', '1231'),
('dpe03', 'monkey', '2009-05-21 10:03:45', 'greg'),
('dpe06', 'monkey', '2009-05-21 10:04:05', 'asdfa'),
('dpe02', 'monkey', '2009-05-21 10:04:47', 'asasasas'),
('dpe02', 'monkey', '2009-05-21 10:05:58', 'a'),
('dpe02', 'monkey', '2009-05-21 10:06:07', 'asdfasfda'),
('dpe02', 'monkey', '2009-05-21 10:06:23', 'bvc'),
('dpe02', 'monkey', '2009-05-21 10:06:53', 'aaa'),
('dpe02', 'monkey', '2009-05-21 10:07:10', 'asdf'),
('dpe02', 'monkey', '2009-05-21 10:07:16', 'qqqqq1111'),
('dpe02', 'monkey', '2009-05-21 10:07:31', '123'),
('dpe01', 'monkey', '2009-05-21 10:07:44', 'xyz'),
('dpe02', 'monkey', '2009-05-21 10:13:34', 'asdfads'),
('dpe02', 'monkey', '2009-05-21 10:16:20', 'asdfads'),
('dpe02', 'monkey', '2009-05-21 10:16:32', 'aaa'),
('dpe02', 'monkey', '2009-05-21 10:17:17', 'aaasss'),
('dpe05', 'monkey', '2009-05-21 10:29:53', '9999'),
('dpe05', 'monkey', '2009-05-21 10:30:06', '6532'),
('dpe05', 'monkey', '2009-05-21 10:30:22', '1111'),
('dpe05', 'monkey', '2009-05-21 10:34:36', '1111'),
('dpe05', 'monkey', '2009-05-21 10:34:42', '1111'),
('dpe05', 'monkey', '2009-05-21 10:34:47', '1111'),
('dpe06', 'monkey', '2009-05-21 10:35:15', 'asdfa'),
('dpe06', 'monkey', '2009-05-21 10:36:13', 'zxcvzx'),
('dpe06', 'monkey', '2009-05-21 10:36:22', 'asdfasf'),
('dpe01', 'monkey', '2009-05-21 10:38:19', '1111'),
('dpe01', 'monkey', '2009-05-21 10:38:30', '22222'),
('dpe01', 'monkey', '2009-05-21 10:38:33', '112312'),
('dpe01', 'monkey', '2009-05-21 10:38:37', '11212'),
('dpe01', 'monkey', '2009-05-21 10:38:44', 'asdfggg'),
('dpe01', 'monkey', '2009-05-21 10:38:47', 'hhhh'),
('dpe01', 'monkey', '2009-05-21 10:38:52', 'g33453g'),
('dpe01', 'monkey', '2009-05-21 10:38:55', '1111'),
('dpe01', 'monkey', '2009-05-21 10:46:09', 'qwerty'),
('dpe01', 'monkey', '2009-05-21 10:49:20', '333333333333333333333'),
('dpe01', 'monkey', '2009-05-21 10:49:51', '1qaz231s '),
('dpe01', 'monkey', '2009-05-21 10:50:15', '66'),
('dpe01', 'monkey', '2009-05-21 10:50:29', '11111'),
('dpe01', 'monkey', '2009-05-21 10:51:11', 'zxc'),
('dpe01', 'monkey', '2009-05-21 10:54:22', 'alright begin testing'),
('team-web-server-1', 'monkey', '2009-05-21 11:01:35', 'asdfsadf'),
('team-web-server-1', 'monkey', '2009-05-21 11:01:39', 'aaa'),
('team-web-server-1', 'monkey', '2009-05-21 11:01:44', 'bbb'),
('ldap-server-1', 'monkey', '2009-05-21 11:03:08', 'asdfas'),
('ldap-server-1', 'monkey', '2009-05-21 11:03:18', 'give me shelter'),
('dpe08', 'monkey', '2009-05-21 11:12:43', 'asdfasdfa'),
('dpe08', 'monkey', '2009-05-21 11:12:48', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(20) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first`, `last`, `email`) VALUES
('dba1', 'Lee', '', ''),
('heidorn', 'Greg', 'Heidorn', 'greg.heidorn@gmail.com'),
('monkey', 'Curious', 'George', ''),
('sysadmin1', 'Nathan', '', '');
