CREATE TABLE ssmbuild

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookID` int NOT NULL AUTO_INCREMENT COMMENT '书的id',
  `bookName` varchar(100) NOT NULL COMMENT '书名',
  `bookCounts` int NOT NULL COMMENT '数量',
  `detail` varchar(200) NOT NULL COMMENT '描述',
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;


LOCK TABLES `books` WRITE;

INSERT INTO `books` VALUES (1,'Java',1,'从入门到入土'),(2,'MySQL',10,'从删库到跑路'),(3,'Linux',5,'从进门到进牢');

UNLOCK TABLES;

