/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kehuguanxiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kehuguanxiguanli` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `kehuguanxiguanli`;

/*Table structure for table `canpin` */

DROP TABLE IF EXISTS `canpin`;

CREATE TABLE `canpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_name` varchar(200) DEFAULT NULL COMMENT '产品名称  Search111',
  `canpin_money` decimal(10,2) DEFAULT NULL COMMENT '产品价格',
  `canpin_types` int(11) DEFAULT NULL COMMENT '产品类型 Search111',
  `canpin_content` text COMMENT '产品介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='产品信息';

/*Data for the table `canpin` */

insert  into `canpin`(`id`,`dingdan_name`,`canpin_money`,`canpin_types`,`canpin_content`,`create_time`) values (1,'产品名称1','100.00',1,'产品介绍1\r\n\r\n','2021-05-17 14:25:17'),(2,'产品名称2','200.00',2,'产品介绍2\r\n\r\n','2021-05-17 14:25:25'),(3,'产品名称3','300.00',3,'产品介绍3\r\n\r\n','2021-05-17 15:24:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-17 11:59:00'),(2,'sex_types','性别',2,'女',NULL,'2021-05-17 11:59:00'),(3,'jibie_types','客户级别名称',1,'客户级别1',NULL,'2021-05-17 11:59:00'),(4,'jibie_types','客户级别名称',2,'客户级别2',NULL,'2021-05-17 11:59:00'),(5,'laiyuan_types','客户来源名称',1,'客户来源1',NULL,'2021-05-17 11:59:00'),(6,'laiyuan_types','客户来源名称',2,'客户来源2',NULL,'2021-05-17 11:59:00'),(7,'genjin_types','跟进方式名称',1,'跟进方式1',NULL,'2021-05-17 11:59:00'),(8,'genjin_types','跟进方式名称',2,'跟进方式2',NULL,'2021-05-17 11:59:01'),(9,'zhifu_types','支付方式名称',1,'支付方式1',NULL,'2021-05-17 11:59:01'),(10,'zhifu_types','支付方式名称',2,'支付方式2',NULL,'2021-05-17 11:59:01'),(11,'fapiao_types','发票类型名称',1,'发票类型1',NULL,'2021-05-17 11:59:01'),(12,'fapiao_types','发票类型名称',2,'发票类型2',NULL,'2021-05-17 11:59:01'),(13,'gangwei_types','岗位类型名称',1,'岗位类型1',NULL,'2021-05-17 11:59:01'),(14,'gangwei_types','岗位类型名称',2,'岗位类型2',NULL,'2021-05-17 11:59:01'),(15,'zhiwu_types','职务名称',1,'职务1',NULL,'2021-05-17 11:59:01'),(16,'zhiwu_types','职务名称',2,'职务2',NULL,'2021-05-17 11:59:01'),(17,'bumen_types','部门名称',1,'部门1',NULL,'2021-05-17 11:59:01'),(18,'bumen_types','部门名称',2,'部门2',NULL,'2021-05-17 11:59:01'),(19,'canpin_types','产品类型名称',1,'产品类型1',NULL,'2021-05-17 14:16:57'),(20,'canpin_types','产品类型名称',2,'产品类型2',NULL,'2021-05-17 14:16:57'),(21,'canpin_types','产品类型名称',3,'产品类型3',NULL,'2021-05-17 15:24:54');

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_bianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `dingdan_name` varchar(200) DEFAULT NULL COMMENT '订单名称  Search111',
  `kehu_id` int(11) DEFAULT NULL COMMENT '签订客户',
  `qianding_time` timestamp NULL DEFAULT NULL COMMENT '签订时间',
  `yonghu_money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hetong_content` text COMMENT '订单详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`dingdan_bianhao`,`dingdan_name`,`kehu_id`,`qianding_time`,`yonghu_money`,`hetong_content`,`create_time`) values (1,'订单编号1','订单名称1',1,'2021-05-20 00:00:00','10000.00','订单详情1\r\n\r\n','2021-05-17 14:28:18'),(2,'订单编号2','订单名称2',2,'2021-05-26 00:00:00','20000.00','订单详情2\r\n\r\n','2021-05-17 14:31:23');

/*Table structure for table `fapiao` */

DROP TABLE IF EXISTS `fapiao`;

CREATE TABLE `fapiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_name` varchar(200) DEFAULT NULL COMMENT '发票原因  Search111',
  `gongshi_name` varchar(200) DEFAULT NULL COMMENT '公司名称  Search111',
  `fapiao_name` varchar(200) DEFAULT NULL COMMENT '发票人',
  `jingshou_name` varchar(200) DEFAULT NULL COMMENT '经手人',
  `fapiao_money` decimal(10,2) DEFAULT NULL COMMENT '发票金额',
  `fapiao_types` int(11) DEFAULT NULL COMMENT '发票类型 Search111',
  `fapiao_content` text COMMENT '发票备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='发票信息';

/*Data for the table `fapiao` */

insert  into `fapiao`(`id`,`dingdan_name`,`gongshi_name`,`fapiao_name`,`jingshou_name`,`fapiao_money`,`fapiao_types`,`fapiao_content`,`create_time`) values (1,'发票原因1','公司名称1','消费人1','经手人1','1000.00',1,'发票备注1\r\n\r\n','2021-05-17 14:31:48'),(2,'发票原因2','公司名称2','消费人2','经手人2','2000.00',2,'发票备注2\r\n\r\n','2021-05-17 14:32:34');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hetong_name` varchar(255) DEFAULT NULL COMMENT '合同名称  Search111',
  `qian_name` varchar(11) DEFAULT NULL COMMENT '签订客户',
  `hetong_file` varchar(255) DEFAULT NULL COMMENT '合同',
  `hetong_content` text COMMENT '合同简介',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='合同信息';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`hetong_name`,`qian_name`,`hetong_file`,`hetong_content`,`insert_time`,`create_time`) values (1,'合同名称1','签订客户1','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621232102942.doc','合同简介1\r\n','2021-05-17 14:15:08','2021-05-17 14:15:08'),(2,'合同名称2','签订客户2','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621232740270.doc','合同简介2\r\n\r\n','2021-05-17 14:25:43','2021-05-17 14:25:43'),(3,'合同名称3','签订客户3','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621236322042.doc','合同简介3\r\n','2021-05-17 15:25:26','2021-05-17 15:25:26');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `jibie_types` int(200) DEFAULT NULL COMMENT '客户级别',
  `laiyuan_types` int(200) DEFAULT NULL COMMENT '客户来源',
  `genjin_types` int(200) DEFAULT NULL COMMENT '跟进方式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客户信息';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`yonghu_name`,`sex_types`,`kehu_id_number`,`kehu_phone`,`kehu_email`,`kehu_photo`,`jibie_types`,`laiyuan_types`,`genjin_types`,`create_time`) values (1,'客户1',2,'410882198712121111','13315511241','1111@qq.com','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621231495518.jpg',1,1,1,'2021-05-17 14:04:49'),(2,'客户2',1,'410882198712122222','13315511242','2222@qq.com','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621231514691.jpg',2,2,2,'2021-05-17 14:05:16');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息名称 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告信息名称1','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621233241469.jpg','2021-05-17 14:34:05','公告信息详情1\r\n\r\n','2021-05-17 14:34:05'),(4,'公告信息名称2','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621233250814.jpg','2021-05-17 14:34:13','公告信息详情2\r\n\r\n','2021-05-17 14:34:13');

