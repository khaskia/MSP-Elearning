CREATE DATABASE  IF NOT EXISTS `msp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci */;
USE `msp`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: msp
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commentID` int(11) NOT NULL,
  `commentContent` varchar(500) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `commentDate` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `WriterID` int(11) DEFAULT NULL,
  `postID` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentID`),
  KEY `FK_comments_idx` (`postID`),
  CONSTRAINT `FK_comments` FOREIGN KEY (`postID`) REFERENCES `post` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (111,'hahah that\'s funny','2016-05-02 11:07:32',2,75682075),(24084,'hnhzr b2a \r\nda group elkolia !!','2016-05-03 03:47:04',16,39973564),(612967,'I\'ll Upload It Very Soon','2016-05-02 14:03:32',16,90552353),(708553,'Thank you very Much ','2016-05-02 14:05:08',90479764,90552353),(792968,'sdc','2016-05-02 14:06:32',90738689,90787382),(836916,NULL,'2016-05-02 11:20:36',43087879,79623252),(957734,NULL,'2016-05-02 11:22:37',79082635,79131459),(1051184,NULL,'2016-05-02 11:24:11',43087879,79623252),(1073040,NULL,'2016-05-02 11:24:33',43087879,79623252),(1140512,'hii','2016-05-08 00:45:40',60490558,3),(1163176,NULL,'2016-05-02 11:26:03',43087879,79623252),(1193650,'Test','2016-05-08 00:46:33',17,64792874),(1623361,'','2016-05-04 21:53:43',16,49395022),(1851115,'ffffff','2016-05-02 11:37:31',43087879,79623252),(1874109,'ffffff','2016-05-02 11:37:54',43087879,79623252),(1911982,'ffffff','2016-05-02 11:38:31',43087879,79623252),(1928829,'ffffff','2016-05-02 11:38:48',43087879,79623252),(2089487,'what is this !!!!?','2016-05-04 13:41:29',62018508,6),(2094214,'','2016-05-02 11:41:34',43087879,79617142),(2119605,'','2016-05-02 11:41:59',79082635,79131459),(2173852,'','2016-05-02 11:42:53',79082635,79131459),(2188716,'wnta walah Yaaaaaaaaaad','2016-05-04 13:43:08',16,62140747),(2189968,'','2016-05-02 11:43:09',79082635,79131459),(2235256,'','2016-05-02 11:43:55',79082635,77337878),(2317567,'undefined','2016-05-02 11:45:17',79082635,77337878),(2372230,'undefined','2016-05-02 11:46:12',79082635,79131459),(2398982,'undefined','2016-05-02 11:46:38',79082635,79131459),(2406738,'undefined','2016-05-02 11:46:46',79082635,79131459),(2507947,'message','2016-05-02 11:48:27',79082635,79131459),(2735531,'message','2016-05-02 11:52:15',43087879,82731541),(2758168,'message','2016-05-02 11:52:38',43087879,82731541),(2764908,'','2016-05-02 11:52:44',43087879,82731541),(2903816,'','2016-05-02 11:55:03',43087879,82731541),(2916996,'','2016-05-02 11:55:16',43087879,82913548),(2972139,'','2016-05-02 11:56:12',43087879,82913548),(2977797,'d','2016-05-02 11:56:17',43087879,82913548),(3013303,'sss','2016-05-02 11:56:53',43087879,83010202),(3045105,'hahahah','2016-05-02 11:57:25',32244104,83010202),(3065899,'','2016-05-02 11:57:45',32244104,79602065),(3085694,'','2016-05-02 11:58:05',32244104,79602065),(3091435,'xx','2016-05-02 11:58:11',32244104,83010202),(3105010,'','2016-05-02 11:58:25',32244104,82913548),(3160436,'asxss','2016-05-02 11:59:20',32244104,83153214),(3164280,'ass','2016-05-02 11:59:24',32244104,83153214),(3170155,'','2016-05-02 11:59:30',32244104,83010202),(3188597,'','2016-05-02 11:59:48',32244104,76072415),(4084276,'Bug Fixed','2016-05-02 23:21:24',43087879,86913265),(4110901,'hhhhhhhhh','2016-05-02 23:21:50',43087879,86913265),(4213756,'','2016-05-02 12:16:53',32244104,83010202),(4219718,'','2016-05-02 12:16:59',32244104,82913548),(4796766,'Thanks ','2016-05-03 02:19:56',43087879,29745454),(4796841,'Thanks ','2016-05-03 02:19:56',16,29745454),(4933141,'good','2016-05-03 02:22:13',34897092,29745454),(4968007,'hahahah plz make graphics Sheet ya diaa','2016-05-06 22:02:48',16,64792874),(4968329,'g','2016-05-03 02:22:48',34897092,29745454),(4997925,'hiii','2016-05-04 22:49:57',94961018,39973564),(5108978,'hiii','2016-05-06 22:05:08',32244104,62140747),(5472562,'Thanks prof','2016-05-03 02:31:12',19168,4),(5527658,'sd','2016-05-02 12:38:47',43087879,85481045),(5545363,'fffffffffffvdfv','2016-05-02 12:39:05',43087879,85070557),(5683236,'I got it \r\nThanks Again','2016-05-02 23:48:03',43087879,90552353),(5712664,'what is this','2016-05-02 12:41:52',16,5),(5879646,'you can go to the reference like in details page \r\n','2016-05-02 12:44:39',16,85830122),(5903263,'Ok Thanks Eng Muhammed','2016-05-02 12:45:03',43087879,85830122),(5980776,'Yes Mahmoud there is no section tomorrow \r\nMy regards :) ','2016-05-02 12:46:20',16,79131459),(6261369,'Shut Up sayed','2016-05-02 23:57:41',43087879,85495034),(6332435,'So What is That Mean ?! ','2016-05-02 23:58:52',16,3),(6390608,'It Was A testing Post','2016-05-02 23:59:50',17,3),(6640731,'They Will','2016-05-18 06:44:00',5,47427132),(6939694,'It is Empty post y m3lm','2016-05-02 13:02:19',43087879,86913265),(6967552,'I know \r\nfokk b2a :P ','2016-05-02 13:02:47',43087879,86913265),(7012239,'So What about Midterm Degree ??','2016-05-02 13:03:32',32244104,85830122),(7035414,'it is number 5','2016-05-11 08:10:35',46967132,5),(7483348,'I Know You ! :P \r\nYou are the Designer of this site','2016-05-11 08:18:03',17,64792874),(7647943,'hi','2016-05-18 09:47:27',43087879,39403922),(8401584,'Great ','2016-05-18 10:00:01',5,58365777),(8428457,'... Comment','2016-05-18 10:00:28',5,49571590),(8524849,'Thanks .. :) ','2016-05-18 10:02:04',58320078,58365777),(8762515,'hahahaaaaaaa','2016-05-02 13:32:42',32290983,85495034),(9183319,'hahahah','2016-05-16 10:59:43',89132826,94285356),(9193624,'This is an comment','2016-05-03 06:19:53',49060271,49170417),(9216332,'Test Test','2016-05-06 06:33:36',49900491,78892861),(9222007,'.........','2016-05-06 06:33:42',49900491,93700783),(9246892,'haha i liked it very Much','2016-05-03 03:34:06',43087879,39117015),(9275787,'Welcome In Your Group \r\nWe \'re happy For Joining us here','2016-05-03 06:21:15',17,49170417),(9447620,'Thanks DR for Your Support ;) ','2016-05-03 06:24:07',17,6),(9612467,'SO What we Can do about your post !!','2016-05-03 06:26:52',17,49571590),(9706385,'Hii Mohammed \r\n','2016-05-03 06:28:26',17,39973564),(9719662,'Nice','2016-05-03 06:28:39',17,39158428),(9733683,'Great','2016-05-03 06:28:53',17,39117015),(9789137,'Yeah i know :) \r\nthanks','2016-05-03 06:29:49',43087879,49748857),(9847388,'hahahaha \r\nall this During the Test','2016-05-03 06:30:47',43087879,84973642),(9883809,'This comment from local network ','2016-05-17 06:38:03',59777061,93700783);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `commentview`
--

DROP TABLE IF EXISTS `commentview`;
/*!50001 DROP VIEW IF EXISTS `commentview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `commentview` AS SELECT 
 1 AS `commentID`,
 1 AS `commentContent`,
 1 AS `commentDate`,
 1 AS `student`,
 1 AS `postID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `deptID` varchar(45) NOT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  `deptHeadID` int(11) DEFAULT NULL,
  PRIMARY KEY (`deptID`),
  UNIQUE KEY `deptID_UNIQUE` (`deptID`),
  KEY `FK_deptHead_StaffName_idx` (`deptHeadID`),
  CONSTRAINT `FK_deptHead_StaffName` FOREIGN KEY (`deptHeadID`) REFERENCES `staff` (`StaffID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES ('cs','Computer Science',2),('cs|is','CS and IS',0),('cs|is|it','All Departments',0),('cs|it','CS and IT',0),('is','Information System',3),('it','Information Technology',1),('it|is','IT and Is',0),('no','general',0),('or','Operation Research',4);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `details`
