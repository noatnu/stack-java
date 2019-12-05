CREATE TABLE `boot_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `age` int(30) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;