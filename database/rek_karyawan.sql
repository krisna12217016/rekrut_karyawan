-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: raharja
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES (1,'admin','$2y$10$c6mjP9VWVv26tkL6dzwNCeE4nvo6b81yNCW7sgvB.duPMIqTzWkmS','admin');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;

--
-- Table structure for table `curiculum_vitae`
--

DROP TABLE IF EXISTS `curiculum_vitae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curiculum_vitae` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_loker` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(25) NOT NULL,
  `cv` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curiculum_vitae`
--

/*!40000 ALTER TABLE `curiculum_vitae` DISABLE KEYS */;
/*!40000 ALTER TABLE `curiculum_vitae` ENABLE KEYS */;

--
-- Table structure for table `hasil_test`
--

DROP TABLE IF EXISTS `hasil_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hasil_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `hasil` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_test`
--

/*!40000 ALTER TABLE `hasil_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `hasil_test` ENABLE KEYS */;

--
-- Table structure for table `info_loker`
--

DROP TABLE IF EXISTS `info_loker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_loker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `bagian` varchar(20) NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_loker`
--

/*!40000 ALTER TABLE `info_loker` DISABLE KEYS */;
INSERT INTO `info_loker` VALUES (6,'Dicari Kasir Wanita Untuk IndoApril','Kasir','Keuangan','2019-07-13','2019-07-07'),(7,'Programmer Node.js dan Vue.js','Programmer','Javascript Developme','2019-09-30','2019-07-07'),(8,'Wordpress Development Plugin','Ketua Plugin Develop','CMS Development','2019-07-20','2021-11-28');
/*!40000 ALTER TABLE `info_loker` ENABLE KEYS */;

--
-- Table structure for table `jawaban`
--

DROP TABLE IF EXISTS `jawaban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `id_soal` varchar(10) NOT NULL,
  `jawaban` varchar(10) NOT NULL,
  `correct` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jawaban`
--

/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;

--
-- Table structure for table `registrasi`
--

DROP TABLE IF EXISTS `registrasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(25) DEFAULT NULL,
  `tgl_lahir` varchar(20) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `kewarganegaraan` varchar(20) DEFAULT NULL,
  `jenjang_pendidikan` varchar(30) DEFAULT NULL,
  `pas_foto_ijazah` varchar(50) DEFAULT NULL,
  `umur` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `alamat_lengkap` text,
  `no_hp` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `pas_foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrasi`
--

/*!40000 ALTER TABLE `registrasi` DISABLE KEYS */;
INSERT INTO `registrasi` VALUES (8,'sena','$2y$10$OzTEtQZeenajvvqm6Mbh1.ONciNR95e8QLRA8OOActkqnMPrd7pcq','Shenna','2019-07-07','hindu','WNI','sd','15624382095d20ea4150ab5.jpg','18','Menikah','Laki-laki','Crime North','8584934857','2019-07-07','15624382095d20ea4150ab5.jpg');
/*!40000 ALTER TABLE `registrasi` ENABLE KEYS */;

--
-- Table structure for table `test_online`
--

DROP TABLE IF EXISTS `test_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomor` int(10) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `jawaban` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_online`
--

/*!40000 ALTER TABLE `test_online` DISABLE KEYS */;
INSERT INTO `test_online` VALUES (4,1,'Kapan Indonesia Merdeka?','Indonesia tidak pernah merdeka','17 Agustus 1945','2 Mei 1998','a','2021-11-28'),(5,2,'Bagaimana Cara memakan bubur?','Diaduk searah jarum jam','Diaduk menyilang','Ditelen','c','2019-07-07'),(6,3,'Kenapa dinamakan ikan?','Warnanya kuning','Karena dina lapar','Karena dina suka','b','2019-07-07'),(7,4,'Kenapa kamu suka spongeboob?','Karena Ngeselin','Karena Kuning','Karena Kocak kaya saya','c','2019-07-07'),(8,5,'Makanan Yang biking bingung','Semangka','Pepaya','Apel','c','2019-07-07');
/*!40000 ALTER TABLE `test_online` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-28 18:32:02