/*Table structure for table `shoukuan` */

DROP TABLE IF EXISTS `shoukuan`;

CREATE TABLE `shoukuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dingdan_name` varchar(200) DEFAULT NULL COMMENT '收款原因  Search111',
  `gongshi_name` varchar(200) DEFAULT NULL COMMENT '公司名称  Search111',
  `shoukuan_name` varchar(200) DEFAULT NULL COMMENT '收款人',
  `jingshou_name` varchar(200) DEFAULT NULL COMMENT '经手人',
  `shoukuan_money` decimal(10,2) DEFAULT NULL COMMENT '收款金额',
  `zhifu_types` int(11) DEFAULT NULL COMMENT '支付方式 Search111',
  `shoukuan_content` text COMMENT '收款备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收款信息';

/*Data for the table `shoukuan` */

insert  into `shoukuan`(`id`,`dingdan_name`,`gongshi_name`,`shoukuan_name`,`jingshou_name`,`shoukuan_money`,`zhifu_types`,`shoukuan_content`,`create_time`) values (1,'收款原因1','公司名称1','收款人1','经手人1','10000.00',1,'收款备注1\r\n\r\n','2021-05-17 14:33:25'),(2,'收款原因2','公司名称2','收款人2','经手人2','20000.00',2,'收款备注2\r\n\r\n','2021-05-17 14:33:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','yfj1yfkegh6na6k7btub8mv1utmsk2vb','2021-05-17 13:45:22','2021-05-17 16:21:45'),(2,1,'111','yonghu','员工','6d2ujesjo698hn3a4ug6axjla9ubo37n','2021-05-17 15:19:30','2021-05-17 16:26:37');

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

