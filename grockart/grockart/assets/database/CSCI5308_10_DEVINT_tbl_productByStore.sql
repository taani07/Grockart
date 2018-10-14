-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: db-5308.cs.dal.ca    Database: CSCI5308_10_DEVINT
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.35-MariaDB

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
-- Table structure for table `tbl_productByStore`
--

DROP TABLE IF EXISTS `tbl_productByStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_productByStore` (
  `pbsId` int(11) NOT NULL AUTO_INCREMENT,
  `sID` int(11) NOT NULL,
  `cID` int(11) NOT NULL,
  `pID` int(11) NOT NULL,
  `price` double NOT NULL,
  `QuantityPerUnit` varchar(45) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`pbsId`),
  KEY `fkIdx_142` (`sID`),
  KEY `fkIdx_146` (`cID`),
  KEY `fkIdx_150` (`pID`),
  CONSTRAINT `FK_142` FOREIGN KEY (`sID`) REFERENCES `tbl_store` (`sID`),
  CONSTRAINT `FK_146` FOREIGN KEY (`cID`) REFERENCES `tbl_category` (`cID`),
  CONSTRAINT `FK_150` FOREIGN KEY (`pID`) REFERENCES `tbl_product` (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=1033 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_productByStore`
--

LOCK TABLES `tbl_productByStore` WRITE;
/*!40000 ALTER TABLE `tbl_productByStore` DISABLE KEYS */;
INSERT INTO `tbl_productByStore` VALUES (433,5,17,21,20,'gm',12),(434,5,17,22,22,'gm',25),(435,5,17,23,23,'gm',11),(436,5,17,24,3,'gm',10),(437,5,17,25,19,'gm',22),(438,5,17,26,9,'gm',0),(439,5,17,27,15,'gm',26),(440,5,17,28,4,'gm',18),(441,5,17,29,17,'gm',0),(442,5,17,30,22,'gm',0),(443,5,17,31,4,'gm',0),(444,5,18,32,22,'gm',10),(445,5,18,33,3,'gm',6),(446,5,18,34,14,'gm',38),(447,5,18,35,20,'gm',18),(448,5,18,36,2,'gm',40),(449,5,18,37,8,'gm',0),(450,5,18,38,18,'gm',25),(451,5,18,39,14,'gm',1),(452,5,18,40,2,'gm',48),(453,5,18,41,13,'gm',29),(454,5,18,42,5,'gm',11),(455,5,18,43,25,'gm',39),(456,5,18,44,2,'gm',29),(457,5,18,45,14,'gm',20),(458,5,18,46,25,'gm',12),(459,5,19,47,10,'ml',49),(460,5,19,48,3,'ml',28),(461,5,19,49,25,'ml',34),(462,5,19,50,12,'ml',7),(463,5,19,51,21,'ml',33),(464,5,19,52,12,'ml',1),(465,5,19,53,20,'ml',7),(466,5,19,54,23,'ml',28),(467,5,19,55,25,'ml',30),(468,5,19,56,7,'ml',30),(469,5,19,57,16,'ml',24),(470,5,19,58,11,'ml',8),(471,5,19,59,14,'ml',35),(472,5,19,60,5,'ml',37),(473,5,19,61,22,'ml',7),(474,5,19,62,18,'ml',3),(475,5,20,63,16,'gm',35),(476,5,20,64,22,'gm',23),(477,5,20,65,25,'gm',15),(478,5,20,66,17,'gm',35),(479,5,20,67,25,'gm',25),(480,5,20,68,3,'gm',38),(481,5,20,69,18,'gm',47),(482,5,20,70,12,'gm',41),(483,5,20,71,7,'gm',48),(484,5,20,72,24,'gm',19),(485,5,20,73,24,'gm',14),(486,5,20,74,18,'gm',30),(487,5,20,75,14,'gm',10),(488,5,20,76,23,'gm',13),(489,5,20,77,10,'gm',40),(490,5,21,78,14,'kg',37),(491,5,21,79,10,'kg',23),(492,5,21,80,21,'kg',14),(493,5,21,81,22,'kg',2),(494,5,21,82,13,'kg',40),(495,5,21,83,19,'kg',46),(496,5,21,84,12,'kg',17),(497,5,21,85,23,'kg',21),(498,5,21,86,17,'kg',43),(499,5,21,87,12,'kg',28),(500,5,21,88,22,'kg',35),(501,5,21,89,19,'kg',27),(502,5,21,90,15,'kg',18),(503,5,21,91,20,'kg',26),(504,5,21,92,18,'kg',37),(505,5,21,93,12,'kg',46),(506,5,21,94,8,'kg',39),(507,5,21,95,25,'kg',9),(508,5,21,96,15,'kg',50),(509,5,21,97,6,'kg',33),(510,5,21,98,21,'kg',10),(511,5,22,99,10,'kg',0),(512,5,22,100,10,'kg',10),(513,5,22,101,23,'kg',25),(514,5,22,102,12,'kg',33),(515,5,22,103,23,'kg',32),(516,5,22,104,19,'kg',40),(517,5,22,105,24,'kg',7),(518,5,22,106,14,'kg',42),(519,5,23,107,11,'kg',45),(520,5,23,108,18,'kg',30),(521,5,23,109,21,'kg',27),(522,5,23,110,21,'kg',18),(523,5,23,111,24,'kg',34),(524,5,23,112,19,'kg',20),(525,5,23,113,7,'kg',40),(526,5,23,114,10,'kg',9),(527,5,23,115,17,'kg',31),(528,5,23,116,18,'kg',18),(529,5,23,117,24,'kg',47),(530,5,23,118,3,'kg',21),(531,5,23,119,18,'kg',26),(532,5,23,120,17,'kg',34),(533,5,23,121,9,'kg',10),(534,5,23,122,1,'kg',38),(535,5,23,123,20,'kg',7),(536,5,23,124,17,'kg',1),(537,5,23,125,8,'kg',39),(538,5,23,126,8,'kg',23),(539,5,23,127,13,'kg',29),(540,5,23,128,1,'kg',36),(541,6,17,21,11,'gm',-1),(542,6,17,22,17,'gm',0),(543,6,17,23,3,'gm',19),(544,6,17,24,11,'gm',27),(545,6,17,25,7,'gm',17),(546,6,17,26,16,'gm',35),(547,6,17,27,23,'gm',6),(548,6,17,28,10,'gm',8),(549,6,17,29,18,'gm',11),(550,6,17,30,20,'gm',0),(551,6,17,31,5,'gm',25),(552,6,18,32,2,'gm',7),(553,6,18,33,13,'gm',19),(554,6,18,34,3,'gm',24),(555,6,18,35,19,'gm',31),(556,6,18,36,21,'gm',30),(557,6,18,37,25,'gm',33),(558,6,18,38,18,'gm',46),(559,6,18,39,13,'gm',6),(560,6,18,40,5,'gm',50),(561,6,18,41,2,'gm',1),(562,6,18,42,22,'gm',25),(563,6,18,43,2,'gm',6),(564,6,18,44,11,'gm',13),(565,6,18,45,13,'gm',36),(566,6,18,46,19,'gm',24),(567,6,19,47,10,'ml',17),(568,6,19,48,21,'ml',31),(569,6,19,49,1,'ml',42),(570,6,19,50,22,'ml',24),(571,6,19,51,22,'ml',21),(572,6,19,52,11,'ml',9),(573,6,19,53,23,'ml',38),(574,6,19,54,4,'ml',18),(575,6,19,55,5,'ml',38),(576,6,19,56,2,'ml',38),(577,6,19,57,11,'ml',11),(578,6,19,58,11,'ml',8),(579,6,19,59,12,'ml',40),(580,6,19,60,13,'ml',20),(581,6,19,61,14,'ml',4),(582,6,19,62,23,'ml',0),(583,6,20,63,17,'gm',5),(584,6,20,64,24,'gm',19),(585,6,20,65,6,'gm',15),(586,6,20,66,13,'gm',10),(587,6,20,67,3,'gm',8),(588,6,20,68,1,'gm',7),(589,6,20,69,18,'gm',46),(590,6,20,70,22,'gm',22),(591,6,20,71,7,'gm',4),(592,6,20,72,21,'gm',21),(593,6,20,73,14,'gm',29),(594,6,20,74,1,'gm',32),(595,6,20,75,21,'gm',45),(596,6,20,76,25,'gm',33),(597,6,20,77,8,'gm',37),(598,6,21,78,24,'kg',27),(599,6,21,79,23,'kg',38),(600,6,21,80,14,'kg',26),(601,6,21,81,11,'kg',5),(602,6,21,82,23,'kg',29),(603,6,21,83,10,'kg',3),(604,6,21,84,17,'kg',24),(605,6,21,85,15,'kg',18),(606,6,21,86,14,'kg',13),(607,6,21,87,17,'kg',30),(608,6,21,88,14,'kg',21),(609,6,21,89,4,'kg',47),(610,6,21,90,12,'kg',1),(611,6,21,91,11,'kg',50),(612,6,21,92,7,'kg',10),(613,6,21,93,22,'kg',9),(614,6,21,94,11,'kg',25),(615,6,21,95,19,'kg',44),(616,6,21,96,16,'kg',46),(617,6,21,97,2,'kg',26),(618,6,21,98,24,'kg',31),(619,6,22,99,24,'kg',42),(620,6,22,100,23,'kg',5),(621,6,22,101,10,'kg',11),(622,6,22,102,20,'kg',17),(623,6,22,103,17,'kg',29),(624,6,22,104,11,'kg',8),(625,6,22,105,12,'kg',10),(626,6,22,106,8,'kg',11),(627,6,23,107,17,'kg',28),(628,6,23,108,9,'kg',19),(629,6,23,109,13,'kg',14),(630,6,23,110,24,'kg',20),(631,6,23,111,22,'kg',34),(632,6,23,112,10,'kg',40),(633,6,23,113,25,'kg',28),(634,6,23,114,8,'kg',48),(635,6,23,115,9,'kg',34),(636,6,23,116,17,'kg',29),(637,6,23,117,20,'kg',22),(638,6,23,118,18,'kg',23),(639,6,23,119,19,'kg',39),(640,6,23,120,10,'kg',47),(641,6,23,121,17,'kg',14),(642,6,23,122,25,'kg',27),(643,6,23,123,24,'kg',2),(644,6,23,124,24,'kg',20),(645,6,23,125,24,'kg',47),(646,6,23,126,12,'kg',30),(647,6,23,127,2,'kg',40),(648,6,23,128,24,'kg',4),(649,7,17,21,13,'gm',43),(650,7,17,22,7,'gm',0),(651,7,17,23,20,'gm',1),(652,7,17,24,19,'gm',2),(653,7,17,25,16,'gm',43),(654,7,17,26,17,'gm',14),(655,7,17,27,4,'gm',3),(656,7,17,28,3,'gm',38),(657,7,17,29,25,'gm',11),(658,7,17,30,14,'gm',0),(659,7,17,31,11,'gm',4),(660,7,18,32,12,'gm',19),(661,7,18,33,23,'gm',38),(662,7,18,34,18,'gm',34),(663,7,18,35,22,'gm',22),(664,7,18,36,6,'gm',48),(665,7,18,37,18,'gm',31),(666,7,18,38,10,'gm',34),(667,7,18,39,10,'gm',1),(668,7,18,40,17,'gm',33),(669,7,18,41,9,'gm',13),(670,7,18,42,4,'gm',23),(671,7,18,43,24,'gm',7),(672,7,18,44,25,'gm',12),(673,7,18,45,11,'gm',26),(674,7,18,46,10,'gm',35),(675,7,19,47,21,'ml',34),(676,7,19,48,4,'ml',12),(677,7,19,49,19,'ml',33),(678,7,19,50,7,'ml',12),(679,7,19,51,15,'ml',50),(680,7,19,52,3,'ml',43),(681,7,19,53,13,'ml',44),(682,7,19,54,8,'ml',11),(683,7,19,55,4,'ml',36),(684,7,19,56,3,'ml',40),(685,7,19,57,16,'ml',2),(686,7,19,58,2,'ml',47),(687,7,19,59,1,'ml',46),(688,7,19,60,18,'ml',39),(689,7,19,61,14,'ml',27),(690,7,19,62,24,'ml',36),(691,7,20,63,9,'gm',39),(692,7,20,64,9,'gm',4),(693,7,20,65,8,'gm',45),(694,7,20,66,21,'gm',14),(695,7,20,67,10,'gm',42),(696,7,20,68,10,'gm',39),(697,7,20,69,21,'gm',42),(698,7,20,70,2,'gm',34),(699,7,20,71,1,'gm',13),(700,7,20,72,10,'gm',18),(701,7,20,73,9,'gm',11),(702,7,20,74,24,'gm',50),(703,7,20,75,8,'gm',27),(704,7,20,76,21,'gm',42),(705,7,20,77,8,'gm',13),(706,7,21,78,7,'kg',26),(707,7,21,79,15,'kg',38),(708,7,21,80,11,'kg',13),(709,7,21,81,4,'kg',12),(710,7,21,82,4,'kg',16),(711,7,21,83,10,'kg',43),(712,7,21,84,15,'kg',7),(713,7,21,85,16,'kg',15),(714,7,21,86,10,'kg',42),(715,7,21,87,6,'kg',28),(716,7,21,88,19,'kg',14),(717,7,21,89,19,'kg',13),(718,7,21,90,6,'kg',27),(719,7,21,91,18,'kg',22),(720,7,21,92,4,'kg',31),(721,7,21,93,24,'kg',9),(722,7,21,94,1,'kg',26),(723,7,21,95,18,'kg',43),(724,7,21,96,12,'kg',8),(725,7,21,97,11,'kg',18),(726,7,21,98,2,'kg',44),(727,7,22,99,10,'kg',33),(728,7,22,100,25,'kg',35),(729,7,22,101,21,'kg',10),(730,7,22,102,23,'kg',46),(731,7,22,103,10,'kg',47),(732,7,22,104,9,'kg',4),(733,7,22,105,21,'kg',6),(734,7,22,106,22,'kg',33),(735,7,23,107,20,'kg',11),(736,7,23,108,15,'kg',41),(737,7,23,109,4,'kg',1),(738,7,23,110,18,'kg',22),(739,7,23,111,21,'kg',5),(740,7,23,112,24,'kg',47),(741,7,23,113,12,'kg',29),(742,7,23,114,8,'kg',22),(743,7,23,115,9,'kg',31),(744,7,23,116,24,'kg',25),(745,7,23,117,6,'kg',18),(746,7,23,118,1,'kg',21),(747,7,23,119,23,'kg',43),(748,7,23,120,10,'kg',4),(749,7,23,121,21,'kg',49),(750,7,23,122,3,'kg',19),(751,7,23,123,21,'kg',13),(752,7,23,124,23,'kg',36),(753,7,23,125,23,'kg',24),(754,7,23,126,4,'kg',28),(755,7,23,127,10,'kg',18),(756,7,23,128,11,'kg',15),(907,5,22,23,15,'test_gram',25),(914,5,22,23,15,'test_gram',25),(921,5,22,23,15,'test_gram',25),(928,5,22,23,15,'test_gram',25),(935,5,22,23,15,'test_gram',25),(942,5,22,23,15,'test_gram',25),(949,5,22,23,15,'test_gram',25),(956,5,22,23,15,'test_gram',25),(963,5,22,23,15,'test_gram',25),(970,5,22,23,15,'test_gram',25),(980,5,22,23,15,'test_gram',25),(987,5,22,23,15,'test_gram',25),(991,5,22,23,15,'test_gram',25),(998,5,22,23,15,'test_gram',25),(1005,5,22,23,15,'test_gram',25),(1012,5,22,23,15,'test_gram',25),(1019,5,22,23,15,'test_gram',25),(1026,5,22,23,15,'test_gram',25);
/*!40000 ALTER TABLE `tbl_productByStore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-03 18:54:13
