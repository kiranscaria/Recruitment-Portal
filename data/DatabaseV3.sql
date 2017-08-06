-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: recruitmentdatabase
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Dumping data for table `advertisement_table`
--

LOCK TABLES `advertisement_table` WRITE;
/*!40000 ALTER TABLE `advertisement_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertisement_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_ii`
--

LOCK TABLES `api_data_ii` WRITE;
/*!40000 ALTER TABLE `api_data_ii` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_data_ii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_iii_a`
--

LOCK TABLES `api_data_iii_a` WRITE;
/*!40000 ALTER TABLE `api_data_iii_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_data_iii_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_iii_b`
--

LOCK TABLES `api_data_iii_b` WRITE;
/*!40000 ALTER TABLE `api_data_iii_b` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_data_iii_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_iii_c`
--

LOCK TABLES `api_data_iii_c` WRITE;
/*!40000 ALTER TABLE `api_data_iii_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_data_iii_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_iii_d`
--

LOCK TABLES `api_data_iii_d` WRITE;
/*!40000 ALTER TABLE `api_data_iii_d` DISABLE KEYS */;
INSERT INTO `api_data_iii_d` VALUES (20170001,'No of MPhil candidates awarded degree',5,25),(20170002,'No of MPhil candidates awarded degree',2,10),(20170003,'No of MPhil candidates awarded degree',4,0);
/*!40000 ALTER TABLE `api_data_iii_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_iii_e`
--

LOCK TABLES `api_data_iii_e` WRITE;
/*!40000 ALTER TABLE `api_data_iii_e` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_data_iii_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_data_iii_f`
--

LOCK TABLES `api_data_iii_f` WRITE;
/*!40000 ALTER TABLE `api_data_iii_f` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_data_iii_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_part_iii_a`
--

LOCK TABLES `api_part_iii_a` WRITE;
/*!40000 ALTER TABLE `api_part_iii_a` DISABLE KEYS */;
INSERT INTO `api_part_iii_a` VALUES (1,'Single Authors','10 or Above',50),(2,'Multiple Authors','10 or Above',35),(3,'Rest of Authors','10 or Above',15),(4,'Single Authors','b/w 5 to 10',45),(5,'Multiple Authors','b/w 5 to 10',32),(6,'Rest of Authors','b/w 5 to 10',14),(7,'Single Authors','b/w 2 to 5',40),(8,'Multiple Authors','b/w 2 to 5',28),(9,'Rest of Authors','b/w 2 to 5',12),(10,'Single Authors','b/w 1 to 2',35),(11,'Multiple Authors','b/w 1 to 2',25),(12,'Rest of Authors','b/w 1 to 2',11),(13,'Single Authors','Less than 1',30),(14,'Multiple Authors','Less than 1',21),(15,'Rest of Authors','Less than 1',9),(16,'Single Authors','Without Impact Factor',25),(17,'Multiple Authors','Without Impact Factor',18),(18,'Rest of Authors','Without Impact Factor',8),(19,'Single Authors','Other reputed Journals',10),(20,'Multiple Authors','Other reputed Journals',7),(21,'Rest of Authors','Other reputed Journals',3);
/*!40000 ALTER TABLE `api_part_iii_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_part_iii_b`
--

LOCK TABLES `api_part_iii_b` WRITE;
/*!40000 ALTER TABLE `api_part_iii_b` DISABLE KEYS */;
INSERT INTO `api_part_iii_b` VALUES (1,'Text/Reference Book','International','Single Authors',30),(2,'Text/Reference Book','International','First Authors',21),(3,'Text/Reference Book','International','Rest of Authors',9),(4,'Subject Book','National ','Single Authors',20),(5,'Subject Book','National ','First Authors',14),(6,'Subject Book','National ','Rest of Authors',6),(7,'Subject Book','Local','Single Authors',15),(8,'Subject Book','Local','First Authors',11),(9,'Subject Book','Local','Rest of Authors',5),(10,'Chapter in Books','International','Single Authors',10),(11,'Chapter in Books','International','First Authors',7),(12,'Chapter in Books','International','Rest of Authors',3),(13,'Chapter in Books','National ','Single Authors',5),(14,'Chapter in Books','National ','First Authors',4),(15,'Chapter in Books','National ','Rest of Authors',2);
/*!40000 ALTER TABLE `api_part_iii_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_part_iii_c`
--

LOCK TABLES `api_part_iii_c` WRITE;
/*!40000 ALTER TABLE `api_part_iii_c` DISABLE KEYS */;
INSERT INTO `api_part_iii_c` VALUES (1,'Sponsored','Grants above Rs 5 Lakhs for Non-Science Disciplines',20),(2,'Sponsored','Grants above Rs 30 Lakhs for Science Disciplines',20),(3,'Sponsored','Grant Rs 3-5 Lakhs for Non-Science Disciplines',15),(4,'Sponsored','Grant Rs 5-30 Lakhs for Science Disciplines',15),(5,'Sponsored','Grant Rs 1-3 Lakhs for Non-Science Disciplines',10),(6,'Sponsored','Grant Rs 1-5 Lakhs for Science Disciplines',10),(7,'Consultancy','Amount Mobilised with minimum of Rs 2 Lakhs for Non-Science Disciplines',10),(8,'Consultancy','Amount Mobilised with minimum of Rs 10 Lakhs for Science Disciplines',10),(9,'Project Outcome','Patent/technology transfer/Product/Process for Science At International Level',30),(10,'Project Outcome','Major Policy Document of Government Bodies for Non-Science At International Level',30),(11,'Project Outcome','Patent/technology transfer/Product/Process for Science for Central Government',20),(12,'Project Outcome','Patent/technology transfer/Product/Process for Science for State Government',10),(13,'Project Outcome','Patent/technology transfer/Product/Process for Science for Local Bodies',5),(14,'Project Outcome','Major Policy Document of Government Bodies for Non-Science for Central Government',20),(15,'Project Outcome','Major Policy Document of Government Bodies for Non-Science for State Government',10),(16,'Project Outcome','Major Policy Document of Government Bodies for Non-Science for Local Bodies',5);
/*!40000 ALTER TABLE `api_part_iii_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_part_iii_d`
--

LOCK TABLES `api_part_iii_d` WRITE;
/*!40000 ALTER TABLE `api_part_iii_d` DISABLE KEYS */;
INSERT INTO `api_part_iii_d` VALUES (1,'No of MPhil candidates awarded degree',5),(2,'No of PhD candidates awarded degrees',15),(3,'No of PhD Thesis submitted but yet not awarded degree',10);
/*!40000 ALTER TABLE `api_part_iii_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_part_iii_e`
--

LOCK TABLES `api_part_iii_e` WRITE;
/*!40000 ALTER TABLE `api_part_iii_e` DISABLE KEYS */;
INSERT INTO `api_part_iii_e` VALUES (1,'Fellowship And Awards','International','NULL',15),(2,'Fellowship And Awards','National','NULL',10),(3,'Fellowship And Awards','State or University','NULL',5),(4,'Invited lectures or papers delivered in Conferences or Seminars','International','Presentation',5),(5,'Invited lectures or papers delivered in Conferences or Seminars','International','Lecture',7),(6,'Invited lectures or papers delivered in Conferences or Seminars','National','Presentation',3),(7,'Invited lectures or papers delivered in Conferences or Seminars','National','Lecture',5),(8,'Invited lectures or papers delivered in Conferences or Seminars','State or University','Presentation',2),(9,'Invited lectures or papers delivered in Conferences or Seminars','State or University','Lecture',3);
/*!40000 ALTER TABLE `api_part_iii_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `api_part_iii_f`
--

LOCK TABLES `api_part_iii_f` WRITE;
/*!40000 ALTER TABLE `api_part_iii_f` DISABLE KEYS */;
INSERT INTO `api_part_iii_f` VALUES (1,10);
/*!40000 ALTER TABLE `api_part_iii_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `correspondence_address`
--

LOCK TABLES `correspondence_address` WRITE;
/*!40000 ALTER TABLE `correspondence_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `correspondence_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `curricular_activities`
--

LOCK TABLES `curricular_activities` WRITE;
/*!40000 ALTER TABLE `curricular_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `curricular_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `declaration_table`
--

LOCK TABLES `declaration_table` WRITE;
/*!40000 ALTER TABLE `declaration_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `declaration_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_additional_degree`
--

LOCK TABLES `edu_additional_degree` WRITE;
/*!40000 ALTER TABLE `edu_additional_degree` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_additional_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_bachelor_degree`
--

LOCK TABLES `edu_bachelor_degree` WRITE;
/*!40000 ALTER TABLE `edu_bachelor_degree` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_bachelor_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_doctor_of_philosophy`
--

LOCK TABLES `edu_doctor_of_philosophy` WRITE;
/*!40000 ALTER TABLE `edu_doctor_of_philosophy` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_doctor_of_philosophy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_master_degree`
--

LOCK TABLES `edu_master_degree` WRITE;
/*!40000 ALTER TABLE `edu_master_degree` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_master_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_master_of_philosophy`
--

LOCK TABLES `edu_master_of_philosophy` WRITE;
/*!40000 ALTER TABLE `edu_master_of_philosophy` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_master_of_philosophy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_net_detail`
--

LOCK TABLES `edu_net_detail` WRITE;
/*!40000 ALTER TABLE `edu_net_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_net_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_secondary`
--

LOCK TABLES `edu_secondary` WRITE;
/*!40000 ALTER TABLE `edu_secondary` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_secondary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `edu_senior_secondary`
--

LOCK TABLES `edu_senior_secondary` WRITE;
/*!40000 ALTER TABLE `edu_senior_secondary` DISABLE KEYS */;
/*!40000 ALTER TABLE `edu_senior_secondary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `exp_present_post`
--

LOCK TABLES `exp_present_post` WRITE;
/*!40000 ALTER TABLE `exp_present_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_present_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `exp_previous_relevant`
--

LOCK TABLES `exp_previous_relevant` WRITE;
/*!40000 ALTER TABLE `exp_previous_relevant` DISABLE KEYS */;
/*!40000 ALTER TABLE `exp_previous_relevant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permanent_address`
--

LOCK TABLES `permanent_address` WRITE;
/*!40000 ALTER TABLE `permanent_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `permanent_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `personal_detail`
--

LOCK TABLES `personal_detail` WRITE;
/*!40000 ALTER TABLE `personal_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reference_table`
--

LOCK TABLES `reference_table` WRITE;
/*!40000 ALTER TABLE `reference_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `security_info`
--

LOCK TABLES `security_info` WRITE;
/*!40000 ALTER TABLE `security_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `security_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `selection_table`
--

LOCK TABLES `selection_table` WRITE;
/*!40000 ALTER TABLE `selection_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `selection_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `verification_table`
--

LOCK TABLES `verification_table` WRITE;
/*!40000 ALTER TABLE `verification_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-26 22:15:47
