-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerceweb
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_color` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_color`
--

LOCK TABLES `tbl_color` WRITE;
/*!40000 ALTER TABLE `tbl_color` DISABLE KEYS */;
INSERT INTO `tbl_color` VALUES (1,'Rouge'),(2,'Noir'),(3,'Bleu'),(4,'Jaune'),(5,'Vert'),(6,'Blanc'),(7,'Orange'),(8,'Marron'),(9,'Beige'),(10,'Rose'),(11,'Multicolore'),(12,'Bleu clair'),(13,'Violet'),(14,'Violet clair'),(15,'Saumon'),(16,'Doré'),(17,'Gris'),(18,'Cendré'),(19,'Bordeaux'),(20,'Argenté'),(21,'Argile foncée'),(22,'Cognac'),(23,'Café'),(24,'Anthracite'),(25,'Bleu marine'),(26,'Fuchsia'),(27,'Olive'),(28,'Bordeaux foncé'),(29,'Bleu nuit');
/*!40000 ALTER TABLE `tbl_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_country`
--

LOCK TABLES `tbl_country` WRITE;
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` VALUES (1,'Afghanistan'),(2,'Albanie'),(3,'Algérie'),(4,'Samoa américaines'),(5,'Andorre'),(6,'Angola'),(7,'Anguilla'),(8,'Antarctique'),(9,'Antigua-et-Barbuda'),(10,'Argentine'),(11,'Arménie'),(12,'Aruba'),(13,'Australie'),(14,'Autriche'),(15,'Azerbaïdjan'),(16,'Bahamas'),(17,'Bahreïn'),(18,'Bangladesh'),(19,'Barbade'),(20,'Biélorussie'),(21,'Belgique'),(22,'Belize'),(23,'Bénin'),(24,'Bermudes'),(25,'Bhoutan'),(26,'Bolivie'),(27,'Bosnie-Herzégovine'),(28,'Botswana'),(29,'Île Bouvet'),(30,'Brésil'),(31,'Territoire britannique de l\'océan Indien'),(32,'Brunei'),(33,'Bulgarie'),(34,'Burkina Faso'),(35,'Burundi'),(36,'Cambodge'),(37,'Cameroun'),(38,'Canada'),(39,'Cap-Vert'),(40,'Îles Caïmans'),(41,'République centrafricaine'),(42,'Tchad'),(43,'Chili'),(44,'Chine'),(45,'Île Christmas'),(46,'Îles Cocos'),(47,'Colombie'),(48,'Comores'),(49,'Congo'),(50,'Îles Cook'),(51,'Costa Rica'),(52,'Croatie'),(53,'Cuba'),(54,'Chypre'),(55,'Tchéquie'),(56,'Danemark'),(57,'Djibouti'),(58,'Dominique'),(59,'République dominicaine'),(60,'Timor oriental'),(61,'Équateur'),(62,'Égypte'),(63,'Salvador'),(64,'Guinée équatoriale'),(65,'Érythrée'),(66,'Estonie'),(67,'Éthiopie'),(68,'Îles Malouines'),(69,'Îles Féroé'),(70,'Fidji'),(71,'Finlande'),(72,'France'),(73,'France métropolitaine'),(74,'Guyane française'),(75,'Polynésie française'),(76,'Terres australes françaises'),(77,'Gabon'),(78,'Gambie'),(79,'Géorgie'),(80,'Allemagne'),(81,'Ghana'),(82,'Gibraltar'),(83,'Guernesey'),(84,'Grèce'),(85,'Groenland'),(86,'Grenade'),(87,'Guadeloupe'),(88,'Guam'),(89,'Guatemala'),(90,'Guinée'),(91,'Guinée-Bissau'),(92,'Guyana'),(93,'Haïti'),(94,'Îles Heard-et-McDonald'),(95,'Honduras'),(96,'Hong Kong'),(97,'Hongrie'),(98,'Islande'),(99,'Inde'),(100,'Île de Man'),(101,'Indonésie'),(102,'Iran'),(103,'Irak'),(104,'Irlande'),(105,'Israël'),(106,'Italie'),(107,'Côte d\'Ivoire'),(108,'Jersey'),(109,'Jamaïque'),(110,'Japon'),(111,'Jordanie'),(112,'Kazakhstan'),(113,'Kenya'),(114,'Kiribati'),(115,'Corée du Nord'),(116,'Corée du Sud'),(117,'Kosovo'),(118,'Koweït'),(119,'Kirghizistan'),(120,'Laos'),(121,'Lettonie'),(122,'Liban'),(123,'Lesotho'),(124,'Libéria'),(125,'Libye'),(126,'Liechtenstein'),(127,'Lituanie'),(128,'Luxembourg'),(129,'Macao'),(130,'Macédoine du Nord'),(131,'Madagascar'),(132,'Malawi'),(133,'Malaisie'),(134,'Maldives'),(135,'Mali'),(136,'Malte'),(137,'Îles Marshall'),(138,'Martinique'),(139,'Mauritanie'),(140,'Maurice'),(141,'Mayotte'),(142,'Mexique'),(143,'Micronésie'),(144,'Moldavie'),(145,'Monaco'),(146,'Mongolie'),(147,'Monténégro'),(148,'Montserrat'),(149,'Maroc'),(150,'Mozambique'),(151,'Myanmar'),(152,'Namibie'),(153,'Nauru'),(154,'Népal'),(155,'Pays-Bas'),(156,'Antilles néerlandaises'),(157,'Nouvelle-Calédonie'),(158,'Nouvelle-Zélande'),(159,'Nicaragua'),(160,'Niger'),(161,'Nigeria'),(162,'Niue'),(163,'Île Norfolk'),(164,'Îles Mariannes du Nord'),(165,'Norvège'),(166,'Oman'),(167,'Pakistan'),(168,'Palaos'),(169,'Palestine'),(170,'Panama'),(171,'Papouasie-Nouvelle-Guinée'),(172,'Paraguay'),(173,'Pérou'),(174,'Philippines'),(175,'Pitcairn'),(176,'Pologne'),(177,'Portugal'),(178,'Porto Rico'),(179,'Qatar'),(180,'Réunion'),(181,'Roumanie'),(182,'Russie'),(183,'Rwanda'),(184,'Saint-Kitts-et-Nevis'),(185,'Sainte-Lucie'),(186,'Saint-Vincent-et-les-Grenadines'),(187,'Samoa'),(188,'Saint-Marin'),(189,'Sao Tomé-et-Principe'),(190,'Arabie saoudite'),(191,'Sénégal'),(192,'Serbie'),(193,'Seychelles'),(194,'Sierra Leone'),(195,'Singapour'),(196,'Slovaquie'),(197,'Slovénie'),(198,'Îles Salomon'),(199,'Somalie'),(200,'Afrique du Sud'),(201,'Géorgie du Sud et îles Sandwich du Sud'),(202,'Espagne'),(203,'Sri Lanka'),(204,'Sainte-Hélène'),(205,'Saint-Pierre-et-Miquelon'),(206,'Soudan'),(207,'Suriname'),(208,'Svalbard et île Jan Mayen'),(209,'Eswatini'),(210,'Suède'),(211,'Suisse'),(212,'Syrie'),(213,'Taïwan'),(214,'Tadjikistan'),(215,'Tanzanie'),(216,'Thaïlande'),(217,'Togo'),(218,'Tokelau'),(219,'Tonga'),(220,'Trinité-et-Tobago'),(221,'Tunisie'),(222,'Turquie'),(223,'Turkménistan'),(224,'Îles Turques-et-Caïques'),(225,'Tuvalu'),(226,'Ouganda'),(227,'Ukraine'),(228,'Émirats arabes unis'),(229,'Royaume-Uni'),(230,'États-Unis'),(231,'Îles mineures éloignées des États-Unis'),(232,'Uruguay'),(233,'Ouzbékistan'),(234,'Vanuatu'),(235,'Vatican'),(236,'Venezuela'),(237,'Viêt Nam'),(238,'Îles Vierges britanniques'),(239,'Îles Vierges des États-Unis'),(240,'Wallis-et-Futuna'),(241,'Sahara occidental'),(242,'Yémen'),(243,'Zaïre'),(244,'Zambie'),(245,'Zimbabwe');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES (1,'Liam Moore','WV Company','liam@mail.com','7458965410',230,'788 Cottonwood Lane','Nashville','TN','37072','','','',0,'','','','','','','',0,'','','','','$2y$10$Tm0z7oxW8ZHfFfhs/gh0eecXn65Jh48kJZsJFXJoDpdMtCHHwgHUK','0081e99a29cacd4b553db15c5c5c047e','2022-03-17 11:09:34','1647544174',1),(2,'Chad N. Carney','none','chad@mail.com','4785690000',230,'469 Diamond Street','Charlotte','NC','28808','Chad N. Carney','none','7477474440',230,'469 Diamond Street','Charlotte','NC','28808','Chad N. Carney','none','7477474440',230,'469 Diamond Street','Charlotte','NC','28808','5f4dcc3b5aa765d61d8327deb882cf99','ca87666426f4bc5c5128a96dabfecefb','2022-03-17 11:15:26','1647544526',1),(3,'Jean Collins','none','jean@mail.com','1478523698',230,'1508 Crosswind Drive','Owensboro','KY','13040','Jean Collins','none','1478523698',230,'1508 Crosswind Drive','Owensboro','KY','13040','Jean Collins','none','1478523698',230,'1508 Crosswind Drive','Owensboro','KY','13040','5f4dcc3b5aa765d61d8327deb882cf99','6b3439bf95644a36a1ed92bef374ebb7','2022-03-20 10:29:39','1647797379',1),(4,'Annie Young','XYZ Company','annie@mail.com','7770001144',230,'79 Burwell Heights Road','Beaumont','TX','77400','','','',0,'','','','','','','',0,'','','','','5f4dcc3b5aa765d61d8327deb882cf99','fc8f07537cdd6b3f89eb94f1cad78060','2022-03-20 10:31:35','1647797495',1),(5,'Matthew Morales','ABC Company','matthew@mail.com','7896587450',230,'81 Felosa Drive','Mira Loma','CA','91002','Matthew Morales','ABC Company','7896587450',230,'81 Felosa Drive','Mira Loma','CA','91002','Matthew Morales','ABC Company','7896587450',230,'81 Felosa Drive','Mira Loma','CA','91002','5f4dcc3b5aa765d61d8327deb882cf99','c391105908fe01a636bfa5fc39eed33d','2022-03-20 10:33:15','1647797595',1),(6,'August F. Freels','none','august@mail.com','1478547850',230,'96 Johnny Lane','Milwaukee','WI','55550','August F. Freels','none','1478547850',230,'96 Johnny Lane','Milwaukee','WI','55550','August F. Freels','none','1478547850',230,'96 Johnny Lane','Milwaukee','WI','55550','5f4dcc3b5aa765d61d8327deb882cf99','decc1fc2c5dd9935df82c0233002ce66','2022-03-20 10:34:08','1647797648',1),(7,'Carl M. Dineen','none','carl@mail.com','789878987',230,'77 Lyndon Street','Kutztown','PA','19855','','','',0,'','','','','','','',0,'','','','','5f4dcc3b5aa765d61d8327deb882cf99','c79bac688e70cc9665a2164c57ec172c','2022-03-20 10:35:02','1647797702',1),(8,'Benjamin B. Louque','none','benjamin@mail.com','7777889955',230,'32 Bridge Street','Tulsa','OK','74220','','','',0,'','','','','','','',0,'','','','','5f4dcc3b5aa765d61d8327deb882cf99','5a0e096368f9669508af7b7203382b07','2022-03-20 10:36:31','1647797791',1),(9,'Joe K. Richardson','none','joe@mail.com','4444445555',230,'17 Derek Drive','Youngstown','OH','44500','','','',0,'','','','','','','',0,'','','','','5f4dcc3b5aa765d61d8327deb882cf99','e74ac0178d7833988d4b1625c42ba26e','2022-03-20 10:37:18','1647797838',1),(10,'Will Williams','Test Company','williams@mail.com','7410000000',230,'39 Marcus Street','Anniston','AL','37207','Will Williams','Test Company','7410000000',230,'39 Marcus Street','Anniston','AL','37207','Will Williams','Test Company','7410000000',230,'39 Marcus Street','Anniston','AL','37207','5f4dcc3b5aa765d61d8327deb882cf99','941c9265fb920f691cf01b12a15f80f8','2022-03-20 11:15:59','1647800159',1);
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer_message`
--

DROP TABLE IF EXISTS `tbl_customer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int NOT NULL,
  PRIMARY KEY (`customer_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer_message`
--

LOCK TABLES `tbl_customer_message` WRITE;
/*!40000 ALTER TABLE `tbl_customer_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_customer_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_end_category`
--

DROP TABLE IF EXISTS `tbl_end_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_end_category` (
  `ecat_id` int NOT NULL AUTO_INCREMENT,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int NOT NULL,
  PRIMARY KEY (`ecat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_end_category`
--

LOCK TABLES `tbl_end_category` WRITE;
/*!40000 ALTER TABLE `tbl_end_category` DISABLE KEYS */;
INSERT INTO `tbl_end_category` VALUES (1,'Headwear ',1),(2,'Sunglasses',1),(3,'Watches',1),(4,'Sandals',2),(5,'Boots',2),(6,'Tops',3),(7,'T-Shirt',3),(8,'Watches',4),(9,'Sunglasses',4),(11,'Sports Shoes',2),(12,'Sandals',6),(13,'Flat Shoes',6),(14,'Hoodies',7),(15,'Coats & Jackets',7),(16,'Pants',8),(17,'Jeans',8),(18,'Joggers',8),(19,'Shorts',8),(20,'T-shirts',9),(21,'Casual Shirts',9),(22,'Formal Shirts',9),(23,'Polo Shirts',9),(24,'Vests',9),(25,'Casual Shoes',2),(26,'Boys',10),(27,'Girls',10),(28,'Boys',11),(29,'Girls',11),(30,'Boys',12),(31,'Girls',12),(32,'Dresses',7),(33,'Tops',7),(34,'T-Shirts & Vests',7),(35,'Pants & Leggings',7),(36,'Sportswear',7),(37,'Plus Size Clothing',7),(38,'Socks & Hosiery',7),(39,'Fragrance',3),(40,'Skincare',3),(41,'Hair Care',3),(42,'Jewellery',4),(43,'Eyes Care',3),(44,'Lips',3),(45,'Face Care',3),(46,'Gift Sets',3),(47,'Scarves & Headwear',4),(48,'Multipacks',4),(49,'Other Accessories',4),(50,'Pumps',6),(51,'Sneakers',6),(52,'Sports Shoes',6),(53,'Boots',6),(54,'Comfort Shoes',6),(55,'Slippers & Casual Shoes',6),(56,'Formal Shoes',2),(57,'Belts',1),(58,'Multipacks',1),(59,'Other Accessories',1),(60,'Bags',4),(61,'Cell Phone and Accessories',14),(62,'Headphones',14),(63,'Security and Surveillance',14),(64,'Television and Video',14),(65,'GPS and Navigation',14),(66,'Home Audio',14),(67,'Computer Components',15),(68,'Computers and Tablets',15),(69,'Laptop Accessories',15),(70,'Printer and Monitors',15),(71,'External Components',15),(72,'Networking Products',15),(73,'Medical Supplies and Equipment',16),(74,'Oral Care',16),(75,'Vision Care',16),(76,'Vitamins and Dietary Supplements',16),(77,'Baby and Child Care',17),(78,'Household Supplies',17),(79,'Stationery and Gift Wrapping Supplies',17);
/*!40000 ALTER TABLE `tbl_end_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_faq`
--

DROP TABLE IF EXISTS `tbl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_faq`
--

LOCK TABLES `tbl_faq` WRITE;
/*!40000 ALTER TABLE `tbl_faq` DISABLE KEYS */;
INSERT INTO `tbl_faq` VALUES (1,'Comment trouver un article ?','<h3>Nous proposons une large gamme de produits magnifiques.</h3><h3>Astuce 1 : pour un produit précis, utilisez le champ de recherche en haut du site. Saisissez ce que vous cherchez et laissez-vous surprendre !</h3><h3>Astuce 2 : pour explorer une catégorie, utilisez le menu « Catégories » en haut de page et parcourez vos catégories préférées, où nous mettons en avant les meilleurs produits.</h3>'),(2,'Quelle est votre politique de retour ?','<p>Vous disposez de 15 jours après la livraison pour demander un retour ou un remboursement.</p>'),(3,'J\'ai reçu un article défectueux ou endommagé, puis-je être remboursé ?','<p>Si l\'article reçu est endommagé ou défectueux, vous pouvez le retourner dans l\'état où vous l\'avez reçu, avec son emballage d\'origine intact. Dès réception, nous vérifions l\'article ; s\'il est bien défectueux ou endommagé, nous procédons au remboursement, y compris des frais de livraison.</p>'),(4,'Dans quels cas le retour n\'est-il pas possible ?','<p>Cas où un retour est difficile à accepter :</p><ol><li>Demande effectuée hors du délai de 15 jours après livraison.</li><li>Produit utilisé, endommagé ou différent de l\'état de réception.</li><li>Catégories spécifiques : sous-vêtements, lingerie, chaussettes et articles offerts, etc.</li><li>Produits défectueux couverts par la garantie constructeur.</li><li>Tout article consommable déjà utilisé ou installé.</li><li>Produits dont le numéro de série est absent ou altéré.</li><li>Éléments manquants du colis : étiquettes de prix, étiquettes, emballage d\'origine, articles offerts et accessoires.</li><li>Articles fragiles ou liés à l\'hygiène.</li></ol>'),(5,'Quels articles ne peuvent pas être retournés ?','<p>Les articles non retournables sont :</p><p>Les articles de déstockage clairement signalés « ni repris ni échangés ».</p><p>Les articles dont l\'offre précise spécifiquement l\'impossibilité de retour.</p><p>Les catégories suivantes :</p><ul><li>Sous-vêtements</li><li>Lingerie</li><li>Chaussettes</li><li>Logiciels</li><li>Albums de musique</li><li>Livres</li><li>Maillots de bain</li><li>Beauté et parfums</li><li>Bas et collants</li></ul><p>De même, tout article consommable déjà utilisé ou installé ne peut être retourné, conformément aux droits du consommateur concernant les articles non retournables.</p>');
/*!40000 ALTER TABLE `tbl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_language` (
  `lang_id` int NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_language`
--

LOCK TABLES `tbl_language` WRITE;
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` VALUES (1,'Currency','$'),(2,'Search Product','Rechercher un produit'),(3,'Search','Rechercher'),(4,'Submit','Envoyer'),(5,'Update','Mettre à jour'),(6,'Read More','Lire la suite'),(7,'Serial','N°'),(8,'Photo','Photo'),(9,'Login','Connexion'),(10,'Customer Login','Connexion client'),(11,'Click here to login','Cliquez ici pour vous connecter'),(12,'Back to Login Page','Retour à la page de connexion'),(13,'Logged in as','Connecté en tant que'),(14,'Logout','Déconnexion'),(15,'Register','Inscription'),(16,'Customer Registration','Inscription client'),(17,'Registration Successful','Inscription réussie'),(18,'Cart','Panier'),(19,'View Cart','Voir le panier'),(20,'Update Cart','Mettre le panier à jour'),(21,'Back to Cart','Retour au panier'),(22,'Checkout','Commander'),(23,'Proceed to Checkout','Passer la commande'),(24,'Orders','Commandes'),(25,'Order History','Historique des commandes'),(26,'Order Details','Détails de la commande'),(27,'Payment Date and Time','Date et heure du paiement'),(28,'Transaction ID','ID de transaction'),(29,'Paid Amount','Montant payé'),(30,'Payment Status','Statut du paiement'),(31,'Payment Method','Méthode de paiement'),(32,'Payment ID','ID de paiement'),(33,'Payment Section','Section paiement'),(34,'Select Payment Method','Choisir un moyen de paiement'),(35,'Select a Method','Choisir une méthode'),(36,'PayPal','PayPal'),(37,'Stripe','Stripe'),(38,'Bank Deposit','Virement bancaire'),(39,'Card Number','Numéro de carte'),(40,'CVV','CVV'),(41,'Month','Mois'),(42,'Year','Année'),(43,'Send to this Details','Envoyer à ces coordonnées'),(44,'Transaction Information','Informations de transaction'),(45,'Include transaction id and other information correctly','Indiquez correctement l\'ID de transaction et les autres informations'),(46,'Pay Now','Payer maintenant'),(47,'Product Name','Nom du produit'),(48,'Product Details','Détails du produit'),(49,'Categories','Catégories'),(50,'Category:','Catégorie :'),(51,'All Products Under','Tous les produits sous'),(52,'Select Size','Choisir la taille'),(53,'Select Color','Choisir la couleur'),(54,'Product Price','Prix du produit'),(55,'Quantity','Quantité'),(56,'Out of Stock','Rupture de stock'),(57,'Share This','Partager sur'),(58,'Share This Product','Partager ce produit'),(59,'Product Description','Description du produit'),(60,'Features','Caractéristiques'),(61,'Conditions','Conditions'),(62,'Return Policy','Politique de retour'),(63,'Reviews','Avis'),(64,'Review','Avis'),(65,'Give a Review','Donner un avis'),(66,'Write your comment (Optional)','Écrivez votre commentaire (facultatif)'),(67,'Submit Review','Envoyer mon avis'),(68,'You already have given a rating!','Vous avez déjà donné une note !'),(69,'You must have to login to give a review','Vous devez être connecté pour donner un avis'),(70,'No description found','Aucune description disponible'),(71,'No feature found','Aucune caractéristique disponible'),(72,'No condition found','Aucune condition disponible'),(73,'No return policy found','Aucune politique de retour disponible'),(74,'Review not found','Aucun avis pour le moment'),(75,'Customer Name','Nom du client'),(76,'Comment','Commentaire'),(77,'Comments','Commentaires'),(78,'Rating','Note'),(79,'Previous','Précédent'),(80,'Next','Suivant'),(81,'Sub Total','Sous-total'),(82,'Total','Total'),(83,'Action','Action'),(84,'Shipping Cost','Frais de livraison'),(85,'Continue Shopping','Continuer mes achats'),(86,'Update Billing Address','Mettre à jour l\'adresse de facturation'),(87,'Update Shipping Address','Mettre à jour l\'adresse de livraison'),(88,'Update Billing and Shipping Info','Mettre à jour les infos de facturation et livraison'),(89,'Dashboard','Tableau de bord'),(90,'Welcome to the Dashboard','Bienvenue sur votre tableau de bord'),(91,'Back to Dashboard','Retour au tableau de bord'),(92,'Subscribe','S\'abonner'),(93,'Subscribe To Our Newsletter','Abonnez-vous à notre newsletter'),(94,'Email Address','Adresse e-mail'),(95,'Enter Your Email Address','Entrez votre adresse e-mail'),(96,'Password','Mot de passe'),(97,'Forget Password','Mot de passe oublié ?'),(98,'Retype Password','Confirmez le mot de passe'),(99,'Update Password','Mettre à jour le mot de passe'),(100,'New Password','Nouveau mot de passe'),(101,'Retype New Password','Confirmez le nouveau mot de passe'),(102,'Full Name','Nom complet'),(103,'Company Name','Nom de la société'),(104,'Phone Number','Numéro de téléphone'),(105,'Address','Adresse'),(106,'Country','Pays'),(107,'City','Ville'),(108,'State','Région / État'),(109,'Zip Code','Code postal'),(110,'About Us','À propos de nous'),(111,'Featured Posts','Articles en vedette'),(112,'Popular Posts','Articles populaires'),(113,'Recent Posts','Articles récents'),(114,'Contact Information','Coordonnées'),(115,'Contact Form','Formulaire de contact'),(116,'Our Office','Notre bureau'),(117,'Update Profile','Mettre à jour le profil'),(118,'Send Message','Envoyer le message'),(119,'Message','Message'),(120,'Find Us On Map','Nous trouver sur la carte'),(121,'Congratulation! Payment is successful.','Félicitations ! Votre paiement a été accepté.'),(122,'Billing and Shipping Information is updated successfully.','Les informations de facturation et de livraison ont été mises à jour.'),(123,'Customer Name can not be empty.','Le nom du client ne peut pas être vide.'),(124,'Phone Number can not be empty.','Le numéro de téléphone ne peut pas être vide.'),(125,'Address can not be empty.','L\'adresse ne peut pas être vide.'),(126,'You must have to select a country.','Vous devez sélectionner un pays.'),(127,'City can not be empty.','La ville ne peut pas être vide.'),(128,'State can not be empty.','La région / l\'état ne peut pas être vide.'),(129,'Zip Code can not be empty.','Le code postal ne peut pas être vide.'),(130,'Profile Information is updated successfully.','Les informations du profil ont été mises à jour.'),(131,'Email Address can not be empty','L\'adresse e-mail ne peut pas être vide.'),(132,'Email and/or Password can not be empty.','L\'e-mail et/ou le mot de passe ne peuvent pas être vides.'),(133,'Email Address does not match.','L\'adresse e-mail ne correspond pas.'),(134,'Email address must be valid.','L\'adresse e-mail doit être valide.'),(135,'You email address is not found in our system.','Votre adresse e-mail est introuvable dans notre système.'),(136,'Please check your email and confirm your subscription.','Veuillez vérifier votre e-mail et confirmer votre abonnement.'),(137,'Your email is verified successfully. You can now login to our website.','Votre e-mail a bien été vérifié. Vous pouvez maintenant vous connecter sur notre site.'),(138,'Password can not be empty.','Le mot de passe ne peut pas être vide.'),(139,'Passwords do not match.','Les mots de passe ne correspondent pas.'),(140,'Please enter new and retype passwords.','Veuillez saisir les deux mots de passe.'),(141,'Password is updated successfully.','Le mot de passe a été mis à jour avec succès.'),(142,'To reset your password, please click on the link below.','Pour réinitialiser votre mot de passe, veuillez cliquer sur le lien ci-dessous.'),(143,'PASSWORD RESET REQUEST - YOUR WEBSITE.COM','DEMANDE DE RÉINITIALISATION DE MOT DE PASSE - VOTRE SITE.COM'),(144,'The password reset email time (24 hours) has expired. Please again try to reset your password.','Le délai de réinitialisation du mot de passe (24 heures) a expiré. Veuillez recommencer la procédure.'),(145,'A confirmation link is sent to your email address. You will get the password reset information in there.','Un lien de confirmation a été envoyé à votre adresse e-mail. Vous y trouverez les informations de réinitialisation du mot de passe.'),(146,'Password is reset successfully. You can now login.','Le mot de passe a été réinitialisé avec succès. Vous pouvez maintenant vous connecter.'),(147,'Email Address Already Exists','Cette adresse e-mail existe déjà.'),(148,'Sorry! Your account is inactive. Please contact to the administrator.','Désolé ! Votre compte est inactif. Veuillez contacter l\'administrateur.'),(149,'Change Password','Changer le mot de passe'),(150,'Registration Email Confirmation for YOUR WEBSITE','Confirmation d\'inscription par e-mail pour VOTRE SITE'),(151,'Thank you for your registration! Your account has been created. To active your account click on the link below:','Merci pour votre inscription ! Votre compte a été créé. Pour activer votre compte, cliquez sur le lien ci-dessous :'),(152,'Your registration is completed. Please check your email address to follow the process to confirm your registration.','Votre inscription est terminée. Veuillez consulter votre adresse e-mail pour suivre la procédure de confirmation de votre inscription.'),(153,'No Product Found','Aucun produit trouvé'),(154,'Add to Cart','Ajouter au panier'),(155,'Related Products','Produits similaires'),(156,'See all related products from below','Découvrez tous les produits similaires ci-dessous'),(157,'Size','Taille'),(158,'Color','Couleur'),(159,'Price','Prix'),(160,'Please login as customer to checkout','Veuillez vous connecter en tant que client pour commander'),(161,'Billing Address','Adresse de facturation'),(162,'Shipping Address','Adresse de livraison'),(163,'Rating is Submitted Successfully!','Votre avis a bien été envoyé !');
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mid_category`
--

DROP TABLE IF EXISTS `tbl_mid_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mid_category` (
  `mcat_id` int NOT NULL AUTO_INCREMENT,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int NOT NULL,
  PRIMARY KEY (`mcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mid_category`
--

LOCK TABLES `tbl_mid_category` WRITE;
/*!40000 ALTER TABLE `tbl_mid_category` DISABLE KEYS */;
INSERT INTO `tbl_mid_category` VALUES (1,'Men Accessories',1),(2,'Men\'s Shoes',1),(3,'Beauty Products',2),(4,'Accessories',2),(6,'Shoes',2),(7,'Clothing',2),(8,'Bottoms',1),(9,'T-shirts & Shirts',1),(10,'Clothing',3),(11,'Shoes',3),(12,'Accessories',3),(14,'Electronic Items',4),(15,'Computers',4),(16,'Health',5),(17,'Household',5);
/*!40000 ALTER TABLE `tbl_mid_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,83,'Men\'s Ultra Cotton T-Shirt, Multipack','XL','Gray','1','19','1647629329'),(2,92,'Travelpro Laptop Carry-on Travel Tote Bag','One Size for All','Midnight Blue','1','91','1647798593'),(4,101,'Digital Infrared Thermometer for Adults and Kids','One Size for All','White','1','70','1647799174'),(5,94,'WD 5TB Elements Portable External Hard Drive HDD','5T','Black','1','149','1647800902');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_page`
--

LOCK TABLES `tbl_page` WRITE;
/*!40000 ALTER TABLE `tbl_page` DISABLE KEYS */;
INSERT INTO `tbl_page` VALUES (1,'À propos de nous','<p>Bienvenue sur notre boutique en ligne !</p><p>Notre objectif est de vous proposer une large gamme de produits tendance pour toute la famille : mode femme, homme et enfant, high-tech, beauté et maison. Nous sélectionnons chaque article avec soin pour vous garantir le meilleur rapport qualité-prix.</p><p>Votre satisfaction est notre priorité : notre équipe est disponible 7 j/7 pour répondre à vos questions, et nos retours sont simples sous 15 jours.</p><ul><li>Meilleur rapport qualité-prix</li><li>Service client 7 j/7</li><li>Retours faciles sous 15 jours</li><li>Livraison rapide et suivie</li></ul>','about-banner.jpg','Boutique e-commerce PHP - À propos de nous','à propos, boutique en ligne, e-commerce php, à propos de nous','Découvrez notre boutique en ligne : mode pour femme, homme et enfant, high-tech, beauté et maison, au meilleur prix.','FAQ','faq-banner.jpg','Boutique e-commerce PHP - FAQ','','','Blog','blog-banner.jpg','Boutique e-commerce PHP - Blog','','','Nous contacter','contact-banner.jpg','Boutique e-commerce PHP - Contact','','','Galerie photos','pgallery-banner.jpg','Boutique e-commerce PHP - Galerie photos','','','Galerie vidéos','vgallery-banner.jpg','Boutique e-commerce PHP - Galerie vidéos','','');
/*!40000 ALTER TABLE `tbl_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment`
--

LOCK TABLES `tbl_payment` WRITE;
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` VALUES (51,2,'Chad N. Carney','chad@mail.com','2022-03-18 22:48:49','',19,'','','','','Transaction Id: CA01010158967840\r\nTransaction Date: 3/19/2022\r\nBank: WestView Bank, CA Branch\r\nSender A/C: 102458965WV','Bank Deposit','Completed','Completed','1647629329'),(52,3,'Jean Collins','jean@mail.com','2022-03-20 10:49:53','',91,'','','','','','PayPal','Completed','Completed','1647798593'),(54,6,'August F. Freels','august@mail.com','2022-03-20 10:59:34','',70,'','','','','Transaction Id: CA01101198945600\nTransaction Date: 3/20/2022 \nBank: WestView Bank, CA Branch \nSender A/C: 1100047860WV','Bank Deposit','Completed','Pending','1647799174'),(55,10,'Will Williams','williams@mail.com','2022-03-20 11:28:22','',149,'','','','','Transaction Id: CA01003177945009\r\nTransaction Date: 3/20/2022 \r\nBank: WestView Bank, CA Branch \r\nSender A/C: NQ1011050160WV','Bank Deposit','Completed','Completed','1647800902');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_photo`
--

DROP TABLE IF EXISTS `tbl_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_photo`
--

LOCK TABLES `tbl_photo` WRITE;
/*!40000 ALTER TABLE `tbl_photo` DISABLE KEYS */;
INSERT INTO `tbl_photo` VALUES (1,'Photo 1','photo-1.jpg'),(2,'Photo 2','photo-2.jpg'),(3,'Photo 3','photo-3.jpg'),(4,'Photo 4','photo-4.jpg'),(5,'Photo 5','photo-5.jpg'),(6,'Photo 6','photo-6.jpg');
/*!40000 ALTER TABLE `tbl_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `total_view` int NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_post`
--

LOCK TABLES `tbl_post` WRITE;
/*!40000 ALTER TABLE `tbl_post` DISABLE KEYS */;
INSERT INTO `tbl_post` VALUES (1,'Cu vel choro exerci pri et oratio iisque','cu-vel-choro-exerci-pri-et-oratio-iisque','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-1.jpg',3,14,'Cu vel choro exerci pri et oratio iisque','',''),(2,'Epicurei necessitatibus eu facilisi postulant ','epicurei-necessitatibus-eu-facilisi-postulant-','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-2.jpg',3,6,'Epicurei necessitatibus eu facilisi postulant ','',''),(3,'Mei ut errem legimus periculis eos liber','mei-ut-errem-legimus-periculis-eos-liber','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-3.jpg',3,1,'Mei ut errem legimus periculis eos liber','',''),(4,'Id pro unum pertinax oportere vel','id-pro-unum-pertinax-oportere-vel','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-4.jpg',4,0,'Id pro unum pertinax oportere vel','',''),(5,'Tollit cetero cu usu etiam evertitur','tollit-cetero-cu-usu-etiam-evertitur','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-5.jpg',4,24,'Tollit cetero cu usu etiam evertitur','',''),(6,'Omnes ornatus qui et te aeterno','omnes-ornatus-qui-et-te-aeterno','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-6.jpg',4,2,'Omnes ornatus qui et te aeterno','',''),(7,'Vix tale noluisse voluptua ad ne','vix-tale-noluisse-voluptua-ad-ne','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-7.jpg',2,0,'Vix tale noluisse voluptua ad ne','',''),(8,'Liber utroque vim an ne his brute','liber-utroque-vim-an-ne-his-brute','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-8.jpg',2,12,'Liber utroque vim an ne his brute','',''),(9,'Nostrum copiosae argumentum has','nostrum-copiosae-argumentum-has','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-9.jpg',1,12,'Nostrum copiosae argumentum has','',''),(10,'An labores explicari qui eu','an-labores-explicari-qui-eu','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-10.jpg',1,4,'An labores explicari qui eu','',''),(11,'Lorem ipsum dolor sit amet','lorem-ipsum-dolor-sit-amet','<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n','05-09-2017','news-11.jpg',1,18,'Lorem ipsum dolor sit amet','','');
/*!40000 ALTER TABLE `tbl_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int NOT NULL,
  `p_is_featured` int NOT NULL,
  `p_is_active` int NOT NULL,
  `ecat_id` int NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (83,'T-shirt homme ultra coton, lot de 2','26','19',77,'product-featured-83.jpg','<p>Unis : 100 % coton ; gris sport et chiné antique : 90 % coton, 10 % polyester ; couleurs « safety » et chinées : 50 % coton, 50 % polyester.</p>\n<p>Disponible en lots de 2 et dans une large gamme de couleurs pour faire le plein de votre modèle préféré.</p>','<p><span style=\"color: rgb(15, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 14px;\">Style 20020-Multipack; Solids: 100% Cotton.</span><br></p>','<ul>\n<li>Fermeture à enfiler</li>\n<li>Lavable en machine</li>\n<li>Épaule tombante allongée, emmanchure droite et manches plus larges et plus courtes</li>\n<li>Surpiqûres doubles aux ourlets pour une durabilité renforcée</li>\n<li>Tissu épais et consistant</li>\n<li>Étiquette détachable</li>\n</ul>','<p>This is a sample text for conditions.</p>','<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',17,0,1,21),(84,'Robe longue en maille côtelée ample, une épaule, avec découpes','51','39',26,'product-featured-84.jpg','<p>Une source d\'inspiration mode incontournable créée par des influenceurs du monde entier. Découvrez des collections en édition limitée et des essentiels de garde-robe chics. Retrouvez tendances, collaborations de marques exclusives et conseils de stylisme d\'experts.</p>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">86% Tencel, 14% Elastane</span></p>','<ul>\n<li>Lavable en machine</li>\n<li>Staples by The Drop</li>\n<li>Cette robe longue mesure 122 cm de long</li>\n<li>Coupe ample : conçue pour le confort</li>\n<li>Une subtile découpe torsadée apporte une touche de romantisme à cette robe longue fluide et minimaliste à une épaule, taillée dans une maille côtelée légère en mélange de Tencel. Ceignez la taille pour une silhouette accentuée et une touche de couleur</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',13,1,1,32),(85,'Baskets classiques et souples pour homme','110','91',32,'product-featured-85.jpg','<p>Apporte une finition en cuir formelle à une silhouette décontractée, dans une chaussure qui mise autant sur la qualité que sur le confort. Les œillets métalliques et la pièce talon contrastée équilibrent l\'allure épurée du modèle. Portez-le avec un jean, une chemise Oxford et un blazer.</p>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Synthetic sole, Secure fit.</span></p>','<ul>\n<li>Confection en cuir crust fini à la main ou en nubuck brossé, produits dans nos propres tanneries</li>\n<li>Doublure textile et semelle intérieure amovible moulée pour douceur et respirabilité</li>\n<li>Semelle légère offrant amorti, adhérence et flexibilité grâce à la technologie ECCO FluidForm Direct Comfort</li>\n<li>Lacets en textile facilement ajustables pour un maintien parfait</li>\n<li>Forme anatomique complète pour un confort exceptionnel</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',5,0,1,25),(86,'Montre connectée Amazfit GTS 3 pour Android et iPhone','199','179',32,'product-featured-86.jpg','<p>Amazfit GTS 3 est la montre connectée la plus puissante et la plus simple d\'utilisation, qui associe des fonctions santé et sport de pointe à un design fin et léger. Elle intègre un écran AMOLED ultra HD de 1,75 pouce, agrandi de 14 % par rapport à la génération précédente, avec un ratio écran/châssis de 72,4 %, parmi les plus élevés du marché. Exprimez votre humeur ou votre style avec plus de 100 cadrans élégants, ou même votre propre photo en fond d\'écran. Grâce au capteur biométrique BioTracker™ PPG 3.0 avancé à 6 photodiodes, la GTS 3 mesure votre fréquence cardiaque, votre saturation en oxygène, votre niveau de stress et votre rythme respiratoire en une seule mesure, avec un résultat en 45 secondes à peine. La gestion de la santé inclut aussi le suivi du sommeil et du cycle féminin. Avec plus de 150 modes sportifs, la reconnaissance automatique de 8 sports et une étanchéité 5 ATM, c\'est le partenaire fitness de nouvelle génération. Livrée avec Alexa intégrée et un assistant vocal hors ligne, elle prend en charge le GPS, GLONASS, Galileo, BDS et QZSS pour un suivi précis de vos trajets. Son autonomie atteint 12 jours en usage classique et 20 jours en mode économie d\'énergie. Compatible avec Android 7.0+ et iOS 12.0+.</p>','<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Alexa Built-in, GPS Fitness Sports Watch with 150 Sports Modes, 1.75â€ AMOLED Display, 12-Day Battery Life, Blood Oxygen Heart Rate Tracking</span></p>','<ul>\n<li>Surveillance intelligente 24 h/24 du taux d\'oxygène dans le sang</li>\n<li>Suivi de la fréquence cardiaque toute la journée et pendant la natation</li>\n<li>Aperçu simple de votre santé avec l\'évaluation PAI Health</li>\n<li>Surveillance approfondie du sommeil et de la qualité de la respiration nocturne</li>\n<li>Suivi et mesure du niveau de stress</li>\n<li>Suivi du cycle féminin</li>\n<li>Alexa intégrée</li>\n<li>Autonomie de 12 jours</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',9,1,1,3),(87,'Pyjama avion pour garçon, tenue de nuit pour tout-petit','59','37',68,'product-featured-87.jpg','<p><strong>Pyjama avion :</strong></p>\n<p>Encolure ronde large, taille élastique et matière extensible pour s\'habiller et se déshabiller en un geste. La matière respirante qui absorbe l\'humidité aide les enfants à évacuer la chaleur tout en restant au chaud les jours frais.</p>\n<p>Un bel ensemble au motif cartoon coloré, sportif et stylé, parfait pour dormir comme pour la journée, en particulier pour la journée pyjama de l\'école.</p>','T shirt Pants set for Kids Size 1Y - 14Y','<ul>\n<li>ENSEMBLE PYJAMA TRÈS CONFORTABLE – Le haut et le bas sont en coton 100 % naturel : extrêmement doux, confortable et frais pour l\'été</li>\n<li>MOTIF ADORABLE – Superbe motif cartoon avions et espace sur le haut, multitude de petits avions imprimés sur le bas : un régal pour les garçons</li>\n<li>CONCEPTION SOIGNÉE – Encolure large décontractée, étiquette thermocollante au col, jambes droites amples : liberté de mouvement totale et meilleur sommeil</li>\n<li>ENTRETIEN FACILE – Matière durable de haute qualité : lavage en machine ou à la main à l\'eau tiède</li>\n<li>AJUSTEMENT PRÈS DU CORPS – Coupe près du corps et coton susceptible de rétrécir : mieux vaut prendre une ou deux tailles au-dessus</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',2,0,1,26),(88,'T-shirt homme Under Armour Sportstyle, logo poitrine gauche, manches courtes','108','83',59,'product-featured-88.jpg','<p>Tissu en mélange de coton ultra doux pour un confort toute la journée.</p>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Loose:Â Fuller cut for complete comfort.</span></p>','<ul>\n<li>Tissu en mélange de coton ultra doux pour un confort toute la journée</li>\n<li>Coupe Loose : coupe plus généreuse pour un confort absolu</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',4,0,1,21),(89,'Pantalon jogger en polaire pour homme','58','37',110,'product-featured-89.jpg','<p>Sa jambe décontractée et sa taille élastique apportent un style lounge à ce pantalon casual classique.</p>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">A relaxed leg and elastic, drawstring waistband bring lounge-ready style to this classic casual pant</span></p>','<ul>\n<li>Bord-côtes élastiques aux chevilles et poches latérales dans la couture</li>\n<li>Le quotidien en mieux : nous écoutons les retours clients et peaufinons chaque détail pour garantir qualité, coupe et confort</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',1,0,1,18),(90,'Veste sweat zippée fine en coton pour femme','43','32',64,'product-featured-90.jpg','<p>Confectionnée en coton fin de qualité, cette veste zippée au style décontracté est parfaite quand vous voulez une protection supplémentaire sans l\'épaisseur d\'une grosse veste, ou pour suivre votre rythme de vie actif. Confortable, flatteuse et fonctionnelle : idéale pour mener toutes vos activités.</p>','<p>CASUAL & COMFY<br></p>','<ul>\n<li>Fermeture zippée intégrale avec poches</li>\n<li>Le sweat parfait toute l\'année</li>\n<li>Design fin unique</li>\n<li>Série pull-over également disponible</li>\n<li>Le mannequin mesure 1,70 m (mensurations 85-63-91)</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',4,0,1,14),(91,'Sweat oversize en polaire pour femme','68','56',41,'product-featured-91.jpg','<p>Silhouette oversize pour un confort maximal et un layering de qualité.</p>','<p><span style=\"color: rgb(51, 51, 51); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: small;\">Built for her lifestyle.</span><br></p>','<ul>\n<li>Silhouette oversize pour un confort maximal et un layering de qualité</li>\n<li>Polaire douce et chaude pour un confort et un agrément de port ultimes</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',3,0,1,14),(92,'Sac de voyage Travelpro pour ordinateur portable, format cabine','110','91',29,'product-featured-92.jpg','<p>Tout ce dont elle a besoin dans un seul sac parfait ! Très performant malgré son format compact et léger, ce bagage cabine s\'organise sans effort grâce à ses poches intérieures pour cordons d\'alimentation, batteries de secours, cosmétiques et accessoires. Les compartiments rembourrés protègent ordinateur et tablette, tandis que la poche avant magnétique accueille téléphone, clés et autres nécessités. Une poche latérale reçoit gourde, parapluie pliant ou gants. Une sangle arrière permet de fixer le sac sur une valise à roulettes pour voyager les mains libres.</p>','<p>Padded laptop (up to 14â€) and tablet sleeves offer protection for electronics.<br></p>','<ul>\n<li>Polyester</li>\n<li>Importé</li>\n<li>Compartiments rembourrés pour ordinateur portable (jusqu\'à 14\") et tablette pour protéger vos appareils. Poches organisatrices pour cordons d\'alimentation, batteries externes et autres essentiels</li>\n<li>Poche avant magnétique à accès rapide, idéale pour ranger un téléphone ou d\'autres essentiels. Poche latérale extérieure pour une gourde, un parapluie pliant ou d\'autres accessoires</li>\n<li>Tissu polyester avec enduction DuraGuard résistante à l\'eau et aux taches pour des bagages impeccables. Sangle arrière discrète à fixer sur la poignée télescopique d\'une valise à roulettes pour un empilement sécurisé et les mains libres</li>\n<li>Tirettes de fermeture ergonomiques haute résistance, robustes et agréables à l\'usage</li>\n<li>Garantie limitée Travelpro « Built For A Lifetime ». Dimensions : 28 x 53 x 13 cm ; poids : 0,64 kg</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',13,0,1,60),(93,'Grandes créoles rondes plaquées or, cristaux et imprimé léopard','32','25',165,'product-featured-93.jpg','<p>Ces magnifiques boucles d\'oreilles pendantes plaquées or 18 carats scintillent grâce à de superbes pierres centrales en rubis de synthèse, entourées d\'un halo de zircons cubiques étincelants. Ces boucles extravagantes sont le cadeau parfait pour un anniversaire ou une occasion spéciale.</p>','<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Gm148 2\" inches</span></p>','<ul>\n<li>Largeur : 6 mm</li>\n<li>Diamètre : 5 cm</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',1,0,1,42),(94,'Disque dur externe portable WD Elements 5 To','160','149',46,'product-featured-94.jpg','<p>Les disques durs portables Western Digital Elements offrent un stockage fiable à grande capacité, des transferts rapides et une connectivité universelle avec les périphériques USB 3.0 et USB 2.0, pour sauvegarder vos photos, vidéos et fichiers où que vous soyez. Leur design compact et léger propose une capacité allant jusqu\'à 5 To.</p>','<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">USB 3.0, Compatible with PC, Mac, PS4 & Xbox - WDBU6Y0050BBK-WESN</span></p>','<ul>\n<li>Compatibilité USB 3.0 et USB 2.0</li>\n<li>Compatible PC, Mac, PS4 et Xbox</li>\n<li>Transferts de données rapides, performances PC améliorées</li>\n<li>Grande capacité</li>\n<li>Capacité de stockage : 5 To</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',6,0,1,71),(95,'Bose QuietComfort 45 – Casque sans fil Bluetooth à réduction de bruit','329','279',53,'product-featured-95.jpg','<p>Le premier casque à réduction de bruit est de retour, avec un silence de classe mondiale, des matériaux légers et une technologie propriétaire pour un son profond et clair. Le Bose QuietComfort 45 n\'est pas qu\'une icône renaissante : c\'est l\'équilibre parfait entre silence, confort et son. Tout ce qui a fait du premier casque circum-auriculaire une icône est toujours là. Simplement affiné. Comme un design actualisé, aux coussinets lisses et à l\'allure épurée. Cuir synthétique moelleux, nylon renforcé de fibres de verre et charnières métalliques : tout a été choisi pour le confort comme pour la durabilité. Ajoutez une force de serrage minimale, et vous oublierez presque que vous portez un casque Bluetooth à réduction de bruit.</p>','Iconic, Quiet, Comfort and Sound.','<ul>\n<li>Casque sans fil à réduction de bruit – L\'équilibre parfait entre silence, confort et son. Bose utilise des micros minuscules pour mesurer, comparer et réagir au bruit extérieur, annulé par des signaux inversés.</li>\n<li>Audio haute fidélité – L\'architecture acoustique TriPort offre profondeur et richesse. L\'égalisation active optimisée maintient des performances équilibrées à tout volume : les basses restent constantes à faible volume et la musique claire à volume élevé.</li>\n<li>Modes Quiet et Aware – Choisissez le mode Quiet pour une réduction de bruit totale, ou le mode Aware pour rester conscient de votre environnement tout en écoutant votre musique.</li>\n<li>Casque circum-auriculaire – Ces casques confortables se portent toute la journée. Cuir synthétique moelleux, nylon résistant aux chocs et force de serrage minimale : autant luxueux que durables.</li>\n<li>Jusqu\'à 24 h d\'autonomie – Profitez de 24 heures d\'écoute par charge. Une charge rapide de 15 minutes offre 3 heures d\'écoute en déplacement ; branchez le câble audio inclus pour une écoute filaire prolongée.</li>\n<li>Recharge USB-C – Le casque se recharge via le câble USB-C inclus.</li>\n<li>Casque Bluetooth à réduction de bruit – Optimisé pour une connexion Bluetooth stable jusqu\'à 9 mètres de l\'appareil associé.</li>\n<li>Application Bose Music – Elle vous guide dans la configuration du casque, permet de régler la réduction de bruit, de gérer vos connexions Bluetooth, d\'activer des raccourcis et bien plus.</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',12,1,1,62),(96,'T-shirt homme coupe loose, épais, manches longues avec poche','29','23',102,'product-featured-96.jpg','<p>Depuis 1889, Carhartt confectionne des vêtements de travail durables sur lesquels vous pouvez compter, même pour les travaux les plus rudes. Ce t-shirt à manches longues arbore fièrement notre logo sur la poche poitrine. Confectionné en jersey de coton épais et coupé généreusement pour une coupe ample.</p>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">100% cotton (fiber content varies by color)</span></p>','<ul>\n<li>100 % coton (la composition varie selon la couleur)</li>\n<li>Col rond et poignets en maille côtelée</li>\n<li>Poche poitrine gauche avec étiquette Carhartt cousue</li>\n<li>Les t-shirts coupe Loose sont taillés plus amples au niveau de la poitrine et des épaules</li>\n<li>Coupe Loose, anciennement appelée Original Fit : seule l\'étiquette change. Les tailles et la coupe restent identiques ; les stocks peuvent varier d\'étiquetage</li>\n<li>Ancien nom du produit : t-shirt de travail à manches longues avec poche K126</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',12,1,1,20),(97,'Robe midi à détails rosette pour femme (standard et grande taille)','87','67',53,'product-featured-97.jpg','<p>Notre robe de soirée midi associe un haut extensible uni, une jupe pleine de sequins soutache et une ceinture à nouer : parfaite pour toutes vos soirées.</p>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Short-sleeve v-neck midi blue dress</span></p>','<ul>\n<li>Détail en sequins</li>\n<li>Ce modèle est disponible en tailles standard et grande taille</li>\n<li>Fermeture éclair au dos</li>\n<li>Design Joanna Chen</li>\n<li>Robe midi bleue à manches courtes et col en V</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',13,1,1,32),(98,'Manteau-cardigan long en polaire douce, revers et ouverture devant, pour femme','52','43',41,'product-featured-98.jpg','<h3>Détails du design – Manteau teddy d\'hiver en polaire pour femme</h3>\n<ul>\n<li><strong>Matière :</strong> 85 % coton + 15 % spandex. Ce manteau teddy est 100 % neuf et de haute qualité !</li>\n<li><strong>Style :</strong> décontracté, manches longues, longueur genou, effet peluche, fausse fourrure, revers, ouvert sur le devant : aussi chic que chaud.</li>\n<li><strong>Occasions :</strong> printemps, automne, hiver, travail, rendez-vous, vacances, quotidien, à la maison. Ce manteau en fausse fourrure convient aux occasions formelles comme décontractées.</li>\n<li><strong>Contenu du colis :</strong> 1 manteau teddy femme</li>\n<li><strong>À NOTER :</strong> la coupe peut varier selon la morphologie par rapport aux photos du mannequin ; consultez les photos des avis clients pour plus de détails sur la taille.</li>\n<li><strong>À NOTER :</strong> ce modèle est conçu pour être porté ouvert et ne comporte ni bouton ni fermeture. À prendre en compte avant l\'achat.</li>\n</ul>','<p style=\"list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"overflow-wrap: break-word; display: block;\">Material:85% Polyester; 15% Spandex. 100% brand new and high quality!</span></p>','<ul>\n<li>Sans fermeture</li>\n<li>Matière : 85 % polyester ; 15 % spandex. 100 % neuf et de haute qualité !</li>\n<li>Style : décontracté, manches longues, longueur genou, effet peluche, fausse fourrure, revers, ouvert sur le devant</li>\n<li>Occasions : printemps, automne, hiver, travail, rendez-vous, vacances, quotidien, à la maison</li>\n<li>À associer avec : ce manteau se marie parfaitement avec une chemise ou un pull, un jean, un legging ou un pantalon fluide, et des bottines</li>\n<li>À NOTER : la coupe peut varier selon la morphologie par rapport aux photos du mannequin ; consultez les photos des avis clients pour plus de détails sur la taille</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',2,1,1,15),(99,'Oculus Quest 2 – Casque de réalité virtuelle tout-en-un','512','495',46,'product-featured-99.jpg','<p>Oculus Quest 2 est notre système de réalité virtuelle tout-en-un le plus avancé à ce jour. Chaque détail a été conçu pour que les mondes virtuels s\'adaptent à vos mouvements, vous laissant explorer des jeux et des expériences époustouflants avec une liberté inégalée. Aucun PC ni console requis. Profitez au maximum de chaque instant grâce à des performances ultra rapides et des graphismes de nouvelle génération. Restez concentré grâce à un affichage spectaculaire doté de 50 % de pixels en plus que le Quest d\'origine. Ou faites une pause et prenez la première place des concerts en direct et des événements exclusifs. Les manettes Touch redessinées offrent une ergonomie améliorée et des commandes intuitives qui transportent vos gestes directement en VR. Vous pouvez même connecter votre casque à un PC gaming compatible via un câble Oculus Link pour accéder à des centaines de jeux PC VR. Quest 2 invite aussi vos amis dans l\'action : partagez votre expérience grâce au casting en direct, ou retrouvez-vous dans des mondes virtuels pour des compétitions multijoueurs ou simplement passer du temps ensemble. Avec Oculus Quest 2, les possibilités de jeu, de création et de découverte sont sans limite.</p>','<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important; font-family: Roboto;\">Advanced All-In-One Virtual Reality Headset</span></p>','<ul>\n<li>Matériel de nouvelle génération – Chaque mouvement compte grâce à un processeur ultra rapide et à notre affichage de la plus haute résolution</li>\n<li>Gaming tout-en-un – Rétrocompatible, explorez des titres inédits et vos favoris dans l\'immense bibliothèque de contenu Quest</li>\n<li>Divertissement immersif – La meilleure place pour les concerts en direct, les films novateurs, les événements exclusifs et plus encore</li>\n<li>Installation facile – Ouvrez le boîtier, configurez via l\'application smartphone et plongez dans la VR. Aucun PC ni console requis. Nécessite un accès Internet sans fil et l\'application Oculus (téléchargement gratuit)</li>\n<li>Affichage premium – Ne manquez aucun détail grâce à un affichage spectaculaire doté de 50 % de pixels en plus par rapport au Quest d\'origine</li>\n<li>Contrôle ultime – Les manettes Oculus Touch redessinées transmettent vos mouvements en VR avec des commandes intuitives</li>\n<li>Compatible PC VR – Accédez aux incroyables titres Oculus Rift en reliant un câble Oculus Link à un PC gaming compatible. Câble vendu séparément</li>\n<li>Son cinématographique 3D – Écoutez dans toutes les directions grâce aux haut-parleurs intégrés qui diffusent un audio 3D positionnel</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',0,1,1,61),(100,'Pantalon de yoga jogger long à ourlets pour homme','105','95',78,'product-featured-100.jpg','<p>Nous vous accueillons chaleureusement pour découvrir notre pantalon de yoga long à ourlets « Long » – notre lancement le plus excitant de l\'année – <strong>élu « pantalon de yoga préféré » par les instructeurs du magazine YOGA JOURNAL ! (Printemps 2015)</strong></p>\n<p>C\'est la FORME et la MODE – <strong>vous enchaînerez les courses avec style !</strong></p>\n<p>Remarquez sur les photos les empiècements de tissu sur le haut de cuisse <strong>qui permettent une expansion complète de l\'entrejambe dans TOUTES les directions.</strong> Simplement parfait pour le yoga, le Pilates, la détente, la salle de sport et les courses !</p>\n<p>Ceinture élastique décontractée avec cordon de serrage 6 mm blanc contrasté à embouts métalliques ultra légers (ils ne claquent pas au sèche-linge).</p>\n<p>Les bord-côtes 2x1 du bas <strong>gardent le pantalon « en place »</strong> pendant les inversions et les appuis renversés !</p>\n<p>De <strong>profondes poches</strong> cousues sur le vêtement pour ne pas « flotter ». Profondeur de 16,5 cm jusqu\'à la couture latérale : elles accueillent les grands smartphones !</p>\n<p>Le passepoil côtelé court de façon <strong>ininterrompue</strong> du côté du pantalon jusqu\'à l\'arrière – <strong>offrant une flexibilité et une stabilité remarquables pour les étirements et les activités intenses.</strong></p>','<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">Long Cuffed Jogger Pants</span></p>','<ul>\n<li>Fièrement signé 4-rth : plus de 10 ans d\'activité à Los Angeles, Californie. Conçu, fabriqué et expédié de Los Angeles</li>\n<li>Bandes de tissu sur le haut de la cuisse permettant une expansion complète de l\'entrejambe dans TOUTES les directions</li>\n<li>Confectionné dans notre tissu MODAL French-Terry sur mesure, issu du bois de bouleau durable</li>\n<li>Ourlet du bas ajusté mais décontracté. IDÉAL pour tous les styles de yoga – Ashtanga, Bikram, Hatha, Hot – ainsi que le Pilates, le tennis et le foot !</li>\n<li>MODÈLE : 1,88 m, 79 kg. Taille : M. (Consultez la description du produit pour les indications de taille !) Merci d\'IGNORER le « guide des tailles » ci-dessus !!</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',3,0,1,18),(101,'Thermomètre infrarouge numérique pour adultes et enfants','79','70',289,'product-featured-101.jpg','<h5>Sûr et hygiénique</h5>\n<p>La mesure sans contact lit la température corporelle à moins de 3 cm du centre du front, sans contact physique.</p>\n<h5>Précision des capteurs tri-point</h5>\n<p>Un capteur infrarouge ultra sensible collecte plus de 100 points de données par seconde, tandis que les capteurs de distance et d\'environnement prennent en compte les autres variables, pour une précision maximale à chaque mesure.</p>\n<h5>Rapide, simple, clair et silencieux</h5>\n<p>Ce thermomètre à bouton unique lit la température en 1 seconde à peine sur un grand écran LED lumineux, même dans l\'obscurité totale. L\'alerte par vibration silencieuse élimine tout bruit ou dérangement.</p>','<p style=\"padding: 0px; margin-top: 0px; text-rendering: optimizelegibility; margin-bottom: 0px !important; line-height: 32px !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizelegibility; word-break: break-word; line-height: 32px !important;\">No-Touch Forehead Thermometer</span></p>','<ul>\n<li>Mesure sans contact, sûre et hygiénique : le PT3 intègre un capteur de température infrarouge qui lit la température corporelle à moins de 3 cm du centre du front, sans contact physique.</li>\n<li>Précision des capteurs tri-point : un capteur infrarouge ultra sensible collecte plus de 100 points de données par seconde, tandis que les capteurs de distance et d\'environnement prennent en compte les autres variables, pour une précision maximale à chaque mesure.</li>\n<li>Rapide, simple, clair et silencieux : ce thermomètre à bouton unique lit la température en 1 seconde à peine sur un grand écran LED lumineux, même dans l\'obscurité totale. L\'alerte par vibration silencieuse évite tout bruit ou dérangement.</li>\n<li>Multi-scénarios et tous âges : l\'iHealth PT3 est conçu pour tous, des nourrissons aux personnes âgées. Choix idéal pour hôpitaux, hôtels, écoles et établissements publics.</li>\n<li>Contenu : 1 thermomètre PT3, 2 piles AAA, 1 manuel d\'utilisation, 1 guide de démarrage rapide, notre garantie sans souci de 12 mois et un service client basé en Californie.</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers aÂ </span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',4,1,1,73),(102,'Robe-chemise grande taille pour femme avec détails dorés','190','169',112,'product-featured-102.jpg','<p>Cette robe a tout pour plaire ! Assez extensible pour être indulgente avec les formes. Convient parfaitement à ma silhouette sablier/poire. Les manches courtes répondent aux exigences vestimentaires les plus réservées (pas de décolleté sans manches) tout en restant adaptées au printemps et à l\'été.</p>','<p>From Calvin Klein</p>','<ul>\n<li>Robe-chemise à manches courtes avec taille ceinturée et finitions dorées</li>\n<li>Col en V fendu</li>\n<li>Fermeture éclair apparente au dos</li>\n</ul>','<p><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">This is a sample text for conditions.</span><br></p>','<p><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">Offers a&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">15 to 30-day window</span><span style=\"margin: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\">&nbsp;in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>',11,1,1,32);
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_color`
--

DROP TABLE IF EXISTS `tbl_product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_color`
--

LOCK TABLES `tbl_product_color` WRITE;
/*!40000 ALTER TABLE `tbl_product_color` DISABLE KEYS */;
INSERT INTO `tbl_product_color` VALUES (69,1,4),(70,4,4),(77,6,6),(82,2,12),(83,9,13),(84,3,14),(85,2,15),(86,6,15),(87,3,16),(88,3,17),(89,2,18),(90,3,19),(91,1,20),(92,8,21),(93,2,22),(94,2,23),(95,2,25),(96,5,26),(97,2,27),(98,4,27),(99,5,28),(100,7,29),(101,10,30),(102,11,31),(103,14,32),(105,2,34),(106,1,35),(107,3,36),(109,6,38),(110,2,39),(111,11,42),(149,3,10),(150,6,9),(151,3,8),(152,7,7),(159,2,77),(163,17,79),(164,2,78),(167,3,80),(168,2,81),(172,1,82),(173,2,82),(174,4,82),(195,2,84),(201,2,86),(202,6,86),(203,17,86),(222,16,93),(223,21,85),(224,22,85),(225,23,85),(226,1,83),(227,2,83),(228,3,83),(229,4,83),(230,5,83),(231,6,83),(232,8,83),(233,14,83),(234,17,83),(235,18,83),(236,12,89),(237,27,91),(239,2,92),(240,29,92),(241,2,88),(242,8,88),(243,17,88),(244,2,90),(245,6,90),(246,25,90),(247,27,90),(248,28,90),(251,2,95),(252,6,95),(253,5,96),(254,24,96),(256,2,94),(257,3,87),(258,17,87),(261,25,97),(262,5,98),(263,6,99),(264,14,100),(266,6,101),(267,2,102);
/*!40000 ALTER TABLE `tbl_product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_photo`
--

DROP TABLE IF EXISTS `tbl_product_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_photo` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_photo`
--

LOCK TABLES `tbl_product_photo` WRITE;
/*!40000 ALTER TABLE `tbl_product_photo` DISABLE KEYS */;
INSERT INTO `tbl_product_photo` VALUES (106,'106.jpg',83),(107,'107.jpg',83),(108,'108.jpg',84),(109,'109.jpg',84),(110,'110.jpg',85),(111,'111.jpg',85),(112,'112.jpg',86),(113,'113.jpg',86),(114,'114.jpg',87),(115,'115.jpg',87),(116,'116.jpg',88),(117,'117.jpg',88),(118,'118.jpg',89),(119,'119.jpg',89),(120,'120.jpg',90),(121,'121.jpg',91),(122,'122.jpg',92),(123,'123.jpg',92),(124,'124.jpg',93),(125,'125.jpg',94),(126,'126.jpg',95),(127,'127.jpg',96),(128,'128.jpg',97),(129,'129.jpg',98),(130,'130.jpg',98),(131,'131.jpg',100),(132,'132.jpg',102);
/*!40000 ALTER TABLE `tbl_product_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_size`
--

DROP TABLE IF EXISTS `tbl_product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_id` int NOT NULL,
  `p_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_size`
--

LOCK TABLES `tbl_product_size` WRITE;
/*!40000 ALTER TABLE `tbl_product_size` DISABLE KEYS */;
INSERT INTO `tbl_product_size` VALUES (44,1,6),(56,8,12),(57,9,12),(58,10,12),(59,11,12),(60,12,12),(61,13,12),(62,9,13),(63,11,13),(64,13,13),(65,15,13),(66,9,14),(67,11,14),(68,12,14),(69,13,14),(70,9,15),(71,11,15),(72,13,15),(73,15,16),(74,16,16),(75,17,16),(76,16,17),(77,17,17),(78,14,18),(79,15,18),(80,16,18),(81,17,18),(82,15,19),(83,16,19),(84,17,19),(85,14,20),(86,15,20),(87,17,20),(88,15,21),(89,17,21),(90,15,22),(91,16,22),(92,17,22),(93,15,23),(94,16,23),(95,17,23),(96,18,25),(97,19,25),(98,20,25),(99,21,25),(100,19,26),(101,21,26),(102,22,26),(103,23,26),(104,19,27),(105,20,27),(106,21,27),(107,22,27),(108,19,28),(109,20,28),(110,21,28),(111,19,29),(112,20,29),(113,22,29),(114,1,30),(115,2,30),(116,3,30),(117,4,30),(118,23,31),(119,26,32),(123,2,34),(124,2,35),(125,2,36),(126,3,36),(129,2,38),(130,3,38),(131,4,38),(132,5,38),(133,27,39),(134,8,42),(210,3,10),(211,4,10),(212,5,10),(213,6,10),(214,3,9),(215,4,9),(216,3,8),(217,4,8),(218,2,7),(219,3,7),(220,4,7),(249,1,79),(250,2,79),(251,3,79),(252,1,78),(253,2,78),(254,3,78),(255,4,78),(256,5,78),(259,26,80),(262,3,82),(263,4,82),(278,2,84),(279,3,84),(280,4,84),(281,5,84),(282,6,84),(305,26,86),(339,27,93),(340,15,85),(341,16,85),(342,17,85),(343,18,85),(344,19,85),(345,20,85),(346,21,85),(347,22,85),(348,23,85),(349,24,85),(350,25,85),(351,1,83),(352,2,83),(353,3,83),(354,4,83),(355,5,83),(356,6,83),(357,7,83),(358,3,89),(359,4,89),(360,5,89),(361,6,89),(362,7,89),(363,2,91),(364,3,91),(365,4,91),(366,5,91),(367,6,91),(369,27,92),(370,3,88),(371,4,88),(372,5,88),(373,6,88),(374,7,88),(375,1,90),(376,2,90),(377,3,90),(378,4,90),(380,27,95),(381,3,96),(382,4,96),(383,5,96),(384,6,96),(385,7,96),(398,33,94),(399,29,87),(400,30,87),(401,31,87),(402,32,87),(403,33,87),(404,34,87),(405,35,87),(406,36,87),(407,37,87),(408,38,87),(409,39,87),(418,8,97),(419,9,97),(420,10,97),(421,11,97),(422,12,97),(423,13,97),(424,14,97),(425,15,97),(426,16,97),(427,17,97),(428,18,97),(429,19,97),(430,4,98),(431,5,98),(432,6,98),(433,7,98),(434,40,99),(435,41,99),(436,3,100),(437,4,100),(438,5,100),(439,6,100),(441,27,101),(442,42,102),(443,43,102),(444,44,102),(445,45,102),(446,46,102),(447,47,102);
/*!40000 ALTER TABLE `tbl_product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rating` (
  `rt_id` int NOT NULL AUTO_INCREMENT,
  `p_id` int NOT NULL,
  `cust_id` int NOT NULL,
  `comment` text NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rating`
--

LOCK TABLES `tbl_rating` WRITE;
/*!40000 ALTER TABLE `tbl_rating` DISABLE KEYS */;
INSERT INTO `tbl_rating` VALUES (1,83,1,'test',4),(2,83,2,'test',5),(3,83,3,'test',5),(4,84,2,'test',1),(5,84,3,'test',2),(6,85,1,'test',3),(7,86,2,'test',3),(8,86,3,'test',4),(9,87,1,'test',2),(10,87,2,'test',1),(11,88,3,'test',5);
/*!40000 ALTER TABLE `tbl_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_service`
--

DROP TABLE IF EXISTS `tbl_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_service`
--

LOCK TABLES `tbl_service` WRITE;
/*!40000 ALTER TABLE `tbl_service` DISABLE KEYS */;
INSERT INTO `tbl_service` VALUES (5,'Retours faciles','Retour gratuit sous 15 jours !','service-5.png'),(6,'Livraison gratuite','Livraison offerte en France métropolitaine.','service-6.png'),(7,'Expédition rapide','Articles expédiés sous 24 h.','service-7.png'),(8,'Satisfaction garantie','Votre satisfaction est notre priorité absolue.','service-8.png'),(9,'Paiement sécurisé','Paiement 100 % sécurisé pour toutes les commandes.','service-9.png'),(10,'Satisfait ou remboursé','Remboursement garanti sur tous nos produits.','service-10.png');
/*!40000 ALTER TABLE `tbl_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int NOT NULL,
  `total_popular_post_footer` int NOT NULL,
  `total_recent_post_sidebar` int NOT NULL,
  `total_popular_post_sidebar` int NOT NULL,
  `total_featured_product_home` int NOT NULL,
  `total_latest_product_home` int NOT NULL,
  `total_popular_product_home` int NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int NOT NULL,
  `home_welcome_on_off` int NOT NULL,
  `home_featured_product_on_off` int NOT NULL,
  `home_latest_product_on_off` int NOT NULL,
  `home_popular_product_on_off` int NOT NULL,
  `home_testimonial_on_off` int NOT NULL,
  `home_blog_on_off` int NOT NULL,
  `newsletter_on_off` int NOT NULL,
  `ads_above_welcome_on_off` int NOT NULL,
  `ads_above_featured_product_on_off` int NOT NULL,
  `ads_above_latest_product_on_off` int NOT NULL,
  `ads_above_popular_product_on_off` int NOT NULL,
  `ads_above_testimonial_on_off` int NOT NULL,
  `ads_category_sidebar_on_off` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES (1,'logo.png','favicon.png','<p>Boutique en ligne de mode et de produits High-Tech pour toute la famille. Qualité, prix accessibles et service client réactif, 7 j/7.</p>','Copyright © 2026 - Boutique e-commerce PHP - Développé par Hammad Hassan','93 avenue Simpson\nHarrisburg, Pennsylvanie','support@ecommercephp.com','+001 10 101 0010','','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.020958405712!2d-84.39261378514685!3d39.151504939531584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841acfb8da30203%3A0x193175e741781f21!2s4293%20Simpson%20Ave%2C%20Cincinnati%2C%20OH%2045227%2C%20USA!5e0!3m2!1sen!2snp!4v1647796779407!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>','support@ecommercephp.com','Message d\'un visiteur - Boutique e-commerce PHP','Merci pour votre message. Nous vous répondrons dans les plus brefs délais.','Un lien de confirmation a été envoyé à votre adresse e-mail. Vous y trouverez les informations de réinitialisation du mot de passe.',4,4,5,5,5,6,8,'Boutique e-commerce PHP','boutique en ligne, mode, high-tech, e-commerce php, mysql','Projet e-commerce PHP avec base de données MySQL : mode femme, homme, enfant, high-tech et maison.','banner_login.jpg','banner_registration.jpg','banner_forget_password.jpg','banner_reset_password.jpg','banner_search.jpg','banner_cart.jpg','banner_checkout.jpg','banner_product_category.jpg','banner_blog.jpg','Bienvenue sur notre boutique en ligne','Découvrez notre sélection de vêtements, accessoires et produits high-tech au meilleur prix. Livraison rapide, retours simples et paiement 100 % sécurisé.','En savoir plus','#','cta.jpg','Produits en vedette','Notre sélection de produits à la une','Nouveautés','Les derniers produits ajoutés à notre catalogue','Produits populaires','Les préférés de nos clients','Témoignages','Découvrez ce que nos clients disent de nous','testimonial.jpg','Derniers articles','Retrouvez tous nos derniers articles et actualités ci-dessous','Inscrivez-vous à notre newsletter pour recevoir nos promotions et bons plans.','admin@ecom.com','pk_test_0SwMWadgu8DwmEcPdUPRsZ7b','','Banque : WestView Bank\nNuméro de compte : CA100270589600\nAgence : CA Branch\nPays : USA','','<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>','<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->',1,1,1,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_shipping_cost`
--

DROP TABLE IF EXISTS `tbl_shipping_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`shipping_cost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_shipping_cost`
--

LOCK TABLES `tbl_shipping_cost` WRITE;
/*!40000 ALTER TABLE `tbl_shipping_cost` DISABLE KEYS */;
INSERT INTO `tbl_shipping_cost` VALUES (1,228,'11'),(2,167,'10'),(3,13,'8'),(4,230,'0');
/*!40000 ALTER TABLE `tbl_shipping_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_shipping_cost_all`
--

DROP TABLE IF EXISTS `tbl_shipping_cost_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int NOT NULL AUTO_INCREMENT,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`sca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

LOCK TABLES `tbl_shipping_cost_all` WRITE;
/*!40000 ALTER TABLE `tbl_shipping_cost_all` DISABLE KEYS */;
INSERT INTO `tbl_shipping_cost_all` VALUES (1,'100');
/*!40000 ALTER TABLE `tbl_shipping_cost_all` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_size`
--

DROP TABLE IF EXISTS `tbl_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_size` (
  `size_id` int NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_size`
--

LOCK TABLES `tbl_size` WRITE;
/*!40000 ALTER TABLE `tbl_size` DISABLE KEYS */;
INSERT INTO `tbl_size` VALUES (1,'XS'),(2,'S'),(3,'M'),(4,'L'),(5,'XL'),(6,'XXL'),(7,'3XL'),(8,'31'),(9,'32'),(10,'33'),(11,'34'),(12,'35'),(13,'36'),(14,'37'),(15,'38'),(16,'39'),(17,'40'),(18,'41'),(19,'42'),(20,'43'),(21,'44'),(22,'45'),(23,'46'),(24,'47'),(25,'48'),(26,'Taille unique'),(27,'Taille unique (tous)'),(28,'10'),(29,'12 mois'),(30,'2 ans'),(31,'3 ans'),(32,'4 ans'),(33,'5 ans'),(34,'6 ans'),(35,'7 ans'),(36,'8 ans'),(37,'10 ans'),(38,'12 ans'),(39,'14 ans'),(40,'256 Go'),(41,'128 Go'),(42,'14 Plus'),(43,'16 Plus'),(44,'18 Plus'),(45,'20 Plus'),(46,'22 Plus'),(47,'24 Plus');
/*!40000 ALTER TABLE `tbl_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slider`
--

LOCK TABLES `tbl_slider` WRITE;
/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */;
INSERT INTO `tbl_slider` VALUES (1,'slider-1.png','Bienvenue sur notre boutique e-commerce','Achetez en ligne les dernières tendances femme','Voir les accessoires femme','product-category.php?id=4&type=mid-category','Center'),(2,'slider-2.jpg','50 % de réduction sur tout le site','Profitez de soldes exceptionnelles sur une sélection d\'articles, dans la limite des stocks disponibles.','En savoir plus','#','Center'),(3,'slider-3.png','Service client 7 j/7','Notre équipe vous répond par e-mail 24 h/24 et 7 j/7, avec le sourire.','En savoir plus','#','Right');
/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_social`
--

DROP TABLE IF EXISTS `tbl_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_social` (
  `social_id` int NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_social`
