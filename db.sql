/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaoshiyanshizhiyuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaoshiyanshizhiyuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaoshiyanshizhiyuan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-10 18:59:25'),(2,'sex_types','性别',2,'女',NULL,'2021-05-10 18:59:25'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-10 18:59:25'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-10 18:59:25'),(5,'youxing_types','物品类型名称',1,'实验设备',NULL,'2021-05-10 18:59:25'),(6,'youxing_types','物品类型名称',2,'办公用品',NULL,'2021-05-10 18:59:25'),(7,'youxing_types','物品类型名称',3,'日用品',NULL,'2021-05-10 18:59:25'),(8,'shenhe_types','审核状态',1,'未审核',NULL,'2021-05-10 18:59:25'),(9,'shenhe_types','审核状态',2,'通过',NULL,'2021-05-10 18:59:25'),(10,'shenhe_types','审核状态',3,'拒绝',NULL,'2021-05-10 18:59:25'),(11,'zhuangtai_types','物品状态',1,'维修中',NULL,'2021-05-10 18:59:25'),(12,'zhuangtai_types','物品状态',2,'已借出',NULL,'2021-05-10 18:59:25'),(13,'zhuangtai_types','物品状态',3,'损坏',NULL,'2021-05-10 18:59:25'),(14,'zhuangtai_types','物品状态',4,'正常',NULL,'2021-05-10 18:59:25'),(15,'huodong_types','活动类型名称',1,'开会',NULL,'2021-05-10 18:59:25'),(16,'huodong_types','活动类型名称',2,'集体活动',NULL,'2021-05-10 18:59:25');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动标题 Search111',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '发布教师',
  `huodong_types` int(200) DEFAULT NULL COMMENT '活动类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='实验室活动';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodong_name`,`jiaoshi_id`,`huodong_types`,`insert_time`,`create_time`) values (1,'活动标题1',1,2,'2021-05-10 20:01:39','2021-05-10 20:01:39'),(2,'活动标题2',2,1,'2021-05-10 20:01:49','2021-05-10 20:01:49');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',1,'410882199011231111','17787488141','11111@qq.com','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620645075482.jpg','2021-05-10 19:11:16'),(2,'444','123456','教师2',2,'410882199011231112','17787488142','22222@qq.com','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620645096955.jpg','2021-05-10 19:11:38');

/*Table structure for table `jieyong` */

DROP TABLE IF EXISTS `jieyong`;

CREATE TABLE `jieyong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxing_id` int(200) DEFAULT NULL COMMENT '借用物品',
  `jieyong_time` timestamp NULL DEFAULT NULL COMMENT '借用时间',
  `jieyongren` varchar(200) DEFAULT NULL COMMENT '借用人 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='借用记录';

/*Data for the table `jieyong` */

insert  into `jieyong`(`id`,`youxing_id`,`jieyong_time`,`jieyongren`,`insert_time`,`create_time`) values (1,2,'2021-05-05 00:00:00','借用人1','2021-05-10 20:45:51','2021-05-10 20:45:51'),(2,2,'2021-05-05 00:00:00','借用人2','2021-05-10 20:57:41','2021-05-10 20:57:41');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620649863442.jpg','2021-05-10 20:31:14','公告详情1\r\n','2021-05-10 20:31:14'),(4,'公告2',2,'http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620649882393.jpg','2021-05-10 20:31:24','公告详情2\r\n','2021-05-10 20:31:24');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '请假用户',
  `shenhe_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `qingjia_number` int(200) DEFAULT NULL COMMENT '请假时间天',
  `qingjia_content` text COMMENT '请假原因',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`shenhe_types`,`qingjia_number`,`qingjia_content`,`insert_time`,`create_time`) values (1,1,2,10,'132\r\n','2021-05-10 20:42:54','2021-05-10 20:42:54'),(2,1,3,11,'请假原因2\r\n','2021-05-10 20:49:44','2021-05-10 20:49:44');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_name` varchar(200) DEFAULT NULL COMMENT '实验室名称 Search111',
  `shiyanshi_dizhi` varchar(200) DEFAULT NULL COMMENT '实验室地址',
  `shiyanshi_fuzeren` varchar(200) DEFAULT NULL COMMENT '主要负责人',
  `chengyuan_content` text COMMENT '主要成员',
  `wupin_content` text COMMENT '基础物品',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='实验室信息';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`shiyanshi_name`,`shiyanshi_dizhi`,`shiyanshi_fuzeren`,`chengyuan_content`,`wupin_content`,`insert_time`,`create_time`) values (1,'实验室名称1','实验室地址1','主要负责人1','主要成员1\r\n','基础物品1\r\n','2021-05-10 19:12:35','2021-05-10 19:12:35'),(2,'实验室名称2','实验室地址2','主要负责人2','主要成员2\r\n','基础物品2\r\n','2021-05-10 19:12:53','2021-05-10 19:12:53'),(3,'实验室名称3','实验室地址3','主要负责人3','主要成员3\r\n\r\n','基础物品3\r\n\r\n','2021-05-10 20:48:08','2021-05-10 20:48:08');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','bxkjxzhcbms2zq0mgyby1zenfg50t5kr','2021-05-10 19:10:22','2021-05-10 22:29:02'),(2,1,'111','yonghu','用户','g7itqnam9py37fkrotg55odd1q61wniq','2021-05-10 20:40:29','2021-05-10 21:40:30'),(3,1,'333','jiaoshi','教师','91cd77rz9zwfwfq19ovcp7uulivy084j','2021-05-10 20:43:11','2021-05-10 21:57:10'),(4,3,'123','yonghu','用户','fnfv58whncatcwquh99a5cmp227adoti','2021-05-10 20:56:20','2021-05-10 21:56:20'),(5,4,'123','yonghu','用户','1jy1syprffi6i9628ahn2xbm7cvpyxpm','2021-05-10 20:59:36','2021-05-10 21:59:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `weixiu` */

