/*
 Navicat Premium Data Transfer

 Source Server         : amao
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : aienterprisetrain

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 19/04/2018 16:20:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attention_table
-- ----------------------------
DROP TABLE IF EXISTS `attention_table`;
CREATE TABLE `attention_table` (
  `user_attention_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `atte_id` int(50) NOT NULL,
  `atte_type` varchar(50) NOT NULL,
  PRIMARY KEY (`user_attention_id`),
  KEY `uatt_user_id` (`user_id`),
  KEY `uatt_atte_id` (`atte_id`) USING BTREE,
  CONSTRAINT `uatt_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention_table
-- ----------------------------
BEGIN;
INSERT INTO `attention_table` VALUES (1, 3, 9, '');
INSERT INTO `attention_table` VALUES (2, 1, 4, 'user');
INSERT INTO `attention_table` VALUES (3, 2, 7, '');
INSERT INTO `attention_table` VALUES (4, 2, 7, '');
INSERT INTO `attention_table` VALUES (8, 1, 2, 'user');
INSERT INTO `attention_table` VALUES (10, 1, 9, 'user');
INSERT INTO `attention_table` VALUES (11, 1, 10, 'user');
INSERT INTO `attention_table` VALUES (12, 1, 8, 'user');
INSERT INTO `attention_table` VALUES (13, 1, 11, 'user');
INSERT INTO `attention_table` VALUES (15, 1, 7, 'user');
INSERT INTO `attention_table` VALUES (16, 2, 10, 'user');
INSERT INTO `attention_table` VALUES (17, 2, 11, 'user');
INSERT INTO `attention_table` VALUES (18, 1, 2, 'user');
INSERT INTO `attention_table` VALUES (19, 2, 1, 'user');
COMMIT;

-- ----------------------------
-- Table structure for company_admin_table
-- ----------------------------
DROP TABLE IF EXISTS `company_admin_table`;
CREATE TABLE `company_admin_table` (
  `cpy_admin_id` int(50) NOT NULL AUTO_INCREMENT,
  `cpy_admin_no` varchar(50) NOT NULL,
  `cpy_admin_pwd` varchar(50) NOT NULL,
  `cpy_admin_tel` varchar(50) NOT NULL,
  `cpy_admin_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpy_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_admin_table
-- ----------------------------
BEGIN;
INSERT INTO `company_admin_table` VALUES (1, '201702111', '000', '16525572401', '董元白');
INSERT INTO `company_admin_table` VALUES (2, '201702110', '000', '13946378234', '万雨石');
INSERT INTO `company_admin_table` VALUES (5, '201501020', '000', '16482938392', '曾俊哲');
COMMIT;

-- ----------------------------
-- Table structure for course_comment_table
-- ----------------------------
DROP TABLE IF EXISTS `course_comment_table`;
CREATE TABLE `course_comment_table` (
  `course_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_comment_date` varchar(50) DEFAULT NULL,
  `course_comment_cont` varchar(500) DEFAULT NULL,
  `course_comment_star` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_comment_table
-- ----------------------------
BEGIN;
INSERT INTO `course_comment_table` VALUES (1, 1, 1, '2018-04-09 22:47:39', '测试1', 0);
INSERT INTO `course_comment_table` VALUES (2, 2, 1, '2018-04-09 22:52:39', '测试2', 0);
INSERT INTO `course_comment_table` VALUES (3, 4, 1, '2018-04-09 23:43:16', '测试3', 0);
INSERT INTO `course_comment_table` VALUES (5, 4, 1, '2018-04-09 23:45:27', '测试3', 0);
INSERT INTO `course_comment_table` VALUES (6, 1, 6, '2018-04-10 20:11:09', 'hahaha', 0);
INSERT INTO `course_comment_table` VALUES (7, 1, 6, '2018-04-10 20:12:22', '讲得很好啊', 0);
INSERT INTO `course_comment_table` VALUES (8, 1, 1, '2018-04-10 20:23:14', '测试完成', 0);
INSERT INTO `course_comment_table` VALUES (9, 1, 6, '2018-04-10 21:03:28', 'asa', 0);
INSERT INTO `course_comment_table` VALUES (10, 1, 6, '2018-04-10 21:03:35', 'asa', 0);
INSERT INTO `course_comment_table` VALUES (11, 1, 6, '2018-04-10 21:03:36', 'asa', 0);
INSERT INTO `course_comment_table` VALUES (12, 1, 1, '2018-04-10 21:03:46', 'as', 0);
INSERT INTO `course_comment_table` VALUES (13, 1, 1, '2018-04-14 10:11:44', '这门课真好!', 0);
INSERT INTO `course_comment_table` VALUES (14, 1, 1, '2018-04-14 10:11:54', '老师讲的很不错.很喜欢', 0);
INSERT INTO `course_comment_table` VALUES (15, 3, 1, '2018-04-14 10:12:27', '大家都可以看看哦!', 0);
INSERT INTO `course_comment_table` VALUES (16, 2, 1, '2018-04-14 10:12:55', '我也觉得很不错!', 0);
INSERT INTO `course_comment_table` VALUES (17, 0, 80, '2018-04-14 21:18:38', '666666讲解到位', 0);
INSERT INTO `course_comment_table` VALUES (18, 0, 80, '2018-04-14 21:18:48', '666666讲解到位', 0);
INSERT INTO `course_comment_table` VALUES (19, 0, 80, '2018-04-14 21:18:59', '666666讲解到位', 0);
INSERT INTO `course_comment_table` VALUES (20, 0, 80, '2018-04-14 21:19:09', '666666讲解到位', 0);
INSERT INTO `course_comment_table` VALUES (21, 0, 80, '2018-04-14 21:19:10', '666666讲解到位', 0);
INSERT INTO `course_comment_table` VALUES (22, 0, 1, '2018-04-14 21:19:59', '不错', 0);
INSERT INTO `course_comment_table` VALUES (23, 0, 1, '2018-04-14 21:22:40', '不错', 0);
INSERT INTO `course_comment_table` VALUES (24, 0, 1, '2018-04-14 21:25:35', 'bucuo', 0);
INSERT INTO `course_comment_table` VALUES (25, 1, 11, '2018-04-15 11:01:35', '111', 0);
INSERT INTO `course_comment_table` VALUES (26, 1, 1, '2018-04-15 11:22:29', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (27, 1, 1, '2018-04-15 11:22:30', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (28, 1, 1, '2018-04-15 11:22:34', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (29, 1, 1, '2018-04-15 11:22:35', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (30, 1, 1, '2018-04-15 11:22:37', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (31, 1, 1, '2018-04-15 11:22:42', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (32, 1, 1, '2018-04-15 11:22:43', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (33, 1, 1, '2018-04-15 11:22:50', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (34, 1, 1, '2018-04-15 11:22:51', '讲的挺好的', 0);
INSERT INTO `course_comment_table` VALUES (35, 1, 76, '2018-04-15 11:23:12', '666', 0);
INSERT INTO `course_comment_table` VALUES (36, 1, 76, '2018-04-15 11:23:13', '666', 0);
INSERT INTO `course_comment_table` VALUES (37, 1, 2, '2018-04-16 18:39:14', '课程讲解很详细，通俗易懂', 0);
INSERT INTO `course_comment_table` VALUES (38, 1, 1, '2018-04-18 04:42:36', '讲的真好', 0);
INSERT INTO `course_comment_table` VALUES (39, 1, 1, '2018-04-18 04:43:04', ' 将 ', 0);
INSERT INTO `course_comment_table` VALUES (40, 1, 25, '2018-04-18 04:44:05', '讲的真好', 0);
INSERT INTO `course_comment_table` VALUES (41, 1, 26, '2018-04-18 04:45:02', '讲的真好!', 0);
INSERT INTO `course_comment_table` VALUES (42, 2, 1, '2018-04-19 15:31:57', '那你', 0);
COMMIT;

-- ----------------------------
-- Table structure for course_table
-- ----------------------------
DROP TABLE IF EXISTS `course_table`;
CREATE TABLE `course_table` (
  `course_id` int(50) NOT NULL AUTO_INCREMENT,
  `course_no` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_type` int(50) NOT NULL,
  `course_level` int(50) NOT NULL,
  `course_intro` varchar(500) NOT NULL,
  `course_puber_id` int(50) NOT NULL,
  `course_purchase` int(50) NOT NULL,
  `course_click` int(50) NOT NULL,
  `course_author` varchar(50) NOT NULL,
  `course_author_id` int(11) NOT NULL,
  `course_price` int(50) NOT NULL,
  `course_date` varchar(50) NOT NULL,
  `course_puber_type` varchar(50) NOT NULL,
  `course_score` double(50,5) NOT NULL,
  `course_img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_table
-- ----------------------------
BEGIN;
INSERT INTO `course_table` VALUES (1, '2015012304', '保险学', 1, 1, '课程按照教材篇章结构，辅导老师精讲教材章节内容，并在此基础上分析重难点以及各个知识点需掌握的程度。通过梳理各章知识点，将各个知识点的经络编制清晰，使知识点形成一个框架网络，强化基础知识的基础上分析教材的考点，归纳难点、重点。', 201501011, 0, 602, '方文斌', 1, 200, '20171010', '1', 0.00000, '../img/bxx.jpg');
INSERT INTO `course_table` VALUES (2, '2014111101', '保险行业审计实务', 1, 2, '课程介绍保险公司的业务特征、保险公司审计常见的重大风险、承保流程及相关科目审计、精算流程及相关科目审计、投资流程及相关科目审计以及保险公司监管及其对审计的影响等几个主要部分。运用中国人寿、平安保险等具体上市保险公司的业务实例配合理论讲解。', 201501020, 0, 14, '于雅志', 2, 0, '20161022', '0', 5.00000, '../img/bxsj.jpg');
INSERT INTO `course_table` VALUES (3, '2015112202', '内部控制与风险管理', 1, 1, '从社会保障制度本身来讲，它的目标就是保障每一个民众不管面临何种风险都能够保证基本生活或者最低生活，从而保证社会的公平进而实现社会的稳定和发展。这种内在的属性决定了其责任主体是国家和社会。', 201601020, 0, 7, '贺俊英', 3, 0, '20161021', '0', 7.00000, '../img/nbkz.jpg');
INSERT INTO `course_table` VALUES (4, '2014112203', '金融市场', 2, 1, '课程致力于帮助学生掌握：金融学理论、金融业的发展历程、金融机构（例如银行、保险公司、证券公司、期货公司及其他衍生品市场）的优势与缺陷以及这些机构的发展前景。', 201501020, 0, 7, '曾俊哲', 5, 0, '20160221', '0', 10.00000, '../img/jrsc.jpg');
INSERT INTO `course_table` VALUES (5, '2015061211', '金融市场和机构', 2, 2, '课程让学员了解不同金融证券的风险收益权衡。', 201701130, 0, 10, '魏华林', 4, 0, '20171022', '0', 8.50000, '../img/jrschjg.jpg');
INSERT INTO `course_table` VALUES (6, '2015012312', 'CFP国际金融理财师教程', 2, 4, '', 201502010, 9, 34, '高亚莉', 6, 0, '20150301', '0', 9.40000, '../img/lcs.jpg');
INSERT INTO `course_table` VALUES (7, '2015012201', '国际金融实务', 2, 3, '由于我国企业的“国际化”刚刚起步，缺乏在国际金融市场上投资经营的经验，对国际金融市场的运作机制和环境不太熟悉，很多资本在境外的投资并不顺利。而在当前的经济体系中，金融已经成为经济的核心，了解经济首先要了解金融。', 201604011, 25, 53, '代码兜', 3, 1, '20161212', '1', 7.00000, '../img/jrsw.jpg');
INSERT INTO `course_table` VALUES (8, '2015011205', '中级财务管理', 3, 1, '财务管理课程是在一定的整体目标下，关于资产的购置（投资），资本的融通（筹资）和经营中现金流量（营运资金），以及利润分配的管理。课程分为：总论、财务管理基础、预算管理、筹资管理（上）、筹资管理（下）、投资管理、营运资金管理、成本管理、收入与分配管理、财务分析与评价。', 201606011, 122, 136, '代码兜', 3, 67, '20161211', '1', 5.00000, '../img/p1.jpg');
INSERT INTO `course_table` VALUES (9, '2016071304', '财务管理学', 3, 2, '课程按照教材篇章结构，辅导老师精讲教材章节内容，并在此基础上分析重难点以及各个知识点需掌握的程度。通过梳理各章知识点，将各个知识点的经络编制清晰，使知识点形成一个框架网络，强化基础知识的基础上分析教材的考点，归纳难点、重点。', 201606011, 80, 90, '张录法', 8, 200, '20171211', '1', 7.80000, '../img/p2.jpg');
INSERT INTO `course_table` VALUES (10, '2015012305', '金融法律制度', 4, 1, '\r\n课程为大家介绍商业银行法，介绍证券发行和交易以及上市公司收购相关的法律制度，将详细介绍票据法和保险法，最后，简单介绍外汇管理法律制度。', 201501030, 5, 50, '孟令余', 7, 0, '20160101', '0', 6.70000, '../img/p3.jpg');
INSERT INTO `course_table` VALUES (11, '2017110201', '金融法律制度', 4, 2, '课程讲授会计职称考试的内容，让大家了解金融法律制度。', 201509011, 0, 104, '孟令余', 7, 5, '20171111', '1', 9.40000, '../img/p4.jpg');
INSERT INTO `course_table` VALUES (12, '2016010104', '货币金融学', 5, 1, '课程使用思维导图对金融学核心课程货币金融学进行系统全面地介绍。主要包含了货币银行学的核心知识点。使用思维导图对该课程进行了系统全面的梳理、使学习者能够更加系统地学习该课程', 201611011, 0, 27, '孟令余', 7, 5, '20170201', '1', 8.40000, '../img/p5.jpg');
INSERT INTO `course_table` VALUES (13, '2015030205', '货币金融学', 5, 2, '\r\n课程按照教材篇章结构，辅导老师精讲教材章节内容，并在此基础上分析重难点以及各个知识点需掌握的程度。', 201611011, 2, 5, '孟令余', 7, 200, '20170223', '1', 7.90000, '../img/p6.jpg');
INSERT INTO `course_table` VALUES (14, '2015101207', '财政学', 6, 1, '课程比较全面系统地讲述了财政的基础理论和基础知识，反映了近年来我国经济体制改革和财政、税收改革的发展变化与实践经验，适当的介绍了国债、国家预算和财政平衡。', 201505020, 0, 2, 'Robert Shiller', 9, 0, '20160101', '0', 7.90000, '../img/p7.jpg');
INSERT INTO `course_table` VALUES (15, '2016011009', '电子商务概论', 8, 1, '', 201604211, 190, 301, '戴夫', 14, 59, '20170122', '1', 8.20000, '../img/p8.jpg');
INSERT INTO `course_table` VALUES (16, '2016012211', '银行信贷风险管理', 7, 1, '课程介绍银行做风险评估的九个技法：非量化因素风险评估、客户评级、债项评级、财务分析、流动资金额度测算、授信额度测算、信贷资产综合定价、项目评估和担保管理。', 201512011, 12, 14, '刘晓伟', 12, 400, '20170101', '1', 9.60000, '../img/p9.jpg');
INSERT INTO `course_table` VALUES (17, '2016122101', '职场思维', 29, 1, '课程传授如何在初入职场时迅速适应环境，调整心理状态，如何职业化地工作便显得尤为重要了，下面的一些细节教你如何更加职业化，避免被同事嫌弃为“猪一样的队友”。', 201702110, 0, 0, '\r\n刘晓伟', 12, 0, '20170211', '0', 7.60000, '../img/p10.jpg');
INSERT INTO `course_table` VALUES (18, '2015111003', '培养适应职场变动的能力', 29, 2, '课程通过对可转换能力的深入分析，为您强调了此种能力的特点以及获取渠道，让您可以在繁忙工作之余，加强能力提升，让您的职场更加充实。', 201702111, 58, 90, '崔建远', 11, 10, '20170303', '1', 5.00000, '../img/p11.jpg');
INSERT INTO `course_table` VALUES (19, '2016080901', '审辩和创造性思维的培养', 30, 2, '', 201702111, 0, 0, '魏华林', 4, 50, '20170706', '1', 7.30000, '../img/p12.jpg');
INSERT INTO `course_table` VALUES (20, '2015090205', '创造别人想要的东西', 30, 1, '课程锻炼学员的创造思维，日常生活中创造出别人需要的东西，不是一件简单的事情。让你创造个别人想要的东西不再这么难。', 201702110, 909, 190, '魏华林', 4, 0, '20170801', '0', 8.80000, '../img/p13.jpg');
INSERT INTO `course_table` VALUES (21, '2016070101', '品牌创造力领袖课程', 30, 3, '课程打造一个能让不同背景但对创意产业充满激情的学员，抵三年以上实战工作经验，为行业快速输出一批具实战力的创意领袖。', 201702111, 128, 130, '赵聪', 5, 780, '20170904', '1', 5.30000, '../img/p14.jpg');
INSERT INTO `course_table` VALUES (22, '2016090104', '时尚品牌的应变力', 31, 1, '\r\n课程提高学员的应变能力，品牌如果管理得当，就可以改变消费者的行为，这是品牌的最高境界。本课程便可提升你的品牌管理应变能力。', 201702110, 0, 10, '\r\n赵聪', 5, 0, '20171210', '0', 6.90000, '../img/p15.jpg');
INSERT INTO `course_table` VALUES (23, '2017011101', '风险处理方式', 31, 2, '金融领域充斥着收益和风险，本课程将对风险发成后的应急处理方式进行介绍。', 201702111, 89, 100, '赵聪', 5, 78, '20170809', '1', 8.40000, '../img/p16.jpg');
INSERT INTO `course_table` VALUES (24, '2016012903', '高情商沟通【基础版】', 32, 1, '课程提高学员平时的协调沟通能力。高情商沟通可以帮助你更好的解决这些问题。', 201702111, 0, 0, '\r\nRobert Shiller', 9, 680, '20170802', '1', 5.20000, '../img/p17.jpg');
INSERT INTO `course_table` VALUES (25, '2016010107', '商务沟通技巧', 32, 2, '课程主要讲述了商务人士必须掌握的20种沟通技巧，可以帮助你应对职场中各种各样的沟通困境；和人际关系拓展，指出商务人士必须用经营顾客的心来经营人际关系，建立个人的关系网络，并针对“取悦型”、“离开型”、 “对抗型”这三类人，提出了种种改善人际关系的方法。', 201702110, 111, 184, '方文斌', 1, 0, '20170909', '0', 8.40000, '../img/p18.jpg');
INSERT INTO `course_table` VALUES (26, '2016020109', '高情商沟通', 32, 3, '', 201702111, 0, 1, '方文斌', 1, 128, '20170402', '1', 9.90000, '../img/p19.jpg');
INSERT INTO `course_table` VALUES (27, '2017011901', '高情商人士的沟通技巧', 32, 4, '课程让学员真正学会如何通过沟通达成更好的人际关系。', 201702111, 168, 189, '方文斌', 1, 179, '20170402', '1', 8.50000, '../img/p20.jpg');
INSERT INTO `course_table` VALUES (28, '2016091004', '计算机网络技术基础', 25, 1, '课程让学员可以建立网络信息系统的整体概念，学习并掌握建设、运行维护及管理网络信息系统的各种基本网络技术，为后面专业技能视频教程打下坚实的基础。', 201610291, 12, 16, '\r\n罗丽琴', 10, 12, '20170201', '1', 8.40000, '../img/p21.jpg');
INSERT INTO `course_table` VALUES (29, '2017012008', '计算机网络原理精讲', 25, 2, '课程从计算机网络的物理层 数据链路层 网络层 传输层 应用层 逐一给大家讲解。对计算机通信的机制做彻底剖学完本课程，很多网络中遇到的困惑，你就能够找到答案。', 201610291, 67, 100, '\r\n罗丽琴', 10, 4, '20170309', '1', 6.40000, '../img/p22.jpg');
INSERT INTO `course_table` VALUES (30, '2016122101', '计算机网络安全', 25, 4, '\r\n课程按照计算机通信分层思想讲解网络安全，为学员展示数据链路层安全VLAN和交换机端口安全，为你演示在路由器上实现的网络安全，ARP协议带来的网络安全隐患，网络执法官和P2P终结者，网络密码嗅探软件工作原理和使用方法，利用传输层进行攻击LAND攻击和SYN攻击，端口扫描，DDOS攻击演示，利用Windows防火墙防范远程控制程序入侵，IPSec防范灰鸽子木马入侵。', 201610291, 76, 132, '\r\n崔建远', 11, 1, '20170902', '1', 7.90000, '../img/p23.jpg');
INSERT INTO `course_table` VALUES (31, '2017010907', '计算机网络技术与应用', 25, 3, '课程在讲解基础理论知识同时，介绍相应理论知识在网络系统中的具体应用，使同学们能够对网络的基本原理、网络协议有一个直观的认识。同时，通过动手实践和对实验现象的解释，加深对理论知识的理解，从而进一步将理论应用于实际问题的解决之中。', 201610290, 89, 176, '崔建远', 11, 0, '20170603', '0', 8.40000, '../img/p24.jpg');
INSERT INTO `course_table` VALUES (32, '2017012801', 'MySQL数据库入门与实战', 26, 1, '课程将从应用层面全方位讲解MySQL数据库技术点及运维管理，帮助学员掌握这门世界上使用最广泛的开源数据库技术。', 201610291, 70, 180, '\r\n崔建远', 11, 48, '20170921', '1', 7.90000, '../img/p25.jpg');
INSERT INTO `course_table` VALUES (33, '2016121905', 'MySQL数据库操作', 26, 1, '课程不仅有数据库的应用介绍，也有在PHP处理数据库的应用。', 201610290, 15, 69, '刘晓伟', 12, 0, '20180128', '0', 8.00000, '../img/p26.jpg');
INSERT INTO `course_table` VALUES (34, '2016112711', 'PHP&MySQL处理数据', 26, 2, '课程主要讲解了PHP项目如何和MySQL数据库连接及项目中处理数据用到函数并实例讲解如何调用模板来搭建后台，以及实现后台数据的增加人员信息的功能。', 201610290, 32, 81, '刘晓伟', 12, 0, '20171210', '0', 9.20000, '../img/p27.jpg');
INSERT INTO `course_table` VALUES (35, '2016092605', 'MYSQL 数据库', 26, 4, '课程从基础讲解MYSQL 数据库。', 201610290, 90, 175, '\r\n刘晓伟', 12, 0, '20170619', '0', 6.20000, '../img/p28.jpg');
INSERT INTO `course_table` VALUES (36, '2016012506', '数据库实战案例分析', 26, 3, '课程讲述了NoSQL在MySQL上的应用，介绍了Memcached和Redis两种键值数据库的架构和原理以及在MySQL中的应用，并以Memcached为例进行了MySQL+KV数据库架构的搭建和演示。', 201610290, 78, 190, '孙兆军', 13, 0, '20161229', '0', 7.30000, '../img/p29.jpg');
INSERT INTO `course_table` VALUES (37, '2017012003', '数据库系统概论', 26, 3, '课程概述：按照教材篇章结构，辅导老师精讲教材章节内容，并在此基础上分析重难点以及各个知识点需掌握的程度。通过梳理各章知识点，将各个知识点的经络编制清晰，使知识点形成一个框架网络，强化基础知识的基础上分析教材的考点，归纳难点、重点。在各个章节中，通过列举并分析历年考研真题，明确命题规律和特点，引导学员掌握考点的历年出题思路及方式，从而有效指导学员复习相关知识点。', 201610291, 39, 60, '孙兆军', 13, 200, '20171215', '1', 8.30000, '../img/p30.jpg');
INSERT INTO `course_table` VALUES (38, '2016102711', '软件工程', 27, 2, '课程主要研究如何用软件工程的思想和方法来指导软件的开发和设计、以及测试的整个过程。', 201610291, 3, 50, '孙兆军', 13, 58, '20170219', '1', 5.80000, '../img/p31.jpg');
INSERT INTO `course_table` VALUES (39, '2016112906', '软件工程师之HTML网页', 27, 1, '课程讲述了互联网的发展概论；html 基本结构；html 字体、图片、超级链接；html 表格设计和表单提交；html 框架的设计；样式入门；样式表之盒子模型；样式表之网页布局与定位。', 201610290, 78, 93, '\r\n孙兆军', 13, 0, '20171023', '0', 8.20000, '../img/p32.jpg');
INSERT INTO `course_table` VALUES (40, '2016120106', '软件工程师之三PHP入门', 27, 1, '', 201610290, 45, 80, '\r\n戴夫', 14, 0, '20171024', '0', 6.90000, '../img/p33.jpg');
INSERT INTO `course_table` VALUES (41, '2016120206', '软件工程师之四Jquery', 27, 1, '课程讲述了技术。jquery 选择器，jquery dom 和css的操作，jquery 对文档的操作，jquery Ajax。', 201610290, 29, 52, '\r\n戴夫', 14, 0, '20171025', '0', 6.80000, '../img/p34.jpg');
INSERT INTO `course_table` VALUES (42, '2016120306', '软件工程师五bootStrap', 27, 1, '课程主要讲述bootStrapBootstrap，它是基于 HTML、CSS、JAVASCRIPT 的，它简洁灵活，使得 Web 开发更加快捷。', 201610290, 78, 90, '戴夫', 14, 0, '20171026', '0', 7.30000, '../img/p35.jpg');
INSERT INTO `course_table` VALUES (43, '2016120406', '软件工程师之六Smarty', 27, 1, '课程主要介绍Smarty。从php 中给smarty 模板分配变量；分配普通变量/分配数组变量/分配对象；Smarty变量；Smarty数学运算；Smarty函数；Smarty从配置文件读取的变量；Smarty变量调节器；Smarty 内建函数；Smarty Caching缓存。', 201610290, 56, 76, '\r\n戴夫', 14, 0, '20171027', '0', 7.10000, '../img/p36.jpg');
INSERT INTO `course_table` VALUES (44, '2016023001', '华为设备WLAN部署实战', 25, 4, 'WLAN技术的应用已经相当广泛，无论您是在餐厅，还是在宾馆、机场、火车站、汽车站、家中、学校、甚至大街上，都有WIFI信号可以让您方便的接入互联网。因此，WLAN的部署也是各大运营商以及企业的重头戏。', 201610291, 0, 34, '戴夫', 14, 46, '20170827', '1', 8.60000, '../img/p37.jpg');
INSERT INTO `course_table` VALUES (45, '2016071903', '电信运营商之思科', 25, 4, '课程带学员学习大型电信运营商网络的物理架构以及数据架构，是理论知识的现网应用。', 201610291, 7, 21, '王志辉', 15, 36, '20170829', '1', 8.60000, '../img/p38.jpg');
INSERT INTO `course_table` VALUES (46, '2016061701', '电脑维修课程', 28, 1, '课程主要讲解电脑高级设置、系统目录结构、电脑优化、BIOS设置、日常维修、数据恢复等。', 201610291, 65, 181, '张瑞杰', 15, 48, '20171021', '1', 6.90000, '../img/p39.jpg');
INSERT INTO `course_table` VALUES (47, '2017012003', '基础财务会计', 9, 1, '本课程将介绍最基础的财务会计知识及对分录的理解，学习完本课程能做出最基本的报表。', 201612011, 67, 91, '戴夫', 14, 98, '20171120', '1', 8.40000, '../img/p40.jpg');
INSERT INTO `course_table` VALUES (48, '2016121510', '财务会计概论', 9, 1, '课程主要介绍会计导论和财务报表的知识。', 201612011, 0, 78, '王芳', 15, 88, '20161226', '1', 7.80000, '../img/p41.jpg');
INSERT INTO `course_table` VALUES (49, '2017012802', '企业财务会计内外账', 9, 2, '课程分享了会计概述及其基础知识，帮助你掌握基本的会计原理，熟通会计业务操作的流程与规则，懂得会计信息记录与报表填制。让零基础的学员充分理解会计基础，熟知考点，吃透难点，掌握会计建账、会计记账、会计分录、会计科目等会计人员上岗所必备的知识与技能。', 201612011, 40, 180, '孙兆军', 13, 99, '20170918', '1', 8.20000, '../img/p42.jpg');
INSERT INTO `course_table` VALUES (50, '2016042912', '高级财务会计', 9, 3, '《高级财务会计》课是会计学专业的必修专业课，是在学习专业基础课《基础会计》之后，对《中级财务会计》、《成本会计》、《财务管理》、《管理会计》等专业课的学习之后开设的提高学生专业知识面的课程。', 201612011, 52, 329, '代码兜', 3, 38, '20170618', '1', 5.80000, '../img/p43.jpg');
INSERT INTO `course_table` VALUES (51, '2016112103', '财务会计', 9, 4, '', 201612011, 2, 54, '代码兜', 3, 149, '20171201', '1', 5.20000, '../img/p44.jpg');
INSERT INTO `course_table` VALUES (52, '2016012901', '基本财务报表分析法', 10, 1, '学习财务报表分析的重要性在于，通过阅读财务报表及其附注，课程主要分析一家企业在一定时期内的财务健康状况和经营活动盈利水平等等的信息。', 201612271, 89, 190, '代码兜', 3, 99, '20171216', '1', 8.60000, '../img/p1.jpg');
INSERT INTO `course_table` VALUES (53, '2015122604', '财务报表分析与营运', 10, 2, '课程介绍营运资本分析——有效控制资金效率及风险。', 201612270, 21, 67, '代码兜', 3, 0, '20161229', '0', 4.80000, '../img/p2.jpg');
INSERT INTO `course_table` VALUES (54, '2016071910', '财务报表分析解读', 10, 3, '课程主要是通过三张报表的解读与分析，借由丰富的课堂互动练习与案例讨论形式，让学员读懂三张报表并了解报表功能，从而提升学员财务意义与分析管理的能力。通过此门课程的学习，学员能更好的了解企业在各个环节的管理工作，为与财务之间更好的沟通打下了基础。', 201612270, 51, 78, '\r\n代码兜', 3, 0, '20170129', '0', 6.40000, '../img/p3.jpg');
INSERT INTO `course_table` VALUES (55, '2016050203', '财务报表分析', 10, 4, '你可能是一个研究员，在调研各个上市公司，财报分析是你的基本功，无论年报、半年报，还是季报，只要有公告，你就要进行数字背后的解析，帮助你的客户解答数字背后的“秘密”。', 201612271, 4, 67, '\r\n高亚莉', 6, 199, '20170129', '1', 8.30000, '../img/p5.jpg');
INSERT INTO `course_table` VALUES (56, '2016052701', '证券分析师_财务报表分析', 10, 3, '课程讲授分析师要掌握的财务报表分析技能。财务报表是投资界的通用语言，研究该公司的财务报表是了解一家公司的真实运营状况是最便捷的一个手段。\r\n', 201612271, 33, 60, '张录法', 8, 49, '20170929', '1', 7.40000, '../img/p6.jpg');
INSERT INTO `course_table` VALUES (57, '2016042804', '用思维导图认识财务报表', 10, 2, '课程使用思维导图的方式更清晰地认识财报。主要包括财报中各部分的分类、特点、关系等。', 201612271, 1, 43, '张录法', 8, 48, '20170619', '1', 8.30000, '../img/p7.jpg');
INSERT INTO `course_table` VALUES (58, '2016092805', '财报入门课', 10, 1, '课程介绍了财报的相关基础知识，通过学习该课程能够对财报有个具体的认识。', 201612271, 12, 47, '代码兜', 3, 10, '20170324', '1', 6.30000, '../img/p8.jpg');
INSERT INTO `course_table` VALUES (59, '2016112708', '审计学', 11, 3, '课程介绍了财报的相关基础知识，通过学习该课程能够对财报有个具体的认识。\r\n课程是一门用以培养学生能审会查能力的应用型的技术基础课，主要研究审计工作的资格条件和审计技术方法、不同审计主体的审计特点、审计思路、审计流程、审计风险和审计方案的选择，围绕审计质量与效率的均衡问题展开教学的。', 201610201, 0, 4, '代码兜', 3, 76, '20161213', '1', 6.90000, '../img/p9.jpg');
INSERT INTO `course_table` VALUES (60, '2016032003', '\r\n教你如何运作审计项目、出具报告', 11, 1, '课程以审计实务为基础，结合国际四大会计师事务所和500强美资企业的审计流程和经验，穿插在亚太地区的审计中常见的审计案例。在教学过程中会引用重要的财务制度和审计准则，注重学生在审计实务的操作同时加强对核心会计和审计理念的培养。', 201610200, 1, 34, '代码兜', 3, 0, '20170125', '0', 8.20000, '../img/p10.jpg');
INSERT INTO `course_table` VALUES (61, '2016072801', '注册会计师（CPA）', 11, 2, '', 201610200, 67, 78, '张录法', 8, 0, '20170324', '0', 7.40000, '../img/p11.jpg');
INSERT INTO `course_table` VALUES (62, '2016021004', 'Excel在审计工作中的应用与技巧', 11, 4, '\r\nExcel能够方便的制作出各种电子表格，使用公式和函数对数据进行复杂的运算;用各种图表来表示数据直观明了;利用超级链接功能，用户可以快速打开局域网或Interner上的文件。', 201610201, 6, 23, '代码兜', 3, 289, '20170728', '1', 8.20000, '../img/p12.jpg');
INSERT INTO `course_table` VALUES (63, '2015122601', '资产评估', 12, 2, '\r\n', 201607061, 39, 41, '代码兜', 3, 68, '20170801', '1', 7.00000, '../img/p13.jpg');
INSERT INTO `course_table` VALUES (64, '2016022704', '资产负债表', 12, 3, '课程介绍了资产负债表的构成和作用。通过阅读这一报表，你可以了解一家企业的财务状况，并初步判断企业运营是否正常。', 201607061, 3, 13, '代码兜', 3, 99, '20170128', '1', 7.90000, '../img/p14.jpg');
INSERT INTO `course_table` VALUES (65, '2016120701', '资产业务', 12, 1, '课程主要分为贷款业务，债券资产业务和其他资产业务三个方面进行讲解。通过这节课的学习，我们会对贷款业务的相关概念，分类，流程以及一些管理相关的知识有一个系统的认识。', 201607061, 29, 52, '张录法', 8, 16, '20161031', '1', 6.50000, '../img/p15.jpg');
INSERT INTO `course_table` VALUES (66, '2015092705', '财务报表解读之资产负债表', 12, 3, '课程主要内容为资产结构和流动性和资本结构与财务风险。', 201607061, 67, 99, 'Robert Shiller', 9, 50, '20170829', '1', 8.30000, '../img/p16.jpg');
INSERT INTO `course_table` VALUES (67, '2016011702', '行政单位会计制度实务操作', 13, 1, '', 201608210, 3, 23, '罗丽琴', 10, 0, '20161228', '0', 7.40000, '../img/p17.jpg');
INSERT INTO `course_table` VALUES (68, '2016091401', '高校会计制度', 13, 1, '课程介绍了高校会计制度，章节包括资产部分，负债、收入、费用，净资产及衔接财务报表。', 201608210, 78, 189, '罗丽琴', 10, 0, '20171225', '0', 8.40000, '../img/p18.jpg');
INSERT INTO `course_table` VALUES (69, '2016112104', '企业成本会计操作实务', 14, 1, '成本会计做账实操课程，包括成本核算、会计实务、账户和借贷记账法的运用、账户的分类、会计凭证，财产清查的方法，会计做账技巧，会计报表的概念、作用、结构和内容，财务报告分析等。', 201612191, 67, 136, '崔建远', 11, 99, '20170121', '1', 7.30000, '../img/p19.jpg');
INSERT INTO `course_table` VALUES (70, '2017011703', '成本会计', 14, 2, '', 201612191, 6, 80, '罗丽琴', 10, 389, '20171206', '1', 8.90000, '../img/p20.jpg');
INSERT INTO `course_table` VALUES (71, '2016122901', '管理会计基础课', 15, 1, '能够帮助管理会计师熟悉和读懂四张财务报表，并理解财务报表中的概念，包括确认、计量、记录和报告，同时对比美国公认会计原则（GAAP）与国际财务报告准则（IFRS）之间的主要差异。', 201701111, 76, 129, '\r\n刘晓伟', 12, 19, '20171227', '1', 7.30000, '../img/p21.jpg');
INSERT INTO `course_table` VALUES (72, '2016042306', '管理会计实操之成本费用控制', 15, 2, '课程从观念到具体操作，从存货管理到成本费用管控制体系，全面、系统地讲解了企业进行有效的成本费用控制的方法、流程、组织、各部门职责、协调配合等等内容。', 201701111, 56, 221, '刘晓伟', 12, 160, '20170902', '1', 8.30000, '../img/p22.jpg');
INSERT INTO `course_table` VALUES (73, '2016082004', ' 管理会计“入门”', 15, 1, '', 201701111, 7, 28, '刘晓伟', 12, 138, '20170627', '1', 9.20000, '../img/p23.jpg');
INSERT INTO `course_table` VALUES (74, '2016042109', '晋升财务主管之路', 15, 3, '', 201701111, 3, 794, '刘晓伟', 12, 50, '20170228', '1', 6.80000, '../img/p24.jpg');
INSERT INTO `course_table` VALUES (75, '2016012308', '美国注册管理会计师（CMA）', 15, 4, '', 201701111, 56, 210, '代码兜', 3, 6800, '20180129', '1', 8.60000, '../img/p25.jpg');
INSERT INTO `course_table` VALUES (76, '2016042309', '律写作与职场讲演', 16, 2, '接受客户指示；法律根据参考资料；修改和重新起草；IRAC分析法；润色、格式和校对；保密和特权信息；', 201604231, 28, 50, '刘晓伟', 12, 179, '20170823', '1', 7.60000, '../img/p26.jpg');
INSERT INTO `course_table` VALUES (77, '2016091801', '电子商务法律法规', 16, 1, '熟悉各类法律法规，维护自己合法权益。', 201604231, 2, 78, '罗丽琴', 10, 49, '20170324', '1', 8.10000, '../img/p27.jpg');
INSERT INTO `course_table` VALUES (78, '2015121603', '《合同法》经典案例分析', 17, 1, '课程讲述处理案件的基本思路和方法；并辅助以真实案例，让学员充分理解来达到培训目的。', 201502121, 231, 358, '\r\n崔建远', 11, 116, '20180721', '1', 7.50000, '../img/p28.jpg');
INSERT INTO `course_table` VALUES (79, '2016072802', '劳动合同法解析与应对策略', 17, 2, '课程按照劳动合同法实施条例的结构顺序和条文主旨逐条释义，结合劳动法、劳动合同法、劳动争议仲裁法等法律法规、争议焦点，详细分析了企业在劳动合同法、劳动合同法实施条例应用过程中应该注意的事项和应对策略等内容，同时精选许多经典案例帮助理解法律条文，把晦涩的法律条文变得鲜活生动。讲课内容紧密联系工作实际，能使读者很快掌握和应用劳动合同法实施条例的内容。本套讲座生动精彩、实用性强。', 201502211, 2, 89, '罗丽琴', 10, 33, '20170928', '1', 8.90000, '../img/p29.jpg');
INSERT INTO `course_table` VALUES (80, '2016072801', '《合同法》深度解析', 17, 3, '我国合同法规定的格式条款的概念都在不断更新，不断完善，在实践的运行过程当中，近些年最高人民法院以及相关的一些主管部门，不断发出一些最新的解释和规定。因此，本课程，周燕老师对最新和最实用的条款规定等做出详细的解释和研究，切实了解相关知识。', 201502210, 67, 570, '代码兜', 3, 0, '20170929', '0', 7.50000, '../img/p30.jpg');
INSERT INTO `course_table` VALUES (81, '2016012704', '合同法审判实务的问题', 17, 3, '以《合同法》司法解释一、《合同法》司法解释二和当前形势下审理民商事合同纠纷案件若干问题的指导意见三个司法解释为中心，结合在审判实务中所体现出来的或者是说这几年来所集中出来的一些争议问题进行了详细的讲解，主要涉及：违约金条款的法律适用问题、可得利益损失的计算和认定问题、表见代理的认定和构成、强制性规定的区分原则问题、情势变更原则的适用问题等。', 201502211, 2, 15, '罗丽琴', 10, 66, '20170217', '1', 8.30000, '../img/p31.jpg');
INSERT INTO `course_table` VALUES (82, '2015112104', '劳动法', 18, 1, '课程介绍了劳动法律关系；就业促进制度；劳动合同制度（一）；劳动合同制度（二）；集体劳动合同制度；工作时间与休息休假制度；工资基准与工资集体协商制度；劳动安全卫生基准制度；社会保险法；劳动法律责任；劳动争议处理制度。', 201603281, 32, 65, '罗丽琴', 10, 99, '20170829', '1', 7.40000, '../img/p32.jpg');
INSERT INTO `course_table` VALUES (83, '2016021301', '劳动法人力资源综合分析', 18, 2, '', 201603281, 7, 18, '罗丽琴', 10, 38, '20180213', '1', 8.10000, '../img/p33.jpg');
INSERT INTO `course_table` VALUES (84, '2015111703', '劳动法实务课程', 18, 3, '课程讲述三三制原则；倾斜性原则；管理性原则；公私法融合原则 ；劳动仲裁案件；人才供应链劳动法律服务；短期动态人才规划；灵活标准的用工盘点；人才供应链概述；无时差的人才补给；ROI最大化人才培养；', 201603281, 89, 132, '罗丽琴', 10, 99, '20171219', '1', 7.30000, '../img/p34.jpg');
INSERT INTO `course_table` VALUES (85, '2016012409', '成为HR劳动法专家', 18, 4, '', 201603281, 1, 43, '罗丽琴', 10, 3980, '20170628', '1', 9.50000, '../img/p35.jpg');
INSERT INTO `course_table` VALUES (86, '2015102304', '公证与律师制度', 19, 1, ' ', 201508271, 23, 58, '代码兜', 3, 99, '20170823', '1', 6.50000, '../img/p36.jpg');
INSERT INTO `course_table` VALUES (87, '2016021901', '《宪法》第3版', 19, 1, '按照教材篇章结构，辅导老师精讲教材章节内容，并在此基础上分析重难点以及各个知识点需掌握的程度。通过梳理各章知识点，将各个知识点的经络编制清晰，使知识点形成一个框架网络，强化基础知识的基础上分析教材的考点，归纳难点、重点。', 201602301, 78, 92, '代码兜', 3, 200, '20160728', '1', 8.30000, '../img/p37.jpg');
INSERT INTO `course_table` VALUES (88, '2015102903', '宪法修正案要义权威解读', 19, 2, '宪法修正案是什么；现行宪法第五次修改的原因是什么；宪法修正案是怎样诞生的；宪法修改遵循的原则有哪些；此次修宪涉及到哪些事项；此次修宪的特点是什么；此次修宪的意义是什么；如何做好宪法修正案的宣传工作；', 201602301, 5, 78, '代码兜', 3, 66, '20170712', '1', 8.30000, '../img/p38.jpg');
INSERT INTO `course_table` VALUES (89, '2016120902', '法律硕士民法学导学', 20, 1, '介绍法律硕士（非法学）概况；民法题型结构；参考用书；全年学习规划和学习方法。', 201512281, 7, 21, '代码兜', 3, 89, '20170929', '1', 7.20000, '../img/p39.jpg');
INSERT INTO `course_table` VALUES (90, '2016103101', '《民法学》第2版', 20, 2, '按照教材篇章结构，辅导老师精讲教材章节内容，并在此基础上分析重难点以及各个知识点需掌握的程度。通过梳理各章知识点，将各个知识点的经络编制清晰，使知识点形成一个框架网络，强化基础知识的基础上分析教材的考点，归纳难点、重点。\r\n', 201512281, 21, 81, '代码兜', 3, 200, '20170219', '1', 4.30000, '../img/p40.jpg');
INSERT INTO `course_table` VALUES (91, '2015112103', '法律硕士民法学冲刺', 20, 3, '知识精讲-专业基础-民法学，民法学的原则、民事法律关系、民事权利、民事主体制度、自然人的民事行为能力等知识点进行详细讲解。', 201512281, 7, 28, '代码兜', 3, 48, '20170923', '1', 8.10000, '../img/p41.jpg');
INSERT INTO `course_table` VALUES (92, '2016072704', '《国际经济法》', 21, 2, '', 201603191, 21, 64, '代码兜', 3, 200, '20170627', '1', 7.40000, '../img/p42.jpg');
INSERT INTO `course_table` VALUES (93, '2015072601', '中级经济法', 21, 1, '', 201603191, 31, 12, '\r\n代码兜', 3, 298, '20180221', '1', 8.30000, '../img/p43.jpg');
INSERT INTO `course_table` VALUES (94, '2015032809', '经济法精讲', 21, 1, '', 201603190, 23, 65, '代码兜', 3, 0, '20170924', '0', 7.30000, '../img/p44.jpg');
INSERT INTO `course_table` VALUES (95, '2016022303', '三级人力资源管理师', 33, 1, '内容包括人力资源规划、招聘与配置、培训与开发、绩效管理、薪酬管理、劳动关系管理等六部分内容。', 201607191, 2, 47, '黄晶', 16, 780, '20170910', '1', 7.80000, '../img/p1.jpg');
INSERT INTO `course_table` VALUES (96, '2016012001', '二级企业人力资源管理师', 33, 2, '适用于有志于从事人力资源规划、员工招聘选拔、绩效考核、薪酬福利管理、激励、培训与开发、劳动关系协调等人员。', 201607191, 5, 16, '程越', 16, 980, '20170601', '1', 9.20000, '../img/p2.jpg');
INSERT INTO `course_table` VALUES (97, '2016072803', '一级企业人力资源管理师', 33, 3, ' ', 201607191, 6, 32, '程越', 16, 1980, '20171202', '1', 8.20000, '../img/p3.jpg');
INSERT INTO `course_table` VALUES (98, '2016121902', '宣传及服务', 34, 1, '移动互联网发展趋势、透过政策看新媒体发展、透过现象看新媒体发展、众媒时代来临、微信宣传的制高点及核心价值、移动社交宣传困局、如何运用新媒体做好宣传及服务。', 201612270, 353, 424, '李朝卿', 17, 0, '20170924', '0', 8.30000, '../img/p4.jpg');
INSERT INTO `course_table` VALUES (99, '2016082701', '风险管理与保险规划', 1, 3, '  ', 201501011, 7, 76, '唐博赡', 4, 0, '20170829', '0', 8.30000, '../img/p5.jpg');
INSERT INTO `course_table` VALUES (100, '2016020903', '从理财谈保险', 1, 2, '在今天的这节课中，我们从家庭理财与风险保障的角度谈谈如何帮客户制定合理的理财规划。', 201501020, 65, 72, '乔哲', 5, 12, '20170809', '1', 8.30000, '../img/p6.jpg');
INSERT INTO `course_table` VALUES (101, '2016092801', '保险与财富管理', 1, 3, '课程并非传授买卖保险的具体操作和营销手段，而是通过宏观视角，从历史与现实的高度帮你梳理保险的功能与特点，加深对保险的理解，避免对保险进行庸俗的解读。', 201501011, 67, 201, '陆风', 6, 198, '20170802', '1', 8.50000, '../img/p7.jpg');
INSERT INTO `course_table` VALUES (102, '2015020906', '保险市场', 1, 4, '课程介绍了保险市场的历史和相关内容。', 201501011, 32, 59, '钟泰平', 7, 156, '20161228', '1', 9.40000, '../img/p8.jpg');
INSERT INTO `course_table` VALUES (103, '2016012806', '全面解析保险', 1, 4, '新时代、新保险解决了国家对保险行业如何大力支出，百姓对保险态度如何转变；保险有了哪些更深层的含义及更多丰富的功能；未来人身保险的种类如何做界内及跨界组合；财产保险新的种类对拓展高端客户有什么帮助等系列问题。', 201501020, 28, 87, '何安筠', 8, 0, '20170201', '0', 8.90000, '../img/p9.jpg');
COMMIT;

-- ----------------------------
-- Table structure for course_type_table
-- ----------------------------
DROP TABLE IF EXISTS `course_type_table`;
CREATE TABLE `course_type_table` (
  `course_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_type_name` varchar(50) DEFAULT NULL,
  `course_type_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_type_table
-- ----------------------------
BEGIN;
INSERT INTO `course_type_table` VALUES (1, '保险学原理', 1);
INSERT INTO `course_type_table` VALUES (2, '金融市场学', 2);
INSERT INTO `course_type_table` VALUES (3, '财务管理学', 3);
INSERT INTO `course_type_table` VALUES (4, '金融法', 4);
INSERT INTO `course_type_table` VALUES (5, '货币经济学', 5);
INSERT INTO `course_type_table` VALUES (6, '财政学', 6);
INSERT INTO `course_type_table` VALUES (7, '银行信贷管理学', 7);
INSERT INTO `course_type_table` VALUES (8, '电子商务概论', 8);
INSERT INTO `course_type_table` VALUES (9, '财务会计', 9);
INSERT INTO `course_type_table` VALUES (10, '财务报表分析', 10);
INSERT INTO `course_type_table` VALUES (11, '审计学', 11);
INSERT INTO `course_type_table` VALUES (12, '资产评估', 12);
INSERT INTO `course_type_table` VALUES (13, '会计制度设计', 13);
INSERT INTO `course_type_table` VALUES (14, '财务管理学', 14);
INSERT INTO `course_type_table` VALUES (15, '成本会计', 15);
INSERT INTO `course_type_table` VALUES (16, '管理会计', 16);
INSERT INTO `course_type_table` VALUES (17, '法律文书写作', 17);
INSERT INTO `course_type_table` VALUES (18, '合同法', 18);
INSERT INTO `course_type_table` VALUES (19, '劳动法', 19);
INSERT INTO `course_type_table` VALUES (20, '公证与律师制度', 20);
INSERT INTO `course_type_table` VALUES (21, '宪法学', 21);
INSERT INTO `course_type_table` VALUES (22, '民法学', 22);
INSERT INTO `course_type_table` VALUES (23, '国际经济法概论', 23);
INSERT INTO `course_type_table` VALUES (24, '法理学', 24);
INSERT INTO `course_type_table` VALUES (25, '计算机网络', 25);
INSERT INTO `course_type_table` VALUES (26, '数据库原理', 26);
INSERT INTO `course_type_table` VALUES (27, '软件维护', 27);
INSERT INTO `course_type_table` VALUES (28, '信息技术设备维护', 28);
INSERT INTO `course_type_table` VALUES (29, '适应力', 29);
INSERT INTO `course_type_table` VALUES (30, '创造力', 30);
INSERT INTO `course_type_table` VALUES (31, '应变力', 31);
INSERT INTO `course_type_table` VALUES (32, '沟通力', 32);
INSERT INTO `course_type_table` VALUES (33, '人力资源', 33);
INSERT INTO `course_type_table` VALUES (34, '宣传', 34);
COMMIT;

-- ----------------------------
-- Table structure for department_table
-- ----------------------------
DROP TABLE IF EXISTS `department_table`;
CREATE TABLE `department_table` (
  `department_id` int(50) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_table
-- ----------------------------
BEGIN;
INSERT INTO `department_table` VALUES (1, '个人业务部');
INSERT INTO `department_table` VALUES (2, '公司业务部');
INSERT INTO `department_table` VALUES (3, '国际业务部');
INSERT INTO `department_table` VALUES (4, '审计部');
INSERT INTO `department_table` VALUES (5, '风险部');
INSERT INTO `department_table` VALUES (6, '财会部');
INSERT INTO `department_table` VALUES (7, '科技部');
INSERT INTO `department_table` VALUES (8, '人力资源部');
INSERT INTO `department_table` VALUES (9, '宣传部');
INSERT INTO `department_table` VALUES (10, '安全保卫部');
INSERT INTO `department_table` VALUES (11, '信贷部');
COMMIT;

-- ----------------------------
-- Table structure for department_type_table
-- ----------------------------
DROP TABLE IF EXISTS `department_type_table`;
CREATE TABLE `department_type_table` (
  `department_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `course_type_id` int(11) NOT NULL,
  PRIMARY KEY (`department_type_id`),
  KEY `departype_deparement` (`department_id`),
  KEY `departype_type` (`course_type_id`),
  CONSTRAINT `departype_deparement` FOREIGN KEY (`department_id`) REFERENCES `department_table` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `departype_type` FOREIGN KEY (`course_type_id`) REFERENCES `course_type_table` (`course_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_type_table
-- ----------------------------
BEGIN;
INSERT INTO `department_type_table` VALUES (1, 11, 17);
INSERT INTO `department_type_table` VALUES (2, 11, 18);
INSERT INTO `department_type_table` VALUES (3, 11, 19);
INSERT INTO `department_type_table` VALUES (4, 11, 20);
INSERT INTO `department_type_table` VALUES (5, 11, 21);
INSERT INTO `department_type_table` VALUES (6, 11, 22);
INSERT INTO `department_type_table` VALUES (7, 11, 23);
INSERT INTO `department_type_table` VALUES (8, 11, 24);
INSERT INTO `department_type_table` VALUES (9, 5, 17);
INSERT INTO `department_type_table` VALUES (10, 5, 18);
INSERT INTO `department_type_table` VALUES (11, 5, 19);
INSERT INTO `department_type_table` VALUES (12, 5, 20);
INSERT INTO `department_type_table` VALUES (13, 5, 21);
INSERT INTO `department_type_table` VALUES (14, 5, 22);
INSERT INTO `department_type_table` VALUES (15, 5, 23);
INSERT INTO `department_type_table` VALUES (16, 5, 24);
INSERT INTO `department_type_table` VALUES (17, 7, 25);
INSERT INTO `department_type_table` VALUES (18, 7, 26);
INSERT INTO `department_type_table` VALUES (19, 7, 27);
INSERT INTO `department_type_table` VALUES (20, 7, 28);
INSERT INTO `department_type_table` VALUES (21, 1, 3);
INSERT INTO `department_type_table` VALUES (22, 1, 5);
INSERT INTO `department_type_table` VALUES (23, 1, 7);
INSERT INTO `department_type_table` VALUES (24, 1, 8);
INSERT INTO `department_type_table` VALUES (25, 1, 9);
INSERT INTO `department_type_table` VALUES (26, 1, 12);
INSERT INTO `department_type_table` VALUES (27, 1, 14);
INSERT INTO `department_type_table` VALUES (28, 1, 16);
INSERT INTO `department_type_table` VALUES (29, 2, 1);
INSERT INTO `department_type_table` VALUES (30, 2, 2);
INSERT INTO `department_type_table` VALUES (31, 2, 3);
INSERT INTO `department_type_table` VALUES (32, 2, 4);
INSERT INTO `department_type_table` VALUES (33, 2, 5);
INSERT INTO `department_type_table` VALUES (34, 2, 6);
INSERT INTO `department_type_table` VALUES (35, 2, 7);
INSERT INTO `department_type_table` VALUES (36, 2, 8);
INSERT INTO `department_type_table` VALUES (37, 2, 9);
INSERT INTO `department_type_table` VALUES (38, 2, 10);
INSERT INTO `department_type_table` VALUES (39, 2, 11);
INSERT INTO `department_type_table` VALUES (40, 2, 12);
INSERT INTO `department_type_table` VALUES (41, 2, 14);
INSERT INTO `department_type_table` VALUES (42, 2, 15);
INSERT INTO `department_type_table` VALUES (43, 2, 16);
INSERT INTO `department_type_table` VALUES (44, 1, 10);
INSERT INTO `department_type_table` VALUES (45, 3, 1);
INSERT INTO `department_type_table` VALUES (46, 3, 2);
INSERT INTO `department_type_table` VALUES (47, 3, 3);
INSERT INTO `department_type_table` VALUES (48, 3, 4);
INSERT INTO `department_type_table` VALUES (49, 3, 5);
INSERT INTO `department_type_table` VALUES (50, 3, 6);
INSERT INTO `department_type_table` VALUES (51, 3, 7);
INSERT INTO `department_type_table` VALUES (52, 3, 8);
INSERT INTO `department_type_table` VALUES (53, 3, 9);
INSERT INTO `department_type_table` VALUES (54, 3, 10);
INSERT INTO `department_type_table` VALUES (55, 3, 11);
INSERT INTO `department_type_table` VALUES (56, 3, 12);
INSERT INTO `department_type_table` VALUES (57, 3, 14);
INSERT INTO `department_type_table` VALUES (58, 3, 15);
INSERT INTO `department_type_table` VALUES (59, 3, 16);
INSERT INTO `department_type_table` VALUES (60, 4, 2);
INSERT INTO `department_type_table` VALUES (61, 4, 5);
INSERT INTO `department_type_table` VALUES (62, 4, 4);
INSERT INTO `department_type_table` VALUES (63, 4, 10);
INSERT INTO `department_type_table` VALUES (64, 4, 11);
INSERT INTO `department_type_table` VALUES (65, 4, 14);
INSERT INTO `department_type_table` VALUES (66, 4, 15);
INSERT INTO `department_type_table` VALUES (67, 4, 16);
INSERT INTO `department_type_table` VALUES (68, 5, 4);
INSERT INTO `department_type_table` VALUES (69, 5, 1);
INSERT INTO `department_type_table` VALUES (70, 5, 2);
INSERT INTO `department_type_table` VALUES (71, 5, 3);
INSERT INTO `department_type_table` VALUES (72, 5, 7);
INSERT INTO `department_type_table` VALUES (73, 5, 10);
INSERT INTO `department_type_table` VALUES (74, 5, 5);
INSERT INTO `department_type_table` VALUES (75, 5, 11);
INSERT INTO `department_type_table` VALUES (76, 5, 14);
INSERT INTO `department_type_table` VALUES (77, 5, 15);
INSERT INTO `department_type_table` VALUES (78, 5, 16);
INSERT INTO `department_type_table` VALUES (79, 6, 1);
INSERT INTO `department_type_table` VALUES (80, 6, 2);
INSERT INTO `department_type_table` VALUES (81, 6, 3);
INSERT INTO `department_type_table` VALUES (82, 6, 7);
INSERT INTO `department_type_table` VALUES (83, 6, 8);
INSERT INTO `department_type_table` VALUES (84, 6, 9);
INSERT INTO `department_type_table` VALUES (85, 6, 10);
INSERT INTO `department_type_table` VALUES (86, 6, 12);
INSERT INTO `department_type_table` VALUES (87, 6, 13);
INSERT INTO `department_type_table` VALUES (88, 6, 14);
INSERT INTO `department_type_table` VALUES (89, 6, 15);
INSERT INTO `department_type_table` VALUES (90, 6, 16);
INSERT INTO `department_type_table` VALUES (91, 11, 7);
INSERT INTO `department_type_table` VALUES (92, 11, 12);
INSERT INTO `department_type_table` VALUES (93, 8, 33);
INSERT INTO `department_type_table` VALUES (94, 9, 34);
COMMIT;

-- ----------------------------
-- Table structure for document_table
-- ----------------------------
DROP TABLE IF EXISTS `document_table`;
CREATE TABLE `document_table` (
  `document_id` int(50) NOT NULL AUTO_INCREMENT,
  `course_id` int(50) NOT NULL,
  `document_name` varchar(50) NOT NULL,
  `document_format` varchar(50) NOT NULL,
  `document_url` varchar(500) NOT NULL,
  `document_dload` int(50) NOT NULL,
  `document_click` int(50) NOT NULL,
  PRIMARY KEY (`document_id`),
  KEY `doc_cou_id` (`course_id`),
  CONSTRAINT `doc_cou_id` FOREIGN KEY (`course_id`) REFERENCES `course_table` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of document_table
-- ----------------------------
BEGIN;
INSERT INTO `document_table` VALUES (1, 1, '1', 'word', '../data/word/1.', 0, 1);
INSERT INTO `document_table` VALUES (2, 1, '2', 'ppt', '../data/ppt/1.ppt', 1, 1);
INSERT INTO `document_table` VALUES (11, 1, '测试1', '测试1', '测试1', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for false_question_table
-- ----------------------------
DROP TABLE IF EXISTS `false_question_table`;
CREATE TABLE `false_question_table` (
  `false_question_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `question_id` int(50) NOT NULL,
  PRIMARY KEY (`false_question_id`),
  KEY `fque_user_id` (`user_id`),
  KEY `fque_ques_id` (`question_id`),
  CONSTRAINT `fque_ques_id` FOREIGN KEY (`question_id`) REFERENCES `question_table` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fque_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of false_question_table
-- ----------------------------
BEGIN;
INSERT INTO `false_question_table` VALUES (2, 1, 4);
INSERT INTO `false_question_table` VALUES (6, 1, 1);
INSERT INTO `false_question_table` VALUES (7, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for forum_admin_table
-- ----------------------------
DROP TABLE IF EXISTS `forum_admin_table`;
CREATE TABLE `forum_admin_table` (
  `forum_admin_id` int(50) NOT NULL AUTO_INCREMENT,
  `forum_admin_no` varchar(50) NOT NULL,
  `forum_admin_pwd` varchar(50) NOT NULL,
  `forum_admin_tel` varchar(50) NOT NULL,
  PRIMARY KEY (`forum_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum_admin_table
-- ----------------------------
BEGIN;
INSERT INTO `forum_admin_table` VALUES (1, '576254', '000', '15211084803');
COMMIT;

-- ----------------------------
-- Table structure for free_learn_path_table
-- ----------------------------
DROP TABLE IF EXISTS `free_learn_path_table`;
CREATE TABLE `free_learn_path_table` (
  `free_learn_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_type` int(11) NOT NULL,
  `course_level` int(11) NOT NULL,
  PRIMARY KEY (`free_learn_path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for job_table
-- ----------------------------
DROP TABLE IF EXISTS `job_table`;
CREATE TABLE `job_table` (
  `job_id` int(50) NOT NULL AUTO_INCREMENT,
  `department_id` int(50) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_table
-- ----------------------------
BEGIN;
INSERT INTO `job_table` VALUES (3, 1, '测试');
COMMIT;

-- ----------------------------
-- Table structure for leader_table
-- ----------------------------
DROP TABLE IF EXISTS `leader_table`;
CREATE TABLE `leader_table` (
  `leader_id` int(50) NOT NULL AUTO_INCREMENT,
  `leader_no` varchar(50) NOT NULL,
  `leader_pwd` varchar(50) NOT NULL,
  `leader_tel` varchar(50) NOT NULL,
  `leader_name` varchar(50) NOT NULL,
  PRIMARY KEY (`leader_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leader_table
-- ----------------------------
BEGIN;
INSERT INTO `leader_table` VALUES (1, '1652557240', '000', '16754234527', '李晨');
INSERT INTO `leader_table` VALUES (4, '8888', '888', '8888', '测试');
COMMIT;

-- ----------------------------
-- Table structure for list_table
-- ----------------------------
DROP TABLE IF EXISTS `list_table`;
CREATE TABLE `list_table` (
  `list_id` int(50) NOT NULL AUTO_INCREMENT,
  `course_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `list_time` varchar(50) NOT NULL,
  `list_money` varchar(50) NOT NULL,
  `list_state` int(50) DEFAULT NULL,
  PRIMARY KEY (`list_id`),
  KEY `list_user_id` (`user_id`),
  KEY `list_cour_id` (`course_id`),
  CONSTRAINT `list_cour_id` FOREIGN KEY (`course_id`) REFERENCES `course_table` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `list_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_table
-- ----------------------------
BEGIN;
INSERT INTO `list_table` VALUES (1, 2, 1, '20180214', '0', NULL);
INSERT INTO `list_table` VALUES (2, 4, 1, '20180124', '0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for live_room_table
-- ----------------------------
DROP TABLE IF EXISTS `live_room_table`;
CREATE TABLE `live_room_table` (
  `live_room_id` int(50) NOT NULL AUTO_INCREMENT,
  `live_id` int(50) NOT NULL,
  `teacher_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  PRIMARY KEY (`live_room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of live_room_table
-- ----------------------------
BEGIN;
INSERT INTO `live_room_table` VALUES (3, 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for live_table
-- ----------------------------
DROP TABLE IF EXISTS `live_table`;
CREATE TABLE `live_table` (
  `live_id` int(50) NOT NULL AUTO_INCREMENT,
  `course_id` int(50) NOT NULL,
  `teacher_id` int(50) NOT NULL,
  `live_date` varchar(50) NOT NULL,
  `live_long` varchar(50) NOT NULL,
  `live_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`live_id`),
  KEY `live_teac_id` (`teacher_id`),
  CONSTRAINT `live_teac_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_table` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for message_table
-- ----------------------------
DROP TABLE IF EXISTS `message_table`;
CREATE TABLE `message_table` (
  `message_id` int(50) NOT NULL AUTO_INCREMENT,
  `message_puber_id` int(50) NOT NULL,
  `message_cont` varchar(500) NOT NULL,
  `message_date` varchar(50) NOT NULL,
  `message_puber_type` varchar(50) NOT NULL,
  `message_type` varchar(50) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message_table
-- ----------------------------
BEGIN;
INSERT INTO `message_table` VALUES (1, 1, '今天公司要开年会，大家不要迟到。', '20171227', '1', '');
INSERT INTO `message_table` VALUES (2, 1, '系统将于2018-2-14更新，望见谅。', '20171129', '2', '');
INSERT INTO `message_table` VALUES (3, 1, '课程考试在20180303', '20171010', '3', '');
COMMIT;

-- ----------------------------
-- Table structure for nearest_course_table
-- ----------------------------
DROP TABLE IF EXISTS `nearest_course_table`;
CREATE TABLE `nearest_course_table` (
  `nearest_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `nearest_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nearest_course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nearest_course_table
-- ----------------------------
BEGIN;
INSERT INTO `nearest_course_table` VALUES (1, 1, 2, '2018-04-16 18:38:35');
INSERT INTO `nearest_course_table` VALUES (2, 1, 8, '2018-04-10 21:04:08');
INSERT INTO `nearest_course_table` VALUES (3, 1, 6, '2018-04-17 20:30:51');
INSERT INTO `nearest_course_table` VALUES (4, 1, 5, '2018-04-10 18:56:20');
INSERT INTO `nearest_course_table` VALUES (5, 1, 7, '2018-04-09 19:33:06');
INSERT INTO `nearest_course_table` VALUES (6, 1, 1, '2018-04-18 15:18:49');
INSERT INTO `nearest_course_table` VALUES (7, 2, 4, '2018-04-11 22:20:20');
INSERT INTO `nearest_course_table` VALUES (8, 2, 6, '2018-04-12 20:04:24');
INSERT INTO `nearest_course_table` VALUES (9, 2, 11, '2018-04-11 16:04:07');
INSERT INTO `nearest_course_table` VALUES (10, 2, 1, '2018-04-19 15:31:53');
INSERT INTO `nearest_course_table` VALUES (11, 2, 56, '2018-04-09 20:40:16');
INSERT INTO `nearest_course_table` VALUES (12, 2, 12, '2018-04-09 20:53:14');
INSERT INTO `nearest_course_table` VALUES (13, 1, 4, '2018-04-11 22:09:02');
INSERT INTO `nearest_course_table` VALUES (14, 1, 12, '2018-04-09 22:48:42');
INSERT INTO `nearest_course_table` VALUES (15, 1, 12, '2018-04-09 23:43:49');
INSERT INTO `nearest_course_table` VALUES (16, 1, 74, '2018-04-14 23:22:45');
INSERT INTO `nearest_course_table` VALUES (17, 1, 11, '2018-04-15 11:01:30');
INSERT INTO `nearest_course_table` VALUES (18, 0, 11, '2018-04-11 16:09:17');
INSERT INTO `nearest_course_table` VALUES (19, 0, 1, '2018-04-18 18:04:44');
INSERT INTO `nearest_course_table` VALUES (20, 1, 80, '2018-04-10 19:33:12');
INSERT INTO `nearest_course_table` VALUES (21, 2, 72, '2018-04-11 15:47:15');
INSERT INTO `nearest_course_table` VALUES (22, 2, 69, '2018-04-11 15:59:31');
INSERT INTO `nearest_course_table` VALUES (23, 2, 14, '2018-04-11 17:11:52');
INSERT INTO `nearest_course_table` VALUES (24, 2, 49, '2018-04-11 16:00:21');
INSERT INTO `nearest_course_table` VALUES (25, 0, 72, '2018-04-11 16:05:49');
INSERT INTO `nearest_course_table` VALUES (26, 0, 15, '2018-04-11 16:05:38');
INSERT INTO `nearest_course_table` VALUES (27, 0, 74, '2018-04-14 21:17:45');
INSERT INTO `nearest_course_table` VALUES (28, 2, 3, '2018-04-16 18:41:33');
INSERT INTO `nearest_course_table` VALUES (29, 2, 100, '2018-04-12 17:49:50');
INSERT INTO `nearest_course_table` VALUES (30, 2, 66, '2018-04-12 18:35:02');
INSERT INTO `nearest_course_table` VALUES (31, 8, 56, '2018-04-12 18:42:59');
INSERT INTO `nearest_course_table` VALUES (32, 8, 49, '2018-04-12 18:43:22');
INSERT INTO `nearest_course_table` VALUES (33, 9, 76, '2018-04-12 19:29:49');
INSERT INTO `nearest_course_table` VALUES (34, 9, 33, '2018-04-12 19:05:11');
INSERT INTO `nearest_course_table` VALUES (35, 0, 80, '2018-04-14 21:18:12');
INSERT INTO `nearest_course_table` VALUES (36, 9, 12, '2018-04-12 19:11:35');
INSERT INTO `nearest_course_table` VALUES (37, 9, 46, '2018-04-12 19:11:41');
INSERT INTO `nearest_course_table` VALUES (38, 9, 42, '2018-04-12 19:23:58');
INSERT INTO `nearest_course_table` VALUES (39, 9, 69, '2018-04-12 19:29:56');
INSERT INTO `nearest_course_table` VALUES (40, 9, 56, '2018-04-12 19:28:46');
INSERT INTO `nearest_course_table` VALUES (41, 7, 69, '2018-04-12 19:50:03');
INSERT INTO `nearest_course_table` VALUES (42, 2, 7, '2018-04-12 20:04:45');
INSERT INTO `nearest_course_table` VALUES (43, 3, 98, '2018-04-12 20:19:39');
INSERT INTO `nearest_course_table` VALUES (44, 3, 97, '2018-04-12 21:14:22');
INSERT INTO `nearest_course_table` VALUES (45, 4, 1, '2018-04-13 00:59:10');
INSERT INTO `nearest_course_table` VALUES (46, 4, 25, '2018-04-13 00:58:53');
INSERT INTO `nearest_course_table` VALUES (47, 6, 4, '2018-04-13 01:01:52');
INSERT INTO `nearest_course_table` VALUES (48, 6, 56, '2018-04-13 01:02:02');
INSERT INTO `nearest_course_table` VALUES (49, 6, 74, '2018-04-13 01:02:42');
INSERT INTO `nearest_course_table` VALUES (50, 7, 1, '2018-04-13 01:26:02');
INSERT INTO `nearest_course_table` VALUES (51, 9, 63, '2018-04-13 01:33:41');
INSERT INTO `nearest_course_table` VALUES (52, 9, 47, '2018-04-13 01:34:04');
INSERT INTO `nearest_course_table` VALUES (53, 9, 65, '2018-04-13 01:34:15');
INSERT INTO `nearest_course_table` VALUES (54, 10, 6, '2018-04-13 01:52:50');
INSERT INTO `nearest_course_table` VALUES (55, 3, 1, '2018-04-14 10:12:14');
INSERT INTO `nearest_course_table` VALUES (56, 0, 7, '2018-04-14 17:14:47');
INSERT INTO `nearest_course_table` VALUES (57, 1, 76, '2018-04-18 04:43:31');
INSERT INTO `nearest_course_table` VALUES (58, 1, 3, '2018-04-16 18:36:06');
INSERT INTO `nearest_course_table` VALUES (59, 1, 64, '2018-04-16 18:35:26');
INSERT INTO `nearest_course_table` VALUES (60, 1, 16, '2018-04-16 18:37:05');
INSERT INTO `nearest_course_table` VALUES (61, 1, 65, '2018-04-17 20:30:47');
INSERT INTO `nearest_course_table` VALUES (62, 1, 25, '2018-04-18 04:44:47');
INSERT INTO `nearest_course_table` VALUES (63, 1, 26, '2018-04-18 04:44:50');
INSERT INTO `nearest_course_table` VALUES (64, 2, 25, '2018-04-19 15:32:06');
COMMIT;

-- ----------------------------
-- Table structure for note_table
-- ----------------------------
DROP TABLE IF EXISTS `note_table`;
CREATE TABLE `note_table` (
  `note_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `video_id` int(50) NOT NULL,
  `note_content` varchar(20000) NOT NULL,
  `note_time` varchar(255) NOT NULL,
  PRIMARY KEY (`note_id`),
  KEY `note_user_id` (`user_id`),
  KEY `note_video_id` (`video_id`),
  CONSTRAINT `note_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `note_video_id` FOREIGN KEY (`video_id`) REFERENCES `video_table` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note_table
-- ----------------------------
BEGIN;
INSERT INTO `note_table` VALUES (1, 1, 1, '财务管理学是研究如何通过计划、决策、控制、考核、监督等管理活动对资金运动进行管理，以提高资金效益的一门经营管理学科。它是以经济学原理和经济管理理论为指导，结合组织生产力和处理生产关系的有关问题，对企业和国民经济各部门财务管理工作进行科学总结而形成的知识体系。', '2018-04-18 04:45:58');
INSERT INTO `note_table` VALUES (2, 1, 2, '理财活动，由来已久。但由于财权的重要性和早期财务活动的单纯性，理财活动往\r\n书册封面\r\n书册封面\r\n往由生产经营者或生产经营单位的经理人直接进行，所以，财务管理作为一项独立的业务工作形成较晚，而财务管理学作为一门独立的学科则存在的更晚。很长时期以来，财务管理学都从属于其他学科。直到进入20世纪以后，特别是第二次世界大战以后，在西方、前苏联和中国的财务管理学才逐渐成为一门独立的经济管理学科。', '2018-03-22  12:00:00');
INSERT INTO `note_table` VALUES (3, 1, 32, '在西方，15和16世纪地中海沿岸一带商业蓬勃发展，财务管理开始萌芽。18世纪发生了产业革命，过去的作坊、工场手工业的生产方式，被工厂化的机器生产方式所代替，财务活动开始复杂起来。但当时主要采取独资、合伙等经营方式，企业组织比较简单，财务关系也比较单纯，其财务活动大多由企业主亲自从事。到了19世纪末期，随着股份公司的迅速发展和托拉斯的建立，企业规模不断扩大，企业所需资金大量增加，财务关系逐渐复杂，企业主已难以亲自从事财务管理活动，开始单独建立财务管理部门。这时管理的职能开始分离，独立的财务管理工作也就分化出来了。财务管理实践对财务管理人员提出了广泛的要求，财务管理理论也随之得到发展。', '2018-04-11 18:49:49');
INSERT INTO `note_table` VALUES (4, 1, 11, '财务管理工作是近代社会化大生产的产物。在作坊、工场手工业生产方式下，财务 活动比较简单，财务管理工作与会计工作是结合在一起进行的。产业革命后，特别是19世纪末托拉斯出现以后，企业的财务活动随之复杂化，制定投资方案、筹集经营资金、对外提供财务信息，并对利润进行分配，就构成企业经营管理中一项独立的职能：筹措、使用和分配资金。单独履行这一职能的工作即为财务管理工作。早期的财务管理以集资为主要内容。', '2018-04-10 23:39:43');
INSERT INTO `note_table` VALUES (5, 1, 30, '主要研究企业资本需要量的确定及其筹集、投放、回收、运用等问题，内容有：时间价值和风险价值概念的确定与计算、筹措资本的决策、投资方向的决策、股息决策、资本收益分配的决策、运营资本的日常管理。资本主义企业为了保证盈利的实现和不断增长，必须在把握资本与利润相互关系的基础上，制定出自己的长期发展计划以及相应的中、短期计划，并组织其实现。现代西方企业财务管理学就是根据资本与利润之间的关系，研究如何进行投资决策、组织实施、加强管理，以不断提高资本的利用效果，保证企业经营者在激烈的竞争中处于优势地位', '2018-04-11 18:52:37');
INSERT INTO `note_table` VALUES (6, 7, 2, '这是一门很不错的课,看了很有收益!!', '2018-04-13 01:09:57');
INSERT INTO `note_table` VALUES (7, 10, 29, '<p>这是一门很好的课啊去</p>', '2018-04-13 01:58:57');
INSERT INTO `note_table` VALUES (8, 3, 29, '<p>这是一门很好的课啊去<br></p>', '2018-04-13 01:58:30');
INSERT INTO `note_table` VALUES (9, 2, 1, '&nbsp; &nbsp; &nbsp; &nbsp;保险学（是一门研究保险及保险相关事物运动规律的经济学科。保险涉及的领域是多元化的，包括<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%87%91%E8%9E%8D%E5%AD%A6/51188\" data-lemmaid=\"51188\">金融学</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%B3%95%E5%AD%A6/23558\" data-lemmaid=\"23558\">法学</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8C%BB%E5%AD%A6\">医学</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%95%B0%E5%AD%A6/107037\" data-lemmaid=\"107037\">数学</a>、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%BB%8F%E6%B5%8E%E5%AD%A6\">经济学</a>以及<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%87%AA%E7%84%B6%E7%A7%91%E5%AD%A6\">自然科学</a>等内容。<div><br><div><div class=\"para\" label-module=\"para\"><b>&nbsp; &nbsp; &nbsp; &nbsp;多属性:</b></div>\n<div class=\"para\" label-module=\"para\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;指保险学是一门社会科学和自然科学相互交叉的综合管理科学，所研究的内容既有属于社会科学的，也有属于自然科学的。</div>\n<div class=\"para\" label-module=\"para\"><b>&nbsp; &nbsp; &nbsp; &nbsp;广泛性:</b></div>\n<div class=\"para\" label-module=\"para\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 广泛性是指保险学所研究的内容，涉及面非常广泛。因为保险的对象具有广泛性，社会生产的各个环节、各行各业都需要保&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;险；保险工作人员要与各种自然灾害和意外事故打交道，还要配合各部门搞好防灾防损工作 。</div>\n<div class=\"para\" label-module=\"para\"><b>&nbsp; &nbsp; &nbsp; 法律性:</b></div>\n<div class=\"para\" label-module=\"para\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 保险合同的订立和履行，都以民法和合同法为依据，涉外的保险业务还与国际私法、国际商法和海商法有着密切关系。</div>\n<div class=\"para\" label-module=\"para\"><b>&nbsp; &nbsp; &nbsp; 实践性:</b></div>\n<div class=\"para\" label-module=\"para\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;保险学主要是一门学科。保险学源于生活，提醒风险存在同时在风险发生后降低损失的一种保障行为，在生活各个方面保险学&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;得到了实践应用。</div></div></div>', '2018-04-14 10:17:06');
COMMIT;

-- ----------------------------
-- Table structure for optimal_learn_path_table
-- ----------------------------
DROP TABLE IF EXISTS `optimal_learn_path_table`;
CREATE TABLE `optimal_learn_path_table` (
  `optimal_learn_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_type` int(11) NOT NULL,
  `course_level` int(11) NOT NULL,
  PRIMARY KEY (`optimal_learn_path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for path_course_table
-- ----------------------------
DROP TABLE IF EXISTS `path_course_table`;
CREATE TABLE `path_course_table` (
  `path_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `path_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `path_course_seq` int(11) NOT NULL,
  PRIMARY KEY (`path_course_id`),
  KEY `FK254B6884AA12562B` (`course_id`),
  KEY `FK254B68849D007A57` (`path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of path_course_table
-- ----------------------------
BEGIN;
INSERT INTO `path_course_table` VALUES (1, 1, 4, 1);
INSERT INTO `path_course_table` VALUES (2, 1, 5, 2);
INSERT INTO `path_course_table` VALUES (3, 1, 7, 3);
INSERT INTO `path_course_table` VALUES (4, 1, 6, 4);
INSERT INTO `path_course_table` VALUES (5, 2, 4, 1);
INSERT INTO `path_course_table` VALUES (6, 2, 5, 2);
INSERT INTO `path_course_table` VALUES (7, 2, 6, 4);
INSERT INTO `path_course_table` VALUES (8, 3, 3, 1);
INSERT INTO `path_course_table` VALUES (9, 3, 100, 2);
INSERT INTO `path_course_table` VALUES (10, 3, 101, 3);
INSERT INTO `path_course_table` VALUES (11, 3, 102, 4);
INSERT INTO `path_course_table` VALUES (12, 4, 3, 1);
INSERT INTO `path_course_table` VALUES (13, 4, 2, 2);
INSERT INTO `path_course_table` VALUES (14, 4, 99, 3);
INSERT INTO `path_course_table` VALUES (15, 4, 103, 4);
INSERT INTO `path_course_table` VALUES (16, 5, 52, 1);
INSERT INTO `path_course_table` VALUES (17, 5, 57, 2);
INSERT INTO `path_course_table` VALUES (18, 5, 56, 3);
INSERT INTO `path_course_table` VALUES (19, 5, 55, 4);
INSERT INTO `path_course_table` VALUES (20, 6, 73, 1);
INSERT INTO `path_course_table` VALUES (21, 6, 72, 2);
INSERT INTO `path_course_table` VALUES (22, 6, 74, 3);
INSERT INTO `path_course_table` VALUES (23, 6, 75, 4);
INSERT INTO `path_course_table` VALUES (24, 7, 4, 1);
INSERT INTO `path_course_table` VALUES (25, 7, 5, 2);
INSERT INTO `path_course_table` VALUES (26, 7, 7, 3);
INSERT INTO `path_course_table` VALUES (27, 7, 6, 4);
INSERT INTO `path_course_table` VALUES (28, 8, 4, 1);
INSERT INTO `path_course_table` VALUES (29, 8, 5, 2);
INSERT INTO `path_course_table` VALUES (30, 8, 6, 4);
INSERT INTO `path_course_table` VALUES (31, 9, 3, 1);
INSERT INTO `path_course_table` VALUES (32, 9, 100, 2);
INSERT INTO `path_course_table` VALUES (33, 9, 101, 3);
INSERT INTO `path_course_table` VALUES (34, 9, 102, 4);
INSERT INTO `path_course_table` VALUES (35, 10, 3, 1);
INSERT INTO `path_course_table` VALUES (36, 10, 2, 2);
INSERT INTO `path_course_table` VALUES (37, 10, 99, 3);
INSERT INTO `path_course_table` VALUES (38, 10, 103, 4);
INSERT INTO `path_course_table` VALUES (39, 11, 65, 1);
INSERT INTO `path_course_table` VALUES (40, 11, 63, 2);
INSERT INTO `path_course_table` VALUES (41, 11, 66, 3);
INSERT INTO `path_course_table` VALUES (42, 12, 95, 1);
INSERT INTO `path_course_table` VALUES (43, 12, 96, 2);
INSERT INTO `path_course_table` VALUES (44, 12, 97, 3);
INSERT INTO `path_course_table` VALUES (45, 13, 17, 1);
INSERT INTO `path_course_table` VALUES (46, 13, 18, 2);
INSERT INTO `path_course_table` VALUES (47, 14, 22, 1);
INSERT INTO `path_course_table` VALUES (48, 14, 23, 2);
INSERT INTO `path_course_table` VALUES (49, 15, 24, 1);
INSERT INTO `path_course_table` VALUES (50, 15, 25, 2);
INSERT INTO `path_course_table` VALUES (51, 15, 26, 3);
INSERT INTO `path_course_table` VALUES (52, 15, 27, 4);
INSERT INTO `path_course_table` VALUES (53, 16, 17, 1);
INSERT INTO `path_course_table` VALUES (54, 16, 18, 2);
INSERT INTO `path_course_table` VALUES (55, 17, 19, 2);
INSERT INTO `path_course_table` VALUES (56, 17, 20, 1);
INSERT INTO `path_course_table` VALUES (57, 17, 21, 3);
INSERT INTO `path_course_table` VALUES (58, 18, 22, 1);
INSERT INTO `path_course_table` VALUES (59, 18, 23, 2);
INSERT INTO `path_course_table` VALUES (60, 19, 24, 1);
INSERT INTO `path_course_table` VALUES (61, 19, 25, 2);
INSERT INTO `path_course_table` VALUES (62, 19, 26, 3);
INSERT INTO `path_course_table` VALUES (63, 19, 27, 4);
INSERT INTO `path_course_table` VALUES (64, 20, 3, 1);
INSERT INTO `path_course_table` VALUES (65, 20, 100, 2);
INSERT INTO `path_course_table` VALUES (66, 20, 101, 3);
INSERT INTO `path_course_table` VALUES (67, 20, 102, 4);
INSERT INTO `path_course_table` VALUES (68, 21, 3, 1);
INSERT INTO `path_course_table` VALUES (69, 21, 2, 2);
INSERT INTO `path_course_table` VALUES (70, 21, 99, 3);
INSERT INTO `path_course_table` VALUES (71, 21, 103, 4);
INSERT INTO `path_course_table` VALUES (72, 22, 4, 1);
INSERT INTO `path_course_table` VALUES (73, 22, 5, 2);
INSERT INTO `path_course_table` VALUES (74, 22, 7, 3);
INSERT INTO `path_course_table` VALUES (75, 22, 6, 4);
INSERT INTO `path_course_table` VALUES (76, 23, 4, 1);
INSERT INTO `path_course_table` VALUES (77, 23, 5, 2);
INSERT INTO `path_course_table` VALUES (78, 23, 6, 4);
INSERT INTO `path_course_table` VALUES (79, 24, 17, 1);
INSERT INTO `path_course_table` VALUES (80, 24, 18, 2);
INSERT INTO `path_course_table` VALUES (81, 25, 19, 2);
INSERT INTO `path_course_table` VALUES (82, 25, 20, 1);
INSERT INTO `path_course_table` VALUES (83, 25, 21, 3);
INSERT INTO `path_course_table` VALUES (84, 26, 22, 1);
INSERT INTO `path_course_table` VALUES (85, 26, 23, 2);
INSERT INTO `path_course_table` VALUES (86, 27, 24, 1);
INSERT INTO `path_course_table` VALUES (87, 27, 25, 2);
INSERT INTO `path_course_table` VALUES (88, 27, 26, 3);
INSERT INTO `path_course_table` VALUES (89, 27, 27, 4);
INSERT INTO `path_course_table` VALUES (90, 28, 17, 1);
INSERT INTO `path_course_table` VALUES (91, 28, 18, 2);
INSERT INTO `path_course_table` VALUES (92, 29, 19, 2);
INSERT INTO `path_course_table` VALUES (93, 29, 20, 1);
INSERT INTO `path_course_table` VALUES (94, 29, 21, 3);
INSERT INTO `path_course_table` VALUES (95, 30, 22, 1);
INSERT INTO `path_course_table` VALUES (96, 30, 23, 2);
INSERT INTO `path_course_table` VALUES (97, 31, 24, 1);
INSERT INTO `path_course_table` VALUES (98, 31, 25, 2);
INSERT INTO `path_course_table` VALUES (99, 31, 26, 3);
INSERT INTO `path_course_table` VALUES (100, 31, 27, 4);
INSERT INTO `path_course_table` VALUES (101, 32, 4, 1);
INSERT INTO `path_course_table` VALUES (102, 32, 5, 2);
INSERT INTO `path_course_table` VALUES (103, 32, 7, 3);
INSERT INTO `path_course_table` VALUES (104, 32, 6, 4);
INSERT INTO `path_course_table` VALUES (105, 33, 4, 1);
INSERT INTO `path_course_table` VALUES (106, 33, 5, 2);
INSERT INTO `path_course_table` VALUES (107, 33, 6, 4);
INSERT INTO `path_course_table` VALUES (108, 34, 52, 1);
INSERT INTO `path_course_table` VALUES (109, 34, 57, 2);
INSERT INTO `path_course_table` VALUES (110, 34, 56, 3);
INSERT INTO `path_course_table` VALUES (111, 34, 55, 4);
INSERT INTO `path_course_table` VALUES (112, 35, 73, 1);
INSERT INTO `path_course_table` VALUES (113, 35, 72, 2);
INSERT INTO `path_course_table` VALUES (114, 35, 74, 3);
INSERT INTO `path_course_table` VALUES (115, 35, 75, 4);
INSERT INTO `path_course_table` VALUES (116, 36, 17, 1);
INSERT INTO `path_course_table` VALUES (117, 36, 18, 2);
INSERT INTO `path_course_table` VALUES (118, 37, 19, 2);
INSERT INTO `path_course_table` VALUES (119, 37, 20, 1);
INSERT INTO `path_course_table` VALUES (120, 37, 21, 3);
INSERT INTO `path_course_table` VALUES (121, 38, 22, 1);
INSERT INTO `path_course_table` VALUES (122, 38, 23, 2);
INSERT INTO `path_course_table` VALUES (123, 39, 24, 1);
INSERT INTO `path_course_table` VALUES (124, 39, 25, 2);
INSERT INTO `path_course_table` VALUES (125, 39, 26, 3);
INSERT INTO `path_course_table` VALUES (126, 39, 27, 4);
INSERT INTO `path_course_table` VALUES (127, 40, 28, 1);
INSERT INTO `path_course_table` VALUES (128, 40, 29, 2);
INSERT INTO `path_course_table` VALUES (129, 40, 31, 3);
INSERT INTO `path_course_table` VALUES (130, 40, 30, 4);
INSERT INTO `path_course_table` VALUES (131, 41, 17, 1);
INSERT INTO `path_course_table` VALUES (132, 41, 18, 2);
INSERT INTO `path_course_table` VALUES (133, 42, 19, 2);
INSERT INTO `path_course_table` VALUES (134, 42, 20, 1);
INSERT INTO `path_course_table` VALUES (135, 42, 21, 3);
INSERT INTO `path_course_table` VALUES (136, 43, 22, 1);
INSERT INTO `path_course_table` VALUES (137, 43, 23, 2);
INSERT INTO `path_course_table` VALUES (138, 44, 24, 1);
INSERT INTO `path_course_table` VALUES (139, 44, 25, 2);
INSERT INTO `path_course_table` VALUES (140, 44, 26, 3);
INSERT INTO `path_course_table` VALUES (141, 44, 27, 4);
INSERT INTO `path_course_table` VALUES (142, 45, 65, 1);
INSERT INTO `path_course_table` VALUES (143, 45, 63, 2);
INSERT INTO `path_course_table` VALUES (144, 45, 66, 3);
INSERT INTO `path_course_table` VALUES (145, 46, 47, 1);
INSERT INTO `path_course_table` VALUES (146, 46, 49, 2);
INSERT INTO `path_course_table` VALUES (147, 46, 50, 3);
INSERT INTO `path_course_table` VALUES (148, 46, 51, 4);
INSERT INTO `path_course_table` VALUES (149, 47, 17, 1);
INSERT INTO `path_course_table` VALUES (150, 47, 18, 2);
INSERT INTO `path_course_table` VALUES (151, 48, 19, 2);
INSERT INTO `path_course_table` VALUES (152, 48, 20, 1);
INSERT INTO `path_course_table` VALUES (153, 48, 21, 3);
INSERT INTO `path_course_table` VALUES (154, 49, 22, 1);
INSERT INTO `path_course_table` VALUES (155, 49, 23, 2);
INSERT INTO `path_course_table` VALUES (156, 50, 24, 1);
INSERT INTO `path_course_table` VALUES (157, 50, 25, 2);
INSERT INTO `path_course_table` VALUES (158, 50, 26, 3);
INSERT INTO `path_course_table` VALUES (159, 50, 27, 4);
INSERT INTO `path_course_table` VALUES (160, 51, 17, 1);
INSERT INTO `path_course_table` VALUES (161, 51, 18, 2);
INSERT INTO `path_course_table` VALUES (162, 52, 19, 2);
INSERT INTO `path_course_table` VALUES (163, 52, 20, 1);
INSERT INTO `path_course_table` VALUES (164, 52, 21, 3);
INSERT INTO `path_course_table` VALUES (165, 53, 22, 1);
INSERT INTO `path_course_table` VALUES (166, 53, 23, 2);
INSERT INTO `path_course_table` VALUES (167, 54, 24, 1);
INSERT INTO `path_course_table` VALUES (168, 54, 25, 2);
INSERT INTO `path_course_table` VALUES (169, 54, 26, 3);
INSERT INTO `path_course_table` VALUES (170, 54, 27, 4);
INSERT INTO `path_course_table` VALUES (171, 55, 4, 1);
INSERT INTO `path_course_table` VALUES (172, 55, 5, 2);
INSERT INTO `path_course_table` VALUES (173, 55, 7, 3);
INSERT INTO `path_course_table` VALUES (174, 55, 6, 4);
INSERT INTO `path_course_table` VALUES (175, 56, 4, 1);
INSERT INTO `path_course_table` VALUES (176, 56, 5, 2);
INSERT INTO `path_course_table` VALUES (177, 56, 6, 4);
INSERT INTO `path_course_table` VALUES (178, 57, 17, 1);
INSERT INTO `path_course_table` VALUES (179, 57, 18, 2);
INSERT INTO `path_course_table` VALUES (180, 58, 19, 2);
INSERT INTO `path_course_table` VALUES (181, 58, 20, 1);
INSERT INTO `path_course_table` VALUES (182, 58, 21, 3);
INSERT INTO `path_course_table` VALUES (183, 59, 22, 1);
INSERT INTO `path_course_table` VALUES (184, 59, 23, 2);
INSERT INTO `path_course_table` VALUES (185, 60, 24, 1);
INSERT INTO `path_course_table` VALUES (186, 60, 25, 2);
INSERT INTO `path_course_table` VALUES (187, 60, 26, 3);
INSERT INTO `path_course_table` VALUES (188, 60, 27, 4);
INSERT INTO `path_course_table` VALUES (189, 61, 28, 1);
INSERT INTO `path_course_table` VALUES (190, 61, 29, 2);
INSERT INTO `path_course_table` VALUES (191, 61, 31, 3);
INSERT INTO `path_course_table` VALUES (192, 61, 30, 4);
INSERT INTO `path_course_table` VALUES (193, 62, 17, 1);
INSERT INTO `path_course_table` VALUES (194, 62, 18, 2);
INSERT INTO `path_course_table` VALUES (195, 63, 19, 2);
INSERT INTO `path_course_table` VALUES (196, 63, 20, 1);
INSERT INTO `path_course_table` VALUES (197, 63, 21, 3);
INSERT INTO `path_course_table` VALUES (198, 64, 22, 1);
INSERT INTO `path_course_table` VALUES (199, 64, 23, 2);
INSERT INTO `path_course_table` VALUES (200, 65, 24, 1);
INSERT INTO `path_course_table` VALUES (201, 65, 25, 2);
INSERT INTO `path_course_table` VALUES (202, 65, 26, 3);
INSERT INTO `path_course_table` VALUES (203, 65, 27, 4);
COMMIT;

-- ----------------------------
-- Table structure for path_table
-- ----------------------------
DROP TABLE IF EXISTS `path_table`;
CREATE TABLE `path_table` (
  `path_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path_intro` varchar(255) DEFAULT NULL,
  `path_type` int(11) NOT NULL,
  `path_name` varchar(255) DEFAULT NULL,
  `path_priority` int(11) DEFAULT NULL,
  `path_style` int(11) NOT NULL,
  PRIMARY KEY (`path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of path_table
-- ----------------------------
BEGIN;
INSERT INTO `path_table` VALUES (1, 1, NULL, 2, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (2, 1, NULL, 2, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (3, 1, NULL, 1, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (4, 1, NULL, 1, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (5, 1, NULL, 10, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (6, 1, NULL, 15, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (7, 2, NULL, 2, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (8, 2, NULL, 2, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (9, 2, NULL, 1, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (10, 2, NULL, 1, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (11, 2, NULL, 12, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (12, 3, NULL, 33, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (13, 3, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (14, 3, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (15, 3, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (16, 4, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (17, 4, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (18, 4, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (19, 4, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (20, 5, NULL, 1, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (21, 5, NULL, 1, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (22, 5, NULL, 2, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (23, 5, NULL, 2, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (24, 5, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (25, 5, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (26, 5, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (27, 5, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (28, 6, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (29, 6, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (30, 6, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (31, 6, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (32, 7, NULL, 2, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (33, 7, NULL, 2, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (34, 7, NULL, 10, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (35, 7, NULL, 15, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (36, 7, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (37, 7, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (38, 7, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (39, 7, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (40, 8, NULL, 25, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (41, 8, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (42, 8, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (43, 8, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (44, 8, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (45, 9, NULL, 12, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (46, 9, NULL, 9, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (47, 9, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (48, 9, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (49, 9, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (50, 9, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (51, 10, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (52, 10, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (53, 10, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (54, 10, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (55, 11, NULL, 2, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (56, 11, NULL, 2, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (57, 11, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (58, 11, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (59, 11, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (60, 11, NULL, 32, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (61, 12, NULL, 25, NULL, NULL, 0);
INSERT INTO `path_table` VALUES (62, 12, NULL, 29, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (63, 12, NULL, 30, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (64, 12, NULL, 31, NULL, NULL, 1);
INSERT INTO `path_table` VALUES (65, 12, NULL, 32, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for path_user_table
-- ----------------------------
DROP TABLE IF EXISTS `path_user_table`;
CREATE TABLE `path_user_table` (
  `path_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  PRIMARY KEY (`path_user_id`),
  KEY `FKCCC89EB4EE26590B` (`user_id`),
  KEY `FKCCC89EB49D007A57` (`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for post_comment_table
-- ----------------------------
DROP TABLE IF EXISTS `post_comment_table`;
CREATE TABLE `post_comment_table` (
  `post_comment_id` int(50) NOT NULL AUTO_INCREMENT,
  `post_comment_puber_id` int(50) NOT NULL,
  `post_id` int(50) NOT NULL,
  `post_comment_date` varchar(50) NOT NULL,
  `post_comment_cont` varchar(500) NOT NULL,
  `post_comment_type` varchar(50) NOT NULL,
  PRIMARY KEY (`post_comment_id`),
  KEY `pcom_post_id` (`post_id`),
  CONSTRAINT `pcom_post_id` FOREIGN KEY (`post_id`) REFERENCES `post_table` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_comment_table
-- ----------------------------
BEGIN;
INSERT INTO `post_comment_table` VALUES (1, 1, 2, '20171228', '成长的力量，推动着整个社会一步步向前发展，善林人正在书写金融新篇章', '2');
INSERT INTO `post_comment_table` VALUES (2, 2, 1, '20171022', '按要求定做金库门,银行金库门,博物馆门,厂家直销,销售安装一体.河北顺发柜业.金库门款式多样,同时也可定做atm防护舱,银亭,保险柜. ', '3');
INSERT INTO `post_comment_table` VALUES (3, 1, 1, '20171228', 'Lihao', '2');
INSERT INTO `post_comment_table` VALUES (4, 1, 11, '2018-03-22 19:37:14', '学习了学习了', 'user');
INSERT INTO `post_comment_table` VALUES (23, 1, 2, '2018-03-22 20:30:55', '厉害了', 'user');
INSERT INTO `post_comment_table` VALUES (24, 1, 2, '2018-03-22 20:34:51', '你好', 'user');
INSERT INTO `post_comment_table` VALUES (26, 1, 1, '2018-03-22 20:39:23', '厉害', 'user');
INSERT INTO `post_comment_table` VALUES (27, 1, 1, '2018-03-22 20:40:07', '厉害', 'user');
INSERT INTO `post_comment_table` VALUES (28, 1, 1, '2018-03-22 20:42:27', '厉害', 'user');
INSERT INTO `post_comment_table` VALUES (29, 1, 2, '2018-03-22 20:44:38', 'aaa', 'user');
INSERT INTO `post_comment_table` VALUES (30, 1, 2, '2018-03-22 20:45:50', 'as', 'user');
INSERT INTO `post_comment_table` VALUES (31, 1, 1, '2018-03-22 20:48:08', 'a', 'user');
INSERT INTO `post_comment_table` VALUES (42, 1, 11, '2018-03-25 12:30:36', '测试', 'user');
INSERT INTO `post_comment_table` VALUES (49, 4, 1, '2018-04-05 17:07:11', '12', 'user');
INSERT INTO `post_comment_table` VALUES (50, 4, 1, '2018-04-05 17:07:22', '67867', 'user');
INSERT INTO `post_comment_table` VALUES (51, 1, 1, '2018-04-05 20:37:52', '111', 'user');
INSERT INTO `post_comment_table` VALUES (52, 1, 1, '2018-04-05 20:40:04', 'ok', 'user');
INSERT INTO `post_comment_table` VALUES (53, 1, 1, '2018-04-05 20:41:01', 'ok', 'user');
INSERT INTO `post_comment_table` VALUES (54, 1, 1, '2018-04-05 20:42:23', '67', 'user');
INSERT INTO `post_comment_table` VALUES (55, 1, 1, '2018-04-05 20:42:55', 'oh', 'user');
INSERT INTO `post_comment_table` VALUES (58, 1, 1, '2018-04-07 19:46:17', 'ssd', 'user');
INSERT INTO `post_comment_table` VALUES (59, 1, 1, '2018-04-07 19:46:20', 'ssd', 'user');
INSERT INTO `post_comment_table` VALUES (60, 1, 1, '2018-04-07 19:46:23', 'ssd', 'user');
INSERT INTO `post_comment_table` VALUES (62, 2, 65, '2018-04-12 00:30:57', '说的挺好的.支持一下', 'user');
INSERT INTO `post_comment_table` VALUES (63, 1, 1, '2018-04-14 10:10:20', '写的很不错,赞一个!', 'user');
INSERT INTO `post_comment_table` VALUES (64, 1, 11, '2018-04-18 04:47:48', '讲的真不错', 'user');
INSERT INTO `post_comment_table` VALUES (65, 2, 69, '2018-04-19 15:22:11', '很不错', 'user');
COMMIT;

-- ----------------------------
-- Table structure for post_table
-- ----------------------------
DROP TABLE IF EXISTS `post_table`;
CREATE TABLE `post_table` (
  `post_id` int(50) NOT NULL AUTO_INCREMENT,
  `post_puber_id` int(50) NOT NULL,
  `post_name` varchar(50) NOT NULL,
  `post_cont` varchar(20000) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `post_clicks` int(50) NOT NULL,
  `post_com_num` int(50) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `post_puber_type` varchar(50) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_table
-- ----------------------------
BEGIN;
INSERT INTO `post_table` VALUES (1, 1, '技术带来金融创新应如何理解？', '“技术带来金融创新”是每一个善林金融人共同的愿望，也是金融科技行业未来发展最大的看点。善林金融坚持“金融＋科技”为导向，研发与实践同步前进，迈出了运用智能技术创新金融产品与服务的坚定步伐。', '2018-02-21 19:15:11', 251, 17, '风险部', 'user');
INSERT INTO `post_table` VALUES (2, 1, '金库门怎么选择', '金库门也是多种多样的，例如普通钢板金库门、应急金库门、不锈钢金库门、双开式不锈钢金库门等等。经济实用型普通钢制金库门，广泛应用于金融领域基层单位小型金库，其比较经济的价位和实用性，深受广大用户的青睐。随着社会形势的不断变化，这款金库门的防护级别也有了很大的提高，其最高防护级别也可达到国标中的C级标准', '2018-04-11 19:15:11', 114, 5, '资产管理部', 'leader');
INSERT INTO `post_table` VALUES (3, 3, '浅谈银行网点如何提升经营管理能力', '银行营业网点经营管理质量如何,直接关系到客户关系的亲疏、品牌形象的优劣、经营效益的高低。为了应对不断变化的国际国内经济金融形势，银行网点要不断提升经营管理水平。\r\n\r\n　　一、加强对员工的理想教育。营业网点理应成为每一个员工“银行梦”起始的地方。只有具备了理想，才有前进的动力，才有营销的激情，才有面对繁冗柜面压力的勇气。因此必须加强员工的职业理想教育，科学规划和扎实发展个人的职业生涯。\r\n\r\n　　二、努力提升网点客户体验。商业银行客户群体总量大、层次多，加之业务种类不断增加，网点柜面压力在不断加大。要通过优化业务办理流程、增配自助机具、推广电子银行服务等措施有效拓宽客户服务渠道，不断改进客户服务体验。\r\n\r\n　　三、全方位提升网点营销能力。一是进一步完善网点低柜功能，通过增设理财专柜、贷款咨询专柜等措施，努力将网点低柜打造成营销基金、黄金、寿险等重点产品的主要平台。二是优化大堂岗位设置。弹性安排轮岗、保证两名大堂经理，一人主要对产品进行宣传营销，另一人主要进行人员分流及业务指导。三是要认真分析不同客户群体特点，用心发掘客户需求，寻求营销切入点。\r\n\r\n　　四、完善激励和分配办法。一部公平、合理、高效的考核办法是维持网点营销平台稳健运行的“安全带”与“助推剂”。因此必须结合网点实际制定考核办法，调动所有员工的营销积极性。根据“按劳分配、按岗计提、鼓励协作、惩戒懈怠”的原则，可分别制定网点负责人、客户经理、理财经理、大堂经理和高低柜柜员考核办法。通过完善考核激励机制及与服务质量、业务质量挂钩的分配体制，为服务水平提升打好基础。', '2018-04-11 23:11:22', 6, 0, '人力资源部', 'user');
INSERT INTO `post_table` VALUES (4, 3, '银行矩阵式管理模式有哪些特点', '矩阵式的管理模式，指的是银行之机能式组织形态下，为了某一个特别的任务，另外的组成专案的小组来负责，这一个专案的小组与原有的组织相配合，在形态上面有行列交叉之式，所以被称之为矩阵式组织，矩阵式组织形式是在直线职能式垂直形态组织系统的基础之上，再增加一种横向的领导系统，它主要是由职能部门系列和完成某一个临时任务组建项目小组系列组成的。从而可以同时的实现事业部是与职能式组织结构特征的组织结构形式。\r\n\r\n　　银行矩阵式管理模式的特点就是具有双道命令的系统，两道系统的权力平衡，是这种组织最为关键的一点，但是在现实当中又没有办法存在这种绝对的平衡，因此在实际的工作过程当中，就会存在两条相互结合的划分职权的路线，职能与产品，这也会形成两种深化的演化形式，职能式矩阵和项目是矩阵，职能式矩阵主要是以职能主管为主要的决策人，项目式矩阵主要是以产品项目负责为主。\r\n\r\n　　银行矩阵式管理模式的优点可以同时具备事业部式以及职能式组织结构的优点，其次也能够兼并职能式和产品式职能划分的优点，这主要是因为职能式职能划分与产品式职能划分的优缺点正好是互补型，除此之外也能够加强横向的联系，专业设备以及人员得到了充分的利用，实现了人力资源的弹性共享，这种管理模式也具有比较大的机动性，能够促进各种专业人员的互相帮助，互相激发。', '2018-04-02 10:02:12', 1, 0, '人力资源部', 'user');
INSERT INTO `post_table` VALUES (5, 3, '商业银行的运作模式', '现代化商业银行运作模式:\r\n　　实现八个统一控制即：\r\n　　1、集成客户服务系统\r\n　　包括集成服务通道管理平台、柜员前台系统、自助终端前台系统、电话银行前台系统、互联网前台系统等。其中各前台系统通过集成服务通道管理平台统一与集成业务处理系统往来。\r\n　　该系统要求做到为客户提供全天候、全方位、个性化的银行服务。1、全天候服务，即不论客户所在地银行是上班时间还是非上班时间，只要客户需要，就可通过客户服务系统办理业务和获得其它服务。2、全方位服务，即客户无须去银行网点，只要通过电话或上网就可以办理几乎所有银行业务，包括传统业务和各种新的衍生业务及咨询，甚至查找银行网点街区地图这样的服务需要也可得到满足。3、个性化服务，即可为客户提供“量身定制”服务。\r\n　　2、集成业务处理系统\r\n　　包括会计、信贷（或资产业务）管理、资金、外汇等所有业务处理子系统。\r\n　　该系统要求做到：\r\n　　1、功能全面，业务整合。\r\n　　2、统一核算，统一账务管理，统一客户信息管理。\r\n　　3、本外币一体化。\r\n　　4、结构适应性强，易于进行业务创新。\r\n　　5、面向交易操作为主，面向记账为辅。\r\n　　6、高度自动化，业务处理相互联动，各子系统可以进行数据信息交换和功能互用。\r\n　　7、高度网络化，业务处理系统与计算机应用系统其它部分连接高度网络化。\r\n　　8、高度安全性。\r\n　　9、系统平台化。', '2018-04-03 15:10:20', 2, 0, '人力资源部', 'user');
INSERT INTO `post_table` VALUES (6, 3, '保险的意义和功用是什么？', '一、保险的职能\r\n　　（一）保险的基本职能\r\n　　保险的基本职能是保险原始与固有的职能。关于保险基本职能主要有两种观点，一种观点认为保险的基本职能是分摊损失和补偿损失或给付保险金；另一种观点认为保险的基本职能是经济补偿和保险金给付职能。本课程持后一种观点。\r\n　　经济补偿职能是在发生保险事故、造成损失后根据保险合同按所保标的的实际损失数额给予赔偿，这是财产保险的基本职能；\r\n　　保险金给付职能是在保险事故发生时保险双方当事人根据保险合同约定的保险金额进行给付，这是人身保险的职能。\r\n　　• 人身保险为什么用给付，而不用赔偿？\r\n　　a. 人的身体生命不能用货币来衡量其价值\r\n　　b. 人身保险有的险种具有返还的储蓄性\r\n　　（二）保险的派生职能\r\n　　保险的派生职能是在基本职能的基础上产生的职能。保险的派生职能是融资职能、防灾防损职能。\r\n　　1、保险的融资职能：是保险人参与社会资金融通的职能。保险人利用保费收取与赔款和给付保险金之间的时差性，将集中起来的保险基金中的暂时闲置部分用于融资或投资，使资金保值或增值，以弥补保险经营的亏损。\r\n　　其体现在两方面：一方面具有筹资职能；另一方面通过购买有价证券、购买不动产等投资方式体现投资职能。\r\n　　2、防灾防损职能：是风险管理的重要内容。保险防灾防损工作的最大特点就在于积极主动地参与、配合其他防灾防损主管部门扩展防灾防损工作。。保险过程的防灾防损 体现在三个环节：险前预防、险中抢救、险后赔偿。保险人为了稳定自己的经营，通过事先预防以减少损失发生，从而降低赔付率，增加保险经营的收益以及保障社会财富安全；促进投保人的风险管理意识，从而促使其加强防灾防损工作。\r\n　　二、保险的意义\r\n　　买保险不是消费，而是把钱从你的左口袋挪到右口袋。买保险也不是为了赚钱，但它是减少意外和疾病损失，转嫁风险的最好方式。保险费是生活费的缩影，便宜的保费代表贫穷的生活，您愿意未来的生活水准打折吗？所以贵的是生活费，不是保险费。\r\n　　养儿防老是中国人传统的养老思想，但时代的变化了。1、子女大了当然会尽孝道，以奉养双亲为己任，但现代社会竞争激烈，稳定不易，我们是否也该替他们打算一下呢？2、现在房价高昂，人们为了偿还贷款和生活费已经焦头烂额了，何苦增加下一代的负担？3、人老要活得有尊严，保险最起码能保证给我们一笔基金，付保险费就象付小孩的抚养费，小孩长大后不一定保证个个都能回馈，可是保险费却是铁定能回收，这样的投资难道不值得吗？\r\n　　一张保单拥有：1、政府监督保险公司运作的承诺；2、保险公司履行契约的承诺；3、所有保户互助共济的承诺；4、我对您终身专业服务的承诺！\r\n　　保险的作用：生——有所准备，老——有所养，病——有所医，死——有所留，残——有所靠。\r\n　　保险的意义：生活困难时雪中送碳，生活美满时锦上添花。', '2018-03-20 14:02:02', 4, 0, '人力资源部', 'user');
INSERT INTO `post_table` VALUES (11, 2, '如何让才能让自己处于不败之地', '<p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">2017年的结束，意味着我从事猎头的工作已经有8年了。在过去的三年里，有超过200万的个人业绩，成为公司100多名猎头顾问中的Top Billers （业绩最好的顾问）之一，而我个人的年收入也连续三年达到了100万。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"></span></p><span style=\"color:rgb(255,104,39);\"><strong style=\"letter-spacing:.5px;\">从“程序员”转变成“程序员猎头”</strong></span>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">8年前我还是一个在望京索尼爱立信（简称索爱）的测试开发工程师。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"><br></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">从测试开发工程师转行为IT猎头，这事说来有点偶然。刚毕业3年的我，参加2010年华中科技大学北京校友会的活动，我认识了能源学院毕业的师兄J，他创建了一家猎头公司，专门为IT互联网企业提供专业人才、中高级人才“寻聘服务”（俗称猎头）。在聊天中，谈到我在索尼爱立信公司以及从事测试开发工作，也谈到了手机行业的变化，测试开发工作的“无聊”，以及我对未来的迷茫。J师兄建议我到他猎头公司去做“顾问” （就是帮助各IT、互联网客户公司招聘人才）。 他说有计算机专业知识转行做IT猎头、服务程序员，这种转变的跨度也不算大，如果爱上了这门工作，业绩应该会比一般文理科毕业更容易取得好业绩，他还说了什么猎头是一个终身职业等等。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"><br></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">就这样，我从工作了18个月左右的索爱离职，糊里糊涂地加入了J师兄的猎头公司，上班地点由望京转去了世贸天阶。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><br></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:center;background-color:rgb(255,255,255);\"><img style=\"visibility:visible !important;\" src=\"http://ss.csdn.net/p?http://mmbiz.qpic.cn/mmbiz_jpg/1hReHaqafadRAmxn2tqvKsTib5EzaHIo9ia5YiaLwPWpoDu8sQQrjVc6zOob7IT3wfOiawqyptTIlBeesnTXxZdJUw/640?wx_fmt=jpeg&amp;wxfrom=5&amp;wx_lazy=1\" alt=\"640?wx_fmt=jpeg&amp;wxfrom=5&amp;wx_lazy=1\" width=\"558\"></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"><br></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">刚开始做猎头还是有一些不习惯的，需要每天从公司人才数据库里头找人、当然也会在社交网络上去找人，向这些潜在候选人打电话，告诉他们什么公司需要什么样的人，薪水很高、可以增长30-50%，公司很牛拿C轮融资什么的。每天需要打很多电话，并且经常会被程序员们鄙视......“你是猎头啊，对不起，没空！” 。电话的秒挂率很高，公司会有一些资深的顾问对我们传帮带，教我们如何“基于价值思考”， “如何结构化沟通”，“如何捕捉程序员的职业想法” 等等。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"><br></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">慢慢地，我掌握了一些向程序员推荐职业机会的技巧，如何抓住程序员的一些真实想法，在理解程序员的内心想法方面我要比一般的同事好，因为我之前就是程序媛，有时在电话沟通中我也直接告诉他们我曾经也是程序员，这增加不少亲和感，有共同语言。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">2010年是我入行第一年，当年我完成了8个offers (推荐的人才有8个人被客户录用、入职），取得了46.8万的个人业绩（公司过往几年，新顾问首年平均业绩只有26万），2010年我的个人收入也达到了19.8万，这比我在索尼爱立信的16万还是多了好几万。猎头顾问的收入构成一般是基本工资加业绩提成，业绩提成大约占50%左右。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:center;letter-spacing:.5px;background-color:rgb(255,255,255);\"><strong><span style=\"font-size:15px;\"></span></strong></p>\n                    <p style=\"min-height:1em;\"><strong><span style=\"color:rgb(255,104,39);\">移动互联、人工智能是中国程序员薪资集体飞跃的两个分水岭</span></strong></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:center;letter-spacing:.5px;background-color:rgb(255,255,255);\"><br></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">从2010年开始，外资企业在IT人才吸引力方面有明显滑落，雇主吸引力转向了本土的互联网公司，人才需求也转向了移动开发（android，iOS）,以及新型的前端开发，当然JAVA语言开发一直长盛不衰。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"><br></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">2012年开始，移动人才简直是“争夺战”。到了2013年、2014年，3～4年移动开发经验的工程师薪水很快冲到了24k/月平均线。<strong>“移动互联”是中国程序员薪水整体跃升的第一个分水岭</strong>，2012年之前程序的工资大部分在15～18k的区间内，经历了“移动互联”及后来的“大众创业”淘金期，中国程序员的工资很快进入了22～26k的主体区间。</span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"><br></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><strong><span style=\"font-size:15px;\">很显然中国程序员的第二次跃升机会来了，这次跃升依赖于“人工智能”，现在3～4年工作经验，与AI沾边的程序员薪水基本上都在30-35K的区间。</span></strong></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"></span></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:center;background-color:rgb(255,255,255);\"><img class=\"img_loading\" style=\"visibility:visible !important;\" src=\"http://ss.csdn.net/p?https://mmbiz.qpic.cn/mmbiz_jpg/1hReHaqafadRAmxn2tqvKsTib5EzaHIo9B4ibIXNEvictnIsbjtb0vQY5wSl8XXic7olLag3SOibeDfUVf3kvtkibvRg/640?wx_fmt=jpeg\" alt=\"640?wx_fmt=jpeg\" width=\"558\"></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\"></span><br></p>\n                    <p style=\"min-height:1em;color:rgb(62,62,62);font-size:16px;white-space:normal;line-height:25.6px;text-align:justify;letter-spacing:.5px;background-color:rgb(255,255,255);\"><span style=\"font-size:15px;\">这就是做IT互联网猎头的趣味性。以前我做测试开发，每天的工作就写写代码、指导测试，与其他工程师，产品经理扯扯，这样过日子。朝九晚五（当然很多同胞996），几乎没有时间与精力，也没有兴趣关注行业的一些动态。做猎头，你需要关注这些新事物。时刻关注着市场有哪些公司能够成为“独角兽”，并把它们发展成为公司客户。</span></p>', '2018-03-21 19:15:11', 226, 68, '公司业务部', 'user');
INSERT INTO `post_table` VALUES (65, 1, '保险基金的形式有哪些 保险基金如何运用？', '保险基金一般有四种形式：\r\n\r\n　　（1）集中的国家财政后备基金。该基金是国家预算中设置的一种货币资金，专门用于应付意外支出和国民经济计划中的特殊需要，如特大自然灾害的救济、外敌入侵、国民经济计划的失误等。\r\n\r\n　　（2）专业保险组织的保险基金，即由保险公司和其他保险组织通过收取保险费的办法来筹集保险基金，用于补偿保险单位和个人遭受灾害事故的损失或到期给付保险金。\r\n\r\n　　（3）社会保障基金。社会保障作为国家的一项社会政策，旨在为公民提供一系列基本生活保障。公民在年老、患病、失业、灾难和丧失劳动能力等情况下，有从国家和社会获得物质帮助的权力。社会保障一般包括社会保险、社会福利和社会救济。\r\n\r\n　　（4）自保基金，即由经济单位自己筹集保险基金，自行补偿灾害事故损失。国外有专业自保公司自行筹集资金，补偿母公司及其子公司的损失；我国有\"安全生产保证基金\"，通过该基金的设置，实行行业自保，如中国石油化工总公司设置的\"安全生产保证基金\"即属此种形式。\r\n\r\n　　保险基金如何运用？\r\n\r\n　　（1）保险基金运用的原则\r\n\r\n　　保险基金运用即保险公司运用闲置的资金进行各种形式的投融资以增加盈利的行为。\r\n\r\n　　（一）安全性原则\r\n\r\n　　（二）收益性原则\r\n\r\n　　（三）流动性原则\r\n\r\n　　上述原则是互相联系、相互制约的，收益是保险基金运用的目标，但又往往与安全性和流动性发生矛盾。由于组织经济补偿职能是保险公司的首要职能，融资职能为其次，所以，保险公司经营的特殊性决定了资金运用首先要保证安全性和流动性，在此基础上追求收益以增加利润。', '2018-04-11 23:13:06', 64, 1, '风险部', 'user');
INSERT INTO `post_table` VALUES (68, 1, '大家好', '<p>今天天气很好</p>', '2018-04-17 02:02:22', 0, 0, '风险部', 'user');
INSERT INTO `post_table` VALUES (69, 1, '今天的天气不错', '<p>大<span style=\"font-weight: bold;\">家一起来聊聊天啊</span></p>', '2018-04-18 04:47:17', 1, 1, '风险部', 'user');
INSERT INTO `post_table` VALUES (70, 2, '希望大家能够开开心心', '<p>分享一些愉快的事情吧.</p>', '2018-04-19 15:24:15', 0, 0, '公司业务部', 'user');
COMMIT;

-- ----------------------------
-- Table structure for question_table
-- ----------------------------
DROP TABLE IF EXISTS `question_table`;
CREATE TABLE `question_table` (
  `question_id` int(50) NOT NULL AUTO_INCREMENT,
  `question_cont` varchar(500) NOT NULL,
  `question_key` varchar(50) NOT NULL,
  `question_type` varchar(50) NOT NULL,
  `question_level` varchar(50) NOT NULL,
  `course_id` int(50) DEFAULT NULL,
  `question_function` varchar(50) DEFAULT NULL,
  `answer_A` varchar(255) DEFAULT NULL,
  `answer_B` varchar(255) DEFAULT NULL,
  `answer_C` varchar(255) DEFAULT NULL,
  `answer_D` varchar(255) DEFAULT NULL,
  `answer_E` varchar(255) DEFAULT NULL,
  `answer_F` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_table
-- ----------------------------
BEGIN;
INSERT INTO `question_table` VALUES (1, '由于电线老化未及时维修，以至发生断路进而引起火灾，造成人员伤亡。导致该起人员伤亡的风险事故是（   ）。', 'B', '1', '1', NULL, '专业能力之金融', '电线老化', '火灾 ', '电线老化未及时维修', '电线断路 ', NULL, NULL);
INSERT INTO `question_table` VALUES (2, '王某是某寿险公司重大疾病险的被保险人，在一次单位体检中几乎从不参加体检的王某也在体检队伍中，体检中发现其患有肝癌而且已到晚期，保险人在核赔中发现王某平时的生活方式非常糟糕  无节制的抽烟 酗酒，几乎每天在外暴饮暴食，起居极为不合理，才导致了如此严重的结果。就造成王某健康状况如此严重结果的风险因素类型而言，属于（    ）。', 'C', '1', '1', NULL, '专业能力之金融', '道德风险因素', '物质风险因素', '心理风险因素 ', '投机风险因素 ', NULL, NULL);
INSERT INTO `question_table` VALUES (3, '在风险管理的各种方法中，人们之所以选择保险，其目的是（    ）。', 'D', '1', '1', NULL, '专业能力之金融', '在事故发生前降低事故发生的频率', '在事故发生时将损失减少到最低限度 ', '改变引起意外事故和扩大损失的各种条件', '通过提供基金对无法控制的风险作财务安排 ', NULL, NULL);
INSERT INTO `question_table` VALUES (4, '通常，如果风险所致损失频率和幅度低，损失在短期内可以预测以及最大损失不影响企业或单位财务稳定，适宜采用的风险管理方法是（    ）。', 'A', '1', '1', NULL, '专业能力之金融', '自留风险', '转移风险', '避免风险', '分散风险', NULL, NULL);
INSERT INTO `question_table` VALUES (5, '风险不能使大多数的保险对象同时遭受损失是可保风险的前提条件之一，这一条件要求损失的发生具有（    ）。 ', 'A', '1', '1', NULL, '专业能力之金融', '分散性', '集中性', '同质性', '规律性', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for questionnaire_table
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_table`;
CREATE TABLE `questionnaire_table` (
  `questionnaire_id` int(11) NOT NULL AUTO_INCREMENT,
  `questionnaire_cont` varchar(500) NOT NULL,
  `answer_A` varchar(255) NOT NULL,
  `answer_B` varchar(255) NOT NULL,
  `answer_C` varchar(255) NOT NULL,
  `answer_D` varchar(255) NOT NULL,
  `questionnaire_a` int(11) DEFAULT NULL,
  `questionnaire_b` int(11) DEFAULT NULL,
  `questionnaire_c` int(11) DEFAULT NULL,
  `questionnaire_d` int(11) DEFAULT NULL,
  `questionnaire_type` int(11) NOT NULL,
  `questionnaire_funtion` int(11) DEFAULT NULL,
  PRIMARY KEY (`questionnaire_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_table
-- ----------------------------
BEGIN;
INSERT INTO `questionnaire_table` VALUES (1, '假如你的朋友突然带来一个你最不喜欢的人到你家里，你会怎么做 ', '暂时忍耐，以后再把实情告诉你朋友。', '表示惊奇。', '把你的感觉完全隐藏起来', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (2, '对自己的某次失败，你会怎么做', '只在谈话时顺便说出来。', '只要别人有兴趣时都会告诉他。', '决不说，怕会被别人抓住弱点，对自己不利。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (3, '遇到难题时，你会怎么做', '毫不犹豫地向有关专家征求意见。', '经常向熟人请教。 ', '很少麻烦别人。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (4, '你骑车去一个较远的地方参加社交活动，中途找不到路标，你会怎么做', '耐心等待过路车或有人走过时问个清楚。', '赶快查自带的地图。', '大声埋怨，不知何时才能到达目的地。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (5, '当你选择衣服时，你会怎么做', '跟随新潮流，希望适合自己。', '在选定以前，先听取陪同的朋友或售货员的意见。', '总爱固定在一种款式上。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (6, '当你知道将有不愉快的事时，你会怎么做', '感觉完全有办法应付。', '相信事实并不会比预料的利害。', '自己进入紧张状态。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (7, '在嘈杂 混乱的环境里，你会怎么做', '不受影响，照常学习。', '仍能集中精力学习，但效率较低了。', '总结得很烦，不能静下心来读书。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (8, '和别人争吵起来时，你会怎么做', '能有力地反驳对方。', '能反驳，但无多大力量。', '常常语无伦次，事后才想起如何反驳对方，可是已经晚了', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (9, '每次参加正式的考试或竞争，你会怎么做', '常常比平时的成绩更好些。', '和平时成绩差不多。', '常常不如平时的成绩。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (10, '必须在大庭广众面前讲话时，你会怎么做', '侃侃而谈。', '感觉虽然难，但还A想方设法完成。', '因怯场便不知所措或说话结结巴巴。', '', 3, 2, 1, NULL, 1, 1);
INSERT INTO `questionnaire_table` VALUES (11, '你认为那些使用古怪和生僻词语的作家，纯粹为了炫耀。', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (12, '无论什么问题，要让你产生兴趣，总比让别人产生兴趣要困难得多。', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (13, '对那些经常做没把握事情的人，你不看好他们。', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (14, '你常常凭直觉来判断问题的正确与错误。', '是', '不确定', '否', '', 1, 3, 2, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (15, '你善于分析问题，但不擅长对分析结果进行综合 提炼。', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (16, '你审美能力较强。', '是', '不确定', '否', '', 1, 3, 2, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (17, '你的兴趣在于不断提出新的建议，而不在于说服别人去接受这些建议。\r\n', '是', '不确定', '否', '', 1, 3, 2, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (18, '你喜欢那些一门心思埋头苦干的人。\r\n', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (19, '你不喜欢提那些显得无知的问题。\r\n', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (20, '你做事总A有的放矢，不盲目行事。\r\n', '是', '不确定', '否', '', 1, 2, 3, NULL, 1, 2);
INSERT INTO `questionnaire_table` VALUES (21, '你在一条僻静的小路上行走，忽然听到一声震耳欲聋的巨响，这时你会怎么做', '被震惊了一下，但是很快转向巨响的位置，判断出发声巨响的原因', '被吓得尖叫了一声，本能的转向巨响传来的方位，即使判断出巨响的原因，心里还是在砰砰乱跳', '被吓的连叫带跳，不由自主地东张西望，心里砰砰乱跳，倆脚发软', '', 1, 2, 3, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (22, '骑自行车下班回家，途中看见马路对面发生一起车祸，这时你会怎么做', '放下自行车，很快穿过马路，看怎样能助一臂之力', '有点害怕，但还是走过去看个究竟', '看到这场面心惊肉跳，甚至连看都不敢看一眼就离开了', '', 1, 2, 3, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (23, '你在电影院或电视屏幕上看到日军砍杀战俘人员的情景时，是', '有点震惊，但并不害怕', '感到害怕，赶快把目光转移', '很注意，想仔细看个究竟', '', 3, 1, 2, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (24, '你到朋友家去串门，发现朋友家发生了一件不幸的事情，他们全家人都沉浸在悲痛之处，这时你会怎么做', '尽快向邻居或朋友本人简单了解一下事情发生的大概情况，安慰并帮助朋友', '说几句安慰的话后，不知道该怎么办', '什么都说不出来，也不知道该怎么办，或和朋友一起悲痛', '', 1, 2, 3, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (25, '你骑车急驶到拐弯的地方，突然看到前面有一小伙子也急驶而来，这时你会怎么做', '急着提醒对方，并尽快刹车', '还没弄清楚怎么回事就撞上去了', ' 迅速调整自行车方向，避开对方', '', 2, 3, 1, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (26, '你正聚精会神考虑处理一件事情的对策，突然有人告诉你一件与你手头工作无关的事，这时你会怎么做', '只记住其中一部分', '顾不上听，没映像', '记得清清楚楚', '', 2, 3, 1, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (27, '平时你身体很好，但是在体检时医生告诉您身上某个部位需要动手术，听到这个消息后，你会怎么做', '终日提心吊胆，惶恐不安，担心手术出问题', '相信医生，相信手术不会出问题', '听天由命', '', 3, 1, 2, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (28, '你在车间忙着劳动，突然发现一位工友触电，这时你会怎么做', '俩眼发呆，俩腿发软', '立即切断电源', '慌了手脚，不知如何是好', '', 3, 1, 2, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (29, '乘公交车时，一小偷在你的口袋里行窃，这时你会怎么做', '不大可能察觉，等到用钱时才发现失窃，至于时间，地点已没有映像', '立即察觉，并将小偷抓住', '当时没察觉，事后才回忆起被盗窃时 的部分情景', '', 3, 1, 2, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (30, ' 飘雪的夜晚，你在森林中听到几声狼叫，这时你会怎么做', '若无其事，继续走路 ', '心里七上八下', ' 吓的躲起来', '', 1, 2, 3, NULL, 1, 3);
INSERT INTO `questionnaire_table` VALUES (31, '你的上司的上司邀请你共进午餐，回到办公室，你发现你的上司颇为好奇，此时', '不透露蛛丝马迹。', '粗略描述，淡化内容的重要性。', '告诉他详细内容。', '', 1, 2, 3, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (32, '当你主持会议时，有一位下属一直以不相干的问题干扰会议，此时你会怎么做', '纵容下去。', '告诉该下属在预定的议程之前先别提出问题。', '要求所有的下属先别提出问题，直到你把正题讲完。', '', 1, 2, 3, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (33, '当你跟上司正在讨论事情，有人打长途来找你，此时你会怎么做', '告诉上司的秘书说不在。', '接电话，而且该说多久就说多久。', '告诉对方你在开会，待会再回电话。', '', 1, 2, 3, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (34, '有位员工连续四次在周末向你要求他想提早下班，此时你会怎么说', '我不能再容许你早退了，你要顾及他人的想法。', '你对我们相当重要，我需要你的帮助，特别是在周末。', '今天不行，下午四点我要开个会。', '', 1, 3, 2, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (35, '你刚好被聘为某部门主管，你知道还有几个人关注着这个职位，上班的第一天，你会怎么做', '个别找人谈话以确认哪几个人有意竞争职位。', '把问题记在心上，但立即投入工作，并开始认识每一个人。', '忽略这个问题，并认为情绪的波动很快会过去。', '', 1, 3, 2, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (36, '我有位下属对你说，“有件事我本不应该告诉你的，但你有没有听到……”你会怎么说', 'A 我不想听办公室的流言。', '跟公司有关的事我才有兴趣听。', '你告诉我怎么回事，', '', 1, 3, 2, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (47, '由于疏忽，你同天安排了两个约会，那么你将赴哪个约会', '赴最先约定的约会', '赴最重要的约会', '都不参加', ' ', 3, 2, 1, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (48, '\r\n你的朋友因家庭纠纷找到你，希望听一听你的意见，你会怎么做', '不表达自己的态度', '按你的想法评价谁是谁非', '按你的想法评价谁是谁非', ' ', 3, 2, 1, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (49, '有朋友滔滔不绝对你讲述一个电视节目，而你却认为这个节目没有意思，于是你会怎么说', '这个节目我没有看过，但我想看看', '我看过，但我不喜欢', '没看过，不喜欢看', ' ', 3, 2, 1, NULL, 1, 4);
INSERT INTO `questionnaire_table` VALUES (50, '如果你遇见一个人，但想不起来名字，你会怎么做', '坦率地承认记不起他的名字了', '假装认识打招呼', '难为情地走开', ' ', 3, 2, 1, NULL, 1, 4);
COMMIT;

-- ----------------------------
-- Table structure for recommend_course_course_table
-- ----------------------------
DROP TABLE IF EXISTS `recommend_course_course_table`;
CREATE TABLE `recommend_course_course_table` (
  `recommend_course_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`recommend_course_course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend_course_course_table
-- ----------------------------
BEGIN;
INSERT INTO `recommend_course_course_table` VALUES (1, 1, 7, 1);
INSERT INTO `recommend_course_course_table` VALUES (2, 1, 2, 2);
INSERT INTO `recommend_course_course_table` VALUES (3, 1, 3, 3);
INSERT INTO `recommend_course_course_table` VALUES (4, 1, 5, 4);
INSERT INTO `recommend_course_course_table` VALUES (5, 1, 70, 5);
INSERT INTO `recommend_course_course_table` VALUES (6, 2, 3, 1);
INSERT INTO `recommend_course_course_table` VALUES (7, 2, 64, 2);
INSERT INTO `recommend_course_course_table` VALUES (8, 2, 99, 3);
INSERT INTO `recommend_course_course_table` VALUES (9, 2, 100, 4);
INSERT INTO `recommend_course_course_table` VALUES (10, 2, 101, 5);
INSERT INTO `recommend_course_course_table` VALUES (11, 3, 96, 1);
INSERT INTO `recommend_course_course_table` VALUES (12, 3, 97, 2);
INSERT INTO `recommend_course_course_table` VALUES (13, 4, 2, 1);
INSERT INTO `recommend_course_course_table` VALUES (14, 4, 99, 2);
INSERT INTO `recommend_course_course_table` VALUES (15, 4, 100, 3);
INSERT INTO `recommend_course_course_table` VALUES (16, 4, 101, 4);
INSERT INTO `recommend_course_course_table` VALUES (17, 4, 102, 5);
INSERT INTO `recommend_course_course_table` VALUES (18, 5, 3, 1);
INSERT INTO `recommend_course_course_table` VALUES (19, 5, 1, 2);
INSERT INTO `recommend_course_course_table` VALUES (20, 5, 99, 3);
INSERT INTO `recommend_course_course_table` VALUES (21, 5, 100, 4);
INSERT INTO `recommend_course_course_table` VALUES (22, 5, 101, 5);
INSERT INTO `recommend_course_course_table` VALUES (23, 6, 11, 1);
INSERT INTO `recommend_course_course_table` VALUES (24, 6, 12, 2);
INSERT INTO `recommend_course_course_table` VALUES (25, 7, 6, 1);
INSERT INTO `recommend_course_course_table` VALUES (26, 7, 4, 2);
INSERT INTO `recommend_course_course_table` VALUES (27, 7, 67, 3);
INSERT INTO `recommend_course_course_table` VALUES (28, 7, 5, 4);
INSERT INTO `recommend_course_course_table` VALUES (29, 7, 71, 5);
INSERT INTO `recommend_course_course_table` VALUES (30, 8, 6, 1);
INSERT INTO `recommend_course_course_table` VALUES (31, 8, 7, 2);
INSERT INTO `recommend_course_course_table` VALUES (32, 8, 5, 3);
INSERT INTO `recommend_course_course_table` VALUES (33, 8, 13, 4);
INSERT INTO `recommend_course_course_table` VALUES (34, 8, 29, 5);
INSERT INTO `recommend_course_course_table` VALUES (35, 9, 6, 1);
INSERT INTO `recommend_course_course_table` VALUES (36, 9, 7, 2);
INSERT INTO `recommend_course_course_table` VALUES (37, 9, 1, 3);
INSERT INTO `recommend_course_course_table` VALUES (38, 9, 66, 4);
INSERT INTO `recommend_course_course_table` VALUES (39, 9, 99, 5);
INSERT INTO `recommend_course_course_table` VALUES (40, 10, 7, 1);
INSERT INTO `recommend_course_course_table` VALUES (41, 10, 5, 2);
INSERT INTO `recommend_course_course_table` VALUES (42, 11, 5, 1);
INSERT INTO `recommend_course_course_table` VALUES (43, 11, 13, 2);
INSERT INTO `recommend_course_course_table` VALUES (44, 12, 1, 1);
INSERT INTO `recommend_course_course_table` VALUES (45, 12, 2, 2);
INSERT INTO `recommend_course_course_table` VALUES (46, 12, 99, 3);
INSERT INTO `recommend_course_course_table` VALUES (47, 12, 100, 4);
INSERT INTO `recommend_course_course_table` VALUES (48, 12, 101, 5);
COMMIT;

-- ----------------------------
-- Table structure for recommend_course_table
-- ----------------------------
DROP TABLE IF EXISTS `recommend_course_table`;
CREATE TABLE `recommend_course_table` (
  `recommend_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recommend_course_priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`recommend_course_id`),
  KEY `FK6973294DAA12562B` (`course_id`),
  KEY `FK6973294DEE26590B` (`user_id`),
  CONSTRAINT `FK6973294DAA12562B` FOREIGN KEY (`course_id`) REFERENCES `course_table` (`course_id`),
  CONSTRAINT `FK6973294DEE26590B` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recommend_course_user_table
-- ----------------------------
DROP TABLE IF EXISTS `recommend_course_user_table`;
CREATE TABLE `recommend_course_user_table` (
  `recommend_course_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`recommend_course_user_id`),
  KEY `recom_course_id` (`course_id`),
  KEY `recom_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend_course_user_table
-- ----------------------------
BEGIN;
INSERT INTO `recommend_course_user_table` VALUES (1, 1, 64, 1);
INSERT INTO `recommend_course_user_table` VALUES (2, 1, 65, 2);
INSERT INTO `recommend_course_user_table` VALUES (3, 1, 7, 3);
INSERT INTO `recommend_course_user_table` VALUES (4, 1, 76, 4);
INSERT INTO `recommend_course_user_table` VALUES (5, 1, 16, 5);
INSERT INTO `recommend_course_user_table` VALUES (6, 2, 64, 1);
INSERT INTO `recommend_course_user_table` VALUES (7, 2, 69, 2);
INSERT INTO `recommend_course_user_table` VALUES (8, 2, 8, 3);
INSERT INTO `recommend_course_user_table` VALUES (9, 2, 12, 4);
INSERT INTO `recommend_course_user_table` VALUES (10, 2, 49, 5);
INSERT INTO `recommend_course_user_table` VALUES (11, 3, 8, 1);
INSERT INTO `recommend_course_user_table` VALUES (12, 3, 1, 2);
INSERT INTO `recommend_course_user_table` VALUES (13, 3, 3, 3);
INSERT INTO `recommend_course_user_table` VALUES (14, 4, 65, 1);
INSERT INTO `recommend_course_user_table` VALUES (15, 4, 7, 2);
INSERT INTO `recommend_course_user_table` VALUES (16, 4, 72, 3);
INSERT INTO `recommend_course_user_table` VALUES (17, 4, 76, 4);
INSERT INTO `recommend_course_user_table` VALUES (18, 4, 12, 5);
INSERT INTO `recommend_course_user_table` VALUES (19, 5, 64, 1);
INSERT INTO `recommend_course_user_table` VALUES (20, 5, 1, 2);
INSERT INTO `recommend_course_user_table` VALUES (21, 5, 69, 3);
INSERT INTO `recommend_course_user_table` VALUES (22, 5, 65, 4);
INSERT INTO `recommend_course_user_table` VALUES (23, 5, 72, 5);
INSERT INTO `recommend_course_user_table` VALUES (24, 7, 1, 1);
INSERT INTO `recommend_course_user_table` VALUES (25, 7, 65, 2);
INSERT INTO `recommend_course_user_table` VALUES (26, 7, 8, 3);
INSERT INTO `recommend_course_user_table` VALUES (27, 7, 12, 4);
INSERT INTO `recommend_course_user_table` VALUES (28, 7, 76, 5);
INSERT INTO `recommend_course_user_table` VALUES (29, 8, 64, 1);
INSERT INTO `recommend_course_user_table` VALUES (30, 8, 1, 2);
INSERT INTO `recommend_course_user_table` VALUES (31, 8, 69, 3);
INSERT INTO `recommend_course_user_table` VALUES (32, 8, 7, 4);
INSERT INTO `recommend_course_user_table` VALUES (33, 8, 8, 5);
INSERT INTO `recommend_course_user_table` VALUES (34, 9, 1, 1);
INSERT INTO `recommend_course_user_table` VALUES (35, 9, 66, 2);
INSERT INTO `recommend_course_user_table` VALUES (36, 9, 65, 3);
INSERT INTO `recommend_course_user_table` VALUES (37, 9, 8, 4);
INSERT INTO `recommend_course_user_table` VALUES (38, 9, 7, 5);
INSERT INTO `recommend_course_user_table` VALUES (39, 10, 64, 1);
INSERT INTO `recommend_course_user_table` VALUES (40, 10, 1, 2);
INSERT INTO `recommend_course_user_table` VALUES (41, 10, 69, 3);
INSERT INTO `recommend_course_user_table` VALUES (42, 10, 65, 4);
INSERT INTO `recommend_course_user_table` VALUES (43, 10, 7, 5);
INSERT INTO `recommend_course_user_table` VALUES (44, 11, 64, 1);
INSERT INTO `recommend_course_user_table` VALUES (45, 11, 1, 2);
INSERT INTO `recommend_course_user_table` VALUES (46, 11, 69, 3);
INSERT INTO `recommend_course_user_table` VALUES (47, 11, 65, 4);
INSERT INTO `recommend_course_user_table` VALUES (48, 11, 8, 5);
INSERT INTO `recommend_course_user_table` VALUES (49, 12, 1, 1);
INSERT INTO `recommend_course_user_table` VALUES (50, 12, 72, 2);
INSERT INTO `recommend_course_user_table` VALUES (51, 12, 12, 3);
INSERT INTO `recommend_course_user_table` VALUES (52, 12, 49, 4);
INSERT INTO `recommend_course_user_table` VALUES (53, 12, 56, 5);
COMMIT;

-- ----------------------------
-- Table structure for recommend_neighbor_table
-- ----------------------------
DROP TABLE IF EXISTS `recommend_neighbor_table`;
CREATE TABLE `recommend_neighbor_table` (
  `recommend_neighbor_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `neighbor_id` int(11) NOT NULL,
  PRIMARY KEY (`recommend_neighbor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommend_neighbor_table
-- ----------------------------
BEGIN;
INSERT INTO `recommend_neighbor_table` VALUES (1, 1, 11);
INSERT INTO `recommend_neighbor_table` VALUES (2, 1, 10);
INSERT INTO `recommend_neighbor_table` VALUES (3, 1, 8);
INSERT INTO `recommend_neighbor_table` VALUES (4, 1, 4);
INSERT INTO `recommend_neighbor_table` VALUES (5, 1, 5);
INSERT INTO `recommend_neighbor_table` VALUES (6, 1, 7);
INSERT INTO `recommend_neighbor_table` VALUES (7, 1, 2);
INSERT INTO `recommend_neighbor_table` VALUES (8, 1, 9);
INSERT INTO `recommend_neighbor_table` VALUES (9, 1, 12);
INSERT INTO `recommend_neighbor_table` VALUES (10, 2, 11);
INSERT INTO `recommend_neighbor_table` VALUES (11, 2, 5);
INSERT INTO `recommend_neighbor_table` VALUES (12, 2, 9);
INSERT INTO `recommend_neighbor_table` VALUES (13, 2, 1);
INSERT INTO `recommend_neighbor_table` VALUES (14, 2, 10);
INSERT INTO `recommend_neighbor_table` VALUES (15, 2, 4);
INSERT INTO `recommend_neighbor_table` VALUES (16, 2, 7);
INSERT INTO `recommend_neighbor_table` VALUES (17, 3, 4);
INSERT INTO `recommend_neighbor_table` VALUES (18, 4, 12);
INSERT INTO `recommend_neighbor_table` VALUES (19, 4, 5);
INSERT INTO `recommend_neighbor_table` VALUES (20, 4, 1);
INSERT INTO `recommend_neighbor_table` VALUES (21, 4, 3);
INSERT INTO `recommend_neighbor_table` VALUES (22, 4, 2);
INSERT INTO `recommend_neighbor_table` VALUES (23, 5, 4);
INSERT INTO `recommend_neighbor_table` VALUES (24, 5, 12);
INSERT INTO `recommend_neighbor_table` VALUES (25, 5, 1);
INSERT INTO `recommend_neighbor_table` VALUES (26, 5, 2);
INSERT INTO `recommend_neighbor_table` VALUES (27, 5, 9);
INSERT INTO `recommend_neighbor_table` VALUES (28, 7, 1);
INSERT INTO `recommend_neighbor_table` VALUES (29, 7, 11);
INSERT INTO `recommend_neighbor_table` VALUES (30, 7, 2);
INSERT INTO `recommend_neighbor_table` VALUES (31, 8, 12);
INSERT INTO `recommend_neighbor_table` VALUES (32, 8, 1);
INSERT INTO `recommend_neighbor_table` VALUES (33, 8, 11);
INSERT INTO `recommend_neighbor_table` VALUES (34, 8, 9);
INSERT INTO `recommend_neighbor_table` VALUES (35, 8, 10);
INSERT INTO `recommend_neighbor_table` VALUES (36, 9, 8);
INSERT INTO `recommend_neighbor_table` VALUES (37, 9, 10);
INSERT INTO `recommend_neighbor_table` VALUES (38, 9, 2);
INSERT INTO `recommend_neighbor_table` VALUES (39, 9, 11);
INSERT INTO `recommend_neighbor_table` VALUES (40, 9, 5);
INSERT INTO `recommend_neighbor_table` VALUES (41, 9, 1);
INSERT INTO `recommend_neighbor_table` VALUES (42, 10, 11);
INSERT INTO `recommend_neighbor_table` VALUES (43, 10, 1);
INSERT INTO `recommend_neighbor_table` VALUES (44, 10, 9);
INSERT INTO `recommend_neighbor_table` VALUES (45, 10, 8);
INSERT INTO `recommend_neighbor_table` VALUES (46, 10, 2);
INSERT INTO `recommend_neighbor_table` VALUES (47, 11, 10);
INSERT INTO `recommend_neighbor_table` VALUES (48, 11, 1);
INSERT INTO `recommend_neighbor_table` VALUES (49, 11, 8);
INSERT INTO `recommend_neighbor_table` VALUES (50, 11, 2);
INSERT INTO `recommend_neighbor_table` VALUES (51, 11, 7);
INSERT INTO `recommend_neighbor_table` VALUES (52, 11, 9);
INSERT INTO `recommend_neighbor_table` VALUES (53, 12, 8);
INSERT INTO `recommend_neighbor_table` VALUES (54, 12, 4);
INSERT INTO `recommend_neighbor_table` VALUES (55, 12, 5);
INSERT INTO `recommend_neighbor_table` VALUES (56, 12, 1);
COMMIT;

-- ----------------------------
-- Table structure for study_status_table
-- ----------------------------
DROP TABLE IF EXISTS `study_status_table`;
CREATE TABLE `study_status_table` (
  `study_status_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `teacher_id` int(50) NOT NULL,
  `course_id` int(50) NOT NULL,
  `study_status_score` int(50) NOT NULL,
  `study_status_prog` int(50) NOT NULL,
  PRIMARY KEY (`study_status_id`),
  KEY `ssta_use_id` (`user_id`),
  KEY `ssta_cou_id` (`course_id`),
  CONSTRAINT `ssta_cou_id` FOREIGN KEY (`course_id`) REFERENCES `course_table` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssta_use_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_status_table
-- ----------------------------
BEGIN;
INSERT INTO `study_status_table` VALUES (1, 1, 1, 2, 87, 4);
INSERT INTO `study_status_table` VALUES (2, 2, 2, 3, 0, 76);
INSERT INTO `study_status_table` VALUES (3, 3, 6, 10, 79, 2);
INSERT INTO `study_status_table` VALUES (4, 4, 4, 5, 0, 89);
INSERT INTO `study_status_table` VALUES (5, 5, 5, 6, 0, 34);
INSERT INTO `study_status_table` VALUES (6, 6, 6, 10, 0, 1);
INSERT INTO `study_status_table` VALUES (7, 7, 4, 5, 67, 3);
INSERT INTO `study_status_table` VALUES (10, 1, 99, 1, 99, 99);
COMMIT;

-- ----------------------------
-- Table structure for system_admin_table
-- ----------------------------
DROP TABLE IF EXISTS `system_admin_table`;
CREATE TABLE `system_admin_table` (
  `system_admin_id` int(50) NOT NULL AUTO_INCREMENT,
  `system_admin_no` varchar(50) NOT NULL,
  `system_admin_pwd` varchar(50) NOT NULL,
  `system_admin_tel` varchar(50) NOT NULL,
  `system_admin_name` varchar(50) NOT NULL,
  PRIMARY KEY (`system_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_admin_table
-- ----------------------------
BEGIN;
INSERT INTO `system_admin_table` VALUES (1, '201501011', '000', '13327298682', '薛永元');
INSERT INTO `system_admin_table` VALUES (2, '201604011', '000', '15180922032', '罗天罡');
INSERT INTO `system_admin_table` VALUES (5, '201610291', '000', '16726377188', '顾高');
INSERT INTO `system_admin_table` VALUES (6, '201612011', '000', '13782349061', '马俊名');
INSERT INTO `system_admin_table` VALUES (7, '201612271', '000', '15237209732', '程佩兰');
INSERT INTO `system_admin_table` VALUES (8, '201610201', '000', '16283948193', '于啸');
INSERT INTO `system_admin_table` VALUES (9, '201607061', '000', '16392938923', '毛奇迈');
INSERT INTO `system_admin_table` VALUES (10, '201612291', '000', '17239778290', '高紫蕙');
INSERT INTO `system_admin_table` VALUES (11, '201701111', '000', '13427482939', '康高芬');
INSERT INTO `system_admin_table` VALUES (12, '201604231', '000', '13725689038', '周书慧');
INSERT INTO `system_admin_table` VALUES (13, '201502211', '000', '18489398484', '宋平春');
INSERT INTO `system_admin_table` VALUES (14, '201603281', '000', '13283884948', '毛秋珊');
INSERT INTO `system_admin_table` VALUES (15, '201508271', '000', '17657475748', '高辛漩');
INSERT INTO `system_admin_table` VALUES (16, '201603201', '000', '14488383848', '楚宗彤');
INSERT INTO `system_admin_table` VALUES (17, '201512281', '000', '17474929490', '刘明达');
INSERT INTO `system_admin_table` VALUES (18, '201603191', '000', '13536748848', '沈凯定');
INSERT INTO `system_admin_table` VALUES (19, '201606011', '000', '15637746473', '潘苑');
INSERT INTO `system_admin_table` VALUES (21, '201509011', '000', '16537472879', '侯涵意');
INSERT INTO `system_admin_table` VALUES (22, '201611011', '000', '16377238883', '谷柳');
INSERT INTO `system_admin_table` VALUES (23, '201604211', '000', '13274572897', '汤秀逸');
INSERT INTO `system_admin_table` VALUES (24, '201512011', '000', '15796429093', '乌沈静');
COMMIT;

-- ----------------------------
-- Table structure for teacher_table
-- ----------------------------
DROP TABLE IF EXISTS `teacher_table`;
CREATE TABLE `teacher_table` (
  `teacher_id` int(50) NOT NULL AUTO_INCREMENT,
  `teacher_no` varchar(50) NOT NULL,
  `teacher_pwd` varchar(50) NOT NULL,
  `teacher_tel` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `teacher_sex` varchar(50) NOT NULL,
  `teacher_age` int(50) NOT NULL,
  `teacher_sign` varchar(255) DEFAULT NULL,
  `teacher_dept` varchar(50) NOT NULL,
  `user_img` varchar(255) NOT NULL,
  `user_company` varchar(50) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_table
-- ----------------------------
BEGIN;
INSERT INTO `teacher_table` VALUES (1, '201501020', '000', '15211084803', '方文斌', '男', 24, '金融业特级教师,博士生导师,曾荣获多次教学实验金奖.', '个人业务部', '../img/liudongbo.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (2, '201701130', '000', '13327194232', '于雅志', '男', 33, '金融业高级教师', '风险部', '../img/teacher1.jpg', '中国建设银行·');
INSERT INTO `teacher_table` VALUES (3, '201501020', '000', '16754256285', '贺军英', '女', 36, '金融业教授', '个人业务部', '../img/teacher5.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (4, '201501030', '000', '15426735627', '李朝卿', '男', 27, '金融业新秀', '风险部', '../img/teacher2.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (5, '201505020', '000', '15170922031', '唐博瞻', '男', 37, '金融业教授', '公司业务部', '../img/teacher3.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (6, '201602020', '000', '17865237865', '乔晢', '男', 23, '金融业高级教师', '财会部', '../img/teacher4.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (7, '201501020', '000', '15211084803', '钟泰平', '男', 28, '金融业特级教师', '个人业务部', '../img/teacher7.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (8, '201610290', '000', '16237437291', '何安筠', '男', 38, '计算机教授', '国际业务部', '../img/teacher8.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (11, '201612270', '000', '14677838499', '崔建远', '男', 21, '会计高级讲师', '财会部', '../img/teacher9.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (12, '201610200', '000', '12838938838', '刘晓伟', '女', 35, '会计副教授', '风险部', '../img/teacher6.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (13, '201608210', '000', '17383847774', '孙兆军', '男', 27, '会计中级讲师', '个人业务部', '../img/teacher10.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (14, '201502210', '000', '16373774473', '戴夫', '男', 32, '会计教授', '财会部部', '../img/teacher2.jpg', '中国建设银行');
INSERT INTO `teacher_table` VALUES (15, '201603190', '000', '13738282983', '王芳', '女', 28, '会计新秀', '个人业务部', '../img/teacher8.jpg', '中国建设银行');
COMMIT;

-- ----------------------------
-- Table structure for test_paper_table
-- ----------------------------
DROP TABLE IF EXISTS `test_paper_table`;
CREATE TABLE `test_paper_table` (
  `test_id` int(50) NOT NULL AUTO_INCREMENT,
  `course_id` int(50) DEFAULT NULL,
  `test_paper_type` varchar(50) NOT NULL,
  `test_paper_intro` varchar(500) NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_paper_table
-- ----------------------------
BEGIN;
INSERT INTO `test_paper_table` VALUES (1, NULL, '1', '关于专业能力之金融的测试');
INSERT INTO `test_paper_table` VALUES (2, NULL, '1', '关于测试适应能力的测试');
COMMIT;

-- ----------------------------
-- Table structure for test_question_table
-- ----------------------------
DROP TABLE IF EXISTS `test_question_table`;
CREATE TABLE `test_question_table` (
  `test_question_id` int(50) NOT NULL AUTO_INCREMENT,
  `question_id` int(50) NOT NULL,
  `test_id` int(50) NOT NULL,
  PRIMARY KEY (`test_question_id`),
  KEY `tque_ques_id` (`question_id`),
  KEY `tque_test_id` (`test_id`),
  CONSTRAINT `tque_ques_id` FOREIGN KEY (`question_id`) REFERENCES `question_table` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tque_test_id` FOREIGN KEY (`test_id`) REFERENCES `test_paper_table` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_question_table
-- ----------------------------
BEGIN;
INSERT INTO `test_question_table` VALUES (1, 2, 1);
INSERT INTO `test_question_table` VALUES (2, 1, 1);
INSERT INTO `test_question_table` VALUES (3, 3, 1);
INSERT INTO `test_question_table` VALUES (8, 5, 1);
COMMIT;

-- ----------------------------
-- Table structure for test_score_table
-- ----------------------------
DROP TABLE IF EXISTS `test_score_table`;
CREATE TABLE `test_score_table` (
  `test_score_id` int(50) NOT NULL AUTO_INCREMENT,
  `test_score` int(50) NOT NULL,
  `test_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  PRIMARY KEY (`test_score_id`),
  KEY `tsco_test_id` (`test_id`),
  KEY `tsco_user_id` (`user_id`),
  CONSTRAINT `tsco_test_id` FOREIGN KEY (`test_id`) REFERENCES `test_paper_table` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tsco_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_score_table
-- ----------------------------
BEGIN;
INSERT INTO `test_score_table` VALUES (1, 59, 1, 4);
INSERT INTO `test_score_table` VALUES (2, 89, 1, 1);
INSERT INTO `test_score_table` VALUES (3, 76, 1, 5);
COMMIT;

-- ----------------------------
-- Table structure for user_ability_table
-- ----------------------------
DROP TABLE IF EXISTS `user_ability_table`;
CREATE TABLE `user_ability_table` (
  `user_ability_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `user_ability_adapt` int(50) NOT NULL,
  `user_ability_create` int(50) NOT NULL,
  `user_ability_cont` int(50) NOT NULL,
  `user_ability_commu` int(50) NOT NULL,
  `user_ability_major` int(50) NOT NULL,
  `user_ability_desc` varchar(500) NOT NULL,
  `user_ability_date` varchar(50) NOT NULL,
  PRIMARY KEY (`user_ability_id`),
  KEY `uab_user_id` (`user_id`),
  CONSTRAINT `uab_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_ability_table
-- ----------------------------
BEGIN;
INSERT INTO `user_ability_table` VALUES (1, 1, 96, 186, 93, 94, 96, '专业能力强，但是应变能力需要加强；工作推荐：除柜台和前台', '2018-04-17 21:09:20');
INSERT INTO `user_ability_table` VALUES (2, 1, 0, 66, 66, 99, 66, '666', '2018-04-09 20:00:15');
INSERT INTO `user_ability_table` VALUES (3, 3, 0, 93, 66, 0, 0, '0', '2018-04-14 14:50:50');
INSERT INTO `user_ability_table` VALUES (4, 4, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (5, 5, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (6, 6, 0, 100, 0, 0, 0, '0', '2018-04-14 14:58:02');
INSERT INTO `user_ability_table` VALUES (7, 7, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (8, 8, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (9, 9, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (10, 10, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (11, 11, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (12, 12, 0, 0, 0, 0, 0, '0', '00000000');
INSERT INTO `user_ability_table` VALUES (13, 2, 100, 90, 66, 66, 66, '666', '2018-04-09 21:10:41');
INSERT INTO `user_ability_table` VALUES (14, 2, 77, 66, 77, 66, 66, '666', '2018-04-09 21:03:57');
COMMIT;

-- ----------------------------
-- Table structure for user_course_table
-- ----------------------------
DROP TABLE IF EXISTS `user_course_table`;
CREATE TABLE `user_course_table` (
  `user_course_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `course_id` int(50) NOT NULL,
  `user_course_prog` int(50) DEFAULT NULL,
  `user_course_advise` int(50) DEFAULT NULL,
  `user_course_time` varchar(50) DEFAULT NULL,
  `user_course_coll` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_course_id`),
  KEY `course_id` (`course_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course_table` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_course_table
-- ----------------------------
BEGIN;
INSERT INTO `user_course_table` VALUES (1, 1, 6, 85, 0, '20171212', NULL);
INSERT INTO `user_course_table` VALUES (2, 1, 4, 100, 1, '20180214', NULL);
INSERT INTO `user_course_table` VALUES (3, 1, 1, 4, 1, '20180101', NULL);
INSERT INTO `user_course_table` VALUES (4, 9, 4, 0, 0, '20180308', NULL);
INSERT INTO `user_course_table` VALUES (5, 2, 5, 0, 1, '20180102', NULL);
INSERT INTO `user_course_table` VALUES (6, 12, 3, 0, 1, '20180106', NULL);
INSERT INTO `user_course_table` VALUES (7, 5, 2, 0, 1, '20171228', NULL);
INSERT INTO `user_course_table` VALUES (8, 4, 3, 0, 0, '20180302', NULL);
INSERT INTO `user_course_table` VALUES (9, 9, 2, 0, 0, '20171209', NULL);
INSERT INTO `user_course_table` VALUES (10, 12, 8, 0, 0, '20180302', NULL);
INSERT INTO `user_course_table` VALUES (11, 7, 7, 0, 0, '20171112', NULL);
INSERT INTO `user_course_table` VALUES (12, 5, 8, 0, 1, '20180110', NULL);
INSERT INTO `user_course_table` VALUES (13, 2, 1, 0, 1, '20171029', NULL);
INSERT INTO `user_course_table` VALUES (14, 8, 4, 0, 1, '20180109', NULL);
INSERT INTO `user_course_table` VALUES (15, 8, 12, 0, 1, '20171116', NULL);
INSERT INTO `user_course_table` VALUES (16, 4, 8, 0, 1, '20180101', NULL);
INSERT INTO `user_course_table` VALUES (17, 10, 6, 0, 0, '20171102', NULL);
INSERT INTO `user_course_table` VALUES (18, 11, 7, 0, 1, '20180223', NULL);
INSERT INTO `user_course_table` VALUES (19, 10, 4, 0, 0, '20171020', NULL);
INSERT INTO `user_course_table` VALUES (20, 5, 5, 0, 1, '20180120', NULL);
INSERT INTO `user_course_table` VALUES (22, 1, 56, 56, 1, '20180303', NULL);
INSERT INTO `user_course_table` VALUES (23, 1, 69, 0, 0, '20171201', NULL);
INSERT INTO `user_course_table` VALUES (24, 1, 72, 0, 1, '20180218', NULL);
INSERT INTO `user_course_table` VALUES (25, 2, 16, 0, 0, '20170928', NULL);
INSERT INTO `user_course_table` VALUES (26, 2, 76, 67, 0, '20180128', NULL);
INSERT INTO `user_course_table` VALUES (27, 2, 65, 0, 1, '20171103', NULL);
INSERT INTO `user_course_table` VALUES (28, 3, 95, 0, 1, '20180229', NULL);
INSERT INTO `user_course_table` VALUES (29, 4, 98, 17, 0, '20171223', NULL);
INSERT INTO `user_course_table` VALUES (30, 5, 14, 0, 0, '20180125', NULL);
INSERT INTO `user_course_table` VALUES (31, 5, 8, 0, 1, '20170828', NULL);
INSERT INTO `user_course_table` VALUES (32, 6, 10, 89, 0, '20170929', NULL);
INSERT INTO `user_course_table` VALUES (33, 6, 13, 7, 1, '20180118', NULL);
INSERT INTO `user_course_table` VALUES (34, 7, 57, 0, 0, '20171214', NULL);
INSERT INTO `user_course_table` VALUES (35, 7, 68, 0, 0, '20180128', NULL);
INSERT INTO `user_course_table` VALUES (36, 7, 72, 27, 1, '20171121', NULL);
INSERT INTO `user_course_table` VALUES (37, 8, 46, 0, 1, '20180128', NULL);
INSERT INTO `user_course_table` VALUES (38, 8, 28, 99, 0, '20170917', NULL);
INSERT INTO `user_course_table` VALUES (39, 8, 42, 0, 1, '20180128', NULL);
INSERT INTO `user_course_table` VALUES (40, 9, 64, 0, 0, '20180228', NULL);
INSERT INTO `user_course_table` VALUES (41, 9, 49, 24, 1, '20171229', NULL);
INSERT INTO `user_course_table` VALUES (42, 11, 4, 0, 1, '20180719', NULL);
INSERT INTO `user_course_table` VALUES (43, 11, 6, 5, 0, '20171028', NULL);
INSERT INTO `user_course_table` VALUES (44, 11, 12, 0, 1, '20180111', NULL);
INSERT INTO `user_course_table` VALUES (45, 12, 46, 0, 0, '20171116', NULL);
INSERT INTO `user_course_table` VALUES (46, 12, 28, 0, 0, '20180219', NULL);
INSERT INTO `user_course_table` VALUES (47, 12, 42, 79, 1, '20171114', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_mes_table
-- ----------------------------
DROP TABLE IF EXISTS `user_mes_table`;
CREATE TABLE `user_mes_table` (
  `user_mes_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `message_id` int(50) NOT NULL,
  `user_mes_state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_mes_id`),
  KEY `umes_mes_id` (`message_id`),
  KEY `FKE67B18F6E2E9EBEF` (`user_mes_id`),
  KEY `umes_user_id` (`user_id`),
  CONSTRAINT `umes_mes_id` FOREIGN KEY (`message_id`) REFERENCES `message_table` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `umes_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `user_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_no` varchar(50) NOT NULL,
  `user_pwd` varchar(50) NOT NULL,
  `user_tel` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_sex` varchar(50) NOT NULL,
  `user_age` int(50) NOT NULL,
  `user_sign` varchar(255) DEFAULT NULL,
  `user_score` int(50) NOT NULL,
  `user_grade` varchar(50) NOT NULL,
  `user_dept` varchar(50) NOT NULL,
  `user_job` varchar(50) NOT NULL,
  `user_company` varchar(50) NOT NULL,
  `user_img` varchar(255) NOT NULL,
  `user_dept_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
BEGIN;
INSERT INTO `user_table` VALUES (1, '20180101', '000', '15278394532', '方通', '男', 23, '理想是人生的太阳。', 10, '0', '风险部', '柜台专员', '中国建设银行', '../img/llq1.jpg', 5);
INSERT INTO `user_table` VALUES (2, '20180201', '000', '18935266763', '卡卡', '女', 32, '醉后不知天在水 满船清梦压星河', 20, '0', '公司业务部', '资产管理员', '中国建设银行', '../img/cw1.jpg', 2);
INSERT INTO `user_table` VALUES (3, '20180301', '000', '15233445267', '罗拉', '女', 20, '人生贵知心，定交无暮早。', 30, '0', '人力资源部', '设备维修员', '中国建设银行', '../img/sjx1.jpg', 8);
INSERT INTO `user_table` VALUES (4, '20180401', '000', '13425346743', '肖广', '男', 32, '真实是人生的命脉，是一切价值的根基。', 40, '0', '宣传部', '推销员', '中国建设银行', '../img/u132.png', 9);
INSERT INTO `user_table` VALUES (5, '20180501', '000', '17626453678', '陈曦', '女', 34, '真诚才是人生最高的美德。', 50, '0', '国际业务部', '同业合作业务员', '中国建设银行', '../img/chenxi.jpg', 3);
INSERT INTO `user_table` VALUES (6, '20180601', '000', '16723843290', '苏醒', '男', 67, '有所作为是生活的最高境界。', 60, '0', '审计部', '信贷审查员', '中国建设银行', '../img/suxing.jpg', 4);
INSERT INTO `user_table` VALUES (7, '20180701', '000', '18963427834', '黄玉', '女', 44, '利器完不成的工作，钝器常能派上用场', 0, '0', '风险部', '风险评估员', '中国建设银行', '../img/huangyu.jpg', 5);
INSERT INTO `user_table` VALUES (8, '20180801', '000', '17634256345', '毛鑫', '男', 23, '谁不会休息，谁就不会工作。', 0, '0', '科技部', '产品研发员', '中国建设银行', '../img/maoxing.jpg', 7);
INSERT INTO `user_table` VALUES (9, '20180901', '000', '15623432675', '苏珊', '女', 21, '伟大的思想能变成巨大的财富。', 35, '0', '个人业务部', '业绩评估员', '中国建设银行', '../img/sushan.jpg', 1);
INSERT INTO `user_table` VALUES (10, '20181001', '000', '17526737922', '罗子', '男', 34, '寿命的缩短与思想的虚耗成正比。', 0, '0', '安全保卫部', '安保员', '中国建设银行', '../img/lh1.jpg', 10);
INSERT INTO `user_table` VALUES (11, '20181101', '000', '16723356246', '易可', '女', 23, '有远大抱负的人不可忽略眼前的工作。', 25, '0', '审计部', '审计员', '中国建设银行', '../img/sjx1.jpg', 4);
INSERT INTO `user_table` VALUES (12, '20181201', '000', '16324356745', '何大', '男', 34, '人类的全部历史都告诫有智慧的人，不要笃信时运，而应坚信思想。', 0, '0', '科技部', '科技开发员', '中国建设银行', '../img/sjx1.jpg', 7);
COMMIT;

-- ----------------------------
-- Table structure for video_coll_table
-- ----------------------------
DROP TABLE IF EXISTS `video_coll_table`;
CREATE TABLE `video_coll_table` (
  `collection_id` int(50) NOT NULL AUTO_INCREMENT,
  `coll_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `coll_type` varchar(50) NOT NULL,
  `coll_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`collection_id`),
  KEY `vicol_vid_id` (`coll_id`),
  KEY `vicol_use_id` (`user_id`),
  CONSTRAINT `vicol_use_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_coll_table
-- ----------------------------
BEGIN;
INSERT INTO `video_coll_table` VALUES (1, 1, 1, 'video', '2018-04-08 09:04:42');
INSERT INTO `video_coll_table` VALUES (2, 2, 1, 'video', '2018-04-09 09:04:42');
INSERT INTO `video_coll_table` VALUES (3, 2, 8, 'video', '2018-04-09 09:04:45');
INSERT INTO `video_coll_table` VALUES (4, 1, 5, 'video', '2018-04-19 09:04:42');
INSERT INTO `video_coll_table` VALUES (5, 2, 2, 'course', '2018-04-09 04:04:42');
INSERT INTO `video_coll_table` VALUES (6, 33, 12, 'video', '2018-04-09 11:04:42');
INSERT INTO `video_coll_table` VALUES (7, 28, 7, 'video', '2018-04-09 10:04:42');
INSERT INTO `video_coll_table` VALUES (8, 14, 12, 'video', '2018-04-09 09:54:42');
INSERT INTO `video_coll_table` VALUES (9, 19, 6, 'video', '2018-04-09 09:18:42');
INSERT INTO `video_coll_table` VALUES (10, 27, 8, 'video', '2018-04-09 05:04:42');
INSERT INTO `video_coll_table` VALUES (11, 22, 4, 'video', '2018-04-11 09:04:42');
INSERT INTO `video_coll_table` VALUES (12, 30, 9, 'video', '2018-04-19 09:04:42');
INSERT INTO `video_coll_table` VALUES (13, 7, 10, 'video', '2018-04-17 09:04:42');
INSERT INTO `video_coll_table` VALUES (14, 27, 6, 'video', '2018-03-09 09:04:42');
INSERT INTO `video_coll_table` VALUES (17, 26, 10, 'video', '2018-04-09 09:04:12');
INSERT INTO `video_coll_table` VALUES (18, 31, 10, 'video', '2018-04-04 05:04:42');
INSERT INTO `video_coll_table` VALUES (24, 8, 1, 'course', '2018-04-09 15:04:42');
INSERT INTO `video_coll_table` VALUES (25, 6, 2, 'course', '2018-04-09 09:04:02');
INSERT INTO `video_coll_table` VALUES (28, 12, 1, 'course', '2018-04-09 22:47:39');
INSERT INTO `video_coll_table` VALUES (30, 6, 1, 'course', '2018-04-11 22:12:06');
INSERT INTO `video_coll_table` VALUES (31, 66, 2, 'course', '2018-04-12 18:35:09');
INSERT INTO `video_coll_table` VALUES (32, 56, 8, 'course', '2018-04-12 18:43:01');
INSERT INTO `video_coll_table` VALUES (34, 49, 8, 'course', '2018-04-12 18:43:33');
INSERT INTO `video_coll_table` VALUES (44, 76, 9, 'course', '2018-04-12 19:08:27');
INSERT INTO `video_coll_table` VALUES (47, 69, 7, 'course', '2018-04-12 19:34:59');
INSERT INTO `video_coll_table` VALUES (48, 7, 2, 'course', '2018-04-12 20:04:51');
INSERT INTO `video_coll_table` VALUES (49, 98, 3, 'course', '2018-04-12 20:19:42');
INSERT INTO `video_coll_table` VALUES (50, 1, 4, 'course', '2018-04-13 00:56:57');
INSERT INTO `video_coll_table` VALUES (51, 64, 1, 'course', '2018-04-16 18:35:36');
INSERT INTO `video_coll_table` VALUES (52, 64, 1, 'course', '2018-04-16 18:35:36');
INSERT INTO `video_coll_table` VALUES (54, 1, 1, 'course', '2018-04-18 15:19:50');
COMMIT;

-- ----------------------------
-- Table structure for video_comment_table
-- ----------------------------
DROP TABLE IF EXISTS `video_comment_table`;
CREATE TABLE `video_comment_table` (
  `video_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `video_comment_date` varchar(50) DEFAULT NULL,
  `video_comment_cont` varchar(500) DEFAULT NULL,
  `video_comment_star` int(11) DEFAULT NULL,
  PRIMARY KEY (`video_comment_id`),
  KEY `comm_user_id` (`user_id`),
  KEY `comm_video_id` (`video_id`),
  CONSTRAINT `comm_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comm_video_id` FOREIGN KEY (`video_id`) REFERENCES `video_table` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_comment_table
-- ----------------------------
BEGIN;
INSERT INTO `video_comment_table` VALUES (1, 1, 1, '2018-04-09 22:47:39', '000000000', 0);
COMMIT;

-- ----------------------------
-- Table structure for video_progress_table
-- ----------------------------
DROP TABLE IF EXISTS `video_progress_table`;
CREATE TABLE `video_progress_table` (
  `video_progress_id` int(50) NOT NULL AUTO_INCREMENT,
  `video_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `video_progress_prog` varchar(50) NOT NULL,
  PRIMARY KEY (`video_progress_id`),
  KEY `vipro_vid_id` (`video_id`),
  KEY `vipro_use_id` (`user_id`),
  CONSTRAINT `vipro_use_id` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vipro_vid_id` FOREIGN KEY (`video_id`) REFERENCES `video_table` (`video_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_progress_table
-- ----------------------------
BEGIN;
INSERT INTO `video_progress_table` VALUES (1, 1, 3, '55');
INSERT INTO `video_progress_table` VALUES (2, 2, 1, '67');
INSERT INTO `video_progress_table` VALUES (3, 1, 5, '98');
INSERT INTO `video_progress_table` VALUES (4, 1, 4, '88');
INSERT INTO `video_progress_table` VALUES (5, 7, 10, '98');
INSERT INTO `video_progress_table` VALUES (6, 29, 8, '32');
INSERT INTO `video_progress_table` VALUES (8, 26, 6, '48');
INSERT INTO `video_progress_table` VALUES (9, 30, 2, '70');
INSERT INTO `video_progress_table` VALUES (10, 16, 3, '53');
INSERT INTO `video_progress_table` VALUES (11, 29, 7, '39');
INSERT INTO `video_progress_table` VALUES (12, 8, 9, '20');
INSERT INTO `video_progress_table` VALUES (13, 28, 11, '51');
INSERT INTO `video_progress_table` VALUES (14, 31, 12, '59');
COMMIT;

-- ----------------------------
-- Table structure for video_table
-- ----------------------------
DROP TABLE IF EXISTS `video_table`;
CREATE TABLE `video_table` (
  `video_id` int(50) NOT NULL AUTO_INCREMENT,
  `course_id` int(50) NOT NULL,
  `video_url` varchar(500) NOT NULL,
  `video_name` varchar(50) NOT NULL,
  `video_times` int(50) NOT NULL,
  `video_dload` int(50) NOT NULL,
  `video_intro` varchar(500) NOT NULL,
  `video_author` varchar(50) NOT NULL,
  `video_seque` int(50) NOT NULL,
  `video_image` varchar(50) DEFAULT NULL,
  `video_clicks` int(50) DEFAULT NULL,
  `video_time` int(50) NOT NULL,
  PRIMARY KEY (`video_id`),
  KEY `vid_cou_id` (`course_id`),
  CONSTRAINT `vid_cou_id` FOREIGN KEY (`course_id`) REFERENCES `course_table` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_table
-- ----------------------------
BEGIN;
INSERT INTO `video_table` VALUES (1, 1, 'oceans.webm', '风险与保险', 666, 10, '保险风险是指尚未发生的、能使保险对象遭受损害的危险或事故，如自然灾害、意外事故或事件等。被视为保险风险的事件具有可能性和偶然性。', '陈华', 1, '../img/bxx.jpg', 210, 20);
INSERT INTO `video_table` VALUES (2, 1, 'oceans.webm', '保险的性质与功能', 1, 1, '保险功能是指保险制度可以发挥的作用和功效,它直接决定了保险制度存在与发展的必要性,也决定了保险业在一国的金融倚系、甚至是社会经济制度体系中的地位与作用。', '陈华', 2, '../img/v2.jpg', 6, 28);
INSERT INTO `video_table` VALUES (3, 1, 'oceans.webm', '保险合同', 17, 10, ' 保险合同是投保人与保险人约定保险权利义务关系的协议。保险合同除了具有一般合同的双务有偿性质以及诺成合同的特征外，还具有如下法律特征:\r\n(1)保险合同是不要式合同。\r\n(2)保险合同是附合合同。\r\n(3)保险合同是射幸合同。', '陈华', 3, '../img/v3.jpg', 20, 15);
INSERT INTO `video_table` VALUES (4, 1, 'oceans.webm', '保险的基本原则', 29, 2, ' 保险原则是在保险发展的过程中逐渐形成并被人们公认的基本原则。这些原则作为人们进行保险活动的准则，始终贯穿于整个保险业务。坚持这些基本原则有利于维护保险双方的合法权益，更好的发挥保险的职能和作用，有利于保障人们的生活安定、社会进步。', '陈华', 4, '../img/v4.jpg', 56, 27);
INSERT INTO `video_table` VALUES (5, 1, 'oceans.webm', '保险的基本原则', 4, 2, ' 保险原则是在保险发展的过程中逐渐形成并被人们公认的基本原则。这些原则作为人们进行保险活动的准则，始终贯穿于整个保险业务。坚持这些基本原则有利于维护保险双方的合法权益，更好的发挥保险的职能和作用，有利于保障人们的生活安定、社会进步。', '陈华', 5, '../img/v5.jpg', 9, 13);
INSERT INTO `video_table` VALUES (6, 1, 'oceans.webm', '保险形态的分类', 78, 60, ' 保险形态的分类方法是认识客观事物的逻辑方式,分类的标准是事物本身所具有的客观性质。分类的方法有三种:法定分类法、理论分类法和实用分类法。', '陈华', 6, '../img/v6.jpg', 79, 31);
INSERT INTO `video_table` VALUES (7, 1, 'oceans.webm', '财产损失保险', 23, 21, ' 财产损失保险是以各种有形的物质财产、相关的利益以及其责任为保险标的保险。财产保险又可以分为广义的财产保险和狭义的财产保险。\r\n广义的财产保险包括各种财产损失保险、责任保险、信用保证保险等业务。\r\n狭义的财产保险仅仅是对有形的物质财产的保障。\r\n财产损失保险是以各类有形财产为保险标的的财产保险。其主要包括的业务种类有：企业财产保险、家庭财产保险、运输工具保险、货物运输保险、工程保险、特殊风险保险和农业保险等种类。', '陈华', 7, '../img/v7.jpg', 40, 21);
INSERT INTO `video_table` VALUES (8, 1, 'oceans.webm', '责任保险', 45, 18, ' 责任保险，是指保险人在被保险人依法应对第三人负赔偿责任，并被提出赔偿要求时，承担赔偿责任的财产保险形式。责任保险以被保险人对他人依法应负的民事赔德责任为保险标的，在合同中无保险金额，而规定赔偿限额。责任保险仅承保被保险人的过失侵权民事责任，对故意行为造成的损害不负责任，除特别约定外，通常不包括合同违约责任。责任保险的承保方式有两种。一种是作为其他保险的组成部分或附加部分承保，不作为主要险别单独承保，如汽车保险中的第三人责任险、船舶保险中\'的碰撞责任险等。另一种是作为主要险别单独承保。其形式有公众责任保险、产品责任保险、雇主责任保险、职业赔偿保险即职业责任保险等。责任保险作为一种保险形式发展较晚，19世纪后半叶始随近代社会为保障灾害事故受害人利益而确立。', '陈华', 8, '../img/v8.jpg', 60, 25);
INSERT INTO `video_table` VALUES (9, 1, 'oceans.webm', '人身保险', 400, 298, ' 人身保险是以人的生命或身体为保险标的，在被保险人的生命或身体发生保险事故或保险期满时，依照保险合同的规定，由保险人向被保险人或受益人给付保险金的保险形式。人身保险包括人寿保险、伤害保险、健康保险三种。在财产保险中，保险人承担的是保险标的损失的赔偿责任，而在人身保险中，保险人承担的是给付责任，不问损失与否与多少。为此，人身保险通常均为定额保险。', '陈华', 9, '../img/v9.jpg', 540, 16);
INSERT INTO `video_table` VALUES (10, 1, 'oceans.webm', '人身保险（2）', 32, 18, '  人身保险是以人的生命或身体为保险标的，在被保险人的生命或身体发生保险事故或保险期满时，依照保险合同的规定，由保险人向被保险人或受益人给付保险金的保险形式。人身保险包括人寿保险、伤害保险、健康保险三种。在财产保险中，保险人承担的是保险标的损失的赔偿责任，而在人身保险中，保险人承担的是给付责任，不问损失与否与多少。为此，人身保险通常均为定额保险。', '陈华', 10, '../img/v10.jpg', 40, 12);
INSERT INTO `video_table` VALUES (11, 1, 'oceans.webm', '再保险', 30, 10, ' 再保险亦称“分保”。保险人在原保险合同的基础上，通过签订分保合同，将其所承保的部分风险和责任向其他保险人进行保险的行为。再保险的基础是原保险，再保险的产生，正是基于原保险人经营中分散风险的需要。在再保险交易中，分出业务的公司称为原保险人或分出公司，接受业务的公司称为再保险人或分保接受人或分人公司。再保险转嫁风险责任支付的保费称分保费或再保险费；原保险人在招揽业务过程中支出了一定的费用，由再保险人支付给原保险人的费用报酬称分保佣金或分保手续费。再保险可分为比例再保险和非比例再保险。比例再保险是原保险人与再保险人之间订立再保险合同，按照保险金额，约定比例，分担责任。对于约定比例内的保险业务，原保险人有义务及时分出，再保险人有义务接受，双方都无选择权。比例再保险分为成数再保险、溢额再保险、成数和溢额混合再保险。非比例再保险分为超额赔款再保险和超过赔付率再保险。', '陈华', 11, '../img/v11.jpg', 49, 38);
INSERT INTO `video_table` VALUES (12, 1, 'oceans.webm', '保险经营导论', 49, 19, ' 保险经营理论着眼于中国保险业的未来，从管理学的角度出发，运用理论和实际相结合、定量和定性相结合的方法，全面系统地分析和研究了保险公司经营的整个过程，包括营销、承保等。', '陈华', 12, '../img/v12.jpg', 60, 19);
INSERT INTO `video_table` VALUES (13, 1, 'oceans.webm', '保险单设计', 21, 18, ' 保险单设计是对保险标的、保险责任、保险费率、保险金额、保险期限等重要内容进行不同排列组合，从而形成满足各种不同消费者需求的保险商品的过程。', '陈华', 13, '../img/v13.jpg', 43, 29);
INSERT INTO `video_table` VALUES (14, 1, 'oceans.webm', '保险精算', 29, 10, ' 保险精算是依据经济学的基本原理和知识，利用现代数学方法，对各种保险经济活动未来的财务风险进行分性、估价和管理的一门综合性的应用科学。\r\n如研究保险事故的出险规律、保险事故损失额的分布规律、保险人承担风险的平均损失及其分布规律、保险费率和责任准备金、保险公司偿付能力等保险具体问题。', '陈华', 14, '../img/v14.jpg', 30, 36);
INSERT INTO `video_table` VALUES (15, 1, 'oceans.webm', '保险基金及其应用', 19, 1, ' 保险基金（Insurance Fund）指专门从事风险经营的保险机构，根据法律或合同规定，以收取保险费的办法建立的、专门用于保险事故所致经济损失的补偿或人身伤亡的给付的一项专用基金，是保险人履行保险义务的条件。\r\n广义上的保险基金是指整个社会的后备基金体系。从狭义上来讲，保险基金是指由保险机构集中起来的后备基金，由保险机构根据大数法则，经过科学的测算，订出各种不同的保险费率。', '陈华', 15, '../img/v15.jpg', 10, 18);
INSERT INTO `video_table` VALUES (16, 1, 'oceans.webm', '保险经营效益', 78, 29, ' 保险经营效益，是指在保险经济活动中，劳动成果同劳动耗费与资金占用的比较。它反映的是保险经营活动过程中，对人力、物力、财务等的利用效果。', '陈华', 16, '../img/v16.jpg', 90, 15);
INSERT INTO `video_table` VALUES (17, 1, 'oceans.webm', '保险市场结构及运作', 23, 17, ' 保险市场同其他市场一样，是进行商品或服务交易的场所。从一般市场的构成要素上讲，只要有供给方和需求方就能完成商品或服务的交易。供给与需求双方两种力量相互作用，共同促进市场的发展。保险市场的特点决定了保险市场的构成要素比起一般意义上的市场要复杂些，除了保险供给者与保险需求者，还存在为供需双方完成交易提供服务的保险中介人。', '陈华', 17, '../img/v17.jpg', 40, 20);
INSERT INTO `video_table` VALUES (18, 1, 'oceans.webm', '保险市场营销', 48, 18, ' 保险市场营销是以保险市场为起点和终点的活动，它的对象是目标市场的准保户。保险市场营销的目标不仅是为了推销保险商品获得利润，而且还是为了提高保险企业在市场上的地位或占有率，在社会上树立良好的信誉。保险市场营销研究的内容可包括保险市场营销的管理、保险市场营销环境的分析、保险市场营销目标的选择和保险市场营销策略的制定等。', '陈华', 18, '../img/v18.jpg', 70, 17);
INSERT INTO `video_table` VALUES (19, 1, 'oceans.webm', '保险经营风险及其防范', 68, 28, ' 保险风险是指尚未发生的、能使保险对象遭受损害的危险或事故，如自然灾害、意外事故或事件等。被视为保险风险的事件具有可能性和偶然性。\r\n保险中的风险是指损失发生的不确定性，即损失发生时间、地点及其后果在主观认识上的难以确定和预料。', '陈华', 19, '../img/v19.jpg', 87, 0);
INSERT INTO `video_table` VALUES (20, 1, 'oceans.webm', '保险监管理论概述', 42, 22, ' 从我国保除管理的情况出发，给合其他一些国家保险管理的情况，根据管理的一般理论，将目前的现代企业管理思想与保险企业所特有的特殊性相结，努力控寻保险管理的原则、规律、方法与途径，着重阐述了保险管理的基本理论、其本要求和基础知识，力求比较全面的系统地反映我国保险管理科学研究的新成果。本书并没有分析保险的宏观管理即保险的监管和保险的中观管理即保险行业的管理问题，而是直接从保险公司管理即保险的微观管理入手。', '陈华', 20, '../img/v20.jpg', 90, 0);
INSERT INTO `video_table` VALUES (21, 1, 'oceans.webm', '保险监管制度', 99, 49, ' 保险监管是指一个国家对本国保险业的监督管理。一个国家的保险监管制度通常由两大部分构成：一是国家通过制定保险法律法规，对本国保险业进行宏观指导与管理；二是国家专门的保险监管职能机构依据法律或行政授权对保险业进行行政管理，以保证保险法规的贯彻执行。', '陈华', 21, '../img/v21.jpg', 103, 0);
INSERT INTO `video_table` VALUES (22, 1, 'oceans.webm', '保险监管内容', 34, 12, ' 由于保险监管体系有广义和狭义之分，因此，狭义的保险监管者常常为政府部门，即保险监管部门；广义的则包括政府保险监管部门、保险行业自律组织和保险评级机构；被监管者即监管对象，则包括保险人和保险中介。一般而言，政府对保险的监管是保险监管的基础，保险行业自律是保险监管的补充，保险信用评级是保险监管有效的辅助工具。', '陈华', 22, '../img/v22.jpg', 49, 0);
INSERT INTO `video_table` VALUES (23, 1, 'oceans.webm', '保险监管国际化', 21, 18, ' 为了在全球范围内保护保单持有人和投保人的利益，防范系统性保险风险的跨国传播和蔓延，维护国际保险秩序的安全和稳定，各国保险监管机构之间需要建立一个有效的沟通、交流以及合作的组织和机制。', '陈华', 23, '../img/v23.jpg', 23, 0);
INSERT INTO `video_table` VALUES (24, 1, 'oceans.webm', '社会保险', 78, 21, ' 社会保险是一种为丧失劳动能力、暂时失去劳动岗位或因健康原因造成损失的人口提供收入或补偿的一种社会和经济制度。社会保险的主要项目包括养老保险、医疗保险、失业保险、工伤保险、生育保险。\r\n社会保险计划由政府举办，强制某一群体将其收入的一部分作为社会保险税（费）形成社会保险基金，在满足一定条件的情况下，被保险人可从基金获得固定的收入或损失的补偿，它是一种再分配制度，它的目标是保证物质及劳动力的再生产和社会的稳定。', '陈华', 24, '../img/v24.jpg', 100, 0);
INSERT INTO `video_table` VALUES (25, 2, 'oceans.webm', '保险行业审计', 7, 2, ' 保险审计是对保险企业经营的各种保险业务及其结果的审核、稽查。其主要内容有保险业务的帐证审计、保险合同审计、保险理赔审计、保险理赔纪律审计、保险费率审计和“三费”使用审计等。具体包括：(1) 保险企业制定的保险条款是否合法、完整，保险责任是否明确，被保险人的权利和义务是否清楚。(2) 保险企业是否按照保险合同规定，主动、迅速、准确、合理地履行对被保险人的经济补偿责任。(3) 理赔人员是否严格遵守理赔纪律，对损余物资的处理是否符合规定的手续。(4) 保险费率的制订是否合理，使用是否正确，有无任意提高费率、损害被保险人利益的情况。(5) 保险企业为开展保险业务而支付的手续费、宣传费和防灾补助费是否符合规定的使用范围和提取办法，有无挪作他用的情况。(6) 保险企业的财务报表、会计帐簿和凭证的反映是否真实、正确。成本、费用开支是否合理合法。(7) 各种保险费的计划及其执行情况。', '王志鹏', 1, '../img/v25.jpg', 76, 0);
INSERT INTO `video_table` VALUES (26, 3, 'oceans.webm', '内部风险控制', 34, 4, ' 所谓内部控制风险，就是指影响内部控制功效发挥和目标实现或导致内部控制失效的不确定性。\r\n产生内部控制风险的因素很多，总体来讲可以从内部环境，风险评估、控制措施、信息与沟通监督等五大内部控制构成要素进行分析。如企业管理层的管理哲学和经营风格是否与时代相符合、董事会和内部监督机构的设置是否合理、企业内部组织机构设置及职责权限的划分是否清晰人力资源制度是否完善、员工职业道德操守和工作能力与其所承担的工作任务是否匹配；管理层能否准确识别和分析风险的影响因素、合理评估风险发生频率与破坏性；内部控制程序和措施是否恰当；有无畅通的沟通平台和渠道使上下互通信息：有无严格有效地监控、考核评价与监督体系等这些都是影响内部控制风险的因素。一个企业要发挥内部控制功效，就必须从控制和防范内部控制风险开始。', '王清刚', 1, '../img/v26.jpg', 431, 0);
INSERT INTO `video_table` VALUES (27, 4, 'oceans.webm', '金融市场', 4, 23, ' 金融市场是指资金融通市场，是资金供应者和资金需求者双方通过信用工具进行交易而融通资金的市场，广而言之，是实现货币借贷和资金融通、办理各种票据和有价证券交易活动的市场。比较完善的金融市场定义是：金融市场是交易金融资产并确定金融资产价格的一种机制 。', 'Robert', 1, '../img/v27.jpg', 764, 0);
INSERT INTO `video_table` VALUES (28, 5, 'oceans.webm', '金融市场与机构', 5, 4, ' 本视频引导学生依据一些基本的经济与金融理论，包括信息不对称、利益冲突、交易成本、供求、资本市场均衡、有效市场以及风险的衡量与管理等，来理解资产定价、金融市场结构以及金融机构管理等十分重要的金融理论与实践内容。此外，为了让学生了解现实中金融机构的经理们进行业务操作与管理的具体方法，关注身边发生的金融现象并对其作出相应的理论分析，本书还设立了“金融机构经理实务”、“《华尔街日报》专栏”等栏目，从而使学生的学习更加贴近实际。', 'Dam', 1, '../img/v28.jpg', 67, 0);
INSERT INTO `video_table` VALUES (29, 6, 'oceans.webm', 'CFP国际金融理财师课程', 6, 32, '即国际金融理财师、注册金融理财师或者注册理财规划师。金融理财师是遵循金融理财规范流程的六大步骤、帮助客户实现人生目标的专业人士。', '赵聪', 1, '../img/v1.jpg', 45, 0);
INSERT INTO `video_table` VALUES (30, 7, 'oceans.webm', '国际金融实务', 67, 87, ' 《国际金融实务》是2010年中国物资出版社出版的图书，作者是贾墨月。本书可用作国际金融专业、国际贸易专业、金融学专业、其他涉外经济类专业、财经类专业、经济管理类专业的本科生教材。由于本书综合性、实务性较强，也可用作财经类专业成人培训的教材。', '张庆伟', 1, '../img/v2.jpg', 265, 0);
INSERT INTO `video_table` VALUES (31, 8, 'oceans.webm', '中级财务管理', 5, 45, ' 财务管理(Financial Management)是在一定的整体目标下，关于资产的购置（投资），资本的融通（筹资）和经营中现金流量（营运资金），以及利润分配的管理。财务管理是企业管理的一个组成部分，它是根据财经法规制度，按照财务管理的原则，组织企业财务活动，处理财务关系的一项经济管理工作。简单的说，财务管理是组织企业财务活动，处理财务关系的一项经济管理工作。', 'dmd', 1, '../img/v3.jpg', 67, 0);
INSERT INTO `video_table` VALUES (32, 9, 'oceans.webm', '财务管理学', 44, 7, ' 财务管理学是研究如何通过计划、决策、控制、考核、监督等管理活动对资金运动进行管理，以提高资金效益的一门经营管理学科。它是以经济学原理和经济管理理论为指导，结合组织生产力和处理生产关系的有关问题，对企业和国民经济各部门财务管理工作进行科学总结而形成的知识体系。', '王燕', 1, '../img/v4.jpg', 198, 0);
INSERT INTO `video_table` VALUES (33, 10, 'oceans.webm', '金融法律制度', 32, 12, ' 金融法律制度，是指国家权力机关和行政机关制定的各种金融规范性文件的总称，是调整金融关系的法律规范。金融关系是银行或者其他金融机构在从事金融管理和金融经营活动过程中与其他政府机构、市场主体和社会个人之间发生的经济关系。\r\n金融法律制度调整的金融关系一般可分为两类：一类是金融管理关系，主要是指在中央银行对各类金融机构和各种金融活动实施的监督、管理过程中，以及金融机构内部管理中发生的经济关系；另一类是金融经营关系，主要是指以金融企业为中心的在金融市场的各项融资活动中发生的经济关系。', '高登教育', 1, '../img/v5.jpg', 56, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
