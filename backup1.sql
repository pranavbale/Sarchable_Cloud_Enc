CREATE DATABASE  IF NOT EXISTS `bvj67gg8fecwpx9he6wn` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bvj67gg8fecwpx9he6wn`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: bvj67gg8fecwpx9he6wn-mysql.services.clever-cloud.com    Database: bvj67gg8fecwpx9he6wn
-- ------------------------------------------------------
-- Server version	8.0.22-13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'a05a675a-1414-11e9-9c82-cecd01b08c7e:1-491550428,
a38a16d0-767a-11eb-abe2-cecd029e558e:1-232357476';

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `city` text,
  `state` text,
  `cityId` int NOT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('city','state',0),('Cachar','Assam',2),('Darrang','Assam',3),('Dhemaji','Assam',4),('Dima Hasao','Assam',5),('Kamrup','Assam',6),('Karbi Anglong','Assam',7),('Lakhimpur','Assam',8),('Sivasagar','Assam',9),('Sonitpur','Assam',10),('Tinsukia','Assam',11),('Abhayapuri','Assam',12),('Amguri','Assam',13),('Anandnagaar','Assam',14),('Barpeta','Assam',15),('Barpeta Road','Assam',16),('Bilasipara','Assam',17),('Bongaigaon','Assam',18),('Dhekiajuli','Assam',19),('Dhubri','Assam',20),('Dibrugarh','Assam',21),('Digboi','Assam',22),('Diphu','Assam',23),('Dispur*','Assam',24),('Duliajan Oil Town','Assam',25),('Gauripur','Assam',26),('Goalpara','Assam',27),('Golaghat','Assam',28),('Guwahati','Assam',29),('Haflong','Assam',30),('Hailakandi','Assam',31),('Hojai','Assam',32),('Jorhat','Assam',33),('Karimganj','Assam',34),('Kokrajhar','Assam',35),('Lanka','Assam',36),('Lumding','Assam',37),('Mangaldoi','Assam',38),('Mankachar','Assam',39),('Margherita','Assam',40),('Mariani','Assam',41),('Marigaon','Assam',42),('Nagaon','Assam',43),('Nalbari','Assam',44),('North Lakhimpur','Assam',45),('Anantnag','Jammu and Kashmir',46),('Bandipora','Jammu and Kashmir',47),('Baramulla','Jammu and Kashmir',48),('Budgam','Jammu and Kashmir',49),('Doda','Jammu and Kashmir',50),('Jammu','Jammu and Kashmir',51),('Kargil','Jammu and Kashmir',52),('Kathua','Jammu and Kashmir',53),('Kupwara','Jammu and Kashmir',54),('Leh','Jammu and Kashmir',55),('Poonch','Jammu and Kashmir',56),('Pulwama','Jammu and Kashmir',57),('Rajouri','Jammu and Kashmir',58),('Reasi','Jammu and Kashmir',59),('Shopian','Jammu and Kashmir',60),('Srinagar','Jammu and Kashmir',61),('Udhampur','Jammu and Kashmir',62),('Achalpur','Maharashtra',63),('Ahmednagar','Maharashtra',64),('Ahmedpur','Maharashtra',65),('Ajra','Maharashtra',66),('Akkalkot','Maharashtra',67),('Akola','Maharashtra',68),('Akot','Maharashtra',69),('Alandi','Maharashtra',70),('Alibag','Maharashtra',71),('Amalner','Maharashtra',72),('Ambad','Maharashtra',73),('Ambejogai','Maharashtra',74),('Ambivali Tarf Wankhal','Maharashtra',75),('Amravati','Maharashtra',76),('Anjangaon','Maharashtra',77),('Arvi','Maharashtra',78),('Ashta','Maharashtra',79),('Aurangabad','Maharashtra',80),('Ausa','Maharashtra',81),('Baramati','Maharashtra',82),('Bhandara','Maharashtra',83),('Beed','Maharashtra',84),('Bhiwandi','Maharashtra',85),('Bhusawal','Maharashtra',86),('Buldhana','Maharashtra',87),('Chalisgaon','Maharashtra',88),('Chandrapur','Maharashtra',89),('Chinchani','Maharashtra',90),('Chiplun','Maharashtra',91),('Daund','Maharashtra',92),('Devgarh','Maharashtra',93),('Dhule','Maharashtra',94),('Dombivli','Maharashtra',95),('Durgapur','Maharashtra',96),('Gadchiroli','Maharashtra',97),('Ghatanji','Maharashtra',98),('Gondiya','Maharashtra',99),('Hingoli','Maharashtra',100),('Ichalkaranji','Maharashtra',101),('Jalgaon','Maharashtra',102),('Jalna','Maharashtra',103),('Junnar','Maharashtra',104),('Kalyan','Maharashtra',105),('Kamthi','Maharashtra',106),('Karad','Maharashtra',107),('karjat','Maharashtra',108),('Kolhapur','Maharashtra',109),('Latur','Maharashtra',110),('Loha','Maharashtra',111),('Lonar','Maharashtra',112),('Lonavla','Maharashtra',113),('Mahabaleswar','Maharashtra',114),('Mahad','Maharashtra',115),('Mahuli','Maharashtra',116),('Malegaon','Maharashtra',117),('Malkapur','Maharashtra',118),('Manchar','Maharashtra',119),('Mangalvedhe','Maharashtra',120),('Mangrulpir','Maharashtra',121),('Manjlegaon','Maharashtra',122),('Manmad','Maharashtra',123),('Manwath','Maharashtra',124),('Mehkar','Maharashtra',125),('Mhaswad','Maharashtra',126),('Mira-Bhayandar','Maharashtra',127),('Miraj','Maharashtra',128),('Morshi','Maharashtra',129),('Mukhed','Maharashtra',130),('Mul','Maharashtra',131),('Mumbai','Maharashtra',132),('Murtijapur','Maharashtra',133),('Nagpur','Maharashtra',134),('Nalasopara','Maharashtra',135),('Nanded-Waghala','Maharashtra',136),('Nandgaon','Maharashtra',137),('Nandura','Maharashtra',138),('Nandurbar','Maharashtra',139),('Narkhed','Maharashtra',140),('Nashik','Maharashtra',141),('Navi Mumbai','Maharashtra',142),('Nawapur','Maharashtra',143),('Nilanga','Maharashtra',144),('Osmanabad','Maharashtra',145),('Ozar','Maharashtra',146),('Pachora','Maharashtra',147),('Paithan','Maharashtra',148),('Palghar','Maharashtra',149),('Pandharkaoda','Maharashtra',150),('Pandharpur','Maharashtra',151),('Panvel','Maharashtra',152),('Parbhani','Maharashtra',153),('Parli','Maharashtra',154),('Parola','Maharashtra',155),('Partur','Maharashtra',156),('Pathardi','Maharashtra',157),('Pathri','Maharashtra',158),('Patur','Maharashtra',159),('Pauni','Maharashtra',160),('Pen','Maharashtra',161),('Phaltan','Maharashtra',162),('Pulgaon','Maharashtra',163),('Pune','Maharashtra',164),('Purna','Maharashtra',165),('Pusad','Maharashtra',166),('Raigad','Maharashtra',167),('Ratnagiri','Maharashtra',168),('Sangli','Maharashtra',169),('Satara','Maharashtra',170),('Sindhudurg','Maharashtra',171),('Solapur','Maharashtra',172),('Thane','Maharashtra',173),('Wardha','Maharashtra',174),('Washim','Maharashtra',175),('Yavatmal','Maharashtra',176),('Achhnera','Uttar Pradesh',177),('Adari','Uttar Pradesh',178),('Agra','Uttar Pradesh',179),('Aligarh','Uttar Pradesh',180),('Allahabad','Uttar Pradesh',181),('Ambedkar Nagar','Uttar Pradesh',182),('Amroha','Uttar Pradesh',183),('Auraiya','Uttar Pradesh',184),('Azamgarh','Uttar Pradesh',185),('Badaun','Uttar Pradesh',186),('Bagpat','Uttar Pradesh',187),('Bahraich','Uttar Pradesh',188),('Ballia','Uttar Pradesh',189),('Balrampur','Uttar Pradesh',190),('Banda','Uttar Pradesh',191),('Barabanki','Uttar Pradesh',192),('Bareilly','Uttar Pradesh',193),('Bharthana','Uttar Pradesh',194),('Bijnor','Uttar Pradesh',195),('Budaun','Uttar Pradesh',196),('Bulandshahr','Uttar Pradesh',197),('Chakeri','Uttar Pradesh',198),('Chandauli','Uttar Pradesh',199),('Chandausi','Uttar Pradesh',200),('Charkhari','Uttar Pradesh',201),('Chitrakoot','Uttar Pradesh',202),('Dadri','Uttar Pradesh',203),('Deoria','Uttar Pradesh',204),('Dhampur','Uttar Pradesh',205),('Etah','Uttar Pradesh',206),('Etawah','Uttar Pradesh',207),('Faizabad','Uttar Pradesh',208),('Farrukhabad','Uttar Pradesh',209),('Fatehabad','Uttar Pradesh',210),('Fatehgarh','Uttar Pradesh',211),('Fatehpur','Uttar Pradesh',212),('Fatehpur','Uttar Pradesh',213),('Fatehpur Chaurasi','Uttar Pradesh',214),('Fatehpur Sikri','Uttar Pradesh',215),('Firozabad','Uttar Pradesh',216),('Ghatampur','Uttar Pradesh',217),('Gautam Buddha Nagar','Uttar Pradesh',218),('Ghaziabad','Uttar Pradesh',219),('Ghazipur','Uttar Pradesh',220),('Gonda','Uttar Pradesh',221),('Gorakhpur','Uttar Pradesh',222),('Greater Noida','Uttar Pradesh',223),('Hamirpur','Uttar Pradesh',224),('Hapur','Uttar Pradesh',225),('Hardoi','Uttar Pradesh',226),('Hastinapur','Uttar Pradesh',227),('Hathras','Uttar Pradesh',228),('Jais','Uttar Pradesh',229),('Jajmau','Uttar Pradesh',230),('Jalaun','Uttar Pradesh',231),('Jaunpur','Uttar Pradesh',232),('Jhansi','Uttar Pradesh',233),('Jyotiba Phule Nagar','Uttar Pradesh',234),('Kannauj','Uttar Pradesh',235),('Kalpi','Uttar Pradesh',236),('Kanpur','Uttar Pradesh',237),('Kanpur Nagar','Uttar Pradesh',238),('Kaushambi','Uttar Pradesh',239),('Kheri','Uttar Pradesh',240),('Kota','Uttar Pradesh',241),('Kulpahar','Uttar Pradesh',242),('Kushinagar','Uttar Pradesh',243),('Laharpur','Uttar Pradesh',244),('Lakhimpur','Uttar Pradesh',245),('Lal Gopalganj Nindaura','Uttar Pradesh',246),('Lalganj','Uttar Pradesh',247),('Lalitpur','Uttar Pradesh',248),('Lar','Uttar Pradesh',249),('Loni','Uttar Pradesh',250),('Lucknow','Uttar Pradesh',251),('Mahoba','Uttar Pradesh',252),('Maharajganj','Uttar Pradesh',253),('Mainpuri','Uttar Pradesh',254),('Mathura','Uttar Pradesh',255),('Mau','Uttar Pradesh',256),('Meerut','Uttar Pradesh',257),('Mirzapur','Uttar Pradesh',258),('Modinagar','Uttar Pradesh',259),('Moradabad','Uttar Pradesh',260),('Muradnagar','Uttar Pradesh',261),('Muzaffarnagar','Uttar Pradesh',262),('Nagina','Uttar Pradesh',263),('Najibabad','Uttar Pradesh',264),('Nakur','Uttar Pradesh',265),('Nanpara','Uttar Pradesh',266),('Naraura','Uttar Pradesh',267),('Naugawan Sadat','Uttar Pradesh',268),('Nautanwa','Uttar Pradesh',269),('Nawabganj','Uttar Pradesh',270),('Nehtaur','Uttar Pradesh',271),('Noida','Uttar Pradesh',272),('Noorpur','Uttar Pradesh',273),('Obra','Uttar Pradesh',274),('Orai','Uttar Pradesh',275),('Padrauna','Uttar Pradesh',276),('Palia Kalan','Uttar Pradesh',277),('Parasi','Uttar Pradesh',278),('Phulpur','Uttar Pradesh',279),('Pihani','Uttar Pradesh',280),('Pilibhit','Uttar Pradesh',281),('Pilkhuwa','Uttar Pradesh',282),('Powayan','Uttar Pradesh',283),('Pratapgarh','Uttar Pradesh',284),('Pukhrayan','Uttar Pradesh',285),('Puranpur','Uttar Pradesh',286),('Purquazi','Uttar Pradesh',287),('Purwa','Uttar Pradesh',288),('Raebareli','Uttar Pradesh',289),('Ramabai Nagar','Uttar Pradesh',290),('Rampur','Uttar Pradesh',291),('Saharanpur','Uttar Pradesh',292),('Sant Kabir Nagar','Uttar Pradesh',293),('Sant Ravidas Nagar','Uttar Pradesh',294),('Shahjahanpur','Uttar Pradesh',295),('Shravasti','Uttar Pradesh',296),('Siddharthnagar','Uttar Pradesh',297),('Sitapur','Uttar Pradesh',298),('Sonbhadra','Uttar Pradesh',299),('Sultanpur','Uttar Pradesh',300),('Unnao','Uttar Pradesh',301),('Varanasi','Uttar Pradesh',302),('Adalaj','Gujarat',303),('Adityana','Gujarat',304),('Ahmedabad','Gujarat',305),('Alang','Gujarat',306),('Ambaji','Gujarat',307),('Ambaliyasan','Gujarat',308),('Amreli','Gujarat',309),('Anand','Gujarat',310),('Andada','Gujarat',311),('Anjar','Gujarat',312),('Anklav','Gujarat',313),('Ankleshwar','Gujarat',314),('Antaliya','Gujarat',315),('Arambhada','Gujarat',316),('Atul','Gujarat',317),('Banaskantha','Gujarat',318),('Bharuch','Gujarat',319),('Bhavnagar','Gujarat',320),('Bhuj','Gujarat',321),('Cambay','Gujarat',322),('Dahod','Gujarat',323),('Dang','Gujarat',324),('Deesa','Gujarat',325),('Dehgam','Gujarat',326),('Dharampur','Gujarat',327),('Dholka','Gujarat',328),('Dwarka','Gujarat',329),('Gandhidham','Gujarat',330),('Gandhinagar','Gujarat',331),('Godhra','Gujarat',332),('Himatnagar','Gujarat',333),('Idar','Gujarat',334),('Jamnagar','Gujarat',335),('Junagadh','Gujarat',336),('Kachchh','Gujarat',337),('Kadi','Gujarat',338),('Kalavad','Gujarat',339),('Kalol','Gujarat',340),('Kapadvanj','Gujarat',341),('Karjan','Gujarat',342),('Keshod','Gujarat',343),('Khambhalia','Gujarat',344),('Khambhat','Gujarat',345),('Kheda','Gujarat',346),('Khedbrahma','Gujarat',347),('Kheralu','Gujarat',348),('Kodinar','Gujarat',349),('Lathi','Gujarat',350),('Limbdi','Gujarat',351),('Lunawada','Gujarat',352),('Mahesana','Gujarat',353),('Mahuva','Gujarat',354),('Manavadar','Gujarat',355),('Mandvi','Gujarat',356),('Mangrol','Gujarat',357),('Mansa','Gujarat',358),('Mehmedabad','Gujarat',359),('Mithapur','Gujarat',360),('Modasa','Gujarat',361),('Morvi','Gujarat',362),('Nadiad','Gujarat',363),('Narmada','Gujarat',364),('Navsari','Gujarat',365),('Padra','Gujarat',366),('Palanpur','Gujarat',367),('Palitana','Gujarat',368),('Panchmahal','Gujarat',369),('Pardi','Gujarat',370),('Patan','Gujarat',371),('Petlad','Gujarat',372),('Porbandar','Gujarat',373),('Rajkot','Gujarat',374),('Sabarkantha','Gujarat',375),('Surat','Gujarat',376),('Surendranagar','Gujarat',377),('Tapi','Gujarat',378),('Vadodara','Gujarat',379),('Valsad','Gujarat',380),('Adoni','Andhra Pradesh',381),('Amadalavalasa','Andhra Pradesh',382),('Amalapuram','Andhra Pradesh',383),('Anakapalle','Andhra Pradesh',384),('Anantapur','Andhra Pradesh',385),('Badepalle','Andhra Pradesh',386),('Banganapalle','Andhra Pradesh',387),('Bapatla','Andhra Pradesh',388),('Bellampalle','Andhra Pradesh',389),('Bethamcherla','Andhra Pradesh',390),('Bhadrachalam','Andhra Pradesh',391),('Bhainsa','Andhra Pradesh',392),('Bheemunipatnam','Andhra Pradesh',393),('Bhimavaram','Andhra Pradesh',394),('Bhongir','Andhra Pradesh',395),('Bobbili','Andhra Pradesh',396),('Bodhan','Andhra Pradesh',397),('Chapirevula','Andhra Pradesh',398),('Chilakaluripet','Andhra Pradesh',399),('Chirala','Andhra Pradesh',400),('Chittoor','Andhra Pradesh',401),('Cuddapah','Andhra Pradesh',402),('Devarakonda','Andhra Pradesh',403),('Dharmavaram','Andhra Pradesh',404),('Eluru','Andhra Pradesh',405),('Farooqnagar','Andhra Pradesh',406),('Gadwal','Andhra Pradesh',407),('Gooty','Andhra Pradesh',408),('Gudivada','Andhra Pradesh',409),('Gudur','Andhra Pradesh',410),('Guntakal','Andhra Pradesh',411),('Guntur','Andhra Pradesh',412),('Hanuman Junction','Andhra Pradesh',413),('Hindupur','Andhra Pradesh',414),('Ichchapuram','Andhra Pradesh',415),('Jaggaiahpet','Andhra Pradesh',416),('Jagtial','Andhra Pradesh',417),('Jammalamadugu','Andhra Pradesh',418),('Jangaon','Andhra Pradesh',419),('Kadapa','Andhra Pradesh',420),('Kadiri','Andhra Pradesh',421),('Kagaznagar','Andhra Pradesh',422),('Kakinada','Andhra Pradesh',423),('Kalyandurg','Andhra Pradesh',424),('Kamareddy','Andhra Pradesh',425),('Kandukur','Andhra Pradesh',426),('Kavali','Andhra Pradesh',427),('Kodad','Andhra Pradesh',428),('Koratla','Andhra Pradesh',429),('Kothagudem','Andhra Pradesh',430),('Kothapeta','Andhra Pradesh',431),('Kovvur','Andhra Pradesh',432),('Kurnool','Andhra Pradesh',433),('Kyathampalle','Andhra Pradesh',434),('Macherla','Andhra Pradesh',435),('Machilipatnam','Andhra Pradesh',436),('Madanapalle','Andhra Pradesh',437),('Mancherial','Andhra Pradesh',438),('Mandamarri','Andhra Pradesh',439),('Mandapeta','Andhra Pradesh',440),('Mangalagiri','Andhra Pradesh',441),('Manuguru','Andhra Pradesh',442),('Markapur','Andhra Pradesh',443),('Miryalaguda','Andhra Pradesh',444),('Mogalthur','Andhra Pradesh',445),('Nagari','Andhra Pradesh',446),('Nagarkurnool','Andhra Pradesh',447),('Nandyal','Andhra Pradesh',448),('Narasapur','Andhra Pradesh',449),('Narasaraopet','Andhra Pradesh',450),('Narayanpet','Andhra Pradesh',451),('Narsipatnam','Andhra Pradesh',452),('Nellore','Andhra Pradesh',453),('Nidadavole','Andhra Pradesh',454),('Nirmal','Andhra Pradesh',455),('Nuzvid','Andhra Pradesh',456),('Ongole','Andhra Pradesh',457),('Palacole','Andhra Pradesh',458),('Palasa Kasibugga','Andhra Pradesh',459),('Palwancha','Andhra Pradesh',460),('Parvathipuram','Andhra Pradesh',461),('Pedana','Andhra Pradesh',462),('Peddapuram','Andhra Pradesh',463),('Pithapuram','Andhra Pradesh',464),('Pondur','Andhra Pradesh',465),('Ponnur','Andhra Pradesh',466),('Proddatur','Andhra Pradesh',467),('Punganur','Andhra Pradesh',468),('Puttur','Andhra Pradesh',469),('East godavari','Andhra Pradesh',470),('Krishna','Andhra Pradesh',471),('Prakasam','Andhra Pradesh',472),('Sri Potti Sriramulu Nellore','Andhra Pradesh',473),('Srikakulam','Andhra Pradesh',474),('Visakhapatanam','Andhra Pradesh',475),('Vizianagaram','Andhra Pradesh',476),('West Godavari','Andhra Pradesh',477),('YSR district','Andhra Pradesh',478),('Aalanavara','Karnataka',479),('Adyar','Karnataka',480),('Afzalpura','Karnataka',481),('Alandha','Karnataka',482),('Alur','Karnataka',483),('Ambikaanagara','Karnataka',484),('Anekal','Karnataka',485),('Ankola','Karnataka',486),('Annigeri','Karnataka',487),('Arkalgud','Karnataka',488),('Arsikere','Karnataka',489),('Athni','Karnataka',490),('Aurad','Karnataka',491),('Bagalkot','Karnataka',492),('Bellary','Karnataka',493),('Bangalore','Karnataka',494),('Belgaum','Karnataka',495),('Bengaluru','Karnataka',496),('Bidar','Karnataka',497),('Bijapur','Karnataka',498),('Chamarajanagara','Karnataka',499),('Chikaballapura','Karnataka',500),('Chikkamagalur','Karnataka',501),('Chikkodi','Karnataka',502),('Chinthaamani','Karnataka',503),('Chitradurga','Karnataka',504),('Davanagere','Karnataka',505),('Dharwad','Karnataka',506),('Gadhaga','Karnataka',507),('Gadag','Karnataka',508),('Gokak','Karnataka',509),('Gulbarga','Karnataka',510),('Gundlupet','Karnataka',511),('Hassan','Karnataka',512),('Haveri','Karnataka',513),('Hosapet','Karnataka',514),('Hubbali','Karnataka',515),('Hukkeri','Karnataka',516),('Kaarkala','Karnataka',517),('Kalburgi','Karnataka',518),('Karwar','Karnataka',519),('Kodagu','Karnataka',520),('Kolar','Karnataka',521),('Kota','Karnataka',522),('Koppal','Karnataka',523),('Lakshmishawara','Karnataka',524),('Lingsuguru','Karnataka',525),('Maagadi','Karnataka',526),('Maaluru','Karnataka',527),('Maanvi','Karnataka',528),('Maddhuru','Karnataka',529),('Madhugiri','Karnataka',530),('Madikeri','Karnataka',531),('Mahalingapura','Karnataka',532),('Malavalli','Karnataka',533),('Mandya','Karnataka',534),('Mangalooru','Karnataka',535),('Mudabidri','Karnataka',536),('Mudalagi','Karnataka',537),('Muddebihala','Karnataka',538),('Mudhola','Karnataka',539),('Mulabaagilu','Karnataka',540),('Mundaragi','Karnataka',541),('Mysore','Karnataka',542),('Nanjanagoodu','Karnataka',543),('Nippani','Karnataka',544),('Paavagada','Karnataka',545),('Pereyaapatna','Karnataka',546),('Puthooru','Karnataka',547),('Raichur','Karnataka',548),('Ramanagara','Karnataka',549),('Shimoga','Karnataka',550),('Tumkur','Karnataka',551),('Udupi','Karnataka',552),('Uttara Kannada','Karnataka',553),('Yadgir','Karnataka',554),('Adoor','Kerala',555),('Akathiyoor','Kerala',556),('Alappuzha','Kerala',557),('Ancharakandy','Kerala',558),('Aroor','Kerala',559),('Ashtamichira','Kerala',560),('Attingal','Kerala',561),('Avinissery','Kerala',562),('Chalakudy','Kerala',563),('Changanassery','Kerala',564),('Chendamangalam','Kerala',565),('Chengannur','Kerala',566),('Cherthala','Kerala',567),('Cheruthazham','Kerala',568),('Chittur-Thathamangalam','Kerala',569),('Chockli','Kerala',570),('Ernakulam','Kerala',571),('Erattupetta','Kerala',572),('Guruvayoor','Kerala',573),('Idukki','Kerala',574),('Irinjalakuda','Kerala',575),('Kadirur','Kerala',576),('Kalliasseri','Kerala',577),('Kalpetta','Kerala',578),('Kanhangad','Kerala',579),('Kanjikkuzhi','Kerala',580),('Kannur','Kerala',581),('Kasaragod','Kerala',582),('Kayamkulam','Kerala',583),('Kochi','Kerala',584),('Kodungallur','Kerala',585),('Kollam','Kerala',586),('Koothuparamba','Kerala',587),('Kothamangalam','Kerala',588),('Kottayam','Kerala',589),('Kozhikode','Kerala',590),('Kunnamkulam','Kerala',591),('Mahe','Kerala',592),('Malappuram','Kerala',593),('Mattannur','Kerala',594),('Mavelikkara','Kerala',595),('Mavoor','Kerala',596),('Muvattupuzha','Kerala',597),('Nedumangad','Kerala',598),('Neyyattinkara','Kerala',599),('Nilambur','Kerala',600),('Ottappalam','Kerala',601),('Palai','Kerala',602),('Palakkad','Kerala',603),('Panamattom','Kerala',604),('Panniyannur','Kerala',605),('Pappinisseri','Kerala',606),('Paravoor','Kerala',607),('Pathanamthitta','Kerala',608),('Peringathur','Kerala',609),('Perinthalmanna','Kerala',610),('Perumbavoor','Kerala',611),('Ponkunnam','Kerala',612),('Ponnani','Kerala',613),('Punalur','Kerala',614),('Puthuppally','Kerala',615),('Thrissur','Kerala',616),('Wayanad','Kerala',617),('Adra','West Bengal',618),('Alipurduar','West Bengal',619),('Arambagh','West Bengal',620),('Asansol','West Bengal',621),('Baharampur','West Bengal',622),('Bally','West Bengal',623),('Balurghat','West Bengal',624),('Bankura','West Bengal',625),('Barakar','West Bengal',626),('Barasat','West Bengal',627),('Bardhaman','West Bengal',628),('Barrackpur','West Bengal',629),('Bidhan Nagar','West Bengal',630),('Birbhum','West Bengal',631),('Chinsura','West Bengal',632),('Contai','West Bengal',633),('Cooch Behar','West Bengal',634),('Dakshin Dinajpur','West Bengal',635),('Dalkhola','West Bengal',636),('Darjeeling','West Bengal',637),('Dhulian','West Bengal',638),('Dumdum','West Bengal',639),('Durgapur','West Bengal',640),('Habra*','West Bengal',641),('Haldia','West Bengal',642),('Howrah','West Bengal',643),('Hugli-Chuchura','West Bengal',644),('Islampur','West Bengal',645),('Jalpaiguri','West Bengal',646),('Jhargram','West Bengal',647),('Kalimpong','West Bengal',648),('Kharagpur','West Bengal',649),('Kolkata','West Bengal',650),('Konnagar','West Bengal',651),('Krishnanagar','West Bengal',652),('Mainaguri','West Bengal',653),('Mal','West Bengal',654),('Maldah','West Bengal',655),('Mathabhanga','West Bengal',656),('Medinipur','West Bengal',657),('Memari','West Bengal',658),('Monoharpur','West Bengal',659),('Murshidabad','West Bengal',660),('Nabadwip','West Bengal',661),('Nadia','West Bengal',662),('Naihati','West Bengal',663),('Panchla','West Bengal',664),('Pandua','West Bengal',665),('Paschim Punropara','West Bengal',666),('Purulia','West Bengal',667),('North 24 Parganas','West Bengal',668),('Paschim Medinipur','West Bengal',669),('Purba Medinipur','West Bengal',670),('Purulia','West Bengal',671),('South 24 Parganas','West Bengal',672),('Uttar Dinajpur','West Bengal',673),('Agartala','Tripura',674),('Badharghat','Tripura',675),('Dhalai','Tripura',676),('North Tripura','Tripura',677),('South Tripura','Tripura',678),('West Tripura','Tripura',679),('Dharmanagar','Tripura',680),('Indranagar','Tripura',681),('Jogendranagar','Tripura',682),('Kailasahar','Tripura',683),('Khowai','Tripura',684),('Pratapgarh','Tripura',685),('Ahiwara','Chhattisgarh',686),('Akaltara','Chhattisgarh',687),('Ambagarh Chowki','Chhattisgarh',688),('Ambikapur','Chhattisgarh',689),('Arang','Chhattisgarh',690),('Bade Bacheli','Chhattisgarh',691),('Balod','Chhattisgarh',692),('Baloda Bazar','Chhattisgarh',693),('Bastar','Chhattisgarh',694),('Basna','Chhattisgarh',695),('Bemetra','Chhattisgarh',696),('Bhatapara','Chhattisgarh',697),('Bhilai','Chhattisgarh',698),('Bilaspur','Chhattisgarh',699),('Bijapur','Chhattisgarh',700),('Birgaon','Chhattisgarh',701),('Champa','Chhattisgarh',702),('Chirmiri','Chhattisgarh',703),('Dantewada','Chhattisgarh',704),('Dalli-Rajhara','Chhattisgarh',705),('Dhamtari','Chhattisgarh',706),('Dipka','Chhattisgarh',707),('Dongargarh','Chhattisgarh',708),('Durg-Bhilai Nagar','Chhattisgarh',709),('Gobranawapara','Chhattisgarh',710),('Jagdalpur','Chhattisgarh',711),('Janjgir','Chhattisgarh',712),('Jashpurnagar','Chhattisgarh',713),('Kabirdham','Chhattisgarh',714),('Kanker','Chhattisgarh',715),('Kawardha','Chhattisgarh',716),('Kondagaon','Chhattisgarh',717),('Korba','Chhattisgarh',718),('Koriya','Chhattisgarh',719),('Mahasamund','Chhattisgarh',720),('Mahendragarh','Chhattisgarh',721),('Mungeli','Chhattisgarh',722),('Naila Janjgir','Chhattisgarh',723),('Narayanpur','Chhattisgarh',724),('Raigarh','Chhattisgarh',725),('Raipur','Chhattisgarh',726),('Rajnandgaon','Chhattisgarh',727),('Surguja','Chhattisgarh',728),('Ahmedgarh','Punjab',729),('Amritsar','Punjab',730),('Barnala','Punjab',731),('Batala','Punjab',732),('Bathinda','Punjab',733),('Bhagha Purana','Punjab',734),('Budhlada','Punjab',735),('Dasua','Punjab',736),('Dhuri','Punjab',737),('Dinanagar','Punjab',738),('Faridkot','Punjab',739),('Fazilka','Punjab',740),('Firozpur','Punjab',741),('Firozpur Cantt.','Punjab',742),('Fatehgarh Sahib','Punjab',743),('Giddarbaha','Punjab',744),('Gobindgarh','Punjab',745),('Gurdaspur','Punjab',746),('Hoshiarpur','Punjab',747),('Jagraon','Punjab',748),('Jaitu','Punjab',749),('Jalalabad','Punjab',750),('Jalandhar','Punjab',751),('Jalandhar Cantt.','Punjab',752),('Jandiala','Punjab',753),('Kamahi Devi','Punjab',754),('Kapurthala','Punjab',755),('Karoran','Punjab',756),('Kartarpur','Punjab',757),('Khanna','Punjab',758),('Kharar','Punjab',759),('Kot Kapura','Punjab',760),('Kurali','Punjab',761),('Longowal','Punjab',762),('Ludhiana','Punjab',763),('Malerkotla','Punjab',764),('Malout','Punjab',765),('Mansa','Punjab',766),('Maur','Punjab',767),('Moga','Punjab',768),('Mohali','Punjab',769),('Morinda','Punjab',770),('Mukatsar','Punjab',771),('Mukerian','Punjab',772),('Muktsar','Punjab',773),('Nabha','Punjab',774),('Nakodar','Punjab',775),('Nangal','Punjab',776),('Nawanshahr','Punjab',777),('Pathankot','Punjab',778),('Patiala','Punjab',779),('Patran','Punjab',780),('Patti','Punjab',781),('Phagwara','Punjab',782),('Phillaur','Punjab',783),('Rupnagar','Punjab',784),('Sangrur','Punjab',785),('Shahid Bhagat Singh Nagar','Punjab',786),('Tarn Taran','Punjab',787),('Aizawl','Mizoram',788),('Champhai','Mizoram',789),('Kolasib','Mizoram',790),('Lawngtlai','Mizoram',791),('Lunglei','Mizoram',792),('Mamit','Mizoram',793),('Saiha','Mizoram',794),('Serchhip','Mizoram',795),('Ajmer','Rajasthan',796),('Alwar','Rajasthan',797),('Bali','Rajasthan',798),('Bandikui','Rajasthan',799),('Banswara','Rajasthan',800),('Baran','Rajasthan',801),('Barmer','Rajasthan',802),('Beawar','Rajasthan',803),('Bharatpur','Rajasthan',804),('Bhilwara','Rajasthan',805),('Bhinmal','Rajasthan',806),('Bikaner','Rajasthan',807),('Bilara','Rajasthan',808),('Biwani','Rajasthan',809),('Bundi','Rajasthan',810),('Chittorgarh','Rajasthan',811),('Churu','Rajasthan',812),('Dausa','Rajasthan',813),('Dholpur','Rajasthan',814),('Devgarh','Rajasthan',815),('Dungarpur','Rajasthan',816),('Falna','Rajasthan',817),('Fatehpur','Rajasthan',818),('Ganganagar','Rajasthan',819),('Hanumangarh','Rajasthan',820),('Harsawa','Rajasthan',821),('Jaipur','Rajasthan',822),('Jaisalmer','Rajasthan',823),('Jaitaran','Rajasthan',824),('Jalore','Rajasthan',825),('Jhalawar','Rajasthan',826),('Jhunjhunu','Rajasthan',827),('Jodhpur','Rajasthan',828),('Karauli','Rajasthan',829),('Kota','Rajasthan',830),('Lachhmangarh','Rajasthan',831),('Ladnu','Rajasthan',832),('Lakheri','Rajasthan',833),('Lalsot','Rajasthan',834),('Losal','Rajasthan',835),('Mahwa','Rajasthan',836),('Makrana','Rajasthan',837),('Malpura','Rajasthan',838),('Mandalgarh','Rajasthan',839),('Mandawa','Rajasthan',840),('Mangrol','Rajasthan',841),('Merta City','Rajasthan',842),('Mount Abu','Rajasthan',843),('Nadbai','Rajasthan',844),('Nagar','Rajasthan',845),('Nagaur','Rajasthan',846),('Nargund','Rajasthan',847),('Nasirabad','Rajasthan',848),('Nathdwara','Rajasthan',849),('Navalgund','Rajasthan',850),('Nawalgarh','Rajasthan',851),('Neem-Ka-Thana','Rajasthan',852),('Nelamangala','Rajasthan',853),('Nimbahera','Rajasthan',854),('Niwai','Rajasthan',855),('Nohar','Rajasthan',856),('Nokha','Rajasthan',857),('Pali','Rajasthan',858),('Phalodi','Rajasthan',859),('Phulera','Rajasthan',860),('Pilani','Rajasthan',861),('Pilibanga','Rajasthan',862),('Pindwara','Rajasthan',863),('Pipar City','Rajasthan',864),('Prantij','Rajasthan',865),('Pratapgarh','Rajasthan',866),('Rajsamand','Rajasthan',867),('Sawai Madhopur','Rajasthan',868),('Sikar','Rajasthan',869),('Sirohi','Rajasthan',870),('Tonk','Rajasthan',871),('Udaipur','Rajasthan',872),('Aldona','Goa',873),('Curchorem Cacora','Goa',874),('Goa Velha','Goa',875),('Madgaon','Goa',876),('Mapusa','Goa',877),('Margao','Goa',878),('Marmagao','Goa',879),('North Goa','Goa',880),('Panaji','Goa',881),('South Goa','Goa',882),('Almora','Uttarakhand',883),('Bageshwar','Uttarakhand',884),('Bazpur','Uttarakhand',885),('Berinag','Uttarakhand',886),('Chamoli','Uttarakhand',887),('Chamba','Uttarakhand',888),('Champawat','Uttarakhand',889),('Chaukori','Uttarakhand',890),('Dehradun','Uttarakhand',891),('Haldwani','Uttarakhand',892),('Haridwar','Uttarakhand',893),('Jaspur','Uttarakhand',894),('Kanda','Uttarakhand',895),('Kashipur','Uttarakhand',896),('kichha','Uttarakhand',897),('Kotdwara','Uttarakhand',898),('Manglaur','Uttarakhand',899),('Mussoorie','Uttarakhand',900),('Nagla','Uttarakhand',901),('Nainital','Uttarakhand',902),('Pauri','Uttarakhand',903),('Pithoragarh','Uttarakhand',904),('Rudraprayag','Uttarakhand',905),('Tehri Garhwal','Uttarakhand',906),('Udham Singh Nagar','Uttarakhand',907),('Uttarkashi','Uttarakhand',908),('Dibang Valley','Arunachal Pradesh',909),('East Kameng','Arunachal Pradesh',910),('East Siang','Arunachal Pradesh',911),('Kurung Kumey','Arunachal Pradesh',912),('Lohit','Arunachal Pradesh',913),('Lower Dibang Valley','Arunachal Pradesh',914),('Lower Subansiri','Arunachal Pradesh',915),('Papum Pare','Arunachal Pradesh',916),('Tawang','Arunachal Pradesh',917),('Tirap','Arunachal Pradesh',918),('Upper Siang','Arunachal Pradesh',919),('Upper Subansiri','Arunachal Pradesh',920),('West Kameng','Arunachal Pradesh',921),('West Siang','Arunachal Pradesh',922),('Amarpur','Bihar',923),('Araria','Bihar',924),('Areraj','Bihar',925),('Arrah','Bihar',926),('Arwal','Bihar',927),('Asarganj','Bihar',928),('Aurangabad','Bihar',929),('Bagaha','Bihar',930),('Bahadurganj','Bihar',931),('Bairgania','Bihar',932),('Bakhtiarpur','Bihar',933),('Banka','Bihar',934),('Banmankhi Bazar','Bihar',935),('Barahiya','Bihar',936),('Barauli','Bihar',937),('Barbigha','Bihar',938),('Barh','Bihar',939),('Begusarai','Bihar',940),('Behea','Bihar',941),('Bettiah','Bihar',942),('Bhabua','Bihar',943),('Bhagalpur','Bihar',944),('Bhojpur','Bihar',945),('Bihar Sharif','Bihar',946),('Bikramganj','Bihar',947),('Bodh Gaya','Bihar',948),('Buxar','Bihar',949),('Chandan Bara','Bihar',950),('Chanpatia','Bihar',951),('Chhapra','Bihar',952),('Colgong','Bihar',953),('Dalsinghsarai','Bihar',954),('Darbhanga','Bihar',955),('Daudnagar','Bihar',956),('Dehri-on-Sone','Bihar',957),('Dighwara','Bihar',958),('Dumraon','Bihar',959),('East Champaran','Bihar',960),('Fatwah','Bihar',961),('Forbesganj','Bihar',962),('Gaya','Bihar',963),('Gogri Jamalpur','Bihar',964),('Gopalganj','Bihar',965),('Hajipur','Bihar',966),('Hilsa','Bihar',967),('Hisua','Bihar',968),('Islampur','Bihar',969),('Jagdispur','Bihar',970),('Jamalpur','Bihar',971),('Jamui','Bihar',972),('Jehanabad','Bihar',973),('Jhajha','Bihar',974),('Jhanjharpur','Bihar',975),('Jogabani','Bihar',976),('Kaimur','Bihar',977),('Kanti','Bihar',978),('Katihar','Bihar',979),('Khagaria','Bihar',980),('Kharagpur','Bihar',981),('Kishanganj','Bihar',982),('Lakhisarai','Bihar',983),('Lalganj','Bihar',984),('Madhepura','Bihar',985),('Madhubani','Bihar',986),('Maharajganj','Bihar',987),('Mahnar Bazar','Bihar',988),('Makhdumpur','Bihar',989),('Maner','Bihar',990),('Manihari','Bihar',991),('Marhaura','Bihar',992),('Masaurhi','Bihar',993),('Mirganj','Bihar',994),('Mohania','Bihar',995),('Mokama','Bihar',996),('Mokameh','Bihar',997),('Motihari','Bihar',998),('Motipur','Bihar',999),('Munger','Bihar',1000);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloudpayments`
