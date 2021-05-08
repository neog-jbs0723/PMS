-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: pms
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
-- Table structure for table `pm_project`
--

DROP TABLE IF EXISTS `pm_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pm_project` (
  `pro_idx` bigint NOT NULL COMMENT '프로젝트 글번호 인덱스',
  `pro_id` varchar(60) NOT NULL COMMENT '회원 아이디',
  `pro_title` varchar(100) NOT NULL COMMENT '프로젝트 글 제목',
  `pro_content` longtext COMMENT '프로젝트 글 내용',
  `pro_regdate` datetime DEFAULT NULL COMMENT '프로젝트 글 등록일',
  `pro_startdate` datetime DEFAULT NULL COMMENT '프로젝트 시작일',
  `pro_enddate` datetime DEFAULT NULL COMMENT '프로젝트 종료일',
  `pro_delyn` char(1) DEFAULT 'N' COMMENT '프로젝트 글 삭제여부',
  `pro_status` char(1) DEFAULT 'S' COMMENT '프로젝트 상태 (수행중 : S, 종료 : E)',
  PRIMARY KEY (`pro_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_project`
--

LOCK TABLES `pm_project` WRITE;
/*!40000 ALTER TABLE `pm_project` DISABLE KEYS */;
INSERT INTO `pm_project` VALUES (1,'test','경기지체장애협회','경기지체장애협회 프로젝트입니다.','2021-04-25 17:44:13','2021-03-06 23:55:00','2022-03-03 23:55:00','N','S'),(2,'test2','경기지체장애협회2','경기지체장애협회 프로젝트2입니다.','2021-04-25 18:06:04','2021-03-06 23:55:00','2022-03-03 23:55:00','N','S');
/*!40000 ALTER TABLE `pm_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-08 18:26:07
