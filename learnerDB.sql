-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.40-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for learnerdb
CREATE DATABASE IF NOT EXISTS `learnerdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `learnerdb`;

-- Dumping structure for table learnerdb.class_master
CREATE TABLE IF NOT EXISTS `class_master` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.class_master: ~8 rows (approximately)
DELETE FROM `class_master`;
/*!40000 ALTER TABLE `class_master` DISABLE KEYS */;
INSERT INTO `class_master` (`class_id`, `class_name`) VALUES
	(1, 'I'),
	(2, 'II'),
	(3, 'III'),
	(4, 'IV'),
	(5, 'V'),
	(6, 'VI'),
	(7, 'VII'),
	(8, 'VIII'),
	(9, 'IX'),
	(10, 'X');
/*!40000 ALTER TABLE `class_master` ENABLE KEYS */;

-- Dumping structure for table learnerdb.class_subject_master
CREATE TABLE IF NOT EXISTS `class_subject_master` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL DEFAULT '0',
  `subject_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.class_subject_master: ~140 rows (approximately)
DELETE FROM `class_subject_master`;
/*!40000 ALTER TABLE `class_subject_master` DISABLE KEYS */;
INSERT INTO `class_subject_master` (`cs_id`, `class_name`, `subject_name`) VALUES
	(1, 'I', 'English'),
	(2, 'II', 'English'),
	(3, 'III', 'English'),
	(4, 'IV', 'English'),
	(5, 'V', 'English'),
	(6, 'VI', 'English'),
	(7, 'VII', 'English'),
	(8, 'VIII', 'English'),
	(9, 'IX', 'English'),
	(10, 'X', 'English'),
	(11, 'I', 'Hindi'),
	(12, 'II', 'Hindi'),
	(13, 'III', 'Hindi'),
	(14, 'IV', 'Hindi'),
	(15, 'V', 'Hindi'),
	(16, 'VI', 'Hindi'),
	(17, 'VII', 'Hindi'),
	(18, 'VIII', 'Hindi'),
	(19, 'IX', 'Hindi'),
	(20, 'X', 'Hindi'),
	(21, 'I', 'Marathi'),
	(22, 'II', 'Marathi'),
	(23, 'III', 'Marathi'),
	(24, 'IV', 'Marathi'),
	(25, 'V', 'Marathi'),
	(26, 'VI', 'Marathi'),
	(27, 'VII', 'Marathi'),
	(28, 'VIII', 'Marathi'),
	(29, 'IX', 'Marathi'),
	(30, 'X', 'Marathi'),
	(31, 'I', 'Sanskrit'),
	(32, 'II', 'Sanskrit'),
	(33, 'III', 'Sanskrit'),
	(34, 'IV', 'Sanskrit'),
	(35, 'V', 'Sanskrit'),
	(36, 'VI', 'Sanskrit'),
	(37, 'VII', 'Sanskrit'),
	(38, 'VIII', 'Sanskrit'),
	(39, 'IX', 'Sanskrit'),
	(40, 'X', 'Sanskrit'),
	(41, 'I', 'Science'),
	(42, 'II', 'Science'),
	(43, 'III', 'Science'),
	(44, 'IV', 'Science'),
	(45, 'V', 'Science'),
	(46, 'VI', 'Science'),
	(47, 'VII', 'Science'),
	(48, 'VIII', 'Science'),
	(49, 'IX', 'Science'),
	(50, 'X', 'Science'),
	(51, 'I', 'Maths'),
	(52, 'II', 'Maths'),
	(53, 'III', 'Maths'),
	(54, 'IV', 'Maths'),
	(55, 'V', 'Maths'),
	(56, 'VI', 'Maths'),
	(57, 'VII', 'Maths'),
	(58, 'VIII', 'Maths'),
	(59, 'IX', 'Maths'),
	(60, 'X', 'Maths'),
	(61, 'I', 'Geography'),
	(62, 'II', 'Geography'),
	(63, 'III', 'Geography'),
	(64, 'IV', 'Geography'),
	(65, 'V', 'Geography'),
	(66, 'VI', 'Geography'),
	(67, 'VII', 'Geography'),
	(68, 'VIII', 'Geography'),
	(69, 'IX', 'Geography'),
	(70, 'X', 'Geography'),
	(71, 'I', 'History'),
	(72, 'II', 'History'),
	(73, 'III', 'History'),
	(74, 'IV', 'History'),
	(75, 'V', 'History'),
	(76, 'VI', 'History'),
	(77, 'VII', 'History'),
	(78, 'VIII', 'History'),
	(79, 'IX', 'History'),
	(80, 'X', 'History'),
	(81, 'I', 'Civics'),
	(82, 'II', 'Civics'),
	(83, 'III', 'Civics'),
	(84, 'IV', 'Civics'),
	(85, 'V', 'Civics'),
	(86, 'VI', 'Civics'),
	(87, 'VII', 'Civics'),
	(88, 'VIII', 'Civics'),
	(89, 'IX', 'Civics'),
	(90, 'X', 'Civics'),
	(91, 'I', 'PT'),
	(92, 'II', 'PT'),
	(93, 'III', 'PT'),
	(94, 'IV', 'PT'),
	(95, 'V', 'PT'),
	(96, 'VI', 'PT'),
	(97, 'VII', 'PT'),
	(98, 'VIII', 'PT'),
	(99, 'IX', 'PT'),
	(100, 'X', 'PT'),
	(101, 'I', 'Drawing'),
	(102, 'II', 'Drawing'),
	(103, 'III', 'Drawing'),
	(104, 'IV', 'Drawing'),
	(105, 'V', 'Drawing'),
	(106, 'VI', 'Drawing'),
	(107, 'VII', 'Drawing'),
	(108, 'VIII', 'Drawing'),
	(109, 'IX', 'Drawing'),
	(110, 'X', 'Drawing'),
	(111, 'I', 'Dancing'),
	(112, 'II', 'Dancing'),
	(113, 'III', 'Dancing'),
	(114, 'IV', 'Dancing'),
	(115, 'V', 'Dancing'),
	(116, 'VI', 'Dancing'),
	(117, 'VII', 'Dancing'),
	(118, 'VIII', 'Dancing'),
	(119, 'IX', 'Dancing'),
	(120, 'X', 'Dancing'),
	(121, 'I', 'Work Experience'),
	(122, 'II', 'Work Experience'),
	(123, 'III', 'Work Experience'),
	(124, 'IV', 'Work Experience'),
	(125, 'V', 'Work Experience'),
	(126, 'VI', 'Work Experience'),
	(127, 'VII', 'Work Experience'),
	(128, 'VIII', 'Work Experience'),
	(129, 'IX', 'Work Experience'),
	(130, 'X', 'Work Experience'),
	(131, 'I', 'Moral Science'),
	(132, 'II', 'Moral Science'),
	(133, 'III', 'Moral Science'),
	(134, 'IV', 'Moral Science'),
	(135, 'V', 'Moral Science'),
	(136, 'VI', 'Moral Science'),
	(137, 'VII', 'Moral Science'),
	(138, 'VIII', 'Moral Science'),
	(139, 'IX', 'Moral Science'),
	(140, 'X', 'Moral Science');
