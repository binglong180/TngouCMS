-- phpMyAdmin SQL Dump
-- version 4.2.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-03-17 16:55:38
-- 服务器版本： 10.0.13-MariaDB
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tgcms`
--
CREATE DATABASE IF NOT EXISTS `tgcms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tgcms`;

-- --------------------------------------------------------

--
-- 表的结构 `tgcms_info`
--

DROP TABLE IF EXISTS `tgcms_info`;
CREATE TABLE IF NOT EXISTS `tgcms_info` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '网站名称',
  `logo` varchar(32) DEFAULT '' COMMENT '网站LOGO',
  `img` varchar(64) DEFAULT '',
  `icp` varchar(32) DEFAULT '' COMMENT '备案号',
  `tel` varchar(20) DEFAULT '',
  `fax` varchar(20) DEFAULT '',
  `email` varchar(64) DEFAULT '',
  `address` varchar(64) DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='网站信息' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tgcms_info`
--

INSERT INTO `tgcms_info` (`id`, `name`, `logo`, `img`, `icp`, `tel`, `fax`, `email`, `address`) VALUES
(1, '天狗家具', '', '', '蜀ICP备15000924号', '13880334484', '028-88888888', 'tngou@tngou.net', '四川省-成都市-龙泉驿');

-- --------------------------------------------------------

--
-- 表的结构 `tgcms_link`
--

DROP TABLE IF EXISTS `tgcms_link`;
CREATE TABLE IF NOT EXISTS `tgcms_link` (
`id` tinyint(3) unsigned NOT NULL,
  `name` varchar(8) NOT NULL,
  `url` varchar(128) NOT NULL,
  `seq` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgcms_menu`
--

DROP TABLE IF EXISTS `tgcms_menu`;
CREATE TABLE IF NOT EXISTS `tgcms_menu` (
`id` tinyint(3) unsigned NOT NULL COMMENT '菜单ID',
  `name` varchar(8) NOT NULL COMMENT '名称',
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `menu` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级目录id  0:顶级',
  `url` varchar(64) DEFAULT NULL COMMENT '菜单链接',
  `seq` tinyint(4) NOT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgcms_page`
--

DROP TABLE IF EXISTS `tgcms_page`;
CREATE TABLE IF NOT EXISTS `tgcms_page` (
`id` smallint(5) unsigned NOT NULL COMMENT '页面ID',
  `menu` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `img` varchar(64) DEFAULT NULL COMMENT '图片',
  `title` varchar(64) NOT NULL COMMENT '标题',
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tgcms_user`
--

DROP TABLE IF EXISTS `tgcms_user`;
CREATE TABLE IF NOT EXISTS `tgcms_user` (
`id` smallint(5) unsigned NOT NULL COMMENT '用户ID',
  `account` varchar(16) NOT NULL COMMENT '用户账号',
  `password` char(32) NOT NULL COMMENT '用户登录密码SHA1加密',
  `email` varchar(128) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(16) DEFAULT NULL COMMENT '用户名称',
  `role` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户角色：0：普通用户，1：管理员，-1;黑名单'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户信息' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tgcms_user`
--

INSERT INTO `tgcms_user` (`id`, `account`, `password`, `email`, `name`, `role`) VALUES
(4, 'admin', '95ba0e0de7280c3ed0317600c874674f', 'tngoucms@tngou.net', 'tngoucms', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tgcms_info`
--
ALTER TABLE `tgcms_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgcms_link`
--
ALTER TABLE `tgcms_link`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgcms_menu`
--
ALTER TABLE `tgcms_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgcms_page`
--
ALTER TABLE `tgcms_page`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgcms_user`
--
ALTER TABLE `tgcms_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tgcms_info`
--
ALTER TABLE `tgcms_info`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tgcms_link`
--
ALTER TABLE `tgcms_link`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tgcms_menu`
--
ALTER TABLE `tgcms_menu`
MODIFY `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单ID';
--
-- AUTO_INCREMENT for table `tgcms_page`
--
ALTER TABLE `tgcms_page`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '页面ID';
--
-- AUTO_INCREMENT for table `tgcms_user`
--
ALTER TABLE `tgcms_user`
MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
