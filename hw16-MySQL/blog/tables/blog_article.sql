-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `content` longtext,
  `create_date` date DEFAULT NULL,
  `writer_id` int NOT NULL,
  PRIMARY KEY (`id`,`writer_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`),
  KEY `fk_article_writer_idx` (`writer_id`),
  CONSTRAINT `fk_article_writer` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (0,'5G Networks','5G is the fifth generation technology standard for broadband cellular networks','In telecommunications, 5G is the fifth generation technology standard for broadband cellular networks, which cellular phone companies began deploying worldwide in 2019, and is the planned successor to the 4G networks which provide connectivity to most current cellphones.[2] 5G networks are predicted to have more than 1.7 billion subscribers worldwide by 2025, according to the GSM Association.[3] Like its predecessors, 5G networks are cellular networks, in which the service area is divided into small geographical areas called cells. All 5G wireless devices in a cell are connected to the Internet and telephone network by radio waves through a local antenna in the cell. The main advantage of the new networks is that they will have greater bandwidth, giving higher download speeds,[2] eventually up to 10 gigabits per second (Gbit/s).[4] Due to the increased bandwidth, it is expected the networks will not exclusively serve cellphones like existing cellular networks, but also be used as general internet service providers for laptops and desktop computers, competing with existing ISPs such as cable internet, and also will make possible new applications in internet of things (IoT) and machine to machine areas. 4G cellphones are not able to use the new networks, which require 5G enabled wireless devices.','2020-10-08',2),(1,'Art history','This article is about the academic discipline of art history. For an overview of the history of art worldwide','Art history is the study of aesthetic objects and visual expression in historical and stylistic context.[1] Traditionally, the discipline of art history emphasized painting, drawing, sculpture, architecture, ceramics and decorative arts, yet today, art history examines broader aspects of visual culture, including the various visual and conceptual outcomes related to an ever-evolving definition of art.[2][3] Art history encompasses the study of objects created by different cultures around the world and throughout history that convey meaning, importance or serve usefulness primarily through visual representations.','2015-03-04',1),(2,'History of Iran','The history of Iran, which was commonly known until the mid-20th century as Persia','The history of Iran, which was commonly known until the mid-20th century as Persia in the Western world, is intertwined with the history of a larger region, also to an extent known as Greater Iran, comprising the area from Anatolia, the Bosphorus, and Egypt in the west to the borders of Ancient India and the Syr Darya in the east, and from the Caucasus and the Eurasian Steppe in the north to the Persian Gulf and the Gulf of islam Oman in the south.','2018-07-09',3),(3,'Art in Asia','This article is about the history of visual arts in Asia','The history of Asian art includes a vast range of arts from various cultures, regions and religions across the continent of Asia. The major regions of Asia include Central, East, South, Southeast, and West Asia.','2001-01-02',1),(4,'The Battle of Neville\'s Cross','The Battle of Neville\'s Cross took place during the Second War of Scottish Independence on 17 October 1346','The Battle of Neville\'s Cross took place during the Second War of Scottish Independence on 17 October 1346, half a mile (800 m) to the west of Durham, England. An invading Scottish army of 12,000 led by King David II was defeated with heavy loss by an English army of approximately 6,000–7,000 men led by Ralph Neville, Lord Neville. The battle was named after an Anglo-Saxon stone cross that stood on the hill where the Scots made their stand. After the victory, Neville paid to have a new cross erected to commemorate the day.','2000-08-12',5),(5,'Holy Roman Empire','The Holy Roman Empire (Latin: Sacrum Imperium Romanum;','The Holy Roman Empire (Latin: Sacrum Imperium Romanum; German: Heiliges Römisches Reich) was a multi-ethnic complex of territories in Western and Central Europe that developed during the Early Middle Ages and continued until its dissolution in 1806 during the Napoleonic Wars. The largest territory of the empire after 962 was the Kingdom of Germany, though it also included the neighboring Kingdom of Bohemia and Kingdom of Italy, plus numerous other territories, and soon after the Kingdom of Burgundy was added. However, while by the end of the 15th century the Empire was still in theory composed of three major blocks – Italy, Germany, and Burgundy – in practice only the Kingdom of Germany remained, with the Burgundian territories lost to France and the Italian territories, ignored in the Imperial Reform, although formally part of the Empire, were splintered into numerous de facto independent territorial entities. The external borders of the Empire did not change noticeably from the Peace of Westphalia – which acknowledged the exclusion of Switzerland and the Northern Netherlands, and the French protectorate over Alsace – to the dissolution of the Empire. By then, it largely contained only German-speaking territories, plus the Kingdom of Bohemia, the southern Netherlands and lands of Carniola. At the conclusion of the Napoleonic Wars in 1815, most of the Holy Roman Empire was included in the German Confederation.','2012-04-26',4),(10,'The History of Science','The history of science is the study of the development of science','The history of science is the study of the development of science, including both the natural and social sciences (the history of the arts and humanities is termed history of scholarship). Science is a body of empirical, theoretical, and practical knowledge about the natural world, produced by scientists who emphasize the observation, explanation, and prediction of real-world phenomena. Historiography of science, in contrast, studies the methods employed by historians of science.','2019-06-12',2),(11,'Applied mathematics','Applied mathematics is the application of mathematical methods by different fields such as physics','Applied mathematics is the application of mathematical methods by different fields such as physics, engineering, medicine, biology, finance, business, computer science, and industry. Thus, applied mathematics is a combination of mathematical science and specialized knowledge. The term \"applied mathematics\" also describes the professional specialty in which mathematicians work on practical problems by formulating and studying mathematical models.','2018-07-14',2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09 13:22:48
