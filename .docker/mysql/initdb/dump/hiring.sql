DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_id` int DEFAULT NULL,
  `candidate_id` int DEFAULT NULL,
  `scheduled` timestamp DEFAULT NULL,
  `score` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `interviews` (`candidate_id`,`position_id`,`scheduled`,`score`)
VALUES
       (1,1,'2020-07-13 10:30:00',4),
       (2,1,'2020-04-21 12:00:00',9),
       (3,1,'2020-11-07 18:30:00',2),
       (4,2,'2020-02-19 18:00:00',8),
       (5,2,'2020-09-29 14:00:00',7),
       (6,3,'2020-05-09 01:01:00',10),
       (7,3,'2020-06-22 04:00:00',7),
       (8,3,'2020-07-05 06:00:00',8),
       (9,4,'2020-01-04 15:55:00',10),
       (10,5,'2021-08-31 19:00:00',8),
       (11,6,'2020-08-06 17:00:00',9),
       (12,7,'2020-05-27 16:30:00',4),
       (13,7,'2020-05-27 15:30:00',8);