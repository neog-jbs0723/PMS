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
  `pro_idx` bigint NOT NULL AUTO_INCREMENT COMMENT '프로젝트 글번호 인덱스',
  `pro_id` varchar(60) NOT NULL COMMENT '회원 아이디',
  `pro_title` varchar(100) NOT NULL COMMENT '프로젝트 글 제목',
  `pro_content` longtext COMMENT '프로젝트 글 내용',
  `pro_regdate` datetime DEFAULT NULL COMMENT '프로젝트 글 등록일',
  `pro_startdate` datetime DEFAULT NULL COMMENT '프로젝트 시작일',
  `pro_enddate` datetime DEFAULT NULL COMMENT '프로젝트 종료일',
  `pro_delyn` char(1) DEFAULT 'N' COMMENT '프로젝트 글 삭제여부',
  `pro_status` char(1) DEFAULT 'S' COMMENT '프로젝트 상태 (수행중 : S, 종료 : E)',
  `pro_file` varchar(500) DEFAULT NULL COMMENT '프로젝트 이미지 파일',
  PRIMARY KEY (`pro_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_project`
--

LOCK TABLES `pm_project` WRITE;
/*!40000 ALTER TABLE `pm_project` DISABLE KEYS */;
INSERT INTO `pm_project` VALUES (1,'test','테스트','<p>테스트입니다~</p>\r\n\r\n<p><strong>테스트입니다~테스트입니다~테스트입니다~테스트입니다~테스트입니다~테스트입니다~테스트입니다~</strong></p>\r\n','2021-05-15 17:35:44','2021-05-15 00:00:00','2021-05-31 00:00:00','N','S',NULL),(2,'test','테스트2','<p>테스트2</p>\r\n','2021-05-19 15:35:58','2021-05-01 00:00:00','2021-05-30 00:00:00','N','S',NULL),(3,'test','테스트3','<p>테스트3</p>\r\n','2021-05-19 15:58:20','2021-05-01 00:00:00','2021-05-20 00:00:00','N','S',NULL),(4,'test','테스트4','<p>테스트4</p>\r\n','2021-05-19 15:59:41','2021-05-01 00:00:00','2021-05-18 00:00:00','N','S',NULL),(6,'test','test10','<p>test10</p>\r\n','2021-08-29 17:17:56','2021-08-29 00:00:00','2021-08-31 00:00:00','N','S',NULL),(7,'test','PMS 프로젝트 - 1','<p>PMS 프로젝트 - 1</p>\r\n','2021-12-11 17:12:05','2021-12-01 00:00:00','2021-12-31 00:00:00','N','S',NULL);
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

-- Dump completed on 2022-02-13 17:28:39
