/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.6.48-log : Database - db_cmapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_cmapp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_cmapp`;

/*Table structure for table `cscp_dic` */

DROP TABLE IF EXISTS `cscp_dic`;

CREATE TABLE `cscp_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_type` int(11) DEFAULT NULL COMMENT '字典类型',
  `dic_value` int(11) DEFAULT NULL COMMENT '字典value',
  `dic_display` varchar(50) DEFAULT NULL COMMENT '字典中文名称',
  `dic_group_id` int(11) DEFAULT NULL COMMENT '字典组织id',
  `dic_parent_id` int(11) DEFAULT NULL COMMENT '字典父id',
  `dic_order` int(11) DEFAULT NULL COMMENT '字典排序',
  `dic_icon` varchar(50) DEFAULT NULL COMMENT 'icon',
  `dic_check_radio` varchar(10) DEFAULT NULL COMMENT '选择框',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `cscp_dic` */

insert  into `cscp_dic`(`id`,`dic_type`,`dic_value`,`dic_display`,`dic_group_id`,`dic_parent_id`,`dic_order`,`dic_icon`,`dic_check_radio`) values 
(1,1,1,'是',NULL,NULL,1,NULL,NULL),
(2,1,2,'否',NULL,NULL,2,NULL,NULL),
(3,2,1,'多选',NULL,NULL,1,NULL,NULL),
(4,2,2,'单选',NULL,NULL,2,NULL,NULL),
(5,3,1,'文本框',NULL,NULL,1,NULL,NULL),
(6,3,2,'下拉框',NULL,NULL,2,NULL,NULL),
(7,3,3,'日期选择',NULL,NULL,3,NULL,NULL),
(8,3,4,'日期范围选择',NULL,NULL,4,NULL,NULL),
(9,3,5,'打分（星形）',NULL,NULL,5,NULL,NULL),
(10,3,6,'下拉多选',NULL,NULL,6,NULL,NULL),
(11,3,7,'勾选多选',NULL,NULL,7,NULL,NULL),
(12,3,8,'勾选单选',NULL,NULL,8,NULL,NULL),
(13,3,9,'单选toggle',NULL,NULL,9,NULL,NULL),
(14,3,10,'大文本框',NULL,NULL,10,NULL,NULL),
(15,3,11,'时间选择',NULL,NULL,11,NULL,NULL),
(16,3,12,'文件上传',NULL,NULL,12,NULL,NULL),
(17,3,13,'打分（奖杯）',NULL,NULL,13,NULL,NULL),
(18,3,14,'Email',NULL,NULL,14,NULL,NULL),
(19,3,15,'数字-整数',NULL,NULL,15,NULL,NULL),
(20,3,16,'数字-小数',NULL,NULL,16,NULL,NULL),
(21,3,17,'电话',NULL,NULL,17,NULL,NULL),
(22,3,18,'时间选择-圆形',NULL,NULL,18,NULL,NULL),
(23,3,19,'数字-spinner',NULL,NULL,19,NULL,NULL),
(24,3,20,'数字-Knob',NULL,NULL,20,NULL,NULL),
(25,3,21,'Phone-mask',NULL,NULL,21,NULL,NULL),
(26,3,22,'信用卡-mask',NULL,NULL,22,NULL,NULL),
(27,3,23,'Tax-mask',NULL,NULL,23,NULL,NULL),
(28,3,24,'SN-mask',NULL,NULL,24,NULL,NULL),
(29,3,25,'Silder',NULL,NULL,25,NULL,NULL),
(30,3,26,'Silder-vertical',NULL,NULL,26,NULL,NULL),
(31,4,1,'女',NULL,NULL,1,'fa fa-female',NULL),
(32,4,2,'男',NULL,NULL,2,'fa fa-male',NULL),
(33,5,1,'高',NULL,NULL,1,NULL,NULL),
(34,5,2,'中',NULL,NULL,2,NULL,NULL),
(35,5,3,'低',NULL,NULL,3,NULL,NULL),
(36,6,1,'收集需求',NULL,NULL,1,NULL,NULL),
(37,6,2,'需求分析',NULL,NULL,2,'',NULL),
(38,6,3,'纳入需求管理',NULL,NULL,3,NULL,NULL),
(39,6,4,'进入开发',NULL,NULL,4,NULL,NULL),
(40,6,5,'测试完成',NULL,NULL,5,NULL,NULL),
(41,6,6,'上线',NULL,NULL,6,NULL,NULL),
(42,6,7,'已经回复',NULL,NULL,7,NULL,NULL),
(43,6,8,'更新解释',NULL,NULL,8,NULL,NULL),
(44,7,1,'大',NULL,NULL,1,NULL,NULL),
(45,7,2,'小',NULL,NULL,2,NULL,NULL),
(46,10,100001,'平台管理员',NULL,NULL,1,NULL,NULL),
(47,10,100002,'平台操作员',NULL,NULL,2,NULL,NULL),
(48,10,100003,'平台其他人员',NULL,NULL,3,NULL,NULL),
(49,10,200001,'外部企业信息填报人员',NULL,NULL,4,NULL,NULL),
(50,10,200002,'外部企业其他人员',NULL,NULL,5,NULL,NULL),
(51,11,1,'Always',NULL,NULL,1,NULL,NULL),
(52,11,2,'IfNotPresent',NULL,NULL,2,NULL,NULL),
(53,11,3,'Never',NULL,NULL,3,NULL,NULL),
(54,12,1,'5.7.14',NULL,NULL,1,NULL,NULL),
(55,12,2,'5.7.15',NULL,NULL,2,NULL,NULL),
(56,13,1,'ceph-rbd',NULL,NULL,1,NULL,NULL);

/*Table structure for table `cscp_log_login` */

DROP TABLE IF EXISTS `cscp_log_login`;

CREATE TABLE `cscp_log_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `ip` varchar(50) DEFAULT NULL COMMENT '用户ip',
  `message` varchar(255) DEFAULT NULL COMMENT '登录信息',
  `time` datetime DEFAULT NULL COMMENT '登录时间',
  `status` varchar(10) DEFAULT NULL COMMENT '登录状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录日志';

