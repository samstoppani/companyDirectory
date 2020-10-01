-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for companydirectory
CREATE DATABASE IF NOT EXISTS `companydirectory` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `companydirectory`;

-- Dumping structure for table companydirectory.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `locationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table companydirectory.department: ~12 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`, `name`, `locationID`) VALUES
	(1, 'Human Resources', 1),
	(2, 'Sales', 2),
	(3, 'Marketing', 2),
	(4, 'Legal', 1),
	(5, 'Services', 1),
	(6, 'Research and Development', 3),
	(7, 'Product Management', 3),
	(8, 'Training', 4),
	(9, 'Support', 4),
	(10, 'Engineering', 5),
	(11, 'Accounting', 5),
	(12, 'Business Development', 3);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table companydirectory.location
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table companydirectory.location: ~4 rows (approximately)
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `name`) VALUES
	(1, 'London'),
	(2, 'New York'),
	(3, 'Paris'),
	(4, 'Munich'),
	(5, 'Rome');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table companydirectory.personnel
CREATE TABLE IF NOT EXISTS `personnel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `jobTitle` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Dumping data for table companydirectory.personnel: ~100 rows (approximately)
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` (`id`, `firstName`, `lastName`, `jobTitle`, `email`, `departmentID`) VALUES
	(1, 'Rosana', 'Heffron', 'HR Manager', 'rheffron0@ibm.com', 1),
	(2, 'Kris', 'Kovnot', 'Sales Consultant', 'kkovnot1@google.nl', 2),
	(3, 'Vera', 'Kisbee', 'Sales Consultant', 'vkisbee2@nih.gov', 2),
	(4, 'Aveline', 'Edgson', 'Marketing Manager', 'aedgson3@wikispaces.com', 3),
	(5, 'Bertie', 'Wittke', 'Solicitor', 'bwittke4@yahoo.com', 4),
	(6, 'Demetre', 'Cossam', 'Customer Service Representative', 'dcossam5@washington.edu', 5),
	(7, 'Annabela', 'McGavigan', 'Solicitor', 'amcgavigan6@wp.com', 4),
	(8, 'Crichton', 'McAndrew', 'HR Manager', 'cmcandrew7@zdnet.com', 1),
	(9, 'Cordula', 'Plain', 'Customer Service Engineer', 'cplain8@google.ca', 5),
	(10, 'Glen', 'McDougle', 'Research and Development Scientist', 'gmcdougle9@meetup.com', 6),
	(11, 'Theo', 'Audas', 'Associate Product Manager', 'taudasa@newsvine.com', 7),
	(12, 'Spense', 'Jolliss', 'Curriculum Developer', 'sjollissb@wufoo.com', 8),
	(13, 'Leopold', 'Carl', 'Customer Support Manager', 'lcarlc@paginegialle.it', 9),
	(14, 'Barr', 'MacAllan', 'Customer Service Specialist', 'bmacalland@github.com', 5),
	(15, 'Suzie', 'Cromer', 'HR Director', 'scromere@imageshack.us', 1),
	(16, 'Tracee', 'Gisbourn', 'Machine Learning Engineer', 'tgisbournf@bloglines.com', 10),
	(17, 'Taylor', 'St. Quintin', 'Engineering Graduate', 'tstquinting@chronoengine.com', 10),
	(18, 'Lin', 'Klassmann', 'Chemical Engineer', 'lklassmannh@indiatimes.com', 10),
	(19, 'Lay', 'Fintoph', 'Accounts Assistant', 'lfintophi@goo.gl', 11),
	(20, 'Moishe', 'Flinn', 'Business Development Specialist', 'mflinnj@list-manage.com', 12),
	(21, 'Gay', 'Bickford', 'Development Research Technician', 'gbickfordk@scientificamerican.com', 6),
	(22, 'Erik', 'Lindback', 'Training Instructor', 'elindbackl@virginia.edu', 8),
	(23, 'Tamarra', 'Ace', 'Customer Support Specialist', 'tacem@vinaora.com', 9),
	(24, 'Barbara-anne', 'Rooksby', 'Business Development Specialist', 'brooksbyn@issuu.com', 12),
	(25, 'Lucien', 'Allsup', 'Customer Support Specialist', 'lallsupo@goo.ne.jp', 9),
	(26, 'Jackelyn', 'Imlach', 'Accounts Assistant', 'jimlachp@google.it', 11),
	(27, 'Virge', 'Bootes', 'Chief Revenue Officer', 'vbootesq@oracle.com', 2),
	(28, 'Rafferty', 'Matasov', 'Solicitor', 'rmatasovr@4shared.com', 4),
	(29, 'Vanya', 'Goulder', 'Customer Support Engineer', 'vgoulders@phoca.cz', 9),
	(30, 'Bonita', 'McGonagle', 'HR Manager', 'bmcgonaglet@microsoft.com', 1),
	(31, 'Allx', 'Whaley', 'HR Coordinator', 'awhaleyu@bbb.org', 1),
	(32, 'Mavis', 'Lernihan', 'Customer Service Specialist', 'mlernihanv@netscape.com', 5),
	(33, 'Vern', 'Durling', 'HR Manager', 'vdurlingw@goo.gl', 1),
	(34, 'Myles', 'Minchi', 'Senior Product Manager', 'mminchix@smugmug.com', 7),
	(35, 'Anitra', 'Coleridge', 'Development Research Technician', 'acoleridgey@nbcnews.com', 6),
	(36, 'Ailis', 'Brewster', 'Associate Product Manager', 'abrewsterz@businesswire.com', 7),
	(37, 'Rahal', 'Tute', 'Research and Development Manager', 'rtute10@pinterest.com', 6),
	(38, 'Warner', 'Blonden', 'Business Development Manager', 'wblonden11@spiegel.de', 12),
	(39, 'Melvyn', 'Canner', '', 'mcanner12@eepurl.com', 4),
	(40, 'Ryann', 'Giampietro', 'Lawyer', 'rgiampietro13@theguardian.com', 4),
	(41, 'Harwell', 'Jefferys', 'Machine Learning Engineer', 'hjefferys14@jimdo.com', 10),
	(42, 'Lanette', 'Buss', 'Paralegal', 'lbuss15@51.la', 4),
	(43, 'Lissie', 'Reddington', 'Customer Support Engineer', 'lreddington16@w3.org', 9),
	(44, 'Dore', 'Braidford', 'Chartered Accountant', 'dbraidford17@google.com.br', 11),
	(45, 'Lizabeth', 'Di Franceshci', 'Learning Consultant', 'ldifranceshci18@mediafire.com', 8),
	(46, 'Felic', 'Sharland', 'Business Development Specialist', 'fsharland19@myspace.com', 12),
	(47, 'Duff', 'Quail', 'Customer Support Engineer', 'dquail1a@vimeo.com', 9),
	(48, 'Brendis', 'Shivell', 'HR Analyst', 'bshivell1b@un.org', 1),
	(49, 'Nevile', 'Schimaschke', 'Project Engineer', 'nschimaschke1c@hexun.com', 10),
	(50, 'Jon', 'Calbaithe', 'Lawyer', 'jcalbaithe1d@netvibes.com', 4),
	(51, 'Emmery', 'Darben', 'Chief Engineering Officer', 'edarben1e@mapquest.com', 10),
	(52, 'Staford', 'Whitesel', 'Research and Development Trainee', 'swhitesel1f@nasa.gov', 6),
	(53, 'Benjamin', 'Hawkslee', 'Product Manager', 'bhawkslee1g@hubpages.com', 7),
	(54, 'Myrle', 'Speer', 'Marketing Analyst', 'mspeer1h@tripod.com', 3),
	(55, 'Matthus', 'Banfield', 'Chief Marketing Officer', 'mbanfield1i@angelfire.com', 3),
	(56, 'Annadiana', 'Drance', 'Marketing Manager', 'adrance1j@omniture.com', 3),
	(57, 'Rinaldo', 'Fandrey', 'Sales Executive', 'rfandrey1k@bbc.co.uk', 2),
	(58, 'Roanna', 'Standering', 'Marketing Consultant', 'rstandering1l@cocolog-nifty.com', 3),
	(59, 'Lorrie', 'Fattorini', 'Customer Support Manager', 'lfattorini1m@geocities.jp', 9),
	(60, 'Talbot', 'Andrassy', 'Paralegal', 'tandrassy1n@bigcartel.com', 4),
	(61, 'Cindi', 'O\'Mannion', 'Auditor', 'comannion1o@ameblo.jp', 11),
	(62, 'Pancho', 'Mullineux', 'HR Analyst', 'pmullineux1p@webmd.com', 1),
	(63, 'Cynthy', 'Peyntue', 'Research and Development Scientist', 'cpeyntue1q@amazon.co.jp', 6),
	(64, 'Kristine', 'Christal', 'Learning Consultant', 'kchristal1r@behance.net', 8),
	(65, 'Dniren', 'Reboulet', 'Product Lead', 'dreboulet1s@360.cn', 7),
	(66, 'Aggy', 'Napier', 'Marketing Analyst', 'anapier1t@sciencedirect.com', 3),
	(67, 'Gayleen', 'Hessay', 'Solicitor', 'ghessay1u@exblog.jp', 4),
	(68, 'Cull', 'Snoden', 'HR Coordinator', 'csnoden1v@so-net.ne.jp', 1),
	(69, 'Vlad', 'Crocombe', 'Junior Product Manager', 'vcrocombe1w@mtv.com', 7),
	(70, 'Georgeanna', 'Joisce', 'Development Research Technician', 'gjoisce1x@google.com.au', 6),
	(71, 'Ursola', 'Berthomieu', 'Paralegal', 'uberthomieu1y@un.org', 4),
	(72, 'Mair', 'McKirdy', 'HR Analyst', 'mmckirdy1z@ovh.net', 1),
	(73, 'Erma', 'Runnalls', 'Training Manager', 'erunnalls20@spiegel.de', 8),
	(74, 'Heida', 'Gallone', 'Software Engineer', 'hgallone21@hostgator.com', 10),
	(75, 'Christina', 'Denge', 'Business Development Manager', 'cdenge22@canalblog.com', 12),
	(76, 'Wilone', 'Fredi', 'Product Manager', 'wfredi23@gizmodo.com', 7),
	(77, 'Stormie', 'Bolderstone', 'Chief Financial Officer', 'sbolderstone24@globo.com', 11),
	(78, 'Darryl', 'Pool', 'Finance Manager', 'dpool25@vistaprint.com', 11),
	(79, 'Nikolas', 'Mager', 'Customer Service Engineer', 'nmager26@nifty.com', 5),
	(80, 'Brittney', 'Gaskal', 'Software Engineer', 'bgaskal27@weather.com', 10),
	(81, 'Field', 'Gresty', 'Lawyer', 'fgresty28@networkadvertising.org', 4),
	(82, 'Martina', 'Tremoulet', 'Marketing Consultant', 'mtremoulet29@sciencedaily.com', 3),
	(83, 'Robena', 'Ivanyutin', 'Sales Executive', 'rivanyutin2a@mozilla.org', 2),
	(84, 'Reagen', 'Corner', 'Chartered Accountant', 'rcorner2b@qq.com', 11),
	(85, 'Eveleen', 'Sulter', 'Research and Development Manager', 'esulter2c@nature.com', 6),
	(86, 'Christy', 'Dunbobbin', 'Curriculum Developer', 'cdunbobbin2d@feedburner.com', 8),
	(87, 'Winthrop', 'Lansley', 'Training Instructor', 'wlansley2e@alibaba.com', 8),
	(88, 'Lissa', 'Insley', 'Marketing Analyst', 'linsley2f@friendfeed.com', 3),
	(89, 'Shell', 'Risebarer', 'Senior Chemical Engineer', 'srisebarer2g@patch.com', 10),
	(90, 'Cherianne', 'Liddyard', 'Trainee Sales Consultant', 'cliddyard2h@com.com', 2),
	(91, 'Brendan', 'Fooks', 'Sales Executive', 'bfooks2i@utexas.edu', 2),
	(92, 'Edmund', 'Tace', 'Customer Support Engineer', 'etace2j@hatena.ne.jp', 9),
	(93, 'Ki', 'Tomasini', 'Artificial Intellegence Engineer', 'ktomasini2k@cnbc.com', 10),
	(94, 'Chadd', 'McGettrick', 'Senior Chemical Engineer', 'cmcgettrick2l@simplemachines.org', 10),
	(95, 'Dulcie', 'Baudi', 'Marketing Manager', 'dbaudi2m@last.fm', 3),
	(96, 'Barnebas', 'Mowbray', 'HR Analyst', 'bmowbray2n@cbslocal.com', 1),
	(97, 'Stefanie', 'Anker', 'Customer Service Representative', 'sanker2o@hud.gov', 5),
	(98, 'Cherye', 'de Cullip', 'Software Engineer', 'cdecullip2p@loc.gov', 10),
	(99, 'Sinclare', 'Deverall', 'Development Research Technician', 'sdeverall2q@ow.ly', 6),
	(100, 'Shae', 'Johncey', 'Chemical Engineer', 'sjohncey2r@bluehost.com', 10);
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