--

DROP TABLE IF EXISTS `details`;
/*!50001 DROP VIEW IF EXISTS `details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `details` AS SELECT 
 1 AS `matid`,
 1 AS `materialName`,
 1 AS `description`,
 1 AS `drname`,
 1 AS `hours`,
 1 AS `year`,
 1 AS `deptID`,
 1 AS `term`,
 1 AS `reference`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `humans`
--

DROP TABLE IF EXISTS `humans`;
/*!50001 DROP VIEW IF EXISTS `humans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `humans` AS SELECT 
 1 AS `StaffID`,
 1 AS `id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materials` (
  `matID` int(11) NOT NULL,
  `materialName` varchar(45) DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `staffID` int(11) DEFAULT NULL,
  `hours` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `deptID` varchar(45) DEFAULT NULL,
  `term` varchar(45) DEFAULT NULL,
  `reference` varchar(45) DEFAULT NULL,
  `pic` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`matID`),
  UNIQUE KEY `matID_UNIQUE` (`matID`),
  UNIQUE KEY `materialName_UNIQUE` (`materialName`),
  KEY `FK_dept_idx` (`deptID`),
  CONSTRAINT `FK_dept` FOREIGN KEY (`deptID`) REFERENCES `departments` (`deptID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'Software Engineering 1','This is a foundation subject  in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',5,'3','3','cs|is|it','1','http://goo.gl/Rn3vGR',NULL),(2,'Software Engineering2','Learn about the education and required skills to become a computer applications software engineer. Get a quick view of the requirements as well as details about coursework, job duties and the employment outlook to see if this is the career for you.',5,'3','3','cs','2','http://goo.gl/Rn3vGR',NULL),(3,'database systems1','A database is an organized collection of data.[1] It is the collection of schemas, tables, queries, reports, views and other objects. The data are typically organized to model aspects of reality in a way that supports processes requiring information, such as modelling the availability of rooms in hotels in a way that supports finding a hotel with vacancies.',6,'3','3','cs|is|it','1','http://goo.gl/Rn3vGR',NULL),(4,'Computer Networks1','A computer network or data network is a telecommunications network which allows computers or any other device which can be connected to a network such as smartphones or even smartwatches to exchange data. In computer networks, networked computing devices exchange data with each other using a data link. The connections between nodes are established using either cable media,for example-through optical fibre or wireless media like-wi-fi and wiMAX. The best-known computer network is the Internet.',7,'3','3','cs|is|it','1','http://goo.gl/Rn3vGR',NULL),(5,'Computer Language1','A programming language is a formal constructed language designed to communicate instructions to a machine, particularly a computer. Programming languages can be used to create programs to control the behavior of a machine or to express algorithms.',8,'3','3','cs|is','1','http://goo.gl/Rn3vGR',NULL),(6,'Signals','Digital signal processing (DSP) is the numerical manipulation of signals, usually with the intention to measure, filter, produce or compress continuous analog signals. It is characterized by the use of digital signals to represent these signals as discrete time, discrete frequency, or other discrete domain signals in the form of a sequence of numbers or symbols to permit the digital processing of these signals.',9,'3','3','cs|it','1','http://goo.gl/Rn3vGR',NULL),(7,'modling','This is a foundation subject in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',10,'3','3','is','1','http://goo.gl/Rn3vGR',NULL),(8,'Imagde processing','This is a foundation subject in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',11,'3','3','it','1','http://goo.gl/Rn3vGR',NULL),(9,'Computer Language2','is targeted for the beginning Android developer who wants to start developing applications using Google’s Android SDK. To truly bene? t from this book, you should have some background in programming and at least be familiar with object-oriented programming concepts. If you are totally new to Java — the language used for Android development — you might want to take a programming course in Java programming ? rst, or grab one of many good books on Java programming. In my experience, if you already know C# or VB.NET, learning Java is not too much of an effort; you should be comfortable just following along with the Try It Outs. ',8,'3','3','cs','2','http://goo.gl/Rn3vGR',NULL),(10,'Computer Network2','This is a foundation subject in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',7,'3','3','it','2','http://goo.gl/Rn3vGR',NULL),(11,'Datebase Systems2','This is a foundation subject in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',6,'3','3','is','2','http://goo.gl/Rn3vGR',NULL),(12,'Assembly Language','are platform specific, and therefore there is a different assembly language necessary for programming every different type of computer. Assembly languages generally has a one-to-one correspondence with the underlying machine language, which is not human readable.',12,'3','3','cs','2','http://goo.gl/Rn3vGR',NULL),(13,'Computer Graphics','This subject helps students develop problem solving and communication skills in the context of computer representation, manipulation and display of pictorial information. It also helps students enhance their skills to design and implement three-dimensional (3D) computer images. Topics covered include computer graphics hardware and software systems, affine transformations, graphics viewing pipeline, mathematics essentials for computer graphics, 2D and 3D graphics algorithms, rendering algorithms, and graphics programming using a high level programming language C++ and OpenGL package.',11,'3','3','cs|is','2','http://goo.gl/Rn3vGR',NULL),(14,'pattern','This is a foundation subject in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',13,'3','3','it','2','http://goo.gl/Rn3vGR',NULL),(15,'System analysis2','This is a foundation subject in modern software development techniques for engineering and information technology. The design and development of component-based software (using Java or C# and .NET or any thing)  data structures and algorithms for modeling, analysis, and visualization; basic problem-solving techniques; web services; and the management and maintenance of software. Includes a treatment of topics such as sorting and searching algorithms; and numerical simulation techniques. Foundation for in-depth exploration of image processing, computational geometry, finite element methods, network methods and e-business applications. This course is a core requirement for the Information Technology M. Eng. program.',3,'3','3','is','2','http://goo.gl/Rn3vGR',NULL),(16,'Artificial intelligence','The goal of Artificial Intelligence is to build software systems that behave \"intelligently\". By this, we mean that the computer systems \"do the right thing\" in complex environments--that they act optimally given the limited information and computational resources available. This course provides an introduction to artificial intelligence. We will first study the core topics of knowledge representation, reasoning, and learning, all from the perspective of probabilistic methods. Then we will cover several of the \"subject areas\" of artificial intelligence where these probabilistic methods are applied including Natural Language Processing, Perception (primarily vision), and Robotics.',14,'3','3','cs|is|it','2','http://goo.gl/Rn3vGR','//images//mat//ai.jpg'),(17,'Math1','This is material for year 1 in Mufic',1,'3','1','no','1','http://goo.gl/Rn3vGR',NULL),(18,'Discrete','This is material for year 1 in Mufic',1,'3','1','no','1','http://goo.gl/Rn3vGR',NULL),(19,'Arabic','This is material for year 1 in Mufic',1,'3','1','no','1','http://goo.gl/Rn3vGR',NULL),(20,'Introduction','This is material for year 1 in Mufic',1,'3','1','no','1','http://goo.gl/Rn3vGR',NULL),(21,'Algorithms','This is material for year 1 in Mufic',1,'3','1','no','2','http://goo.gl/Rn3vGR',NULL),(22,'Physics','This is material for year 1 in Mufic',1,'3','1','no','2','http://goo.gl/Rn3vGR',NULL),(23,'Logic1','This is material for year 1 in Mufic',1,'3','1','no','2','http://goo.gl/Rn3vGR',NULL),(24,'Statistics','This is material for year 1 in Mufic',1,'3','1','no','2','http://goo.gl/Rn3vGR',NULL),(25,'baython','This is material for year 1 in Mufic',7,'3','3','it','2','http://goo.gl/Rn3vGR',NULL),(26,'Computer Orgnizaion','This is material for year 1 in Mufic',12,'3','3','it','2','http://goo.gl/Rn3vGR',NULL),(27,'information retrival','This is material for year 1 in Mufic',10,'3','3','is','2','http://goo.gl/Rn3vGR',NULL),(28,'Math2','This is material for year 1 in Mufic',1,'3','1','no','2','http://goo.gl/Rn3vGR',NULL),(29,'English','This is material for year 1 in Mufic',1,'3','1','no','1','http://goo.gl/Rn3vGR',NULL),(30,'MultiMedia','This is material for year 4 in Mufic',1,'3','4','cs|is|it','1','http://goo.gl/Rn3vGR',NULL),(31,'Information Engineering','This is material for year 4 in Mufic',1,'3','4','cs|is|it','1','http://goo.gl/Rn3vGR',NULL),(32,'Information System Design','This is material for year 4 in Mufic',1,'3','4','it|is','1','http://goo.gl/Rn3vGR',NULL),(33,'Computer Vision','This is material for year 4 in Mufic',1,'3','4','it','1','http://goo.gl/Rn3vGR',NULL),(34,'Network Design','This is material for year 4 in Mufic',1,'3','4','it','1','http://goo.gl/Rn3vGR',NULL),(35,'Operating System 2','This is material for year 4 in Mufic',1,'3','4','cs','1','http://goo.gl/Rn3vGR',NULL),(36,'Develope Experiecned Systems','This is material for year 4 in Mufic',1,'3','4','is','1','http://goo.gl/Rn3vGR',NULL),(37,'Knowledge Base Systems','This is material for year 4 in Mufic',1,'3','4','cs','1','http://goo.gl/Rn3vGR',NULL),(38,'Computer Learning','This is material for year 4 in Mufic',1,'3','4','cs','1','http://goo.gl/Rn3vGR',NULL),(39,'Advanced Database Systems','This is material for year 4 in Mufic',1,'3','4','is','1','http://goo.gl/Rn3vGR',NULL),(40,'Virtual Reality','This is material for year 4 in Mufic',1,'3','4','it','2','http://goo.gl/Rn3vGR',NULL),(41,'compiler','This is material for year 4 in Mufic',1,'3','4','cs','2','http://goo.gl/Rn3vGR',NULL),(42,'Distributd datebase systems','This is material for year 4 in Mufic',1,'3','4','is','2','http://goo.gl/Rn3vGR',NULL),(43,'Geographic information Systems','This is material for year 4 in Mufic',1,'3','4','cs|is','2','http://goo.gl/Rn3vGR',NULL),(44,'Speech Recognition','This is material for year 4 in Mufic',1,'3','4','it','2','http://goo.gl/Rn3vGR',NULL),(45,'Distributed Systems','This is material for year 4 in Mufic',1,'3','4','cs','2','http://goo.gl/Rn3vGR',NULL),(46,'Information System Management','This is material for year 4 in Mufic',1,'3','4','is','2','http://goo.gl/Rn3vGR',NULL),(47,'Digital Networks','This is material for year 4 in Mufic',1,'3','4','it','2','http://goo.gl/Rn3vGR',NULL),(48,'Network information','This is material for year 4 in Mufic',1,'3','4','it|is','2','http://goo.gl/Rn3vGR',NULL),(49,'Language Processing','This is material for year 4 in Mufic',1,'3','4','cs','2','http://goo.gl/Rn3vGR',NULL),(50,'Project','This is material for year 4 in Mufic',1,'3','4','cs|is|it','2','http://goo.gl/Rn3vGR',NULL),(51,'Data Structures','This is materials for year 4 in Mufic',15,'3','2','no','1','http://goo.gl/Rn3vGR',NULL),(52,'Computer Language 2','This is materials for year 4 in Mufic',15,'3','2','no','1','http://goo.gl/Rn3vGR',NULL),(53,'Computer Prepherals','This is materials for year 4 in Mufic',15,'3','2','no','1','http://goo.gl/Rn3vGR',NULL),(54,'Logic 2','This is materials for year 4 in Mufic',15,'3','2','no','1','http://goo.gl/Rn3vGR',NULL),(55,'Computer Organization','This is materials for year 4 in Mufic',15,'3','2','no','1','http://goo.gl/Rn3vGR',NULL),(56,'Operation Research','This is materials for year 4 in Mufic',15,'3','2','no','2','http://goo.gl/Rn3vGR',NULL),(57,'Statistical Methods','This is materials for year 4 in Mufic',15,'3','2','no','2','http://goo.gl/Rn3vGR',NULL),(58,'System Analysis','This is materials for year 4 in Mufic',15,'3','2','no','2','http://goo.gl/Rn3vGR',NULL),(59,'Operating System','This is materials for year 4 in Mufic',15,'3','2','no','2','http://goo.gl/Rn3vGR',NULL),(60,'File Structures','This is materials for year 4 in Mufic',15,'3','2','no','2','http://goo.gl/Rn3vGR',NULL);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialsslides`
--

DROP TABLE IF EXISTS `materialsslides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialsslides` (
  `matID` int(11) NOT NULL,
  `SlideName` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `SlideLink` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `SlideDate` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `SlideID` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`SlideID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialsslides`
--

LOCK TABLES `materialsslides` WRITE;
/*!40000 ALTER TABLE `materialsslides` DISABLE KEYS */;
INSERT INTO `materialsslides` VALUES (1,'SE-LEC1','http://goo.gl/Rn3vGR','2016-04-25 22:08:15','1'),(2,'SE2-LEC1','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','10'),(2,'SE2-LEC2','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','11'),(2,'SE2-LEC3','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','12'),(2,'SE2-LEC4','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','13'),(2,'SE2-LEC5','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','14'),(2,'SE2-LEC6','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','15'),(2,'SE2-LEC7','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','16'),(2,'SE2-LEC8','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','17'),(2,'SE2-LEC9','http://goo.gl/Rn3vGR','2016-04-25 22:09:21','18'),(1,'SE-LEC2','http://goo.gl/Rn3vGR','2016-04-25 22:08:15','2'),(1,'SE-LEC3','http://goo.gl/Rn3vGR','2016-04-25 22:08:15','3'),(1,'SE-LEC4','http://goo.gl/Rn3vGR','2016-04-25 22:08:15','4'),(1,'SE-LEC5','http://goo.gl/Rn3vGR','2016-04-25 22:08:16','5'),(1,'SE-LEC6','http://goo.gl/Rn3vGR','2016-04-25 22:08:16','6'),(1,'SE-LEC7','http://goo.gl/Rn3vGR','2016-04-25 22:08:16','7'),(1,'SE-LEC8','http://goo.gl/Rn3vGR','2016-04-25 22:08:16','8'),(1,'SE-LEC9','http://goo.gl/Rn3vGR','2016-04-25 22:08:16','9');
/*!40000 ALTER TABLE `materialsslides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialsslides2`
--

DROP TABLE IF EXISTS `materialsslides2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialsslides2` (
  `matID` int(11) NOT NULL,
  `SlideName` varchar(45) DEFAULT NULL,
  `SlideLink` varchar(45) DEFAULT NULL,
  `SlideDate` timestamp NULL DEFAULT NULL,
  `SlideID` varchar(45) DEFAULT NULL,
  KEY `FK_Slides_idx` (`matID`),
  CONSTRAINT `Slides` FOREIGN KEY (`matID`) REFERENCES `materials` (`matID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialsslides2`
--

LOCK TABLES `materialsslides2` WRITE;
/*!40000 ALTER TABLE `materialsslides2` DISABLE KEYS */;
INSERT INTO `materialsslides2` VALUES (1,'SE-LEC1','http://goo.gl/Rn3vGR','2016-04-25 20:08:15','8'),(1,'SE-LEC2','http://goo.gl/Rn3vGR','2016-04-25 20:08:15','8'),(1,'SE-LEC3','http://goo.gl/Rn3vGR','2016-04-25 20:08:15','8'),(1,'SE-LEC4','http://goo.gl/Rn3vGR','2016-04-25 20:08:15','8'),(1,'SE-LEC5','http://goo.gl/Rn3vGR','2016-04-25 20:08:16','8'),(1,'SE-LEC6','http://goo.gl/Rn3vGR','2016-04-25 20:08:16','8'),(1,'SE-LEC7','http://goo.gl/Rn3vGR','2016-04-25 20:08:16','8'),(1,'SE-LEC8','http://goo.gl/Rn3vGR','2016-04-25 20:08:16','8'),(1,'SE-LEC9','http://goo.gl/Rn3vGR','2016-04-25 20:08:16','8'),(2,'SE2-LEC1','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC2','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC3','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC4','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC5','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC6','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC7','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC8','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17'),(2,'SE2-LEC9','http://goo.gl/Rn3vGR','2016-04-25 20:09:21','17');
/*!40000 ALTER TABLE `materialsslides2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `postID` int(11) NOT NULL,
  `postContent` varchar(800) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `postDate` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `year` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `dept` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `WriterID` int(11) DEFAULT NULL,
  PRIMARY KEY (`postID`),
  UNIQUE KEY `postID_UNIQUE` (`postID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Please Contact me later i\'m busy','11/11/1994','3','cs',11933),(3,'33333333333333333333','1/5','3','is',14),(4,'44444444444444444','1/6/2011','3','is',13),(5,'555555555555555555555555555555555','5/5/2015','2','no',11933),(6,'666666666666666','1/4/2014','3','it',2),(8,'ggggggggggg','2016-05-02 09:19:56','3','cs',11933),(24385422,'','2016-05-02 23:26:25','3','cs',43087879),(24456447,'','2016-05-02 23:27:36','3','cs',43087879),(24578267,'posting','2016-05-02 23:29:38','3','cs',43087879),(24582320,'','2016-05-02 23:29:42','3','cs',43087879),(24842026,'                                                                           ','2016-05-02 23:34:02','3','cs',43087879),(24915132,'','2016-05-02 23:35:15','3','cs',43087879),(25005771,'','2016-05-02 23:36:45','3','cs',43087879),(25533458,' ','2016-05-02 23:45:33','3','cs',43087879),(29745454,'This is a post for 4th year ','2016-05-03 00:55:45','4','cs',16),(39117015,'<h1>This Is<strong> MY First Post</strong> Using Posting Tool&nbsp;<img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></h1>\r\n','2016-05-03 03:31:57','3','cs',43087879),(39158428,'<h1>Sample Text</h1>\r\n','2016-05-03 03:32:38','3','cs',43087879),(39403922,'<p>f;ogk d[</p>\r\n\r\n<p>df&nbsp;</p>\r\n\r\n<p>pdf</p>\r\n\r\n<p>&nbsp;gpds</p>\r\n\r\n<p>f gp</p>\r\n\r\n<p>dsf pg</p>\r\n\r\n<p>df gp</p>\r\n\r\n<p>sd&nbsp;</p>\r\n','2016-05-03 03:36:43','3','cs',43087879),(39973564,'<p>HIII &nbsp;There&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>My Name Is mohamed Khaskia ,, i&#39;m new here&nbsp;</p>\r\n</blockquote>\r\n\r\n<p style=\"text-align: center;\">Good Mornning Every&nbsp;body&nbsp;<img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" />&nbsp;</p>\r\n','2016-05-03 03:46:13','3','cs',43087879),(40344780,'<h2 style=\"font-style:italic;\">Tomorrow I hope Every One Can bring his laptop&nbsp;<img alt=\"smiley\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" />&nbsp;.</h2>\r\n\r\n<hr />\r\n<p style=\"font-style: italic;\">&nbsp;Thanks</p>\r\n','2016-05-03 03:52:24','2','no',17),(41000777,'<blockquote>\r\n<p><img alt=\"\" src=\"https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-xpt1/v/t1.0-9/13103349_1095556533842907_4901904182820783439_n.jpg?oh=5c995871a94909fb2cdbbbbfe1c2179e&amp;oe=57E4B689&amp;__gda__=1471008265_4d8fef87a9d8ac7c8e226126349d535e\" style=\"height:110px; width:110px\" />this is My Pic&nbsp;</p>\r\n</blockquote>\r\n','2016-05-03 04:03:20','2','no',17),(47092240,'<h1><span style=\"font-family:comic sans ms,cursive\"><span style=\"font-size:24px\">Hiiii&nbsp;</span></span></h1>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\"><span style=\"font-size:24px\">How Are You !! ?<img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></span></span></p>\r\n','2016-05-11 08:11:32','2','no',46967132),(47427132,'<h1><span style=\"font-family:comic sans ms,cursive\">Welcome</span></h1>\r\n\r\n<h1><span style=\"font-family:comic sans ms,cursive\">Every body in this group Must Attend The Event Tomorrow</span></h1>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\"><img alt=\"we\" src=\"images/new1.jpg\" style=\"height:200px; width:200px\" /><img alt=\"\" src=\"images/new4.jpg\" style=\"height:200px; width:200px\" /></span></p>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\">My Regards ,</span></p>\r\n\r\n<p><span style=\"font-family:comic sans ms,cursive\">Mohamed Khaskia</span></p>\r\n','2016-05-11 08:17:07','3','cs',17),(49170417,'<blockquote>\r\n<h2><span style=\"font-family:comic sans ms,cursive\">This is My First Post In 4 It Group&nbsp;</span><img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></h2>\r\n</blockquote>\r\n\r\n<p>Thank you for this Trust&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n','2016-05-03 06:19:30','4','it',49060271),(49395022,'<p><span style=\"font-size:20px; line-height:32px\">we have a section tomorrow morning at 9 Am&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:20px; line-height:32px\">all sheet Solving&nbsp;</span></li>\r\n	<li><span style=\"font-size:20px; line-height:32px\">All Materials Giving&nbsp;</span></li>\r\n</ul>\r\n\r\n<p>Thanks</p>\r\n\r\n<p>&nbsp;</p>\r\n','2016-05-03 06:23:15','4','it',17),(49571590,'<h2><span style=\"font-family:comic sans ms,cursive\">This is my post :)&nbsp;</span></h2>\r\n','2016-05-03 06:26:11','4','is',49540328),(49748857,'<h1><span style=\"font-family:comic sans ms,cursive\">Amazing Tool</span></h1>\r\n','2016-05-03 06:29:08','3','cs',17),(58365777,'<p><span style=\"font-size:36px\">Posting System Like FaceBook Groups&nbsp;</span></p>\r\n','2016-05-18 09:59:25','3','cs',58320078),(58549151,'<p><span style=\"font-size:20px\"><span style=\"font-family:comic sans ms,cursive\">Another Post&nbsp;<img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></span></span></p>\r\n','2016-05-18 10:02:29','3','cs',58320078),(62140747,'<h1><span style=\"font-family:comic sans ms,cursive\">hiii Every one&nbsp;</span></h1>\r\n\r\n<h1><span style=\"font-family:comic sans ms,cursive\">bokra sara htedena EEEEEEEEEEEEEEEEEEEEEEEEH<img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></span></h1>\r\n','2016-05-04 13:42:20','3','it',62018508),(62917014,'<h1 style=\"font-style: italic; \">Hiii&nbsp;</h1>\r\n\r\n<p>&nbsp;</p>\r\n','2016-05-17 07:28:37','1','no',59777061),(64792874,'<h2><span style=\"font-family:comic sans ms,cursive\">ana Diaa FCI 3 Cs</span></h2>\r\n','2016-05-06 21:59:52','3','cs',32244104),(74924175,NULL,'2016-05-02 09:42:04','3','cs',32290983),(75446238,NULL,'2016-05-02 09:50:46','3','cs',32290983),(75581935,NULL,'2016-05-02 09:53:01','3','cs',32290983),(75682075,'Another','2016-05-02 09:54:42','3','cs',32290983),(75857334,'asdasd','2016-05-02 09:57:37','3','cs',32290983),(76072415,'again o','2016-05-02 10:01:12','3','cs',32290983),(76141946,'again o','2016-05-02 10:02:21','3','cs',32290983),(76149160,'zxczx','2016-05-02 10:02:29','3','cs',32290983),(76206467,'asd','2016-05-02 10:03:26','3','cs',32290983),(76423516,'asas','2016-05-02 10:07:03','3','cs',32290983),(76570471,'asas','2016-05-02 10:09:30','3','cs',32290983),(76656710,'s','2016-05-02 10:10:56','3','cs',32290983),(76711848,'sssssssssssssss','2016-05-02 10:11:51','3','cs',43087879),(76872642,'ssssssssssssssssssssssssss','2016-05-02 10:14:32','3','cs',43087879),(76975285,'asdas','2016-05-02 10:16:15','3','cs',43087879),(77023961,'sdcsdcsdcsdccccccccccccccccccc','2016-05-02 10:17:03','3','cs',43087879),(77056945,'aaaaa','2016-05-02 10:17:36','3','cs',43087879),(77337878,'hiii','2016-05-02 10:22:17','1','no',16),(77357961,'sd','2016-05-02 10:22:37','3','cs',43087879),(77494059,'asas','2016-05-02 10:24:54','1','no',16),(78077849,'sd','2016-05-02 10:34:37','3','cs',43087879),(78092578,'sd','2016-05-02 10:34:52','1','no',16),(78148695,'d','2016-05-02 10:35:48','1','no',16),(78515233,'NO Section Tomorrow','2016-05-02 10:41:55','3','cs',16),(78540603,'Thanks but why','2016-05-02 10:42:20','3','cs',43087879),(78839680,'ddddddddddddd','2016-05-02 10:47:19','1','no',16),(78852692,'666666','2016-05-02 10:47:32','1','no',16),(78892861,'asss','2016-05-02 10:48:12','1','no',16),(79030549,'asdasd','2016-05-02 10:50:30','1','no',16),(79131459,'No Secton Tomorrow :P ','2016-05-02 10:52:11','1','no',79082635),(79492135,NULL,'2016-05-02 10:58:12','3','cs',43087879),(79557027,NULL,'2016-05-02 10:59:17','3','cs',43087879),(79602065,NULL,'2016-05-02 11:00:02','3','cs',43087879),(79617142,NULL,'2016-05-02 11:00:17','3','cs',43087879),(79623252,NULL,'2016-05-02 11:00:23','3','cs',43087879),(82731541,'hiiiii','2016-05-02 11:52:11','3','cs',43087879),(82913548,'ss','2016-05-02 11:55:13','3','cs',43087879),(83010202,'as','2016-05-02 11:56:50','3','cs',43087879),(83153214,'sssssssssssssssssssssssssssssssssssssssssssssssss','2016-05-02 11:59:13','3','cs',32244104),(84915089,NULL,'2016-05-02 12:28:35','3','cs',32244104),(84952340,'d','2016-05-02 12:29:12','3','cs',32244104),(84955696,NULL,'2016-05-02 12:29:15','3','cs',32244104),(84967228,'xasxasxasx','2016-05-02 12:29:27','3','cs',32244104),(84973642,NULL,'2016-05-02 12:29:33','3','cs',32244104),(85067589,'sdcsssssssssssssss','2016-05-02 12:31:07','3','cs',43087879),(85070557,NULL,'2016-05-02 12:31:10','3','cs',43087879),(85481045,NULL,'2016-05-02 12:38:01','3','cs',43087879),(85495034,NULL,'2016-05-02 12:38:15','3','cs',43087879),(85696525,'sdf','2016-05-02 12:41:36','1','no',16),(85830122,'hiii how can i get the lectures for the SE2','2016-05-02 12:43:50','3','cs',43087879),(86913265,'','2016-05-02 13:01:53','3','cs',43087879),(89164166,'<h1><span style=\"font-family:comic sans ms,cursive\">This Is A Post</span></h1>\r\n','2016-05-16 10:59:24','2','no',89132826),(90552353,'Please Can any one give me the last lecture of SE2 ?','2016-05-02 14:02:32','3','cs',90479764),(90764385,'Whesdfom \'lasmf;linw aenfwapefa','2016-05-02 14:06:04','2','no',90738689),(90787382,'..................................','2016-05-02 14:06:27','2','no',90738689),(92671505,'<p style=\"text-align: right;\">.........................</p>\r\n','2016-05-04 22:11:11','4','or',16),(93629643,'<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n','2016-05-04 22:27:09','1','no',17),(93700783,'<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n\r\n<p>.</p>\r\n','2016-05-04 22:28:20','1','no',17),(94285356,'<p><input name=\"buttin\" type=\"button\" value=\"this is button\" /></p>\r\n','2016-05-04 22:38:05','2','no',17),(96367099,'<p><span style=\"font-size:72px\">This is My Post&nbsp;</span><img alt=\"heart\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/heart.png\" style=\"height:50px; width:50px\" title=\"heart\" />&nbsp;<img alt=\"laugh\" src=\"http://localhost:8084/msp/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></p>\r\n','2016-05-04 23:12:47','3','cs',43087879);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `postview`
--

DROP TABLE IF EXISTS `postview`;
/*!50001 DROP VIEW IF EXISTS `postview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `postview` AS SELECT 
 1 AS `postID`,
 1 AS `postContent`,
 1 AS `postDate`,
 1 AS `year`,
 1 AS `dept`,
 1 AS `student`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `au` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE KEY `StaffID_UNIQUE` (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL),(1,'khaled ','ahmed','it head',NULL,NULL,'dr'),(2,'hamdy ','mousa','cs head',NULL,NULL,'dr'),(3,'hatem','mohamed','is head',NULL,NULL,'dr'),(4,'osama','abdelraoof','or head',NULL,NULL,'dr'),(5,'mohamed','shams','teacher','shams@shams.com','123','dr'),(6,'rashad','ahmed','teacher',NULL,NULL,'dr'),(7,'ahmed ','hamad','teacher',NULL,NULL,'dr'),(8,'waled','saed','teacher',NULL,NULL,'dr'),(9,'mena','ibrahem','teacher',NULL,NULL,'dr'),(10,'read','mabrouk','teacher',NULL,NULL,'dr'),(11,'nora','elsemary','teacher',NULL,NULL,'dr'),(12,'anas','ibraheem','teacher',NULL,NULL,'dr'),(13,'pattern','prof','teacher',NULL,NULL,'dr'),(14,'Heba ','ahmed','teacher',NULL,NULL,'dr'),(15,'Arabi ','keshk','Dean',NULL,NULL,'dr'),(16,'mohamed ','dahy','assestant','dahy@dahy.com','123','as'),(17,'mohamed','gaber','assestant','gaber@gaber.com','123','as'),(18,'khaled','ahmed','editor','khaled@khaled.com','123','ed'),(19,'mohamed','hamed','assestant','enghamed@hamed.com','123','as'),(20,'hamada','mohamed','assestant','enghamada@hamada.com','123','as');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `studentID` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `yearID` varchar(45) DEFAULT NULL,
  `deptID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentID_UNIQUE` (`studentID`),
  KEY `FK_deptID_idx` (`deptID`),
  CONSTRAINT `FK_deptID` FOREIGN KEY (`deptID`) REFERENCES `departments` (`deptID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (0,NULL,NULL,NULL,NULL,NULL,NULL),(1,'khaled ','ahmed',NULL,NULL,NULL,NULL),(2,'hamdy ','mousa',NULL,NULL,NULL,NULL),(3,'hatem','mohamed',NULL,NULL,NULL,NULL),(4,'osama','abdelraoof',NULL,NULL,NULL,NULL),(5,'Mohamed','Shams',NULL,NULL,NULL,NULL),(6,'rashad','ahmed',NULL,NULL,NULL,NULL),(7,'ahmed ','hamad',NULL,NULL,NULL,NULL),(8,'waled','saed',NULL,NULL,NULL,NULL),(9,'mena','ibrahem',NULL,NULL,NULL,NULL),(10,'read','mabrouk',NULL,NULL,NULL,NULL),(11,'nora','elsemary',NULL,NULL,NULL,NULL),(12,'anas','ibraheem',NULL,NULL,NULL,NULL),(13,'pattern','prof',NULL,NULL,NULL,NULL),(14,'Heba ','ahmed',NULL,NULL,NULL,NULL),(15,'Arabi ','keshk',NULL,NULL,NULL,NULL),(16,'mohamed ','dahy',NULL,NULL,NULL,NULL),(17,'mohamed','gaber',NULL,NULL,NULL,NULL),(18,'khaled','ahmed',NULL,NULL,NULL,NULL),(19,'Mohamed ','Hamed',NULL,NULL,NULL,NULL),(20,'Hamada','Mohamed',NULL,NULL,NULL,NULL),(11933,'mohamed ','ali','4@4.com','1','1','no'),(18137,'ahed','asd','mohameddalik94@hotmail.com','m','1','no'),(19168,'hager','elsayed','hager@hager.com','1','3','is'),(21438,'ahmed ','Younes','y@y.com','1','3','cs'),(26986,'amira','elsayed','amira@gmail.com','123456','2','no'),(30714,'sayed ','ahmed','sayedahmed@gmail.com','1','3','cs'),(31344,'ahmed ','essam','ahmedessam@ahmed.com','1','3','it'),(36444,'mohamed','khaskia','mohamedalik94a@hotmail.com','a','1','no'),(37441,'mohamed','kamal','mohamedalik944@hotmail.com','1','4','or'),(39120,'mohamed ','Abu salah','abusalah@yahoo.com','1','3','cs'),(46185,'mohamed','khaskia','mohamedalik94@hotmail.coma','a','3','it'),(49904,'mohamed','khaskia','mohamedaliwedk94@hotmail.com','123','3','cs'),(53180,'l','l@l.com','l@l.com','1','1','no'),(54450,'Mohamed Ali','Khaskia','mohamedalik555@gmail.com','1','3','it'),(56006,'mohamed','khaskia','mohamedalik94d@hotmail.com','d','4','cs'),(58695,'mohamed ali','khaskia','mohamedalik88@gmail.com','200','3','cs'),(58870,'ahmed','gamel','ahmed@yahoo.com','00','3','is'),(60414,'mohamed','khaskia','mohamedalik9114@hotmail.com','1','4','cs'),(63231,'mohamed','khaskia','mohamedalik55@gmail.com','1','3','cs'),(64954,'mohamed','khaskia','mohamedalika94@hotmail.com','a','3','cs'),(71095,'ibraheem','ghaly','g@g.com','1','1','no'),(71739,'ahmed','ali','ahmedali@mmm.com','1','1','no'),(77643,'khaskia','khaskia','khaskia1@gmail.com','1','2','no'),(83217,'ahmed','ali','ali@cli.com','1','1','no'),(86489,'santos','Elareef','islame@santos.com','1','2','no'),(88764,'mohamed','khaskia','mohamedaliccxk94@hotmail.com','a','4','is'),(91795,'mohamed ali','khaskia','mo884@yahoo.com','1','3','cs'),(93757,'Sara','Ahmed','sara@sara.com','1','3','is'),(97361,'kjv','k,hsdkn','gshvd@kjnckv.com','1','3','cs'),(97861,'عصام','mohamed','essam@yahoo.com','1','3','is'),(97866,'خسكية','khaskia','55@55.com','1','1','is'),(633325,'ahmed ','khaskia',NULL,NULL,NULL,NULL),(976866,'محماااااد','khaskia','55@55.com','1','1','is'),(11918003,'5','5','4@4.com44444','2','1','no'),(12336534,'khaskia','Ahmed','1@1','1','1','no'),(12719767,'4','4','4@4.com459','1','1','no'),(32244104,'Diaa','Ibraheem','diaa@diaa.com','1','3','it'),(32272420,'khaskia','khaskia','khaskia@khaskia.com','1','3','cs'),(32290983,'sayed','ahmed','sayed@sayed.com','1','3','cs'),(32314767,'marwa','marwa','marwa@marwa.com','1','3','cs'),(32332063,'Aya','aya','aya@aya.com','1','3','cs'),(34311751,'Ahmed','khaskia','ahmedali@khaskia.com','123456789','1','no'),(34897092,'4','4','44@4.com','1','4','cs'),(43087879,'mohamed','khaskia','mohamedalik94@hotmail.com','1','3','cs'),(46967132,'Mohamed','Kamal','Mohamedkamal@gmail.com','123456','2','no'),(49060271,'Asmaa','ahmed','asmaa@samaa.com','1','4','it'),(49540328,'kamal ','ali','kamal@kamal.com','1','4','is'),(58320078,'Mohamed','Khaskia','mohamed123@yahoo.coma','123','3','cs'),(59456928,'mohamed','ali','mo88d4@yahoo.com','123','4','cs'),(59656704,'ahmed','ali','moamsd@aosdmasd.com','mm','2','no'),(59777061,'mohamed','ali','mo884@yahoo.comp','zz','1','no'),(60490558,'mohamed ali','khaskia','mohamedalik94@gmail.com','123','3','is'),(62018508,'Muhammad','salah','salah@salah.com','123','3','it'),(68238487,'mo','mo','nn@nn.com','1','3','cs'),(70450873,'Islam','ibraheem','diaa@diaa.com1','123','3','cs'),(79082635,'mahmoud','ata','1@1.com','1','1','no'),(88464680,'Mohamed','Mabrouk','mabrouk@mab.com','000','3','cs'),(89132826,'Mohamed ','Salah','mohaed@salah.com','111','2','no'),(90479764,'Mohamed ','khaskia','mohamedalik944444@hotmail.com','123456','3','cs'),(90806173,'Ali','ahmed','ali@ali.com','1','4','cs'),(94961018,'mohamed','ali','mohamedalik@gmail.com','123','3','cs');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `commentview`
--

/*!50001 DROP VIEW IF EXISTS `commentview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `commentview` AS select `comment`.`commentID` AS `commentID`,`comment`.`commentContent` AS `commentContent`,`comment`.`commentDate` AS `commentDate`,concat(`students`.`fname`,' ',`students`.`lname`) AS `student`,`comment`.`postID` AS `postID` from (`comment` join `students`) where (`comment`.`WriterID` = `students`.`studentID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `details`
--

/*!50001 DROP VIEW IF EXISTS `details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `details` AS select `m`.`matID` AS `matid`,`m`.`materialName` AS `materialName`,`m`.`description` AS `description`,concat(`s`.`fname`,' ',`s`.`lname`) AS `drname`,`m`.`hours` AS `hours`,`m`.`year` AS `year`,`m`.`deptID` AS `deptID`,`m`.`term` AS `term`,`m`.`reference` AS `reference` from (`materials` `m` join `staff` `s`) where (`s`.`StaffID` = `m`.`staffID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `humans`
--

/*!50001 DROP VIEW IF EXISTS `humans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `humans` AS select `staff`.`StaffID` AS `StaffID`,`students`.`studentID` AS `id` from (`students` join `staff`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `postview`
--

/*!50001 DROP VIEW IF EXISTS `postview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `postview` AS select `p`.`postID` AS `postID`,`p`.`postContent` AS `postContent`,`p`.`postDate` AS `postDate`,`p`.`year` AS `year`,`p`.`dept` AS `dept`,concat(`s`.`fname`,' ',`s`.`lname`) AS `student` from (`post` `p` join `students` `s`) where (`p`.`WriterID` = `s`.`studentID`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-18 20:28:13