/*Data for the table `cscp_log_login` */

/*Table structure for table `cscp_log_operation` */

DROP TABLE IF EXISTS `cscp_log_operation`;

CREATE TABLE `cscp_log_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `uri` varchar(255) DEFAULT NULL COMMENT '操作url',
  `ip` varchar(50) DEFAULT NULL COMMENT '用户ip',
  `params` varchar(500) DEFAULT NULL COMMENT '参数',
  `method` varchar(255) DEFAULT NULL COMMENT '请求方法',
  `message` varchar(255) DEFAULT NULL COMMENT '信息',
  `status` char(10) DEFAULT NULL COMMENT '操作状态',
  `time` datetime DEFAULT NULL COMMENT '操作时间',
  `error` varchar(1000) DEFAULT NULL COMMENT '操作异常信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

/*Data for the table `cscp_log_operation` */

/*Table structure for table `cscp_menus` */

DROP TABLE IF EXISTS `cscp_menus`;

CREATE TABLE `cscp_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT 'icon',
  `title` varchar(50) DEFAULT NULL COMMENT '中文描述',
  `url` varchar(100) DEFAULT NULL COMMENT 'url',
  `http_method` varchar(10) DEFAULT NULL COMMENT '操作方法',
  `component` varchar(100) DEFAULT NULL COMMENT '内容',
  `parent_id` int(11) DEFAULT NULL COMMENT '父id',
  `type` varchar(45) DEFAULT NULL COMMENT '操作类型',
  `permission_code` varchar(50) DEFAULT NULL COMMENT '权限编码',
  `orderby` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1033 DEFAULT CHARSET=utf8 COMMENT='权限管理表';

/*Data for the table `cscp_menus` */

