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
-- Table structure for table `pm_member`
--

DROP TABLE IF EXISTS `pm_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pm_member` (
  `mem_idx` bigint NOT NULL AUTO_INCREMENT COMMENT '회원 인덱스',
  `mem_id` varchar(60) NOT NULL COMMENT '회원 아이디',
  `mem_pw` varchar(60) NOT NULL COMMENT '회원 비밀번호',
  `mem_phone` varchar(20) DEFAULT NULL COMMENT '회원 휴대폰번호',
  `mem_postnum` varchar(20) DEFAULT NULL COMMENT '회원 우편번호',
  `mem_address` varchar(100) DEFAULT NULL COMMENT '회원 주소',
  `mem_detail_address` varchar(60) DEFAULT NULL COMMENT '회원 상세주소',
  `mem_email` varchar(100) DEFAULT NULL COMMENT '회원 이메일',
  `mem_position` varchar(100) DEFAULT NULL COMMENT '회원 직급',
  `mem_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mem_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_member`
--

LOCK TABLES `pm_member` WRITE;
/*!40000 ALTER TABLE `pm_member` DISABLE KEYS */;
INSERT INTO `pm_member` VALUES (9,'test','1234','010-9174-1715',NULL,'서울시 구로구 고척동 고척로 33길 66','3층','wnqhdtn500@naver.com','대리','주봉수'),(10,'kmj','1234','010-4720-6902',NULL,NULL,NULL,'mongmong@naver.com','주임','김명진'),(11,'kjt','1234','010-0000-0000',NULL,NULL,'','kjt@naver.com','부장','김종택'),(12,'yjy','1234','010-1111-1111',NULL,'','','yjy@naver.com','주임','윤지영'),(13,'hsk','1234','010-2222-2222',NULL,'','','hsk@naver.com','과장','한성길'),(14,'jsh','1234','010-3333-3333',NULL,NULL,'','jsh@naver.com','대리','정석화'),(15,'ket','1234','010-4444-4444',NULL,NULL,'','ket@naver.com','차장','김은태'),(16,'yki','1234','010-5555-5555',NULL,NULL,'','yki@naver.com','과장','유광일'),(17,'jya','1234','010-6666-6666',NULL,'','','jya@naver.com','차장','조윤아'),(18,'admin','1234','010-7777-7777',NULL,'','','admin@naver.com','부장','PM 관리자 계정');
/*!40000 ALTER TABLE `pm_member` ENABLE KEYS */;
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