DROP TABLE IF EXISTS `weixiu`;

CREATE TABLE `weixiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxing_id` int(200) DEFAULT NULL COMMENT '维修物品',
  `jieyong_time` timestamp NULL DEFAULT NULL COMMENT '维修时间',
  `youxing_money` decimal(10,2) DEFAULT NULL COMMENT '维修金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='维修记录';

/*Data for the table `weixiu` */

insert  into `weixiu`(`id`,`youxing_id`,`jieyong_time`,`youxing_money`,`insert_time`,`create_time`) values (1,2,'2021-05-05 00:00:00','2001.00','2021-05-10 20:44:57','2021-05-10 20:44:57'),(2,3,'2021-05-10 13:00:00','1000.00','2021-05-10 20:57:27','2021-05-10 20:57:27');

/*Table structure for table `wuxing` */

DROP TABLE IF EXISTS `wuxing`;

CREATE TABLE `wuxing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuxing_name` varchar(200) DEFAULT NULL COMMENT '资产名称 Search111',
  `wuxing_file` varchar(200) DEFAULT NULL COMMENT '资产下载',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '上传用户',
  `shenhe_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='无形资产';

/*Data for the table `wuxing` */

insert  into `wuxing`(`id`,`wuxing_name`,`wuxing_file`,`yonghu_id`,`shenhe_types`,`insert_time`,`create_time`) values (1,'资产名称1','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620645429924.doc',1,3,'2021-05-10 19:17:15','2021-05-10 19:17:15'),(2,'资产名称2','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620645445293.xls',2,2,'2021-05-10 19:17:27','2021-05-10 19:17:27'),(4,'资产名称1','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620651650528.jpg',4,1,'2021-05-10 21:00:51','2021-05-10 21:00:51'),(5,'资产名称2','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620651665345.jpg',4,1,'2021-05-10 21:01:10','2021-05-10 21:01:10');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',1,'410882188912114141','13515544611','11111@qq.com','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620645371597.jpg','2021-05-10 19:16:12'),(2,'222','123456','用户2',2,'410882188912114142','13515544612','22222@qq.com','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620645408798.jpg','2021-05-10 19:16:50'),(4,'123','123','用户3',2,'410882188912114143','13515544613','33333@qq.com','http://localhost:8080/gaoxiaoshiyanshizhiyuan/file/download?fileName=1620651582451.jpg','2021-05-10 20:59:29');

/*Table structure for table `youxing` */

DROP TABLE IF EXISTS `youxing`;

CREATE TABLE `youxing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youxing_bianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `youxing_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `youxing_types` int(200) DEFAULT NULL COMMENT '物品类型 Search111',
  `zhuangtai_types` int(200) DEFAULT NULL COMMENT '物品状态 Search111',
  `youxing_money` decimal(10,2) DEFAULT NULL COMMENT '物品价格',
  `youxing_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='有形资产';

/*Data for the table `youxing` */

insert  into `youxing`(`id`,`youxing_bianhao`,`youxing_name`,`youxing_types`,`zhuangtai_types`,`youxing_money`,`youxing_content`,`insert_time`,`create_time`) values (1,'物品编号1','物品名称1',3,4,'100.00','详情信息1\r\n','2021-05-10 19:15:17','2021-05-10 19:15:17'),(2,'物品编号2','物品名称2',2,4,'200.00','详情信息2\r\n','2021-05-10 19:15:31','2021-05-10 19:15:31'),(3,'物品编号3','物品名称3',2,4,'300.00','详情信息3\r\n','2021-05-10 20:48:30','2021-05-10 20:48:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