insert  into `cscp_menus`(`id`,`name`,`icon`,`title`,`url`,`http_method`,`component`,`parent_id`,`type`,`permission_code`,`orderby`) values 
(1,'authority','md-key','权限管理','/authority','*','views/main/main.vue',0,'menu','cscp.authority',1),
(200,'user-management','md-man','用户管理','userManagement','*','',1,'menu','cscp.user.query',200),
(202,'user-add','ios-body','新增用户','userAdd','POST',NULL,200,'non-menu','cscp.user.add',202),
(203,'user-del','ios-body','删除用户','','DELETE',NULL,200,'button','cscp.user.del',203),
(204,'user-edit','ios-body','编辑用户','userEdit','PUT',NULL,200,'non-menu','cscp.user.edit',204),
(300,'role-management','md-lock','角色管理','roleManagement','*',NULL,1,'menu','cscp.role',300),
(302,'role-add','person-stalker','增加角色','roleAdd','*',NULL,300,'non-menu','cscp.role.add',302),
(303,'role-del','person-stalker','删除角色','','*',NULL,300,'button','cscp.role.del',303),
(304,'role-edit','person-stalker','编辑角色','roleEdit','*',NULL,300,'non-menu','cscp.role.edit',304),
(400,'workgroup-management','md-contacts','工作组管理','workgroupManagement','*',NULL,1,'menu','cscp.wg',400),
(402,'workgroup-add','ios-body','增加工作组','workgroupAdd','POST','',400,'non-menu','cscp.wg.add',402),
(403,'workgroup-del','ios-body','删除工作组','','DELETE','',400,'button','cscp.wg.del',403),
(404,'workgroup-edit','ios-body','编辑工作组','workgroupEdit','PUT','',400,'non-menu','cscp.wg.edit',404),
(500,'organization-management','logo-buffer','机构管理','organizationManagement','*','',1,'menu','cscp.org.query',500),
(502,'organization-edit','ios-body','编辑机构','organizationEdit','*','',500,'non-menu','cscp.org.edit',502),
(1000,'logging-management','md-paper','日志管理','/logging','*','views/main/main.vue',0,'menu','cscp.logging',1000),
(1001,'logging-login','md-copy','登录日志','login','*','',1000,'menu','cscp.logging.login',1001),
(1002,'logging-operation','md-copy','操作日志','operation','*','',1000,'menu','cscp.logging.operation',1002),
(1029,'non-mem-mian','md-key','非菜单页面','/non-mem-mian','*','views/main/main.vue',0,'non-menu','cscp.logging.operation',1029),
(1031,'self-edit','md-key','个人信息编辑','/self-edit','*','',1029,'non-menu','',1031),
(1032,'async-routes-config','md-transgender','异步路由管理','async-routes-config','*','',1,'menu','cscp.sr',1032);

/*Table structure for table `cscp_org` */

DROP TABLE IF EXISTS `cscp_org`;

CREATE TABLE `cscp_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(50) NOT NULL COMMENT '组织名称',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `parent_id` int(11) DEFAULT NULL COMMENT '父id',
  `orderby` int(11) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='机构管理';

/*Data for the table `cscp_org` */

insert  into `cscp_org`(`id`,`org_name`,`description`,`parent_id`,`orderby`) values 
(1,'机构',NULL,1,1);

/*Table structure for table `cscp_role_menu` */

DROP TABLE IF EXISTS `cscp_role_menu`;

CREATE TABLE `cscp_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `menu_id` int(11) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

/*Data for the table `cscp_role_menu` */

insert  into `cscp_role_menu`(`id`,`role_id`,`menu_id`) values 
(1,1,1),
(2,1,200),
(3,1,201),
(4,1,202),
(5,1,203),
(6,1,204),
(7,1,300),
(8,1,301),
(9,1,302),
(10,1,303),
(11,1,304),
(12,1,400),
(13,1,401),
(14,1,402),
(15,1,403),
(16,1,404),
(17,1,500),
(18,1,501),
(19,1,502),
(20,1,1000),
(21,1,1001),
(22,1,1002),
(23,1,1029),
(24,1,1031),
(25,1,1032),
(33,2,1029),
(34,2,1031);

/*Table structure for table `cscp_roles` */

DROP TABLE IF EXISTS `cscp_roles`;

CREATE TABLE `cscp_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '角色名',
  `role_extent` varchar(50) DEFAULT NULL COMMENT '角色范围',
  `parent_id` int(11) DEFAULT NULL COMMENT '父id',
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `cscp_roles` */

insert  into `cscp_roles`(`id`,`name`,`role_extent`,`parent_id`,`icon`) values 
(1,'admin',NULL,NULL,'md-key'),
(2,'普通用户首页','',0,'md-key');

/*Table structure for table `cscp_user` */

DROP TABLE IF EXISTS `cscp_user`;

CREATE TABLE `cscp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `cscp_user` */

