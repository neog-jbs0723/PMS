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
  `mem_idx` bigint NOT NULL COMMENT '회원 인덱스',
  `mem_id` varchar(60) NOT NULL COMMENT '회원 아이디',
  `mem_pw` varchar(60) NOT NULL COMMENT '회원 비밀번호',
  `mem_pwhint` varchar(100) DEFAULT NULL COMMENT '회원 비밀번호힌트',
  `mem_tel` varchar(20) DEFAULT NULL COMMENT '회원 집전화번호',
  `mem_phone` varchar(20) DEFAULT NULL COMMENT '회원 휴대폰번호',
  `mem_postnum` varchar(20) DEFAULT NULL COMMENT '회원 우편번호',
  `mem_address` varchar(100) DEFAULT NULL COMMENT '회원 주소',
  `mem_detail_address` varchar(60) DEFAULT NULL COMMENT '회원 상세주소',
  `mem_email` varchar(100) DEFAULT NULL COMMENT '회원 이메일',
  PRIMARY KEY (`mem_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pm_member`
--

LOCK TABLES `pm_member` WRITE;
/*!40000 ALTER TABLE `pm_member` DISABLE KEYS */;
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

-- Dump completed on 2021-05-08 18:26:06
