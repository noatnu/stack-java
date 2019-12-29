CREATE TABLE `boot_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `pid` int(12) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `age` int(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tb_tree_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) DEFAULT NULL COMMENT '父id',
  `parent_name` varchar(255) DEFAULT NULL COMMENT '父名称',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `html_text` varchar(255) DEFAULT NULL COMMENT 'html文本',
  `json` varchar(2000) DEFAULT NULL COMMENT 'json串',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `example_date` datetime DEFAULT NULL COMMENT '例子时间',
  `url` varchar(255) DEFAULT NULL COMMENT '网址',
  `ip_adress` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `ip_type` varchar(255) DEFAULT NULL COMMENT 'ip地址类型',
  `last_update_time` datetime DEFAULT NULL COMMENT '最好更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='tree table ';