insert  into `cscp_user`(`id`,`username`,`PASSWORD`) values 
(1,'admin','$2a$10$DSZ14QjgFspWp6zST7l9j.b/MaymuXirfw2sOFKVZ2NaeEbXOzn5y'),
(2,'bjfuxty','$2a$10$XrCQx9CM61EowLC2MG3I5OiwShd72Pt0kYegf34q8a75hSJY0RM8i');

/*Table structure for table `cscp_user_detail` */

DROP TABLE IF EXISTS `cscp_user_detail`;

CREATE TABLE `cscp_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `family_name` varchar(45) DEFAULT NULL COMMENT '姓',
  `name` varchar(45) DEFAULT NULL COMMENT '名',
  `mobile` varchar(45) DEFAULT NULL COMMENT '电话',
  `email` varchar(45) DEFAULT NULL COMMENT '邮箱',
  `img_path` longtext COMMENT '头像',
  `last_login` datetime DEFAULT NULL COMMENT '最后一次登陆时间',
  `disc_title` varchar(45) DEFAULT NULL COMMENT '标题',
  `disc_detail` varchar(500) DEFAULT NULL COMMENT '详细信息',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户详细信息';

/*Data for the table `cscp_user_detail` */

insert  into `cscp_user_detail`(`id`,`user_id`,`family_name`,`name`,`mobile`,`email`,`img_path`,`last_login`,`disc_title`,`disc_detail`,`register_time`) values 
(1,1,'Admin','biyi',NULL,NULL,NULL,'2021-01-15 12:39:31',NULL,NULL,'2021-01-15 11:18:34'),
(2,2,'肖','天宇',NULL,NULL,'data:image/png;base64,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','2021-01-15 17:08:30','admin',NULL,'2021-01-15 11:36:19');

/*Table structure for table `cscp_user_detail_extend` */

DROP TABLE IF EXISTS `cscp_user_detail_extend`;

CREATE TABLE `cscp_user_detail_extend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `extend_title` varchar(45) DEFAULT NULL COMMENT '扩展标题',
  `extend_content` varchar(45) DEFAULT NULL COMMENT '扩展内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户详细信息扩展';

/*Data for the table `cscp_user_detail_extend` */

/*Table structure for table `cscp_user_org` */

DROP TABLE IF EXISTS `cscp_user_org`;

CREATE TABLE `cscp_user_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `org_id` int(11) NOT NULL COMMENT '机构id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户机构表';

/*Data for the table `cscp_user_org` */

/*Table structure for table `cscp_user_password_change_log` */

DROP TABLE IF EXISTS `cscp_user_password_change_log`;

CREATE TABLE `cscp_user_password_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `cscp_user_password_change_log` */

insert  into `cscp_user_password_change_log`(`id`,`user_id`,`password`,`time`) values 
(1,1,'$2a$10$C4sQU4WbdXmmkxeFbpN7Be0Mew02g9eXYrRDyIxIFCE4lw8nBRqm6','2021-01-15 11:18:34'),
(2,2,'$2a$10$X58MxUB8If817Y4DEnIqQeS3zSywiJyrjLFUFUrl4Q0mP0QgqZcNu','2021-01-15 11:38:27');

/*Table structure for table `cscp_user_role` */

DROP TABLE IF EXISTS `cscp_user_role`;

CREATE TABLE `cscp_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户权限表';

/*Data for the table `cscp_user_role` */

insert  into `cscp_user_role`(`id`,`user_id`,`role_id`) values 
(1,1,1),
(5,2,2);

/*Table structure for table `cscp_user_work_group` */

DROP TABLE IF EXISTS `cscp_user_work_group`;

CREATE TABLE `cscp_user_work_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `group_id` int(11) NOT NULL COMMENT 'groupid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组织表';

/*Data for the table `cscp_user_work_group` */

/*Table structure for table `cscp_work_group` */

DROP TABLE IF EXISTS `cscp_work_group`;

CREATE TABLE `cscp_work_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '小组名',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `org_id` int(11) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织表';

/*Data for the table `cscp_work_group` */

/*Table structure for table `cscp_work_group_org` */

DROP TABLE IF EXISTS `cscp_work_group_org`;

CREATE TABLE `cscp_work_group_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '小组id',
  `org_id` int(11) NOT NULL COMMENT '组织id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构表';

/*Data for the table `cscp_work_group_org` */

/*Table structure for table `databasechangelog` */

DROP TABLE IF EXISTS `databasechangelog`;

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `databasechangelog` */