--

DROP TABLE IF EXISTS `cloudpayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cloudpayments` (
  `id` int NOT NULL,
  `tenantid` varchar(200) NOT NULL,
  `paydt` varchar(200) DEFAULT NULL,
  `month` int unsigned DEFAULT NULL,
  `year` int unsigned DEFAULT NULL,
  `services` varchar(8000) NOT NULL,
  `rates` varchar(8000) NOT NULL,
  `susage` varchar(8000) NOT NULL,
  `rents` varchar(8000) NOT NULL,
  `total` float NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloudpayments`
--

LOCK TABLES `cloudpayments` WRITE;
/*!40000 ALTER TABLE `cloudpayments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloudpayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-16 07:47:22.994770'),(2,'auth','0001_initial','2023-02-16 07:47:27.963155'),(3,'admin','0001_initial','2023-02-16 07:47:29.463046'),(4,'admin','0002_logentry_remove_auto_add','2023-02-16 07:47:29.947386'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-16 07:47:30.949270'),(6,'contenttypes','0002_remove_content_type_name','2023-02-16 07:47:32.290696'),(7,'auth','0002_alter_permission_name_max_length','2023-02-16 07:47:32.870241'),(8,'auth','0003_alter_user_email_max_length','2023-02-16 07:47:33.425059'),(9,'auth','0004_alter_user_username_opts','2023-02-16 07:47:33.772772'),(10,'auth','0005_alter_user_last_login_null','2023-02-16 07:47:34.327590'),(11,'auth','0006_require_contenttypes_0002','2023-02-16 07:47:34.644058'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-16 07:47:34.998290'),(13,'auth','0008_alter_user_username_max_length','2023-02-16 07:47:35.678110'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-16 07:47:36.264176'),(15,'auth','0010_alter_group_name_max_length','2023-02-16 07:47:36.881517'),(16,'auth','0011_update_proxy_permissions','2023-02-16 07:47:37.799683'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-16 07:47:38.370102'),(18,'sessions','0001_initial','2023-02-16 07:47:39.241384');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('02iqxh8egurmallw37aiy6yq97hw1inn','.eJyrViotTi1SsqoG05kpSlZKiSm5mXlKOkqlJZUFqch8oIK8xFy4kIOhkbFSbS0A6JYV4A:1pTG7z:xys1nDkrBIz--I3tzXGLrd6E4y658HPEb50DbsCYQqg','2023-03-04 05:51:20.015962'),('23lwa3ili47oyi8ray23qe7q208q2z75','e30:1pSexy:hnN_Hf6XvCcV7S_CABw_5PoQnAZO7h0K50mrLii-K7I','2023-03-02 14:10:30.273654'),('4rqmvfuxwh363f8vujmzcsca680itlbs','eyJ1c2VyaWQiOiJhZG1pbiJ9:1pScpe:wModUEzXjxj3Y1r-bTYEE2smt5VEM5Nlt-4hoKfy_4U','2023-03-02 11:53:46.085669'),('acc5quzdqpek1q0l3sd9hzlxm53tjkqu','e30:1pg4wk:AqnTuMBpu3nS6sSay-GzoCvaQCwR03tnXKzU6x4_N4Q','2023-04-08 14:32:42.302726'),('fr7pknlc3qqhz59uwq1dwaiofzatcajs','e30:1pSfbY:wRjf1ov72o-06X041DTY309Gpcw6iR4hWVyIboRZ0S8','2023-03-02 14:51:24.261862'),('m80jc7yi16hsgld25ruwdl64qj8u6ziq','.eJyrViotTi1SsqoG05kpSlZKxRmZZYkOhkbGSjpKpSWVBalAMbAiHTCVl5gLEgkGqVKqrQUAxl8Vmg:1parzv:SoN2OHwJUxGaQdQNOfgnVQtkxJYuJD28DJDYjBBuVjk','2023-03-25 05:42:27.416107'),('r56pao5x6to0u86ydau70rpamr57gkan','.eJyrViotTi3KTFGyUipJLS5R0gHzlayqMcVLKgtSgVywPERZXmJuKkxBrY5Sam5iZg5YS3FBZkpqUUFRflZqckmxoUM6SEYvOT8XqDG_pACowtDI1ECpFgCUaioN:1pgUl2:xG2jeaW3AsAq1M5H98744clNNZdqBX7UMaztvu4ro00','2023-04-09 18:06:20.301615'),('z3j85a52l8su1136mmgt2b06kkxgkrc9','.eJyrViotTi1SsqoG05kpSlZKKZkFSjpKpSWVBalAHlhaB0zlJeaCRLITyxOLUg2NjJVqawGkjRT8:1pbfYP:8zPFipQ1zk66uXaCoOAsu72RsXoP_WAjcfFfi9wwOYk','2023-03-27 10:37:21.134179');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `docid` int NOT NULL,
  `dhash` longblob,
  `userid` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `docdesc` varchar(200) DEFAULT NULL,
  `dt` varchar(200) DEFAULT NULL,
  `tm` varchar(200) DEFAULT NULL,
  `skey` longblob,
  `filepath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1001,_binary 'NA','test','adsf','dasf','26/03/2023','20:31:26',_binary '�\��\�\�}T8���Aq','1001.jfif'),(1002,_binary 'NA','test','asdf','asdf','26/03/2023','21:05:33',_binary 'e\�p�	~1�\�v�LR','1002.jfif'),(1003,_binary 'NA','test','asdf','asdf','26/03/2023','21:10:55',_binary 'u\�(=��q\�\�!\��J','1003.jfif'),(1004,_binary 'NA','test','asdf','asdf','26/03/2023','21:11:13',_binary '\��^HQ�<\�|�A��\�','1004.jfif'),(1005,_binary 'NA','test','asdf','asdf','26/03/2023','21:12:23',_binary '\�#�WL�IcK\�','1005.jfif'),(1006,_binary 'NA','test','sss','df','26/03/2023','23:34:10',_binary '�\��5��\�S�0���','1006.jfif');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog` (
  `logid` int NOT NULL,
  `logindt` varchar(100) DEFAULT NULL,
  `loginmonth` int DEFAULT NULL,
  `loginyear` int DEFAULT NULL,
  `userid` varchar(80) DEFAULT NULL,
  `logintype` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `serviceId` int NOT NULL,
  `service` varchar(200) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  PRIMARY KEY (`serviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statemaster`
--

DROP TABLE IF EXISTS `statemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statemaster` (
  `state` varchar(200) NOT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statemaster`
--

LOCK TABLES `statemaster` WRITE;
/*!40000 ALTER TABLE `statemaster` DISABLE KEYS */;
INSERT INTO `statemaster` VALUES ('Andhra Pradesh'),('Arunachal Pradesh'),('Assam'),('Bihar'),('Chandigarh'),('Chhattisgarh'),('Dadra and Nagar Haveli'),('Daman and Diu'),('Delhi'),('Goa'),('Gujarat'),('Haryana'),('Himachal Pradesh'),('Jammu and Kashmir'),('Jharkhand'),('Karnataka'),('Kerala'),('Lakshadweep'),('Madhya Pradesh'),('Maharashtra'),('Mizoram'),('Orissa'),('Punjab'),('Rajasthan'),('Tamil Nadu'),('Tripura'),('Uttar Pradesh'),('Uttarakhand'),('West Bengal');
/*!40000 ALTER TABLE `statemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usagelog`
--

DROP TABLE IF EXISTS `usagelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usagelog` (
  `logid` int NOT NULL,
  `userid` varchar(80) DEFAULT NULL,
  `action` varchar(200) DEFAULT NULL,
  `actiondt` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usagelog`
--

LOCK TABLES `usagelog` WRITE;
/*!40000 ALTER TABLE `usagelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `usagelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `mobileno` varchar(10) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES ('dip','kaware123','user','Daryapur','444803','7709175374','kawaredip2609@gmail.com','2001-09-26','Male','active','download.png','Akot','Maharashtra'),('dip123','Dipkaware12345','user','Daryapur','444803','7709175374','kawaredip2609@gmail.com','2004-08-26','Male','active','download.png','Akola','Maharashtra'),('Dipkaware','Dipkaware','user','Daryapur','444803','7709175374','kawaredip2609@gmail.com','2002-02-22','Male','active','download.png','Achalpur','Maharashtra'),('Dipkaware1234','Dipkaware1234','user','Daryapur','444803','9067928016','kawaredip2609@gmail.com','2001-09-26','Male','active','download.png',NULL,'Maharashtra'),('jasmin','Jasmin','user','amt','444605','9878765654','jasmin@gmail.com','1990-12-12','Female','active','download.png','Achalpur','Maharashtra'),('shefali','shefali','user','amt','444605','9878765654','spiderprojects1@gmail.com','1990-12-12','Female','active','Hospital-Bill-Receipt-Format.webp','Amravati','Maharashtra'),('shiva@123','shiva','user','non','12356','7767036000','pranavbale99@gmail.com','2023-03-16','Male','active','download.png','Amravati','Maharashtra'),('test','test','user','amt','444605','9878765654','spiderprojects1@gmail.com','1990-12-12','Male','active','download.png','Amravati','Maharashtra'),('test1','test','user','amt','444605','9878765654','spiderprojects1@gmail.com','1990-12-12','Male','active','download.png',NULL,'Maharashtra'),('test11','test','user','amt','444605','9878765654','spiderprojects1@gmail.com','1990-12-12','Male','active','download.png',NULL,'Maharashtra'),('test111','test','user','amt','444605','9878765654','spiderprojects1@gmail.com','1990-12-12','Male','active','download.png',NULL,'Maharashtra');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` varchar(30) NOT NULL,
  `usernm` varchar(40) DEFAULT NULL,
  `pswd` varchar(30) DEFAULT NULL,
  `usertype` varchar(30) DEFAULT NULL,
  `userstatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','administrator','admin@123','admin','active'),('dip','kaware123','kaware123','user','active'),('dip123','Dipkaware12345','Dipkaware12345','user','active'),('Dipkaware','Dipkaware','Dipkaware@123','user','active'),('Dipkaware1234','Dipkaware1234','KK@123','user','active'),('jasmin','Jasmin','test','user','active'),('shefali','shefali','test','user','active'),('shiva@123','shiva','Shiva','user','active'),('test','test','test','user','active'),('test1','test','sdf','user','active'),('test11','test','test','user','active'),('test111','test','test','user','active');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bvj67gg8fecwpx9he6wn'
--

--
-- Dumping routines for database 'bvj67gg8fecwpx9he6wn'
--
/*!50003 DROP PROCEDURE IF EXISTS `insertDoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ud6sj5ow3oyzcj4b`@`%` PROCEDURE `insertDoc`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
,docdesc1 varchar(300),in key1 varchar(200),in docpath1 varchar(200))
begin
declare mxid integer;
 
set mxid=(select ifnull(max(docid),1000) from documents);
set mxid=mxid+1;
insert into documents values(mxid,'NA',userid1,title1,docdesc1 ,dt1,tm1,aes_encrypt(key1,mxid),docpath1);
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ud6sj5ow3oyzcj4b`@`%` PROCEDURE `insertUser`(in userid1 varchar(200),in pass1 varchar(200), in userName1 varchar(200), in mob varchar(30), in emailId varchar(200)
,city1 varchar(200),state1 varchar(200),in gender1 varchar(200),in addr1 varchar(200),in dob1 varchar(200),in pincode1 varchar(200),in photo1 varchar(200))
begin
insert into userdetails values(userid1,userName1,'user',addr1,pincode1,mob,emailId,dob1,gender1,'active',photo1,city1,state1);
insert into users values(userid1,userName1,pass1,'user','active'); 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userlogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`ud6sj5ow3oyzcj4b`@`%` PROCEDURE `userlogin`(in userid1 varchar(200),in pass1 varchar(200))
begin
select *  from users where userid=userid1 and pswd=pass1 and userstatus='active';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27  1:40:48
