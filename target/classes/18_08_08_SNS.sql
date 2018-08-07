-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.20-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- jm_sns 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jm_sns` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jm_sns`;

-- 테이블 jm_sns.access_login 구조 내보내기
CREATE TABLE IF NOT EXISTS `access_login` (
  `AL_ID` varchar(100) DEFAULT NULL,
  `AL_EMAIL` varchar(100) DEFAULT NULL,
  `AL_ACCESS_TIME` datetime DEFAULT NULL,
  `AL_ACCESS_IP` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 jm_sns.access_login:~174 rows (대략적) 내보내기
/*!40000 ALTER TABLE `access_login` DISABLE KEYS */;
INSERT INTO `access_login` (`AL_ID`, `AL_EMAIL`, `AL_ACCESS_TIME`, `AL_ACCESS_IP`) VALUES
	('5e7f710829d14ca5', 'whdans6701@naver.com', NULL, '2018-05-15 23:21:52'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-15 23:23:48', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-15 23:52:03', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 00:00:33', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 00:04:47', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 00:05:57', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 00:07:47', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 00:10:12', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 14:14:18', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 14:15:34', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 14:54:43', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 15:22:10', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 17:17:03', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 17:22:37', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 17:27:01', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 17:29:25', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 18:09:08', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 19:01:06', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 19:05:42', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 20:00:20', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 20:47:23', '0:0:0:0:0:0:0:1'),
	('6674bdbca4194aac', 'test@naver.com', '2018-05-16 20:52:26', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 22:27:53', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 22:29:41', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 22:38:35', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:25:32', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:29:51', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:48:22', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:50:44', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:51:56', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:52:52', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-16 23:55:42', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 00:25:55', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 00:27:28', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 00:30:18', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 00:33:56', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 16:33:05', '127.0.0.1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 21:36:15', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 21:57:28', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-17 21:59:36', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 00:23:42', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 16:39:02', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 17:11:27', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 18:01:46', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 18:06:14', '0:0:0:0:0:0:0:1'),
	('08de045a53b84815', 'test1@naver.com', '2018-05-18 18:30:17', '0:0:0:0:0:0:0:1'),
	('6674bdbca4194aac', 'test@naver.com', '2018-05-18 18:30:56', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 18:34:09', '0:0:0:0:0:0:0:1'),
	('6674bdbca4194aac', 'test@naver.com', '2018-05-18 18:38:34', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 18:40:33', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 18:47:32', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 22:08:27', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 22:17:04', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 22:42:24', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 23:34:33', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-18 23:36:41', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 00:38:56', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 00:39:58', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 00:46:38', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:06:20', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:13:13', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:14:28', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:15:08', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:16:15', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:16:46', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:17:16', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:18:23', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:19:43', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:20:57', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 01:23:01', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 12:49:08', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-19 21:44:51', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-05-28 22:11:28', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-01 22:12:05', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-01 22:18:27', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 00:51:24', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 00:54:28', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 00:56:45', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:00:12', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:02:57', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:03:59', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:05:13', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:08:22', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:10:34', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:11:53', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-02 01:13:02', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-03 00:36:53', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-03 00:40:30', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-03 00:57:31', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-03 00:59:54', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-03 22:26:22', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 00:19:02', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 00:20:59', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 00:21:22', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 00:33:08', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 00:57:01', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 00:59:26', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:00:13', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:03:41', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:04:34', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:05:17', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:06:35', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:10:15', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:17:40', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:18:18', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:20:45', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:25:40', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:26:31', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:27:19', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-04 01:34:54', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 01:15:59', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 01:46:12', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 01:48:14', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 01:53:58', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 15:59:29', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 16:00:52', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 16:06:05', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 17:32:53', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 19:18:51', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 19:21:33', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 19:23:21', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 19:27:33', '127.0.0.1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 19:42:47', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 20:46:47', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 21:10:36', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 21:10:49', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 21:13:25', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 21:14:45', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 21:15:08', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 22:06:14', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 22:07:08', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 22:08:09', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 22:12:00', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 22:12:55', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 22:13:35', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-05 23:12:46', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-05 23:13:17', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-06 00:34:15', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-06 00:34:27', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-06 00:38:32', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-06 00:38:38', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-06 00:44:13', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-06 00:44:42', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-06 00:48:03', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-06 00:48:51', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 00:30:16', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 00:30:21', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 00:51:54', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 00:52:05', '0:0:0:0:0:0:0:1'),
	('6674bdbca4194aac', 'test@naver.com', '2018-08-07 00:52:14', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 00:52:33', '0:0:0:0:0:0:0:1'),
	('08de045a53b84815', 'test1@naver.com', '2018-08-07 00:53:39', '0:0:0:0:0:0:0:1'),
	('08de045a53b84815', 'test1@naver.com', '2018-08-07 00:54:31', '0:0:0:0:0:0:0:1'),
	('6674bdbca4194aac', 'test@naver.com', '2018-08-07 00:54:50', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 22:30:50', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 22:53:23', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 22:55:42', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 22:56:28', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 22:57:15', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 23:00:19', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 23:04:14', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 23:13:07', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 23:26:23', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-07 23:37:26', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-07 23:42:16', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-08 00:19:53', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-08 00:22:11', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-08 00:26:39', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-08 00:27:31', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-08 00:29:52', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-08 00:37:01', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-08 00:51:12', '0:0:0:0:0:0:0:1'),
	('c79d7f73a2ec4d74', 'hong@naver.com', '2018-08-08 00:55:06', '0:0:0:0:0:0:0:1'),
	('5e7f710829d14ca5', 'whdans6701@naver.com', '2018-08-08 01:17:33', '0:0:0:0:0:0:0:1');
/*!40000 ALTER TABLE `access_login` ENABLE KEYS */;

-- 테이블 jm_sns.chat_join_entry 구조 내보내기
CREATE TABLE IF NOT EXISTS `chat_join_entry` (
  `cje_seq` int(11) NOT NULL AUTO_INCREMENT,
  `cje_room_id` varchar(100) NOT NULL COMMENT '채팅방 아이디',
  PRIMARY KEY (`cje_seq`,`cje_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='채팅 방 참여 인원';

-- 테이블 데이터 jm_sns.chat_join_entry:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `chat_join_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_join_entry` ENABLE KEYS */;

-- 테이블 jm_sns.chat_log 구조 내보내기
CREATE TABLE IF NOT EXISTS `chat_log` (
  `cl_seq` int(11) NOT NULL AUTO_INCREMENT,
  `cl_room_id` varchar(100) NOT NULL COMMENT '채팅방 아이디',
  `cl_message` varchar(255) NOT NULL COMMENT '채팅 메세지',
  `cl_writer` varchar(100) DEFAULT NULL COMMENT '채팅 작성자',
  `cl_reg_dt` date NOT NULL COMMENT '채팅 작성 시간',
  PRIMARY KEY (`cl_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='채팅 로그';

-- 테이블 데이터 jm_sns.chat_log:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `chat_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_log` ENABLE KEYS */;

-- 테이블 jm_sns.chat_option 구조 내보내기
CREATE TABLE IF NOT EXISTS `chat_option` (
  `co_seq` int(11) NOT NULL AUTO_INCREMENT,
  `co_room_id` varchar(100) NOT NULL COMMENT '채팅방 아이디',
  `co_room_name` varchar(100) NOT NULL COMMENT '채팅방 이름',
  `co_participant_cnt` int(11) NOT NULL COMMENT '채팅방 참여 인원',
  `co_room_type` char(2) NOT NULL DEFAULT '1' COMMENT ' 채팅방 타입 : 1 : 1:1   2 : 멀티',
  PRIMARY KEY (`co_seq`,`co_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='채팅방 옵션';

-- 테이블 데이터 jm_sns.chat_option:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `chat_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_option` ENABLE KEYS */;

-- 테이블 jm_sns.chat_room 구조 내보내기
CREATE TABLE IF NOT EXISTS `chat_room` (
  `cr_seq` int(11) NOT NULL AUTO_INCREMENT,
  `cr_id` varchar(100) NOT NULL COMMENT '채팅방 아이디',
  PRIMARY KEY (`cr_seq`,`cr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='채팅방';

-- 테이블 데이터 jm_sns.chat_room:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `chat_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_room` ENABLE KEYS */;

-- 테이블 jm_sns.friends 구조 내보내기
CREATE TABLE IF NOT EXISTS `friends` (
  `FR_SEQ` int(11) NOT NULL AUTO_INCREMENT,
  `FR_EMAIL` varchar(45) NOT NULL,
  `FR_TO_EMAIL` varchar(45) NOT NULL,
  `FR_REG_DATE` varchar(45) NOT NULL,
  PRIMARY KEY (`FR_SEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jm_sns.friends:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` (`FR_SEQ`, `FR_EMAIL`, `FR_TO_EMAIL`, `FR_REG_DATE`) VALUES
	(1, 'whdans6701@naver.com', 'test@naver.com', '2018-08-02 01:13:05'),
	(2, 'whdans6701@naver.com', 'hong@naver.com', '2018-08-05 22:13:41'),
	(3, 'hong@naver.com', 'whdans6701@naver.com', '2018-08-08 22:13:41');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;

-- 테이블 jm_sns.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `MB_SEQ` int(11) NOT NULL AUTO_INCREMENT,
  `MB_ID` varchar(100) NOT NULL COMMENT '회원 고유 아이디',
  `MB_FIRST_NAME` varchar(30) NOT NULL COMMENT '이름 ( 성 )',
  `MB_LAST_NAME` varchar(30) NOT NULL COMMENT '이름',
  `MB_EMAIL` varchar(45) NOT NULL COMMENT '이메일',
  `MB_PASSWORD` varchar(100) NOT NULL COMMENT '패스워드',
  `MB_REGI_DT` datetime DEFAULT NULL COMMENT '등록일',
  `MB_MODI_DT` datetime DEFAULT NULL COMMENT '변경일',
  PRIMARY KEY (`MB_SEQ`,`MB_ID`,`MB_EMAIL`),
  UNIQUE KEY `MB_EMAIL` (`MB_EMAIL`),
  KEY `MB_SELECT_ONE` (`MB_EMAIL`,`MB_PASSWORD`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='SNS 회원';

-- 테이블 데이터 jm_sns.member:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`MB_SEQ`, `MB_ID`, `MB_FIRST_NAME`, `MB_LAST_NAME`, `MB_EMAIL`, `MB_PASSWORD`, `MB_REGI_DT`, `MB_MODI_DT`) VALUES
	(1, '5e7f710829d14ca5', '정', '종문', 'whdans6701@naver.com', 'cc3659e56b7d191d1fa9558a291ab4476e4b2b29fff70b55064201ee992787c7', '2018-05-14 22:26:28', NULL),
	(2, '6674bdbca4194aac', '홍', '길동', 'test@naver.com', '9ad32c7bbc272794f04944039564b95c5212de88df972424b30d8a92490161e5', '2018-05-16 20:50:56', NULL),
	(3, '08de045a53b84815', '홍', '길동', 'test1@naver.com', '9ad32c7bbc272794f04944039564b95c5212de88df972424b30d8a92490161e5', '2018-05-16 20:52:19', NULL),
	(4, 'c79d7f73a2ec4d74', '홍', '길동', 'hong@naver.com', '9ad32c7bbc272794f04944039564b95c5212de88df972424b30d8a92490161e5', '2018-08-05 21:10:27', NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 jm_sns.sns_post 구조 내보내기
CREATE TABLE IF NOT EXISTS `sns_post` (
  `SP_SEQ` int(11) NOT NULL AUTO_INCREMENT,
  `SP_TITLE` varchar(255) NOT NULL,
  `SP_CONTENTS` varchar(255) DEFAULT NULL,
  `SP_AUTHOR` varchar(20) NOT NULL,
  `SP_REG_DT` datetime DEFAULT NULL,
  `SP_MODI_DT` datetime DEFAULT NULL,
  `SP_EMAIL` varchar(100) NOT NULL,
  `SP_STATE` varchar(2) DEFAULT 'Y',
  PRIMARY KEY (`SP_SEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jm_sns.sns_post:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sns_post` DISABLE KEYS */;
INSERT INTO `sns_post` (`SP_SEQ`, `SP_TITLE`, `SP_CONTENTS`, `SP_AUTHOR`, `SP_REG_DT`, `SP_MODI_DT`, `SP_EMAIL`, `SP_STATE`) VALUES
	(1, '111', '<p>13414</p>\r\n', '정종문', '2018-05-16 00:06:01', NULL, 'whdans6701@naver.com', 'Y'),
	(2, '12313123', '<p>13213131</p>\r\n', '정종문', '2018-08-01 22:20:12', NULL, 'whdans6701@naver.com', 'Y');
/*!40000 ALTER TABLE `sns_post` ENABLE KEYS */;

-- 테이블 jm_sns.temp_friends 구조 내보내기
CREATE TABLE IF NOT EXISTS `temp_friends` (
  `TF_SEQ` int(11) NOT NULL AUTO_INCREMENT,
  `TF_EMAIL` varchar(45) NOT NULL,
  `TF_TO_EMAIL` varchar(45) NOT NULL,
  `TF_REG_DATE` varchar(45) NOT NULL,
  `TF_STATE` char(1) NOT NULL DEFAULT 'K' COMMENT 'K : 대기 , Y : 승인, N : 거절',
  PRIMARY KEY (`TF_SEQ`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jm_sns.temp_friends:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `temp_friends` DISABLE KEYS */;
INSERT INTO `temp_friends` (`TF_SEQ`, `TF_EMAIL`, `TF_TO_EMAIL`, `TF_REG_DATE`, `TF_STATE`) VALUES
	(1, 'whdans6701@naver.com', 'test1@naver.com', '2018-05-16 23:55:48', 'Y'),
	(2, 'test@naver.com', 'whdans6701@naver.com', '2018-05-18 18:39:22', 'Y'),
	(3, 'hong@naver.com', 'whdans6701@naver.com', '2018-08-05 22:13:00', 'K');
/*!40000 ALTER TABLE `temp_friends` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