insert  into `databasechangelog`(`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`ORDEREXECUTED`,`EXECTYPE`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`CONTEXTS`,`LABELS`,`DEPLOYMENT_ID`) values 
('BASE-20190128-002','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:07',1,'EXECUTED','8:dcb8ec991ec1cb178959829f29f2d409','createTable tableName=cscp_menus; sql; insert tableName=cscp_menus; insert tableName=cscp_menus; insert tableName=cscp_menus; insert tableName=cscp_menus; insert tableName=cscp_menus; insert tableName=cscp_menus; insert tableName=cscp_menus; inser...','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-003','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:08',2,'EXECUTED','8:8c3688d8ac9ee58d1c39223b9972d437','createTable tableName=cscp_org; sql; insert tableName=cscp_org','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-005','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:09',3,'EXECUTED','8:db473856c4a7e2edb62beb10b05d6cd3','createTable tableName=cscp_roles; sql; insert tableName=cscp_roles','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-006','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:11',4,'EXECUTED','8:ab0dc97765fc2dd6fb857f8d112e120e','createTable tableName=cscp_user; sql; insert tableName=cscp_user','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-007','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:13',5,'EXECUTED','8:09b61efe8efc3ab7f613b4f2bd0b6199','createTable tableName=cscp_user_detail; sql; insert tableName=cscp_user_detail','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-008','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:14',6,'EXECUTED','8:d322667ab0c8b8f8e8b6969a118186f7','createTable tableName=cscp_user_detail_extend; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-009','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:15',7,'EXECUTED','8:702e0a9806daab8dbc41dc3cae16a76c','createTable tableName=cscp_user_org; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-010','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:17',8,'EXECUTED','8:c49548403b0ca57e1e8e7a3689cecad3','createTable tableName=cscp_user_role; sql; insert tableName=cscp_user_role','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-011','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:18',9,'EXECUTED','8:bfad0df835cbd607e41934d8b4ce7df8','createTable tableName=cscp_user_work_group; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-012','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:22',10,'EXECUTED','8:cb9a05cf9e919f6fb3b6b4d54faf66e2','createTable tableName=cscp_work_group; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-013','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:27',11,'EXECUTED','8:5215359c81dc1bc4ed052dd3409e3389','createTable tableName=cscp_work_group_org; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-015','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:33',12,'EXECUTED','8:a26c79deccdc261890d42282d3dff528','createTable tableName=cscp_role_menu; sql; insert tableName=cscp_role_menu; insert tableName=cscp_role_menu; insert tableName=cscp_role_menu; insert tableName=cscp_role_menu; insert tableName=cscp_role_menu; insert tableName=cscp_role_menu; insert...','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('BASE-20190128-016','ctsi','classpath:db/changelog/init_base.xml','2021-01-15 09:28:34',13,'EXECUTED','8:807973936a217182c42fbd648878da49','createTable tableName=cscp_user_password_change_log; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('LOG-20190128-001','ctsi','classpath:db/changelog/init_log.xml','2021-01-15 09:28:36',14,'EXECUTED','8:74f4d93db05c3d4317d3726f26cafc71','createTable tableName=cscp_log_login; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('LOG-20190128-002','ctsi','classpath:db/changelog/init_log.xml','2021-01-15 09:28:37',15,'EXECUTED','8:583d4bc92941c5af87d1be271f2eaba0','createTable tableName=cscp_log_operation; sql','',NULL,'3.8.7',NULL,NULL,'0674082556'),
('DIC-20190128-001','ctsi','classpath:db/changelog/init_dic.xml','2021-01-15 09:28:50',16,'EXECUTED','8:70ca044c909e14989018d4cf01ed9e45','createTable tableName=cscp_dic; sql; insert tableName=cscp_dic; insert tableName=cscp_dic; insert tableName=cscp_dic; insert tableName=cscp_dic; insert tableName=cscp_dic; insert tableName=cscp_dic; insert tableName=cscp_dic; insert tableName=cscp...','',NULL,'3.8.7',NULL,NULL,'0674082556');

/*Table structure for table `databasechangeloglock` */

DROP TABLE IF EXISTS `databasechangeloglock`;

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `databasechangeloglock` */

insert  into `databasechangeloglock`(`ID`,`LOCKED`,`LOCKGRANTED`,`LOCKEDBY`) values 
(1,'\0',NULL,NULL);

/*Table structure for table `tb_active` */

DROP TABLE IF EXISTS `tb_active`;

CREATE TABLE `tb_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `join_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_active` */

insert  into `tb_active`(`id`,`title`,`content`,`create_time`,`create_user_id`,`join_time`) values 
(1,'Workshop on witness character building','<p><span style=\"font-family: &quot;Courier New&quot;; font-weight: bold;\">Please take part in the workshop tomorrow,</span></p><p><span style=\"font-family: &quot;Courier New&quot;; font-weight: bold;\"> please be sure to wear the mask to protect yourself and participate on time, </span></p><p><span style=\"font-family: &quot;Courier New&quot;; font-weight: bold;\">thank you!!</span></p>','2021-01-14 13:41:40',2,'2021-01-14 16:00:00'),
(2,'Symposium on change in age of criminal responsibility','<span style=\"text-decoration-line: underline; background-color: rgb(0, 255, 0);\">Club discussion, please be sure to participate in the activity on time! ~ ~ ~</span>','2021-01-14 13:42:33',2,'2021-01-22 16:00:00');

/*Table structure for table `tb_avatar` */

DROP TABLE IF EXISTS `tb_avatar`;

CREATE TABLE `tb_avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `tb_avatar` */

insert  into `tb_avatar`(`id`,`url`,`name`,`create_time`,`enabled`) values 
(1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif','sketch','2020-12-31 15:01:12',1),
(15,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user-1.jpg','girl','2020-12-31 14:15:07',1),
(16,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user2.jpg','boy','2020-12-31 14:19:31',1),
(17,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user3.jpg','boy2','2020-12-31 14:21:11',1);

/*Table structure for table `tb_chatroom` */

DROP TABLE IF EXISTS `tb_chatroom`;

CREATE TABLE `tb_chatroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_chatroom` */

insert  into `tb_chatroom`(`id`,`user_id`,`message`,`create_time`) values 
(1,8,'Hello world~~~~~','2021-01-16 14:22:50'),
(2,2,'Hello everyone!! <span style=\"font-weight: bold;\">^_^</span>','2021-01-16 14:23:18'),
(3,9,'Hi everyone!','2021-01-17 09:59:36');

/*Table structure for table `tb_file` */

DROP TABLE IF EXISTS `tb_file`;

CREATE TABLE `tb_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `tb_file` */

insert  into `tb_file`(`id`,`name`,`path`,`create_time`) values 
(26,'List.jpg','http://47.105.176.145:8082/cmapp/v4mobiq0.jpg','2021-01-14 13:40:32');

/*Table structure for table `tb_role` */

DROP TABLE IF EXISTS `tb_role`;

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `code` varchar(16) DEFAULT NULL,
  `enabled` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_role` */

insert  into `tb_role`(`id`,`name`,`code`,`enabled`) values 
(1,'admin','roleadmin','1'),
(2,'会员','roleuser','1');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `realname` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`,`mobile`,`address`,`create_time`,`enabled`,`avatar`,`role_id`,`realname`) values 
(1,'Charles','1','13141309261','Beijing West Road','2020-12-26 14:09:11',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user3.jpg',2,'Charles'),
(2,'admin','123','13948274827','Zhongshan Road','2020-12-28 13:12:45',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',1,'Admin'),
(3,'Mandy','123','17303652621','Yihe Road','2020-12-31 14:22:03',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user-1.jpg',2,'Mandy'),
(4,'Lily','123','18910313705','Shanghai Road','2021-01-01 01:12:52',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user3.jpg',2,'Lily'),
(5,'Karl','123','13984928594','Beijing East Road','2020-12-27 08:45:24',1,'https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif',2,'Karl'),
(6,'Bob','123','13682948729','Zhongshan East Road','2021-01-05 10:48:19',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user3.jpg',2,'Bob'),
(7,'Brooke','123','13184064308','Taiping North Road','2021-01-13 13:15:46',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user3.jpg',2,'Brooke'),
(8,'James','123','13791468033','Longpanli Road','2021-01-16 14:17:57',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user-1.jpg',2,'James'),
(9,'Eden','123','13770773429','Mochouhu Road','2021-01-17 09:59:04',1,'https://chart7appyyrzbzpa.ingress.ctbiyi.com/gcrs/user2.jpg',2,'Eden');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