/*!40000 ALTER TABLE `class_subject_master` ENABLE KEYS */;

-- Dumping structure for table learnerdb.role_master
CREATE TABLE IF NOT EXISTS `role_master` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.role_master: ~2 rows (approximately)
DELETE FROM `role_master`;
/*!40000 ALTER TABLE `role_master` DISABLE KEYS */;
INSERT INTO `role_master` (`role_id`, `role_name`) VALUES
	(1, 'Admin'),
	(2, 'Staff');
/*!40000 ALTER TABLE `role_master` ENABLE KEYS */;

-- Dumping structure for table learnerdb.student_master
CREATE TABLE IF NOT EXISTS `student_master` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_first` varchar(50) NOT NULL DEFAULT '0',
  `student_last` varchar(50) NOT NULL DEFAULT '0',
  `student_age` int(10) DEFAULT '0',
  `student_address` varchar(50) DEFAULT NULL,
  `student_phone` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT '0',
  PRIMARY KEY (`student_id`),
  KEY `FK_class_id_class_master` (`class_id`),
  CONSTRAINT `FK_class_id_class_master` FOREIGN KEY (`class_id`) REFERENCES `class_master` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.student_master: ~7 rows (approximately)
DELETE FROM `student_master`;
/*!40000 ALTER TABLE `student_master` DISABLE KEYS */;
INSERT INTO `student_master` (`student_id`, `student_first`, `student_last`, `student_age`, `student_address`, `student_phone`, `class_id`) VALUES
	(1, 'Rucha', 'C', 27, 'kop', '949999999', 1),
	(2, 'Ruchita', 'D', 22, 'nyk', '88888888', 7),
	(3, 'Anish', 'A', 29, 'noo', '999999', 10),
	(4, 'Nitin', 'A', 59, 'nok', '888888', 10),
	(5, 'Priya', 'A', 34, 'del', '77777777', 6),
	(6, 'Ruchita', 'K', 27, 'bel', '88888888', 6),
	(7, 'Priyanka', 'B', 29, 'goa', '888888', 10);
/*!40000 ALTER TABLE `student_master` ENABLE KEYS */;

-- Dumping structure for table learnerdb.subject_master
CREATE TABLE IF NOT EXISTS `subject_master` (
  `subject_id` int(10) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.subject_master: ~14 rows (approximately)
DELETE FROM `subject_master`;
/*!40000 ALTER TABLE `subject_master` DISABLE KEYS */;
INSERT INTO `subject_master` (`subject_id`, `subject_name`) VALUES
	(1, 'English'),
	(2, 'Hindi'),
	(3, 'Marathi'),
	(4, 'Sanskrit'),
	(5, 'Science'),
	(6, 'Maths'),
	(7, 'Geography'),
	(8, 'History'),
	(9, 'Civics'),
	(10, 'PT'),
	(11, 'Drawing'),
	(12, 'Dancing'),
	(13, 'Work Experience'),
	(14, 'Moral Science');
/*!40000 ALTER TABLE `subject_master` ENABLE KEYS */;

-- Dumping structure for table learnerdb.teacher_master
CREATE TABLE IF NOT EXISTS `teacher_master` (
  `teacher_id` int(10) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(50) DEFAULT NULL,
  `teacher_subject` int(10) DEFAULT NULL,
  `teacher_salary` decimal(10,2) DEFAULT NULL,
  `teacher_age` int(10) DEFAULT NULL,
  `teacher_address` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  KEY `FK_teacher_master_subject_master` (`teacher_subject`),
  KEY `FK_teacher_master_class_master` (`class_id`),
  CONSTRAINT `FK_teacher_master_class_master` FOREIGN KEY (`class_id`) REFERENCES `class_master` (`class_id`),
  CONSTRAINT `FK_teacher_master_subject_master` FOREIGN KEY (`teacher_subject`) REFERENCES `subject_master` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.teacher_master: ~3 rows (approximately)
DELETE FROM `teacher_master`;
/*!40000 ALTER TABLE `teacher_master` DISABLE KEYS */;
INSERT INTO `teacher_master` (`teacher_id`, `teacher_name`, `teacher_subject`, `teacher_salary`, `teacher_age`, `teacher_address`, `class_id`) VALUES
	(3, 'Anish', 5, 50000.00, 50, 'pun', 7),
	(4, 'Nitin', 2, 5000.00, 50, 'mum', 10),
	(5, 'Anish', 6, 50000.00, 35, 'br', 3),
	(7, 'Anu', 3, 5000.00, 50, 'pun', 10);
/*!40000 ALTER TABLE `teacher_master` ENABLE KEYS */;

-- Dumping structure for table learnerdb.user_master
CREATE TABLE IF NOT EXISTS `user_master` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(150) DEFAULT NULL,
  `user_password` varchar(150) DEFAULT NULL,
  `user_role` int(10) DEFAULT NULL,
  `user_status` char(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_role_id_role_master` (`user_role`),
  CONSTRAINT `FK_role_id_role_master` FOREIGN KEY (`user_role`) REFERENCES `role_master` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table learnerdb.user_master: ~2 rows (approximately)
DELETE FROM `user_master`;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `user_status`) VALUES
	(2, 'Anish', 'anish', 'anish', 1, 'A'),
	(3, 'Ruchita', 'aaaa', 'ruchi', 1, 'A'),
	(5, 'Papdi', NULL, 'anish', 1, 'A');
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