/*Table structure for table `xinwen` */

DROP TABLE IF EXISTS `xinwen`;

CREATE TABLE `xinwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinwen_name` varchar(200) DEFAULT NULL COMMENT '新闻信息名称 Search111 ',
  `xinwen_photo` varchar(200) DEFAULT NULL COMMENT '新闻信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻信息时间',
  `xinwen_content` text COMMENT '新闻信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `xinwen` */

insert  into `xinwen`(`id`,`xinwen_name`,`xinwen_photo`,`insert_time`,`xinwen_content`,`create_time`) values (3,'新闻信息名称1','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621233414281.jpg','2021-05-17 14:36:57','新闻信息详情1\r\n\r\n','2021-05-17 14:36:57'),(4,'新闻信息名称2','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621233423949.jpg','2021-05-17 14:37:05','新闻信息详情2\r\n\r\n','2021-05-17 14:37:05');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `gangwei_types` int(200) DEFAULT NULL COMMENT '岗位信息',
  `zhiwu_types` int(200) DEFAULT NULL COMMENT '职务管理',
  `bumen_types` int(200) DEFAULT NULL COMMENT '部门管理',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`gangwei_types`,`zhiwu_types`,`bumen_types`,`create_time`) values (1,'111','123456','员工1',2,'410882199211111111','13312211311','11111@qq.com','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621231397072.jpg',1,1,1,'2021-05-17 14:03:21'),(2,'222','123456','员工2',2,'410882199211112222','13312211322','22222@qq.com','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621231424866.jpg',2,2,2,'2021-05-17 14:03:46'),(3,'333','123456','员工3',1,'410882199211113333','13312211333','33333@qq.com','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621236142659.jpg',2,2,2,'2021-05-17 15:22:24');

/*Table structure for table `zhannei` */

DROP TABLE IF EXISTS `zhannei`;

CREATE TABLE `zhannei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhannei_name` varchar(200) DEFAULT NULL COMMENT '站内信息名称 Search111 ',
  `zhannei_photo` varchar(200) DEFAULT NULL COMMENT '站内信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '站内信息时间',
  `zhannei_content` text COMMENT '站内信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='站内信息';

/*Data for the table `zhannei` */

insert  into `zhannei`(`id`,`zhannei_name`,`zhannei_photo`,`insert_time`,`zhannei_content`,`create_time`) values (3,'站内信息名称1','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621233440470.jpg','2021-05-17 14:37:27','站内信息详情1\r\n\r\n','2021-05-17 14:37:27'),(4,'站内信息名称2','http://localhost:8080/kehuguanxiguanli/file/download?fileName=1621233453729.jpg','2021-05-17 14:37:35','站内信息详情2\r\n\r\n','2021-05-17 14:37:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
