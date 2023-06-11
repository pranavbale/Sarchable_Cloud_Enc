CREATE DATABASE  IF NOT EXISTS `searchable_enc_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `searchable_enc_db`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bvj67gg8fecwpx9he6wn
-- ------------------------------------------------------
-- Server version	8.0.29

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
-- Table structure for table `documentcontent`
--

DROP TABLE IF EXISTS `documentcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentcontent` (
  `id` int NOT NULL,
  `docid` int DEFAULT NULL,
  `docstr` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentcontent`
--

LOCK TABLES `documentcontent` WRITE;
/*!40000 ALTER TABLE `documentcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentcontent` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents1`
--

DROP TABLE IF EXISTS `documents1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents1` (
  `docid` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `docDesc` varchar(500) DEFAULT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `docpath` varchar(200) DEFAULT NULL,
  `dt` varchar(50) DEFAULT NULL,
  `tm` varchar(50) DEFAULT NULL,
  `doctype` varchar(200) DEFAULT NULL,
  `docData` longblob,
  `category` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents1`
--

LOCK TABLES `documents1` WRITE;
/*!40000 ALTER TABLE `documents1` DISABLE KEYS */;
INSERT INTO `documents1` VALUES (1001,'Ecommerce Model','Ecommerce','admin','1001.pdf','2023-03-27','10:55:45','DataSetDoc',_binary 'b\'A Reliable E-commerce Business Model Using Blockchain Based Product Grading System A Reliable E-commerce Business Model Using Blockchain Based Product Grading System Ching-Nung Yang Dept. of Computer Science & Information Engineering National Dong Hwa University Hualien, Taiwan e-mail: cnyang@gms.ndhu.edu.tw Yi-Cheng Chen, Shih-Yu Chen, Song-Yu Wu Dept. of Computer Science & Information Engineering National Dong Hwa University Hualien, Taiwan e-mail: 610721225@gms.ndhu.edu.tw Abstract4The first step in online shopping is, apparently, to choose a reliable supplier. However, consumers and merchants may have different perceptions of product quality, and this may result in business disputes. The dispute about buying inferior goods may be caused from simple product photos or merchants make over the top claims about their products. This dispute problem cannot be resolved completely, even though customers choose reputable e-commerce companies, e.g., Amazon.com and Alibaba.com. In the final analysis, the cause is that e-commerce companies do not adopt quality rating to evaluate products. If there is an alliance, among e-commerce companies and trusted organizations, which establishes credible product grading system (PGS), online shoppers may buy genuine product at a fair price from this e-commerce alliance. In this paper, we propose blockchain based PGS (BPGS) to deal with big data for this business model. The blockchain is a decentralized technology, and thus we can speed up the verification of product grading. In addition, for the proposed BPGS, 51% of attacks cannot be completed unless 51% of merchants and e-commerce companies in this alliance are simultaneously compromised. Therefore, our e-commerce environment based on BPGS is not only reliable but also secure. Keywords- e-commerce; product grading system; blockchain; smart contract I. INTRODUCTION In 2017, an estimated 1.66 billion people worldwide purchase goods online, from online retailing corporations such as, Amazon.com, Alibaba.co, and JD.com. During the same year, global e-commerce sales amounted to 2.3 trillion U.S. dollars. Recently, more and more customers are fascinated with online shopping activities, e.g., the very famous cDouble 11d shopping carnival. The Double 11 is originated from cTaobao Mall Promotion Dayd held by the Chinese e-commerce company Alibaba on November 11, 2009, and it is a day when Chinese people go on massive Internet shopping carnival because many online stores offer huge discounts on this day. Now, Double 11 has evolved into an annual shopping spree, and affects the global retail industry. The above implies that e-commerce is very important for our daily life. There are many online shoppers now shopping via their smartphone weekly, and this already becomes their main shopping way. Obviously, the first step in online shopping is to choose a reliable supplier, such that we can buy genuine products at a reasonable price. This is why many online shoppers get inspiration for purchasing from social networks. Via social circle, they try to insure the product quality and hope that the product is worth the price they paid. It seems that we are now entering the era of social shopping. However, there are many online shopping scams via social network, e.g., scammers pretend to be legitimate online sellers, either with a fake social account (Facebook, Line, or Wechat). Even though online shoppers choose reputable e-commerce companies, this dispute problem cannot be resolved completely. Because consumers and suppliers may have different perceptions of product quality. To completely, solve this problem, in this paper, we form an alliance including e-commerce companies and trusted organizations to establish a credible product grading system (PGS). Based on the PGS, customers may buy products with high grades to insure product quality. To efficiently and securely to deal with such big data for product grading, we adopt a decentralized blockchain technology [1]. The structure of this paper is as follows. Section 2 discusses background information about blockchain and smart contract. Analysis of current situation and motivation are described in Section 3. Section 4 describes how Ethereum smart contracts were designed to implement the proposed BPGS, on which a more reliable and secure e-commerce business model is achieved. Conclusion is drawn in Section 5. II. BACKGROUND A. Blockchain Technology The basic concept of blockchain was proposed by Nakamoto Satoshi [1]. Blockchain is a decentralized database using cryptographic technology to generate associated blocks, where each block records full transactions over a period of time. Each node contains a complete historical block, and even if one node is modified, it will not affect the verification of entire blockchain. The blockchain information is public, and anyone can search the chain for historical trading information. Blockchains require miners, when any node in blockchain generates a transaction, the transaction is broadcast to each miner, and all miners may verify the transaction through the proof of work mechanism [2]. Blockchain has the following main features: (i) the ability of anti-modification (ii) the ability of tolerance 3412019 the 4th IEEE International Conference on Big Data Analytics978-1-7281-1282-4/19/$31.00 \\xc2\\xa92019 IEEE as some nodes are faulty (iii) the ability of reaching collaborative trust among nodes in this distributed peer-to-peer system without the third-party certification agency (iv) the ability of accessing information of blockchain at any node in this network. A blockchain consists of continuous blocks, each block records and stores serial transections as a Merkle root by using Merkle tree algorithm in a period of time, and every block after the first block (called genesis block) has a cryptographic hash value of previous block (called parent block). All these hashed values are assembled into a chain, as shown in Fig. 1. hash of block n 1block n block n+1 block n+2transactionstimestamp... ...hash of block nhash of block n+1transactionstimestamptransactionstimestamp Figure 1. Construction of blockchain. On the other hand, the private blockchain [3] has no mining mechanism and miner9s role, because the private chain is usually used as a network within company, organization and members. For example, IBM blockchain platform provides a private chain for more than 400 cooperatives, Walmart offers solutions that provide traceability of food tracking through blockchains to make food supply chain safety, and Maersk builds a global platform to achieve efficient transportation. In fact, the blockchain is widely used in various intended applications, e.g., in Internet of Things [4-7], or use for small mobile payments [8], cloud computing [9], digital certificate [10, 11] and other application scenarios. B. Ethereum and Smart Contract The Ethereum virtual machine (EVM) is designed based on a peer-to-peer network protocol. Anyone can participate in the network and play the role of a verifier, i.e., a miner, which is a basic element in EVM. This virtual machine is an environment that runs smart contracts, which the term smart contract was first introduced by Szabo in 1994, where the smart contract is defined as ca computerized transaction protocol that executes the terms of a contractd [12]. Precisely, smart contracts are compiled as bytecodes and executed in EVM through the computer of miners, which is very similar to Java executed in Java Virtual Machine (JVM). When the smart contract operates, it must be packaged by the miner, and written into the blockchain. Each blockchain in Ethereum has various functions and purposes. We can develop intended applications in Ethereum by writing a smart contract [13-15]. Compared with traditional contract, a smart contract is an executable code stored and running in blockchain. The smart contract may execute independently and automatically without third parties, and these running results are irreversible on blockchain and are trackable by each participant. The main features of smart contract are given as follows [15]. The smart contract has stability that a smart contract has deterministic feature: the same input always produces the same output. Because smart contracts are executable codes stored in block chain, every network participant can inspect them. Meanwhile, all the interactions with a smart contract occur via signed messages on the blockchain (see Fig. 1), and thus every participant may verify and trace the contract9s operations. III. SITUATION ANALYSIS AND MOTIVATION A. Analysis of Current Situation The online shopping has been on the rise. Because consumers and suppliers may have different perceptions of product quality, this may result in business disputes. Generally, the dispute about buying inferior goods is caused by the difficulty in distinguishing qualities of goods via simple product photos, advertisements that merchants make over the top claims about products, or online shopping scams via social media. Good consumption experiences may make customers buy more products, and it is a positive cycle in online shopping environment. This is a simplified and obvious observation, but how to easily buy genuine goods at a reasonable price from online shopping is a big challenge for both customer and e-commerce company. In this paper, we give it careful consideration. B. Motivation Some e-commerce companies already have the scheme to expand seller9s business. For example, on Alibaba.com, seller may apply Gold Supplier (GS) membership in Alibaba.com. All suppliers who are interested in doing business with buyers worldwide, can apply GS membership. Through authentication and verification by Alibaba.com, sellers may gain more trust from buyers, and promote their products to maximize product exposure on Alibaba.com. Of course, GS must pass some checks by Alibaba.com to approve their membership, which should be updated every year. The GS membership is only authenticated and verified for supplier. The proposed PGS is motivated from GS membership, but further apply authentication and verification on products rather than on sellers. In addition, GS is a paid membership only used in Alibaba.com. In the proposed PGS, we form an alliance including e-commerce companies and trusted organizations to finish product grading. After approval, suppliers are authorized to display the score of PGS (an icon to demonstrate their qualities of products). Because an alliance includes more than one e-commerce company, the PGS impacts widely in e-commerce environment than GS. Therefore, using PGS may create more awareness and give more exposure to the products. PGS is a better way to insure product quality (as we know, even famous sellers may have poor products), or rather PGS is a best way to resolve dispute problem in online shopping environment. However, compared with the number of sellers, the number of products from all suppliers will be so huge. Therefore, in this paper, we adopt blockchain, a decentralized technology, to deal with such big data for 342 product grading. In the proposed BPGS, 51% of attacks cannot be completed unless 51% of e-commerce companies and trusted organizations in this alliance are simultaneously compromised. Therefore, our business model based on BPGS is not only reliable but also secure. IV. DESIGN AND IMPLEMENTATION OF BPGS BY SMART CONTRACT At the present, Ethereum is the most popular public blockchain platform for developing smart contracts, since it provides a built-in language called Solidity, which is a contract-oriented language that can be applied to deploy contracts to the EVM. In this section, we implement the proposed BPGS by using Remix to write Solidity smart contracts. A. Framework Fig. 2 illustrates the block diagram of the proposed BPGS in e-commerce business model. Suppliers provide products to the alliance, which includes e-commerce companies and trusted organizations (e.g., Consumers International, a non-profit organization), for product grading. After verification and product grading, the manager of alliance writes the data into a new block on the blockchain via operating smart contracts. Based on the proposed BPGS, customers may buy products with high grades to insure product quality. The information of the blockchain cannot be modified, and thus customers can trust the product grade. Meanwhile, the blockchain is a decentralized technology, and thus buyers can finish the verification of product grading via the BPGS efficiently and securely. Finally, customers may purchase goods in a reliable and secure online shopping environment. : e-commerce company...Alliance: trusted organization: sellers product: buyer: smart contract: graded producthash of block ntransactionstimestamp...Alliance Figure 2. Block diagram of BPGS in e-commerce bussines model. B. Implementation Details We have implemented a prototype consisting of four different smart contracts in Figs. 3~6. As shown in Fig. 3, cProductGraded is used for storing product information, product grade, and the information of valuators. Note: N valuators are the members in this alliance (e-commerce company or trusted organization), and are assigned by the manager of this alliance. And, finally all information of product, valuators, and the score are recorded in the events: Send_info, Send_result, and Send_list. The code in Fig. 4 demonstrates that the constructor of smart contract is set as the manager of this alliance. When the manager and the valuator in this alliance want to carry out functions, e.g., the manage would like to assig some members as valuators, or the valuator wants to grade the product. They should be verified through CheckManager() and CheckValuator(). Figure 3. Information of product, grade, and valuator in smart contract. Figure 4. Verfication of manager and valuator in smart contract. The function AssignVaulator() in Fig. 5 is used for that the manage would like to assign some members as valuators. As show in Fig. 5, this function includes CheckManager(), such that only the manager can apply this function. Other two functions Store() and LoadData() in Fig. 5 store the information of product and supplier, on which valuators may grade thes products. To make sure that only valuators may apply the grading process, this function includes CheckValuator(). 343 Figure 5. Functions in smart contract. Fig. 6 is the grading process cGraded function. For grading products, all the scores of N valuators will be given and summarized by valuators, and then return the score to Send_result. Figure 6. Product grading in smart contract. V. CONCLUSION Motivated from the concept of Gold Supplier in Alibaba.com., we apply the grading system on products rather than on suppliers. Meanwhile, for dealing with huge verification and grading for products, we adopt blockchain, a decentralized technology, to deal with such big data for product grading. We design and implement the BPGS by smart contracts. Finally, our business model based on BPGS is reliable, efficient, and secure. ACKNOWLEDGMENT This work was partially supported by Ministry of Science and Technology, under Grant MOST 107-2221-E-259-007. REFERENCES [1] S. Nakamoto, cBitcoin: A Peer-to-Peer Electronic Cash System,d, 2008, available at https://bitcoin.org/bitcoin.pdf. [2] C. Dwork and M. Naor, cPricing via Processing or Combatting Junk Mail,d Crypto992, LNCS 740, pp. 139-147,1993. [3] Z. Zheng, S. Xie, H. Dai, X. Chen, and H. Wang, cAn Overview of Blockchain Technology: Architecture, Consensus, and Future Trends,d 2017 IEEE International Congress on Big Data (BigData Congress), pp. 557-564, 2017. [4] K. Christidis and M. Devetsikiotis, cBlockchains and Smart Contracts for the Internet of Thingsd. IEEE Access, Vol.4, pp. 2292-2303, 2016. [5] N. Kshetri, cCan Blockchain Strengthen the Internet of Things?,d IT Professional, Vol. 19, pp. 68-72, 2017. [6] D. Miller, cBlockchain and the Internet of Things in the Industrial Sector,\" IT Professional,d Vol. 20, pp. 15-18, 2018. [7] R. Li, T. Song, B. Mei, H. Li, X. Cheng, and L. Sun, cBlockchain for Large-Scale Internet of Things DataStorage and Protection,d IEEE Transactions on Services Computing, doi: 10.1109/TSC.2018. 2853167, 2018. [8] A. Xu, M. Li, X. Huang, N. Xue, J. Zhang, and Q. Sheng, cA Blockchain Based Micro Payment System for Smart Devices,d International Journal of Design, Analysis and Tools for Integrated Circuits and Systems (IJDATICS), 2016. [9] Jin Ho Park, Jong Hyuk Park, cBlockchain Security in Cloud Computing: Use Cases, Challenges, and Solutionsd, Symmetry, 9, 164; doi:10.3390/sym9080164, 2017. [10] H. Orman, cBlockchain: the Emperors New PKI?,d IEEE Internet Computing, Vol. 22, pp. 23-28, 2018. [11] E. Karaarslan and E. Adiguzel, cBlockchain Based DNS and PKI Solutions,d IEEE Communications Standards Magazine, Vol. 2, pp. 52-57, 2018. [12] N. Szabo, cSmart Contracts,d 1994, available at http://www. fon.hum. uva.nl/rob/Courses/InformationInSpeech/CDROM/Literature/LOTwinterschool2006/szabo.best.vwh.net/smart.contracts.html. [13] D. Magazzeni and P. McBurney, cValidation and Verification of Smart Contracts: A Research Agenda,d Computer, Vol. 50, pp. 50-57, 2017. [14] V. Buterin, cEthereum White Paper: A Next Generation Smart Contract & Decentralized Application Platform,d 2013, at http:// blockchainlab.com/pdf/Ethereum_white_paper-a_next_generation_ smart_contract_and_decentralized_application_platform-vitalik-buterin.pdf. [15] C. Braghin, S. Cimato, E. Damiani, and M. Baronchellli, cDesigning smart-contract based auctions,d The 2nd International Conference on Security with Intelligent Computing and Big-data Services (SICBS 2018), Guilin, China, Dec., 2018. 344\'','NA');
/*!40000 ALTER TABLE `documents1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `keyw` varchar(9000) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `docid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (28672,'reliable e-commerce business model using blockchain based product grading system ching-nung yang dept',75.9542,1001),(28673,'estimated 1.66 billion people worldwide purchase goods online',44.6667,1001),(28674,'reliable e-commerce business model using blockchain based product grading system',41.9542,1001),(28675,'even though online shoppers choose reputable e-commerce companies',41.5244,1001),(28676,'good consumption experiences may make customers buy',37.2095,1001),(28677,'even though customers choose reputable e-commerce companies',36.0005,1001),(28678,'block n+1 block n+2transactionstimestamp ... ... hash',35.1667,1001),(28679,'many online shopping scams via social network',30.5069,1001),(28680,'many online stores offer huge discounts',28.9167,1001),(28681,'online shopping scams via social media',28.2569,1001),(28682,'smart contract occur via signed messages',27.5808,1001),(28683,'online shoppers may buy genuine product',25.4961,1001),(28684,'ctaobao mall promotion dayd held',25,1001),(28685,'many online shoppers get inspiration',24.9167,1001),(28686,'blockchain based micro payment system',22.4477,1001),(28687,'famous cdouble 11d shopping carnival',22.3125,1001),(28688,'establishes credible product grading system',21.5587,1001),(28689,'decentralized database using cryptographic technology',20.6032,1001),(28690,'goods via simple product photos',19.9739,1001),(28691,'block ntransactionstimestamp ... alliance figure 2',19.4833,1001),(28692,'reaching collaborative trust among nodes',19.3333,1001),(28693,'make food supply chain safety',19.2667,1001),(28694,'smart contract may execute independently',18.9364,1001),(28695,'customers may purchase goods',17.9429,1001),(28696,'easily buy genuine goods',17.5,1001),(28697,'blockchain via operating smart contracts',17.4089,1001),(28698,'using merkle tree algorithm',17.3333,1001),(28699,'distributed peer-to-peer system without',17.2222,1001),(28700,'peer-to-peer electronic cash system',17.2222,1001),(28701,'seller may apply gold supplier',16.9667,1001),(28702,'credible product grading system',16.5587,1001),(28703,'thus every participant may verify',16.55,1001),(28704,'cdesigning smart-contract based auctions',16.3333,1001),(28705,'using pgs may create',16.1333,1001),(28706,'automatically without third parties',16,1001),(28707,'even famous sellers may',15.6333,1001),(28708,'secure e-commerce business model',15.3145,1001),(28709,'buying inferior goods may',15.3,1001),(28710,'many online shoppers',14.9167,1001),(28711,'ieee communications standards magazine',14.8571,1001),(28712,'global e-commerce sales amounted',14.8077,1001),(28713,'valuators may grade thes products',14.7222,1001),(28714,'customers may buy products',14.6651,1001),(28715,'e-commerce company ... alliance',14.4577,1001),(28716,'built-in language called solidity',14.3333,1001),(28717,'chinese e-commerce company alibaba',14.141,1001),(28718,'song-yu wu dept',14,1001),(28719,'alliance including e-commerce companies',13.6744,1001),(28720,'massive internet shopping carnival',13.6696,1001),(28721,'business model based',13.6402,1001),(28722,'section 2 discusses background information',13.55,1001),(28723,'write solidity smart contracts',13.4056,1001),(28724,'4th ieee international conference',13.1571,1001),(28725,'next generation smart contract',13.1364,1001),(28726,'e-commerce business model',13.1145,1001),(28727,'grading process cgraded function',13.0737,1001),(28728,'gms.ndhu.edu.tw abstract4the first step',13,1001),(28729,'block records full transactions',13,1001),(28730,'propose blockchain based pgs',12.8922,1001),(28731,'secure online shopping environment',12.3458,1001),(28732,'ibm blockchain platform provides',12.3088,1001),(28733,'popular public blockchain platform',12.3088,1001),(28734,'background a. blockchain technology',12.1144,1001),(28735,'product grading system',12.0587,1001),(28736,'2.3 trillion u.s. dollars',12,1001),(28737,'e-commerce bussines model',11.9327,1001),(28738,'four different smart contracts',11.9056,1001),(28739,'among e-commerce companies',11.6077,1001),(28740,'chinese people go',11.5,1001),(28741,'buying inferior goods',11.5,1001),(28742,'via social circle',11.2778,1001),(28743,'buy genuine products',11.0556,1001),(28744,'simple product photos',11.0294,1001),(28745,'product grading via',10.9475,1001),(28746,'e-commerce environment based',10.8077,1001),(28747,'cryptographic hash value',10.6667,1001),(28748,'stores serial transections',10.5,1001),(28749,'online shopping activities',10.4792,1001),(28750,'cpricing via processing',10.4444,1001),(28751,'includes e-commerce companies',10.3577,1001),(28752,'expand seller9s business',10.1818,1001),(28753,'online retailing corporations',10.1667,1001),(28754,'online shopping environment',10.1458,1001),(28755,'miners may verify',10.1333,1001),(28756,'e-commerce companies already',10.1077,1001),(28757,'fake social account',9.83333,1001),(28758,'peer-to-peer network protocol',9.66667,1001),(28759,'legitimate online sellers',9.5,1001),(28760,'called genesis block',9.33333,1001),(28761,'called parent block',9.33333,1001),(28762,'annual shopping spree',9.3125,1001),(28763,'business model',9.30682,1001),(28764,'2nd international conference',9.3,1001),(28765,'every network participant',9.25,1001),(28766,'sellers may gain',9.13333,1001),(28767,'grading system',9.02924,1001),(28768,'hwa university hualien',9,1001),(28769,'global retail industry',9,1001),(28770,'complete historical block',9,1001),(28771,'third-party certification agency',9,1001),(28772,'small mobile payments',9,1001),(28773,'develop intended applications',9,1001),(28774,'input always produces',9,1001),(28775,'executable codes stored',9,1001),(28776,'manage would like',9,1001),(28777,'combatting junk mail',9,1001),(28778,'// blockchainlab.com/pdf/ethereum_white_paper-a_next_generation_ smart_contract_and_decentralized_application_platform-vitalik-buterin.pdf',9,1001),(28779,'cblockchain based dns',8.93333,1001),(28780,'gms.ndhu.edu.tw yi-cheng chen',8.83333,1001),(28781,'network within company',8.83333,1001),(28782,'2017 ieee international congress',8.65714,1001),(28783,'block n+1transactionstimestamptransactionstimestamp figure 1',8.6,1001),(28784,'ccan blockchain strengthen',8.55882,1001),(28785,'finish product grading',8.5031,1001),(28786,'342 product grading',8.5031,1001),(28787,'generate associated blocks',8.5,1001),(28788,'walmart offers solutions',8.5,1001),(28789,'various intended applications',8.5,1001),(28790,'decentralized application platform',8.46429,1001),(28791,'runs smart contracts',8.40559,1001),(28792,'developing smart contracts',8.40559,1001),(28793,'using remix',8.33333,1001),(28794,'main shopping way',8.3125,1001),(28795,'updated every year',8.25,1001),(28796,'following main features',8.16667,1001),(28797,'term smart contract',8.13636,1001),(28798,'smart contract operates',8.13636,1001),(28799,'storing product information',8.11275,1001),(28800,'information engineering national',8.08333,1001),(28801,'historical trading information',8.08333,1001),(28802,'insure product quality',8.02941,1001),(28803,'maximize product exposure',8.02941,1001),(28804,'achieve efficient transportation',8,1001),(28805,'executable code stored',8,1001),(28806,'jong hyuk park',8,1001),(28807,'emperors new pki',8,1001),(28808,'valuators may apply',7.96667,1001),(28809,'java virtual machine',7.83333,1001),(28810,'decentralized blockchain technology',7.82866,1001),(28811,'shopping via',7.75694,1001),(28812,'e-commerce companies',7.60769,1001),(28813,'adopt quality rating',7.5,1001),(28814,'computerized transaction protocol',7.5,1001),(28815,'pgs impacts widely',7.5,1001),(28816,'online shopping',7.47917,1001),(28817,'function includes checkmanager',7.35,1001),(28818,'function includes checkvaluator',7.35,1001),(28819,'blockchains require miners',7.33333,1001),(28820,'cethereum white paper',7.33333,1001),(28821,'ethereum smart contracts',7.23893,1001),(28822,'ethereum virtual machine',7.16667,1001),(28823,'social shopping',7.14583,1001),(28824,'big data analytics978-1-7281-1282-4/19/',7.14286,1001),(28825,'ieee internet computing',6.91429,1001),(28826,'31.00 \\xc2\\xa92019 ieee',6.85714,1001),(28827,'gs must pass',6.85714,1001),(28828,'resolve dispute problem',6.8,1001),(28829,'two functions store',6.75,1001),(28830,'thus customers',6.64286,1001),(28831,'e-commerce company',6.64103,1001),(28832,'product grading',6.5031,1001),(28833,'v. conclusion motivated',6.5,1001),(28834,'e-commerce environment',6.47436,1001),(28835,'grading process',6.47368,1001),(28836,'every block',6.25,1001),(28837,'global platform',6.25,1001),(28838,'apply gs membership',6.19048,1001),(28839,'business disputes',6.18182,1001),(28840,'buyers worldwide',6.16667,1001),(28841,'suppliers provide products',6.12698,1001),(28842,'block records',6,1001),(28843,'e-commerce alliance',5.87436,1001),(28844,'ieee transactions',5.85714,1001),(28845,'social networks',5.83333,1001),(28846,'designed based',5.83333,1001),(28847,'keywords- e-commerce',5.80769,1001),(28848,'may result',5.8,1001),(28849,'reliable supplier',5.72222,1001),(28850,'gold supplier',5.66667,1001),(28851,'make sure',5.6,1001),(28852,'merchants may',5.55,1001),(28853,'product quality',5.52941,1001),(28854,'grading products',5.52924,1001),(28855,'first step',5.5,1001),(28856,'first block',5.5,1001),(28857,'food tracking',5.5,1001),(28858,'new block',5.5,1001),(28859,'smart contracts',5.40559,1001),(28860,'suppliers may',5.37143,1001),(28861,'sellers product',5.36275,1001),(28862,'merchants make',5.35,1001),(28863,'virtual machine',5.33333,1001),(28864,'decentralized technology',5.26984,1001),(28865,'product grade',5.22941,1001),(28866,'main features',5.16667,1001),(28867,'block chain',5.16667,1001),(28868,'smart contract',5.13636,1001),(28869,'blockchain technology',5.11438,1001),(28870,'completed unless 51',5,1001),(28871,'even',5,1001),(28872,'merkle root',5,1001),(28873,'previous block',5,1001),(28874,'block nhash',5,1001),(28875,'contract-oriented language',5,1001),(28876,'block diagram',5,1001),(28877,'a. xu',5,1001),(28878,'pki solutions',5,1001),(28879,'ieee access',4.85714,1001),(28880,'alliance includes',4.81667,1001),(28881,'section 4 describes',4.8,1001),(28882,'international journal',4.8,1001),(28883,'deploy contracts',4.76923,1001),(28884,'csmart contracts',4.76923,1001),(28885,'1. hash',4.66667,1001),(28886,'blockchain information',4.64216,1001),(28887,'smart devices',4.63636,1001),(28888,'function assignvaulator',4.6,1001),(28889,'entire blockchain',4.55882,1001),(28890,'blockchain generates',4.55882,1001),(28891,'blockchain consists',4.55882,1001),(28892,'private blockchain',4.55882,1001),(28893,'adopt blockchain',4.55882,1001),(28894,'different perceptions',4.5,1001),(28895,'already becomes',4.5,1001),(28896,'continuous blocks',4.5,1001),(28897,'provide traceability',4.5,1001),(28898,'application scenarios',4.5,1001),(28899,'first introduced',4.5,1001),(28900,'traditional contract',4.5,1001),(28901,'bigdata congress',4.5,1001),(28902,'v. buterin',4.5,1001),(28903,'shih-yu chen',4.33333,1001),(28904,'better way',4.33333,1001),(28905,'best way',4.33333,1001),(28906,'x. chen',4.33333,1001),(28907,'based',4.33333,1001),(28908,'choose',4.25,1001),(28909,'various functions',4.25,1001),(28910,'cloud computing',4.2,1001),(28911,'services computing',4.2,1001),(28912,'intelligent computing',4.2,1001),(28913,'business',4.18182,1001),(28914,'thus buyers',4.16667,1001),(28915,'private chain',4.16667,1001),(28916,'customers',4.14286,1001),(28917,'big data',4.14286,1001),(28918,'big challenge',4.14286,1001),(28919,'huge verification',4.125,1001),(28920,'accessing information',4.08333,1001),(28921,'alliance writes',4.06667,1001),(28922,'evaluate products',4.05556,1001),(28923,'products rather',4.05556,1001),(28924,'poor products',4.05556,1001),(28925,'consumers international',4.05,1001),(28926,'taiwan e-mail',4,1001),(28927,'top claims',4,1001),(28928,'trusted organizations',4,1001),(28929,'simultaneously compromised',4,1001),(28930,'daily life',4,1001),(28931,'smartphone weekly',4,1001),(28932,'scammers pretend',4,1001),(28933,'high grades',4,1001),(28934,'current situation',4,1001),(28935,'nakamoto satoshi',4,1001),(28936,'hashed values',4,1001),(28937,'mining mechanism',4,1001),(28938,'maersk builds',4,1001),(28939,'digital certificate',4,1001),(28940,'basic element',4,1001),(28941,'java executed',4,1001),(28942,'deterministic feature',4,1001),(28943,'contract9s operations',4,1001),(28944,'positive cycle',4,1001),(28945,'obvious observation',4,1001),(28946,'careful consideration',4,1001),(28947,'apply authentication',4,1001),(28948,'rather pgs',4,1001),(28949,'graded producthash',4,1001),(28950,'prototype consisting',4,1001),(28951,'partially supported',4,1001),(28952,'s. nakamoto',4,1001),(28953,'c. dwork',4,1001),(28954,'z. zheng',4,1001),(28955,'s. xie',4,1001),(28956,'future trends',4,1001),(28957,'k. christidis',4,1001),(28958,'n. kshetri',4,1001),(28959,'d. miller',4,1001),(28960,'industrial sector',4,1001),(28961,'t. song',4,1001),(28962,'x. cheng',4,1001),(28963,'l. sun',4,1001),(28964,'x. huang',4,1001),(28965,'n. xue',4,1001),(28966,'j. zhang',4,1001),(28967,'q. sheng',4,1001),(28968,'integrated circuits',4,1001),(28969,'e. karaarslan',4,1001),(28970,'e. adiguzel',4,1001),(28971,'d. magazzeni',4,1001),(28972,'p. mcburney',4,1001),(28973,'research agenda',4,1001),(28974,'c. braghin',4,1001),(28975,'s. cimato',4,1001),(28976,'e. damiani',4,1001),(28977,'big-data services',4,1001),(28978,'widely used',3.9,1001),(28979,'proposed pgs',3.88889,1001),(28980,'large-scale internet',3.85714,1001),(28981,'e-commerce',3.80769,1001),(28982,'dispute problem',3.8,1001),(28983,'fair price',3.75,1001),(28984,'reasonable price',3.75,1001),(28985,'non-profit organization',3.75,1001),(28986,'trusted organization',3.75,1001),(28987,'m. naor',3.75,1001),(28988,'m. devetsikiotis',3.75,1001),(28989,'m. baronchellli',3.75,1001),(28990,'gs membership',3.69048,1001),(28991,'resolved completely',3.66667,1001),(28992,'reliable',3.55556,1001),(28993,'basic concept',3.5,1001),(28994,'work mechanism',3.5,1001),(28995,'miner9s role',3.5,1001),(28996,'running results',3.5,1001),(28997,'distinguishing qualities',3.5,1001),(28998,'implementation details',3.5,1001),(28999,'343 figure 5',3.5,1001),(29000,'h. wang',3.5,1001),(29001,'use cases',3.5,1001),(29002,'h. orman',3.5,1001),(29003,'n. szabo',3.5,1001),(29004,'grading',3.47368,1001),(29005,'final analysis',3.4,1001),(29006,'usually used',3.4,1001),(29007,'situation analysis',3.4,1001),(29008,'proposed bpgs',3.38889,1001),(29009,'b. ethereum',3.33333,1001),(29010,'paid membership',3.33333,1001),(29011,'node contains',3.25,1001),(29012,'valuator wants',3.25,1001),(29013,'things datastorage',3.25,1001),(29014,'see fig',3.22222,1001),(29015,'framework fig',3.22222,1001),(29016,'computer science',3.16667,1001),(29017,'cblockchain security',3.1,1001),(29018,'product',3.02941,1001),(29019,'nodes',3,1001),(29020,'network',3,1001),(29021,'block',3,1001),(29022,'participant',3,1001),(29023,'huge',3,1001),(29024,'bpgs efficiently',3,1001),(29025,'figure 4',3,1001),(29026,'2 illustrates',2.66667,1001),(29027,'environment',2.66667,1001),(29028,'function',2.6,1001),(29029,'blockchain',2.55882,1001),(29030,'technology',2.55556,1001),(29031,'thus',2.5,1001),(29032,'insure',2.5,1001),(29033,'public',2.5,1001),(29034,'provides',2.5,1001),(29035,'apply',2.5,1001),(29036,'5 store',2.5,1001),(29037,'figure 3',2.4,1001),(29038,'miners',2.33333,1001),(29039,'trust',2.33333,1001),(29040,'sellers',2.33333,1001),(29041,'figure 6',2.33333,1001),(29042,'section 5',2.3,1001),(29043,'secure',2.2,1001),(29044,'section 3',2.2,1001),(29045,'grade',2.2,1001),(29046,'chain',2.16667,1001),(29047,'supplier',2.16667,1001),(29048,'information',2.08333,1001),(29049,'alliance',2.06667,1001),(29050,'products',2.05556,1001),(29051,'pgs',2,1001),(29052,'year',2,1001),(29053,'problem',2,1001),(29054,'adopt',2,1001),(29055,'conclusion',2,1001),(29056,'tolerance 3412019',2,1001),(29057,'400 cooperatives',2,1001),(29058,'blockchains',2,1001),(29059,'must',2,1001),(29060,'motivated',2,1001),(29061,'exposure',2,1001),(29062,'data',2,1001),(29063,'finish',2,1001),(29064,'code',2,1001),(29065,'4 demonstrates',2,1001),(29066,'checkmanager',2,1001),(29067,'checkvaluator',2,1001),(29068,'efficient',2,1001),(29069,'lncs 740',2,1001),(29070,'park',2,1001),(29071,'proposed',1.88889,1001),(29072,'internet',1.85714,1001),(29073,'gs',1.85714,1001),(29074,'ethereum',1.83333,1001),(29075,'membership',1.83333,1001),(29076,'dispute',1.8,1001),(29077,'section',1.8,1001),(29078,'merchants',1.75,1001),(29079,'price',1.75,1001),(29080,'organization',1.75,1001),(29081,'functions',1.75,1001),(29082,'m.',1.75,1001),(29083,'completely',1.66667,1001),(29084,'2',1.66667,1001),(29085,'buyers',1.66667,1001),(29086,'valuators',1.66667,1001),(29087,'science',1.66667,1001),(29088,'double 11',1.6,1001),(29089,'november 11',1.6,1001),(29090,'cblockchain',1.6,1001),(29091,'suppliers',1.57143,1001),(29092,'bpgs',1.5,1001),(29093,'paid',1.5,1001),(29094,'efficiently',1.5,1001),(29095,'designed',1.5,1001),(29096,'transaction',1.5,1001),(29097,'use',1.5,1001),(29098,'role',1.5,1001),(29099,'szabo',1.5,1001),(29100,'executed',1.5,1001),(29101,'computer',1.5,1001),(29102,'running',1.5,1001),(29103,'authentication',1.5,1001),(29104,'qualities',1.5,1001),(29105,'implementation',1.5,1001),(29106,'concept',1.5,1001),(29107,'work',1.5,1001),(29108,'h.',1.5,1001),(29109,'b.',1.5,1001),(29110,'security',1.5,1001),(29111,'analysis',1.4,1001),(29112,'used',1.4,1001),(29113,'paper',1.33333,1001),(29114,'consumers',1.25,1001),(29115,'node',1.25,1001),(29116,'things',1.25,1001),(29117,'valuator',1.25,1001),(29118,'fig',1.22222,1001),(29119,'sicbs 2018',1.16667,1001),(29120,'verification',1.125,1001),(29121,'b',1,1001),(29122,'cnyang',1,1001),(29123,'apparently',1,1001),(29124,'however',1,1001),(29125,'caused',1,1001),(29126,'e.g.',1,1001),(29127,'amazon.com',1,1001),(29128,'alibaba.com',1,1001),(29129,'cause',1,1001),(29130,'deal',1,1001),(29131,'speed',1,1001),(29132,'addition',1,1001),(29133,'51',1,1001),(29134,'attacks',1,1001),(29135,'therefore',1,1001),(29136,'introduction',1,1001),(29137,'alibaba.co',1,1001),(29138,'jd.com',1,1001),(29139,'recently',1,1001),(29140,'fascinated',1,1001),(29141,'originated',1,1001),(29142,'day',1,1001),(29143,'evolved',1,1001),(29144,'affects',1,1001),(29145,'implies',1,1001),(29146,'important',1,1001),(29147,'obviously',1,1001),(29148,'purchasing',1,1001),(29149,'try',1,1001),(29150,'hope',1,1001),(29151,'worth',1,1001),(29152,'seems',1,1001),(29153,'entering',1,1001),(29154,'either',1,1001),(29155,'facebook',1,1001),(29156,'line',1,1001),(29157,'wechat',1,1001),(29158,'solve',1,1001),(29159,'form',1,1001),(29160,'establish',1,1001),(29161,'securely',1,1001),(29162,'structure',1,1001),(29163,'follows',1,1001),(29164,'motivation',1,1001),(29165,'described',1,1001),(29166,'implement',1,1001),(29167,'achieved',1,1001),(29168,'drawn',1,1001),(29169,'period',1,1001),(29170,'time',1,1001),(29171,'modified',1,1001),(29172,'affect',1,1001),(29173,'anyone',1,1001),(29174,'search',1,1001),(29175,'broadcast',1,1001),(29176,'miner',1,1001),(29177,'proof',1,1001),(29178,'ability',1,1001),(29179,'anti-modification',1,1001),(29180,'faulty',1,1001),(29181,'iii',1,1001),(29182,'iv',1,1001),(29183,'assembled',1,1001),(29184,'shown',1,1001),(29185,'1block',1,1001),(29186,'construction',1,1001),(29187,'hand',1,1001),(29188,'members',1,1001),(29189,'example',1,1001),(29190,'fact',1,1001),(29191,'4-7',1,1001),(29192,'evm',1,1001),(29193,'participate',1,1001),(29194,'play',1,1001),(29195,'verifier',1,1001),(29196,'i.e.',1,1001),(29197,'defined',1,1001),(29198,'executes',1,1001),(29199,'terms',1,1001),(29200,'contractd',1,1001),(29201,'precisely',1,1001),(29202,'compiled',1,1001),(29203,'bytecodes',1,1001),(29204,'similar',1,1001),(29205,'jvm',1,1001),(29206,'packaged',1,1001),(29207,'written',1,1001),(29208,'purposes',1,1001),(29209,'writing',1,1001),(29210,'13-15',1,1001),(29211,'compared',1,1001),(29212,'irreversible',1,1001),(29213,'trackable',1,1001),(29214,'given',1,1001),(29215,'stability',1,1001),(29216,'output',1,1001),(29217,'inspect',1,1001),(29218,'meanwhile',1,1001),(29219,'interactions',1,1001),(29220,'trace',1,1001),(29221,'rise',1,1001),(29222,'generally',1,1001),(29223,'difficulty',1,1001),(29224,'advertisements',1,1001),(29225,'simplified',1,1001),(29226,'customer',1,1001),(29227,'give',1,1001),(29228,'scheme',1,1001),(29229,'interested',1,1001),(29230,'promote',1,1001),(29231,'course',1,1001),(29232,'checks',1,1001),(29233,'approve',1,1001),(29234,'authenticated',1,1001),(29235,'verified',1,1001),(29236,'approval',1,1001),(29237,'authorized',1,1001),(29238,'display',1,1001),(29239,'score',1,1001),(29240,'icon',1,1001),(29241,'demonstrate',1,1001),(29242,'awareness',1,1001),(29243,'know',1,1001),(29244,'number',1,1001),(29245,'design',1,1001),(29246,'present',1,1001),(29247,'since',1,1001),(29248,'applied',1,1001),(29249,'manager',1,1001),(29250,'finally',1,1001),(29251,'buyer',1,1001),(29252,'implemented',1,1001),(29253,'figs',1,1001),(29254,'3~6',1,1001),(29255,'cproductgraded',1,1001),(29256,'note',1,1001),(29257,'assigned',1,1001),(29258,'recorded',1,1001),(29259,'events',1,1001),(29260,'send_info',1,1001),(29261,'send_result',1,1001),(29262,'send_list',1,1001),(29263,'constructor',1,1001),(29264,'set',1,1001),(29265,'carry',1,1001),(29266,'assig',1,1001),(29267,'verfication',1,1001),(29268,'assign',1,1001),(29269,'show',1,1001),(29270,'loaddata',1,1001),(29271,'scores',1,1001),(29272,'summarized',1,1001),(29273,'return',1,1001),(29274,'alibaba.com.',1,1001),(29275,'dealing',1,1001),(29276,'acknowledgment',1,1001),(29277,'ministry',1,1001),(29278,'grant',1,1001),(29279,'107-2221-e-259-007',1,1001),(29280,'references',1,1001),(29281,'cbitcoin',1,1001),(29282,'available',1,1001),(29283,'https',1,1001),(29284,'//bitcoin.org/bitcoin.pdf',1,1001),(29285,'crypto992',1,1001),(29286,'pp',1,1001),(29287,'139-147,1993',1,1001),(29288,'overview',1,1001),(29289,'architecture',1,1001),(29290,'consensus',1,1001),(29291,'557-564',1,1001),(29292,'4',1,1001),(29293,'cblockchains',1,1001),(29294,'thingsd',1,1001),(29295,'vol.4',1,1001),(29296,'2292-2303',1,1001),(29297,'professional',1,1001),(29298,'vol',1,1001),(29299,'68-72',1,1001),(29300,'\'\'',1,1001),(29301,'15-18',1,1001),(29302,'r.',1,1001),(29303,'protection',1,1001),(29304,'10.1109/tsc.2018',1,1001),(29305,'tools',1,1001),(29306,'systems',1,1001),(29307,'ijdatics',1,1001),(29308,'jin',1,1001),(29309,'challenges',1,1001),(29310,'solutionsd',1,1001),(29311,'symmetry',1,1001),(29312,'doi:10.3390/sym9080164',1,1001),(29313,'23-28',1,1001),(29314,'52-57',1,1001),(29315,'http',1,1001),(29316,'//www',1,1001),(29317,'fon.hum',1,1001),(29318,'uva.nl/rob/courses/informationinspeech/cdrom/literature/lotwinterschool2006/szabo.best.vwh.net/smart.contracts.html',1,1001),(29319,'cvalidation',1,1001),(29320,'50-57',1,1001),(29321,'guilin',1,1001),(29322,'china',1,1001),(29323,'dec.',1,1001),(29324,'1',0.6,1001),(29325,'11',0.6,1001),(29326,'2017',0.5,1001),(29327,'5',0.5,1001),(29328,'3',0.4,1001),(29329,'6',0.333333,1001),(29330,'2018',0.166667,1001),(29331,'610721225',0,1001),(29332,'2009',0,1001),(29333,'8',0,1001),(29334,'9',0,1001),(29335,'10',0,1001),(29336,'1994',0,1001),(29337,'12',0,1001),(29338,'15',0,1001),(29339,'2008',0,1001),(29340,'2016',0,1001),(29341,'19',0,1001),(29342,'20',0,1001),(29343,'7',0,1001),(29344,'2853167',0,1001),(29345,'164',0,1001),(29346,'22',0,1001),(29347,'13',0,1001),(29348,'50',0,1001),(29349,'14',0,1001),(29350,'2013',0,1001),(29351,'344',0,1001);
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords1`
--

DROP TABLE IF EXISTS `keywords1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `keyw` varchar(9000) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `docid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29352 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords1`
--

LOCK TABLES `keywords1` WRITE;
/*!40000 ALTER TABLE `keywords1` DISABLE KEYS */;
INSERT INTO `keywords1` VALUES (28672,'tped gnay gnun-gnihc metsys gnidarg tcudorp desab niahckcolb gnisu ledom ssenisub ecremmoc-e elbailer',75.9542,1001),(28673,'enilno sdoog esahcrup ediwdlrow elpoep noillib 66.1 detamitse',44.6667,1001),(28674,'metsys gnidarg tcudorp desab niahckcolb gnisu ledom ssenisub ecremmoc-e elbailer',41.9542,1001),(28675,'seinapmoc ecremmoc-e elbatuper esoohc sreppohs enilno hguoht neve',41.5244,1001),(28676,'yub sremotsuc ekam yam secneirepxe noitpmusnoc doog',37.2095,1001),(28677,'seinapmoc ecremmoc-e elbatuper esoohc sremotsuc hguoht neve',36.0005,1001),(28678,'hsah ... ... pmatsemitsnoitcasnart2+n kcolb 1+n kcolb',35.1667,1001),(28679,'krowten laicos aiv smacs gnippohs enilno ynam',30.5069,1001),(28680,'stnuocsid eguh reffo serots enilno ynam',28.9167,1001),(28681,'aidem laicos aiv smacs gnippohs enilno',28.2569,1001),(28682,'segassem dengis aiv rucco tcartnoc trams',27.5808,1001),(28683,'tcudorp eniuneg yub yam sreppohs enilno',25.4961,1001),(28684,'dleh dyad noitomorp llam oaboatc',25,1001),(28685,'noitaripsni teg sreppohs enilno ynam',24.9167,1001),(28686,'metsys tnemyap orcim desab niahckcolb',22.4477,1001),(28687,'lavinrac gnippohs d11 elbuodc suomaf',22.3125,1001),(28688,'metsys gnidarg tcudorp elbiderc sehsilbatse',21.5587,1001),(28689,'ygolonhcet cihpargotpyrc gnisu esabatad dezilartneced',20.6032,1001),(28690,'sotohp tcudorp elpmis aiv sdoog',19.9739,1001),(28691,'2 erugif ecnailla ... pmatsemitsnoitcasnartn kcolb',19.4833,1001),(28692,'sedon gnoma tsurt evitaroballoc gnihcaer',19.3333,1001),(28693,'ytefas niahc ylppus doof ekam',19.2667,1001),(28694,'yltnednepedni etucexe yam tcartnoc trams',18.9364,1001),(28695,'sdoog esahcrup yam sremotsuc',17.9429,1001),(28696,'sdoog eniuneg yub ylisae',17.5,1001),(28697,'stcartnoc trams gnitarepo aiv niahckcolb',17.4089,1001),(28698,'mhtirogla eert elkrem gnisu',17.3333,1001),(28699,'tuohtiw metsys reep-ot-reep detubirtsid',17.2222,1001),(28700,'metsys hsac cinortcele reep-ot-reep',17.2222,1001),(28701,'reilppus dlog ylppa yam relles',16.9667,1001),(28702,'metsys gnidarg tcudorp elbiderc',16.5587,1001),(28703,'yfirev yam tnapicitrap yreve suht',16.55,1001),(28704,'snoitcua desab tcartnoc-trams gningisedc',16.3333,1001),(28705,'etaerc yam sgp gnisu',16.1333,1001),(28706,'seitrap driht tuohtiw yllacitamotua',16,1001),(28707,'yam srelles suomaf neve',15.6333,1001),(28708,'ledom ssenisub ecremmoc-e eruces',15.3145,1001),(28709,'yam sdoog roirefni gniyub',15.3,1001),(28710,'sreppohs enilno ynam',14.9167,1001),(28711,'enizagam sdradnats snoitacinummoc eeei',14.8571,1001),(28712,'detnuoma selas ecremmoc-e labolg',14.8077,1001),(28713,'stcudorp seht edarg yam srotaulav',14.7222,1001),(28714,'stcudorp yub yam sremotsuc',14.6651,1001),(28715,'ecnailla ... ynapmoc ecremmoc-e',14.4577,1001),(28716,'ytidilos dellac egaugnal ni-tliub',14.3333,1001),(28717,'ababila ynapmoc ecremmoc-e esenihc',14.141,1001),(28718,'tped uw uy-gnos',14,1001),(28719,'seinapmoc ecremmoc-e gnidulcni ecnailla',13.6744,1001),(28720,'lavinrac gnippohs tenretni evissam',13.6696,1001),(28721,'desab ledom ssenisub',13.6402,1001),(28722,'noitamrofni dnuorgkcab sessucsid 2 noitces',13.55,1001),(28723,'stcartnoc trams ytidilos etirw',13.4056,1001),(28724,'ecnerefnoc lanoitanretni eeei ht4',13.1571,1001),(28725,'tcartnoc trams noitareneg txen',13.1364,1001),(28726,'ledom ssenisub ecremmoc-e',13.1145,1001),(28727,'noitcnuf dedargc ssecorp gnidarg',13.0737,1001),(28728,'pets tsrif eht4tcartsba wt.ude.uhdn.smg',13,1001),(28729,'snoitcasnart lluf sdrocer kcolb',13,1001),(28730,'sgp desab niahckcolb esoporp',12.8922,1001),(28731,'tnemnorivne gnippohs enilno eruces',12.3458,1001),(28732,'sedivorp mroftalp niahckcolb mbi',12.3088,1001),(28733,'mroftalp niahckcolb cilbup ralupop',12.3088,1001),(28734,'ygolonhcet niahckcolb .a dnuorgkcab',12.1144,1001),(28735,'metsys gnidarg tcudorp',12.0587,1001),(28736,'srallod .s.u noillirt 3.2',12,1001),(28737,'ledom senissub ecremmoc-e',11.9327,1001),(28738,'stcartnoc trams tnereffid ruof',11.9056,1001),(28739,'seinapmoc ecremmoc-e gnoma',11.6077,1001),(28740,'og elpoep esenihc',11.5,1001),(28741,'sdoog roirefni gniyub',11.5,1001),(28742,'elcric laicos aiv',11.2778,1001),(28743,'stcudorp eniuneg yub',11.0556,1001),(28744,'sotohp tcudorp elpmis',11.0294,1001),(28745,'aiv gnidarg tcudorp',10.9475,1001),(28746,'desab tnemnorivne ecremmoc-e',10.8077,1001),(28747,'eulav hsah cihpargotpyrc',10.6667,1001),(28748,'snoitcesnart laires serots',10.5,1001),(28749,'seitivitca gnippohs enilno',10.4792,1001),(28750,'gnissecorp aiv gnicirpc',10.4444,1001),(28751,'seinapmoc ecremmoc-e sedulcni',10.3577,1001),(28752,'ssenisub s9relles dnapxe',10.1818,1001),(28753,'snoitaroproc gniliater enilno',10.1667,1001),(28754,'tnemnorivne gnippohs enilno',10.1458,1001),(28755,'yfirev yam srenim',10.1333,1001),(28756,'ydaerla seinapmoc ecremmoc-e',10.1077,1001),(28757,'tnuocca laicos ekaf',9.83333,1001),(28758,'locotorp krowten reep-ot-reep',9.66667,1001),(28759,'srelles enilno etamitigel',9.5,1001),(28760,'kcolb siseneg dellac',9.33333,1001),(28761,'kcolb tnerap dellac',9.33333,1001),(28762,'eerps gnippohs launna',9.3125,1001),(28763,'ledom ssenisub',9.30682,1001),(28764,'ecnerefnoc lanoitanretni dn2',9.3,1001),(28765,'tnapicitrap krowten yreve',9.25,1001),(28766,'niag yam srelles',9.13333,1001),(28767,'metsys gnidarg',9.02924,1001),(28768,'neilauh ytisrevinu awh',9,1001),(28769,'yrtsudni liater labolg',9,1001),(28770,'kcolb lacirotsih etelpmoc',9,1001),(28771,'ycnega noitacifitrec ytrap-driht',9,1001),(28772,'stnemyap elibom llams',9,1001),(28773,'snoitacilppa dednetni poleved',9,1001),(28774,'secudorp syawla tupni',9,1001),(28775,'derots sedoc elbatucexe',9,1001),(28776,'ekil dluow eganam',9,1001),(28777,'liam knuj gnittabmoc',9,1001),(28778,'fdp.niretub-kilativ-mroftalp_noitacilppa_dezilartneced_dna_tcartnoc_trams _noitareneg_txen_a-repap_etihw_muerehte/fdp/moc.balniahckcolb //',9,1001),(28779,'snd desab niahckcolbc',8.93333,1001),(28780,'nehc gnehc-iy wt.ude.uhdn.smg',8.83333,1001),(28781,'ynapmoc nihtiw krowten',8.83333,1001),(28782,'ssergnoc lanoitanretni eeei 7102',8.65714,1001),(28783,'1 erugif pmatsemitsnoitcasnartpmatsemitsnoitcasnart1+n kcolb',8.6,1001),(28784,'nehtgnerts niahckcolb nacc',8.55882,1001),(28785,'gnidarg tcudorp hsinif',8.5031,1001),(28786,'gnidarg tcudorp 243',8.5031,1001),(28787,'skcolb detaicossa etareneg',8.5,1001),(28788,'snoitulos sreffo tramlaw',8.5,1001),(28789,'snoitacilppa dednetni suoirav',8.5,1001),(28790,'mroftalp noitacilppa dezilartneced',8.46429,1001),(28791,'stcartnoc trams snur',8.40559,1001),(28792,'stcartnoc trams gnipoleved',8.40559,1001),(28793,'ximer gnisu',8.33333,1001),(28794,'yaw gnippohs niam',8.3125,1001),(28795,'raey yreve detadpu',8.25,1001),(28796,'serutaef niam gniwollof',8.16667,1001),(28797,'tcartnoc trams mret',8.13636,1001),(28798,'setarepo tcartnoc trams',8.13636,1001),(28799,'noitamrofni tcudorp gnirots',8.11275,1001),(28800,'lanoitan gnireenigne noitamrofni',8.08333,1001),(28801,'noitamrofni gnidart lacirotsih',8.08333,1001),(28802,'ytilauq tcudorp erusni',8.02941,1001),(28803,'erusopxe tcudorp ezimixam',8.02941,1001),(28804,'noitatropsnart tneiciffe eveihca',8,1001),(28805,'derots edoc elbatucexe',8,1001),(28806,'krap kuyh gnoj',8,1001),(28807,'ikp wen srorepme',8,1001),(28808,'ylppa yam srotaulav',7.96667,1001),(28809,'enihcam lautriv avaj',7.83333,1001),(28810,'ygolonhcet niahckcolb dezilartneced',7.82866,1001),(28811,'aiv gnippohs',7.75694,1001),(28812,'seinapmoc ecremmoc-e',7.60769,1001),(28813,'gnitar ytilauq tpoda',7.5,1001),(28814,'locotorp noitcasnart deziretupmoc',7.5,1001),(28815,'ylediw stcapmi sgp',7.5,1001),(28816,'gnippohs enilno',7.47917,1001),(28817,'reganamkcehc sedulcni noitcnuf',7.35,1001),(28818,'rotaulavkcehc sedulcni noitcnuf',7.35,1001),(28819,'srenim eriuqer sniahckcolb',7.33333,1001),(28820,'repap etihw muerehtec',7.33333,1001),(28821,'stcartnoc trams muerehte',7.23893,1001),(28822,'enihcam lautriv muerehte',7.16667,1001),(28823,'gnippohs laicos',7.14583,1001),(28824,'/91/4-2821-1827-1-879scitylana atad gib',7.14286,1001),(28825,'gnitupmoc tenretni eeei',6.91429,1001),(28826,'eeei 91029ax\\2cx\\ 00.13',6.85714,1001),(28827,'ssap tsum sg',6.85714,1001),(28828,'melborp etupsid evloser',6.8,1001),(28829,'erots snoitcnuf owt',6.75,1001),(28830,'sremotsuc suht',6.64286,1001),(28831,'ynapmoc ecremmoc-e',6.64103,1001),(28832,'gnidarg tcudorp',6.5031,1001),(28833,'detavitom noisulcnoc .v',6.5,1001),(28834,'tnemnorivne ecremmoc-e',6.47436,1001),(28835,'ssecorp gnidarg',6.47368,1001),(28836,'kcolb yreve',6.25,1001),(28837,'mroftalp labolg',6.25,1001),(28838,'pihsrebmem sg ylppa',6.19048,1001),(28839,'setupsid ssenisub',6.18182,1001),(28840,'ediwdlrow sreyub',6.16667,1001),(28841,'stcudorp edivorp sreilppus',6.12698,1001),(28842,'sdrocer kcolb',6,1001),(28843,'ecnailla ecremmoc-e',5.87436,1001),(28844,'snoitcasnart eeei',5.85714,1001),(28845,'skrowten laicos',5.83333,1001),(28846,'desab dengised',5.83333,1001),(28847,'ecremmoc-e -sdrowyek',5.80769,1001),(28848,'tluser yam',5.8,1001),(28849,'reilppus elbailer',5.72222,1001),(28850,'reilppus dlog',5.66667,1001),(28851,'erus ekam',5.6,1001),(28852,'yam stnahcrem',5.55,1001),(28853,'ytilauq tcudorp',5.52941,1001),(28854,'stcudorp gnidarg',5.52924,1001),(28855,'pets tsrif',5.5,1001),(28856,'kcolb tsrif',5.5,1001),(28857,'gnikcart doof',5.5,1001),(28858,'kcolb wen',5.5,1001),(28859,'stcartnoc trams',5.40559,1001),(28860,'yam sreilppus',5.37143,1001),(28861,'tcudorp srelles',5.36275,1001),(28862,'ekam stnahcrem',5.35,1001),(28863,'enihcam lautriv',5.33333,1001),(28864,'ygolonhcet dezilartneced',5.26984,1001),(28865,'edarg tcudorp',5.22941,1001),(28866,'serutaef niam',5.16667,1001),(28867,'niahc kcolb',5.16667,1001),(28868,'tcartnoc trams',5.13636,1001),(28869,'ygolonhcet niahckcolb',5.11438,1001),(28870,'15 sselnu detelpmoc',5,1001),(28871,'neve',5,1001),(28872,'toor elkrem',5,1001),(28873,'kcolb suoiverp',5,1001),(28874,'hsahn kcolb',5,1001),(28875,'egaugnal detneiro-tcartnoc',5,1001),(28876,'margaid kcolb',5,1001),(28877,'ux .a',5,1001),(28878,'snoitulos ikp',5,1001),(28879,'ssecca eeei',4.85714,1001),(28880,'sedulcni ecnailla',4.81667,1001),(28881,'sebircsed 4 noitces',4.8,1001),(28882,'lanruoj lanoitanretni',4.8,1001),(28883,'stcartnoc yolped',4.76923,1001),(28884,'stcartnoc tramsc',4.76923,1001),(28885,'hsah .1',4.66667,1001),(28886,'noitamrofni niahckcolb',4.64216,1001),(28887,'secived trams',4.63636,1001),(28888,'rotaluavngissa noitcnuf',4.6,1001),(28889,'niahckcolb eritne',4.55882,1001),(28890,'setareneg niahckcolb',4.55882,1001),(28891,'stsisnoc niahckcolb',4.55882,1001),(28892,'niahckcolb etavirp',4.55882,1001),(28893,'niahckcolb tpoda',4.55882,1001),(28894,'snoitpecrep tnereffid',4.5,1001),(28895,'semoceb ydaerla',4.5,1001),(28896,'skcolb suounitnoc',4.5,1001),(28897,'ytilibaecart edivorp',4.5,1001),(28898,'soiranecs noitacilppa',4.5,1001),(28899,'decudortni tsrif',4.5,1001),(28900,'tcartnoc lanoitidart',4.5,1001),(28901,'ssergnoc atadgib',4.5,1001),(28902,'niretub .v',4.5,1001),(28903,'nehc uy-hihs',4.33333,1001),(28904,'yaw retteb',4.33333,1001),(28905,'yaw tseb',4.33333,1001),(28906,'nehc .x',4.33333,1001),(28907,'desab',4.33333,1001),(28908,'esoohc',4.25,1001),(28909,'snoitcnuf suoirav',4.25,1001),(28910,'gnitupmoc duolc',4.2,1001),(28911,'gnitupmoc secivres',4.2,1001),(28912,'gnitupmoc tnegilletni',4.2,1001),(28913,'ssenisub',4.18182,1001),(28914,'sreyub suht',4.16667,1001),(28915,'niahc etavirp',4.16667,1001),(28916,'sremotsuc',4.14286,1001),(28917,'atad gib',4.14286,1001),(28918,'egnellahc gib',4.14286,1001),(28919,'noitacifirev eguh',4.125,1001),(28920,'noitamrofni gnissecca',4.08333,1001),(28921,'setirw ecnailla',4.06667,1001),(28922,'stcudorp etaulave',4.05556,1001),(28923,'rehtar stcudorp',4.05556,1001),(28924,'stcudorp roop',4.05556,1001),(28925,'lanoitanretni sremusnoc',4.05,1001),(28926,'liam-e nawiat',4,1001),(28927,'smialc pot',4,1001),(28928,'snoitazinagro detsurt',4,1001),(28929,'desimorpmoc ylsuoenatlumis',4,1001),(28930,'efil yliad',4,1001),(28931,'ylkeew enohptrams',4,1001),(28932,'dneterp sremmacs',4,1001),(28933,'sedarg hgih',4,1001),(28934,'noitautis tnerruc',4,1001),(28935,'ihsotas otomakan',4,1001),(28936,'seulav dehsah',4,1001),(28937,'msinahcem gninim',4,1001),(28938,'sdliub ksream',4,1001),(28939,'etacifitrec latigid',4,1001),(28940,'tnemele cisab',4,1001),(28941,'detucexe avaj',4,1001),(28942,'erutaef citsinimreted',4,1001),(28943,'snoitarepo s9tcartnoc',4,1001),(28944,'elcyc evitisop',4,1001),(28945,'noitavresbo suoivbo',4,1001),(28946,'noitaredisnoc luferac',4,1001),(28947,'noitacitnehtua ylppa',4,1001),(28948,'sgp rehtar',4,1001),(28949,'hsahtcudorp dedarg',4,1001),(28950,'gnitsisnoc epytotorp',4,1001),(28951,'detroppus yllaitrap',4,1001),(28952,'otomakan .s',4,1001),(28953,'krowd .c',4,1001),(28954,'gnehz .z',4,1001),(28955,'eix .s',4,1001),(28956,'sdnert erutuf',4,1001),(28957,'siditsirhc .k',4,1001),(28958,'irtehsk .n',4,1001),(28959,'rellim .d',4,1001),(28960,'rotces lairtsudni',4,1001),(28961,'gnos .t',4,1001),(28962,'gnehc .x',4,1001),(28963,'nus .l',4,1001),(28964,'gnauh .x',4,1001),(28965,'eux .n',4,1001),(28966,'gnahz .j',4,1001),(28967,'gnehs .q',4,1001),(28968,'stiucric detargetni',4,1001),(28969,'nalsraarak .e',4,1001),(28970,'lezugida .e',4,1001),(28971,'inezzagam .d',4,1001),(28972,'yenrubcm .p',4,1001),(28973,'adnega hcraeser',4,1001),(28974,'nihgarb .c',4,1001),(28975,'otamic .s',4,1001),(28976,'inaimad .e',4,1001),(28977,'secivres atad-gib',4,1001),(28978,'desu ylediw',3.9,1001),(28979,'sgp desoporp',3.88889,1001),(28980,'tenretni elacs-egral',3.85714,1001),(28981,'ecremmoc-e',3.80769,1001),(28982,'melborp etupsid',3.8,1001),(28983,'ecirp riaf',3.75,1001),(28984,'ecirp elbanosaer',3.75,1001),(28985,'noitazinagro tiforp-non',3.75,1001),(28986,'noitazinagro detsurt',3.75,1001),(28987,'roan .m',3.75,1001),(28988,'sitoikisteved .m',3.75,1001),(28989,'illlehcnorab .m',3.75,1001),(28990,'pihsrebmem sg',3.69048,1001),(28991,'yletelpmoc devloser',3.66667,1001),(28992,'elbailer',3.55556,1001),(28993,'tpecnoc cisab',3.5,1001),(28994,'msinahcem krow',3.5,1001),(28995,'elor s9renim',3.5,1001),(28996,'stluser gninnur',3.5,1001),(28997,'seitilauq gnihsiugnitsid',3.5,1001),(28998,'sliated noitatnemelpmi',3.5,1001),(28999,'5 erugif 343',3.5,1001),(29000,'gnaw .h',3.5,1001),(29001,'sesac esu',3.5,1001),(29002,'namro .h',3.5,1001),(29003,'obazs .n',3.5,1001),(29004,'gnidarg',3.47368,1001),(29005,'sisylana lanif',3.4,1001),(29006,'desu yllausu',3.4,1001),(29007,'sisylana noitautis',3.4,1001),(29008,'sgpb desoporp',3.38889,1001),(29009,'muerehte .b',3.33333,1001),(29010,'pihsrebmem diap',3.33333,1001),(29011,'sniatnoc edon',3.25,1001),(29012,'stnaw rotaulav',3.25,1001),(29013,'egarotsatad sgniht',3.25,1001),(29014,'gif ees',3.22222,1001),(29015,'gif krowemarf',3.22222,1001),(29016,'ecneics retupmoc',3.16667,1001),(29017,'ytiruces niahckcolbc',3.1,1001),(29018,'tcudorp',3.02941,1001),(29019,'sedon',3,1001),(29020,'krowten',3,1001),(29021,'kcolb',3,1001),(29022,'tnapicitrap',3,1001),(29023,'eguh',3,1001),(29024,'yltneiciffe sgpb',3,1001),(29025,'4 erugif',3,1001),(29026,'setartsulli 2',2.66667,1001),(29027,'tnemnorivne',2.66667,1001),(29028,'noitcnuf',2.6,1001),(29029,'niahckcolb',2.55882,1001),(29030,'ygolonhcet',2.55556,1001),(29031,'suht',2.5,1001),(29032,'erusni',2.5,1001),(29033,'cilbup',2.5,1001),(29034,'sedivorp',2.5,1001),(29035,'ylppa',2.5,1001),(29036,'erots 5',2.5,1001),(29037,'3 erugif',2.4,1001),(29038,'srenim',2.33333,1001),(29039,'tsurt',2.33333,1001),(29040,'srelles',2.33333,1001),(29041,'6 erugif',2.33333,1001),(29042,'5 noitces',2.3,1001),(29043,'eruces',2.2,1001),(29044,'3 noitces',2.2,1001),(29045,'edarg',2.2,1001),(29046,'niahc',2.16667,1001),(29047,'reilppus',2.16667,1001),(29048,'noitamrofni',2.08333,1001),(29049,'ecnailla',2.06667,1001),(29050,'stcudorp',2.05556,1001),(29051,'sgp',2,1001),(29052,'raey',2,1001),(29053,'melborp',2,1001),(29054,'tpoda',2,1001),(29055,'noisulcnoc',2,1001),(29056,'9102143 ecnarelot',2,1001),(29057,'sevitarepooc 004',2,1001),(29058,'sniahckcolb',2,1001),(29059,'tsum',2,1001),(29060,'detavitom',2,1001),(29061,'erusopxe',2,1001),(29062,'atad',2,1001),(29063,'hsinif',2,1001),(29064,'edoc',2,1001),(29065,'setartsnomed 4',2,1001),(29066,'reganamkcehc',2,1001),(29067,'rotaulavkcehc',2,1001),(29068,'tneiciffe',2,1001),(29069,'047 scnl',2,1001),(29070,'krap',2,1001),(29071,'desoporp',1.88889,1001),(29072,'tenretni',1.85714,1001),(29073,'sg',1.85714,1001),(29074,'muerehte',1.83333,1001),(29075,'pihsrebmem',1.83333,1001),(29076,'etupsid',1.8,1001),(29077,'noitces',1.8,1001),(29078,'stnahcrem',1.75,1001),(29079,'ecirp',1.75,1001),(29080,'noitazinagro',1.75,1001),(29081,'snoitcnuf',1.75,1001),(29082,'.m',1.75,1001),(29083,'yletelpmoc',1.66667,1001),(29084,'2',1.66667,1001),(29085,'sreyub',1.66667,1001),(29086,'srotaulav',1.66667,1001),(29087,'ecneics',1.66667,1001),(29088,'11 elbuod',1.6,1001),(29089,'11 rebmevon',1.6,1001),(29090,'niahckcolbc',1.6,1001),(29091,'sreilppus',1.57143,1001),(29092,'sgpb',1.5,1001),(29093,'diap',1.5,1001),(29094,'yltneiciffe',1.5,1001),(29095,'dengised',1.5,1001),(29096,'noitcasnart',1.5,1001),(29097,'esu',1.5,1001),(29098,'elor',1.5,1001),(29099,'obazs',1.5,1001),(29100,'detucexe',1.5,1001),(29101,'retupmoc',1.5,1001),(29102,'gninnur',1.5,1001),(29103,'noitacitnehtua',1.5,1001),(29104,'seitilauq',1.5,1001),(29105,'noitatnemelpmi',1.5,1001),(29106,'tpecnoc',1.5,1001),(29107,'krow',1.5,1001),(29108,'.h',1.5,1001),(29109,'.b',1.5,1001),(29110,'ytiruces',1.5,1001),(29111,'sisylana',1.4,1001),(29112,'desu',1.4,1001),(29113,'repap',1.33333,1001),(29114,'sremusnoc',1.25,1001),(29115,'edon',1.25,1001),(29116,'sgniht',1.25,1001),(29117,'rotaulav',1.25,1001),(29118,'gif',1.22222,1001),(29119,'8102 sbcis',1.16667,1001),(29120,'noitacifirev',1.125,1001),(29121,'b',1,1001),(29122,'gnaync',1,1001),(29123,'yltnerappa',1,1001),(29124,'revewoh',1,1001),(29125,'desuac',1,1001),(29126,'.g.e',1,1001),(29127,'moc.nozama',1,1001),(29128,'moc.ababila',1,1001),(29129,'esuac',1,1001),(29130,'laed',1,1001),(29131,'deeps',1,1001),(29132,'noitidda',1,1001),(29133,'15',1,1001),(29134,'skcatta',1,1001),(29135,'erofereht',1,1001),(29136,'noitcudortni',1,1001),(29137,'oc.ababila',1,1001),(29138,'moc.dj',1,1001),(29139,'yltnecer',1,1001),(29140,'detanicsaf',1,1001),(29141,'detanigiro',1,1001),(29142,'yad',1,1001),(29143,'devlove',1,1001),(29144,'stceffa',1,1001),(29145,'seilpmi',1,1001),(29146,'tnatropmi',1,1001),(29147,'ylsuoivbo',1,1001),(29148,'gnisahcrup',1,1001),(29149,'yrt',1,1001),(29150,'epoh',1,1001),(29151,'htrow',1,1001),(29152,'smees',1,1001),(29153,'gniretne',1,1001),(29154,'rehtie',1,1001),(29155,'koobecaf',1,1001),(29156,'enil',1,1001),(29157,'tahcew',1,1001),(29158,'evlos',1,1001),(29159,'mrof',1,1001),(29160,'hsilbatse',1,1001),(29161,'yleruces',1,1001),(29162,'erutcurts',1,1001),(29163,'swollof',1,1001),(29164,'noitavitom',1,1001),(29165,'debircsed',1,1001),(29166,'tnemelpmi',1,1001),(29167,'deveihca',1,1001),(29168,'nward',1,1001),(29169,'doirep',1,1001),(29170,'emit',1,1001),(29171,'deifidom',1,1001),(29172,'tceffa',1,1001),(29173,'enoyna',1,1001),(29174,'hcraes',1,1001),(29175,'tsacdaorb',1,1001),(29176,'renim',1,1001),(29177,'foorp',1,1001),(29178,'ytiliba',1,1001),(29179,'noitacifidom-itna',1,1001),(29180,'ytluaf',1,1001),(29181,'iii',1,1001),(29182,'vi',1,1001),(29183,'delbmessa',1,1001),(29184,'nwohs',1,1001),(29185,'kcolb1',1,1001),(29186,'noitcurtsnoc',1,1001),(29187,'dnah',1,1001),(29188,'srebmem',1,1001),(29189,'elpmaxe',1,1001),(29190,'tcaf',1,1001),(29191,'7-4',1,1001),(29192,'mve',1,1001),(29193,'etapicitrap',1,1001),(29194,'yalp',1,1001),(29195,'reifirev',1,1001),(29196,'.e.i',1,1001),(29197,'denifed',1,1001),(29198,'setucexe',1,1001),(29199,'smret',1,1001),(29200,'dtcartnoc',1,1001),(29201,'ylesicerp',1,1001),(29202,'delipmoc',1,1001),(29203,'sedocetyb',1,1001),(29204,'ralimis',1,1001),(29205,'mvj',1,1001),(29206,'degakcap',1,1001),(29207,'nettirw',1,1001),(29208,'sesoprup',1,1001),(29209,'gnitirw',1,1001),(29210,'51-31',1,1001),(29211,'derapmoc',1,1001),(29212,'elbisreverri',1,1001),(29213,'elbakcart',1,1001),(29214,'nevig',1,1001),(29215,'ytilibats',1,1001),(29216,'tuptuo',1,1001),(29217,'tcepsni',1,1001),(29218,'elihwnaem',1,1001),(29219,'snoitcaretni',1,1001),(29220,'ecart',1,1001),(29221,'esir',1,1001),(29222,'yllareneg',1,1001),(29223,'ytluciffid',1,1001),(29224,'stnemesitrevda',1,1001),(29225,'deifilpmis',1,1001),(29226,'remotsuc',1,1001),(29227,'evig',1,1001),(29228,'emehcs',1,1001),(29229,'detseretni',1,1001),(29230,'etomorp',1,1001),(29231,'esruoc',1,1001),(29232,'skcehc',1,1001),(29233,'evorppa',1,1001),(29234,'detacitnehtua',1,1001),(29235,'deifirev',1,1001),(29236,'lavorppa',1,1001),(29237,'dezirohtua',1,1001),(29238,'yalpsid',1,1001),(29239,'erocs',1,1001),(29240,'noci',1,1001),(29241,'etartsnomed',1,1001),(29242,'ssenerawa',1,1001),(29243,'wonk',1,1001),(29244,'rebmun',1,1001),(29245,'ngised',1,1001),(29246,'tneserp',1,1001),(29247,'ecnis',1,1001),(29248,'deilppa',1,1001),(29249,'reganam',1,1001),(29250,'yllanif',1,1001),(29251,'reyub',1,1001),(29252,'detnemelpmi',1,1001),(29253,'sgif',1,1001),(29254,'6~3',1,1001),(29255,'dedargtcudorpc',1,1001),(29256,'eton',1,1001),(29257,'dengissa',1,1001),(29258,'dedrocer',1,1001),(29259,'stneve',1,1001),(29260,'ofni_dnes',1,1001),(29261,'tluser_dnes',1,1001),(29262,'tsil_dnes',1,1001),(29263,'rotcurtsnoc',1,1001),(29264,'tes',1,1001),(29265,'yrrac',1,1001),(29266,'gissa',1,1001),(29267,'noitacifrev',1,1001),(29268,'ngissa',1,1001),(29269,'wohs',1,1001),(29270,'ataddaol',1,1001),(29271,'serocs',1,1001),(29272,'dezirammus',1,1001),(29273,'nruter',1,1001),(29274,'.moc.ababila',1,1001),(29275,'gnilaed',1,1001),(29276,'tnemgdelwonkca',1,1001),(29277,'yrtsinim',1,1001),(29278,'tnarg',1,1001),(29279,'700-952-e-1222-701',1,1001),(29280,'secnerefer',1,1001),(29281,'nioctibc',1,1001),(29282,'elbaliava',1,1001),(29283,'sptth',1,1001),(29284,'fdp.nioctib/gro.nioctib//',1,1001),(29285,'299otpyrc',1,1001),(29286,'pp',1,1001),(29287,'3991,741-931',1,1001),(29288,'weivrevo',1,1001),(29289,'erutcetihcra',1,1001),(29290,'susnesnoc',1,1001),(29291,'465-755',1,1001),(29292,'4',1,1001),(29293,'sniahckcolbc',1,1001),(29294,'dsgniht',1,1001),(29295,'4.lov',1,1001),(29296,'3032-2922',1,1001),(29297,'lanoisseforp',1,1001),(29298,'lov',1,1001),(29299,'27-86',1,1001),(29300,'\'\'',1,1001),(29301,'81-51',1,1001),(29302,'.r',1,1001),(29303,'noitcetorp',1,1001),(29304,'8102.cst/9011.01',1,1001),(29305,'sloot',1,1001),(29306,'smetsys',1,1001),(29307,'scitadji',1,1001),(29308,'nij',1,1001),(29309,'segnellahc',1,1001),(29310,'dsnoitulos',1,1001),(29311,'yrtemmys',1,1001),(29312,'4610809mys/0933.01:iod',1,1001),(29313,'82-32',1,1001),(29314,'75-25',1,1001),(29315,'ptth',1,1001),(29316,'www//',1,1001),(29317,'muh.nof',1,1001),(29318,'lmth.stcartnoc.trams/ten.hwv.tseb.obazs/6002loohcsretniwtol/erutaretil/mordc/hceepsninoitamrofni/sesruoc/bor/ln.avu',1,1001),(29319,'noitadilavc',1,1001),(29320,'75-05',1,1001),(29321,'niliug',1,1001),(29322,'anihc',1,1001),(29323,'.ced',1,1001),(29324,'1',0.6,1001),(29325,'11',0.6,1001),(29326,'7102',0.5,1001),(29327,'5',0.5,1001),(29328,'3',0.4,1001),(29329,'6',0.333333,1001),(29330,'8102',0.166667,1001),(29331,'522127016',0,1001),(29332,'9002',0,1001),(29333,'8',0,1001),(29334,'9',0,1001),(29335,'01',0,1001),(29336,'4991',0,1001),(29337,'21',0,1001),(29338,'51',0,1001),(29339,'8002',0,1001),(29340,'6102',0,1001),(29341,'91',0,1001),(29342,'02',0,1001),(29343,'7',0,1001),(29344,'7613582',0,1001),(29345,'461',0,1001),(29346,'22',0,1001),(29347,'31',0,1001),(29348,'05',0,1001),(29349,'41',0,1001),(29350,'3102',0,1001),(29351,'443',0,1001);
/*!40000 ALTER TABLE `keywords1` ENABLE KEYS */;
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
/*!50003 DROP PROCEDURE IF EXISTS `getDocsKeyw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocsKeyw`()
BEGIN
select GROUP_CONCAT(REPLACE(keyw , '\n', '') SEPARATOR ' ') as txt from keywords k where score>10 group by docid  order by docid asc ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDocuments1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocuments1`(in uid varchar(200))
begin
 select * from getDocuments where userid=uid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDocuments2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocuments2`(in searchText varchar(200),in uid varchar(200))
begin
 select * from getDocuments where userid<>uid and docid in (select docid from keywords where keyw like concat('%',searchText,'%')) ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDocuments3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocuments3`(in uid varchar(200))
begin
 select * from getDocuments where userid<>uid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDocumentsShared` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDocumentsShared`(in docid1 varchar(200))
begin
 select * from getdocuments where docid in (docid1);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDatasetDocs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDatasetDocs`(in docPath1 varchar(900), in data1 longblob,in title1 varchar(200),in desc1 varchar(200),in cate1 varchar(200) )
begin 
declare mxid integer;
declare dt varchar(200);
declare tm varchar(200);
set mxid=(select ifnull(max(docid),1000) as mxid from documents1);
set mxid=mxid+1;
set dt=(select current_date());
set tm=(select current_time());
insert into documents1 values(mxid,title1,desc1,'admin',docPath1,dt,tm,'DataSetDoc',data1,cate1); 
select mxid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDoc`(in userid1 varchar(200), in title1 text, in dt1 varchar(30), in tm1 varchar(200)
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUser`(in userid1 varchar(200),in pass1 varchar(200), in userName1 varchar(200), in mob varchar(30), in emailId varchar(200)
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
/*!50003 DROP PROCEDURE IF EXISTS `updatekeyw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatekeyw`(in keyw1 varchar(200),in docid1 integer)
begin 
insert into keywords1 select id,reverse(keyw),score,docid from keywords where docid=docid1;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `userlogin`(in userid1 varchar(200),in pass1 varchar(200))
begin
select *  from users where userid=userid1 and pswd=pass1 and userstatus='active';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 11:02:48