--

LOCK TABLES `tbl_social` WRITE;
/*!40000 ALTER TABLE `tbl_social` DISABLE KEYS */;
INSERT INTO `tbl_social` VALUES (1,'Facebook','https://www.facebook.com/#','fa fa-facebook'),(2,'Twitter','https://www.twitter.com/#','fa fa-twitter'),(3,'LinkedIn','','fa fa-linkedin'),(4,'Google Plus','','fa fa-google-plus'),(5,'Pinterest','','fa fa-pinterest'),(6,'YouTube','https://www.youtube.com/#','fa fa-youtube'),(7,'Instagram','https://www.instagram.com/#','fa fa-instagram'),(8,'Tumblr','','fa fa-tumblr'),(9,'Flickr','','fa fa-flickr'),(10,'Reddit','','fa fa-reddit'),(11,'Snapchat','','fa fa-snapchat'),(12,'WhatsApp','https://www.whatsapp.com/#','fa fa-whatsapp'),(13,'Quora','','fa fa-quora'),(14,'StumbleUpon','','fa fa-stumbleupon'),(15,'Delicious','','fa fa-delicious'),(16,'Digg','','fa fa-digg');
/*!40000 ALTER TABLE `tbl_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subscriber`
--

DROP TABLE IF EXISTS `tbl_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subscriber` (
  `subs_id` int NOT NULL AUTO_INCREMENT,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int NOT NULL,
  PRIMARY KEY (`subs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subscriber`
--

LOCK TABLES `tbl_subscriber` WRITE;
/*!40000 ALTER TABLE `tbl_subscriber` DISABLE KEYS */;
INSERT INTO `tbl_subscriber` VALUES (1,'ruth@mail.com','2022-03-20','2022-03-20 10:25:18','f4eabc1afed38a08da8d1c6e5fb42187',1),(2,'kimberly@mail.com','2022-03-20','2022-03-20 10:26:07','61f3af9cac686555a4bff9e565f88c47',1),(3,'gregobn@mail.com','2022-03-20','2022-03-20 10:27:21','72d6fc3a9e9ed33dfc30b10f4de82f34',1),(4,'morgan.sarahh5@mail.com','2022-03-20','2022-03-20 10:27:48','bcdeda095a6c882803fc3aaf4a17f08e',1),(5,'greenwd1154@mail.com','2022-03-20','2022-03-20 10:28:09','279ecfe9debbb091c664641f534857ee',1),(6,'awsm785@mail.com','2022-03-20','2022-03-20 10:28:21','94096ae01fc65e71c50c7843d096e041',1);
/*!40000 ALTER TABLE `tbl_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_top_category`
--

DROP TABLE IF EXISTS `tbl_top_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_top_category` (
  `tcat_id` int NOT NULL AUTO_INCREMENT,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int NOT NULL,
  PRIMARY KEY (`tcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_top_category`
--

LOCK TABLES `tbl_top_category` WRITE;
/*!40000 ALTER TABLE `tbl_top_category` DISABLE KEYS */;
INSERT INTO `tbl_top_category` VALUES (1,'Men',1),(2,'Women',1),(3,'Kids',1),(4,'Electronics',1),(5,'Health and Household',1);
/*!40000 ALTER TABLE `tbl_top_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Administrator','admin@mail.com','7777777777','$2y$10$66los.evB0X6ysSkGK36/uzeFZlFtJQq8j6OfYF3/bGN.lhwcP.9O','user-1.png','Super Admin','Active'),(2,'Christine','christine@mail.com','4444444444','81dc9bdb52d04dc20036dbd8313ed055','user-13.jpg','Admin','Active');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_video`
--

LOCK TABLES `tbl_video` WRITE;
/*!40000 ALTER TABLE `tbl_video` DISABLE KEYS */;
INSERT INTO `tbl_video` VALUES (1,'Video 1','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(2,'Video 2','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),(4,'Video 3','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');
/*!40000 ALTER TABLE `tbl_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ecommerceweb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-30 13:27:25
