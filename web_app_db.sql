-- MySQL dump 10.13  Distrib 5.6.27, for osx10.11 (x86_64)
--
-- Host: localhost    Database: web_app
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'観葉植物','2015-12-24 18:46:05','2015-12-24 18:46:05'),(2,'多肉植物','2015-12-24 18:46:05','2015-12-24 18:46:05'),(3,'肥料','2015-12-24 18:46:05','2015-12-24 18:46:05');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_items_categories_idx` (`category_id`),
  CONSTRAINT `fk_items_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'プロミック[観葉植物用]',594,23,'使い方は土の上に置くだけで、匂いもなく清潔に場所を問わず使える。 肥料効果は約2ヶ月間持続する。暖効性窒素（ウレアホルム）入り。 水やりごとに溶けて、粉々に崩れたら、次の肥料を与える。 チッソ成分で葉色を鮮やかに！','2015-12-24 18:47:43','2015-12-24 18:47:43',3),(2,'プロミック［シンビジューム・クンシラン用］',594,36,'使い方は土の上に置くだけで、匂いもなく清潔に場所を問わず使える。 肥料効果は約2ヶ月間持続する。暖効性窒素（ウレアホルム）入り。 水やりごとに溶けて、粉々に崩れたら、次の肥料を与える。 チッソ成分で葉色を鮮やかに！花肥のリンサン成分で翌年も花つきよくなる','2015-12-24 18:49:46','2015-12-24 18:49:46',3),(3,'プロミック［草花・鉢花用］',594,12,'使い方は土の上に置くだけで、匂いもなく清潔に場所を問わず使える。 肥料効果は約2ヶ月間持続する。暖効性窒素（ウレアホルム）入り。 水やりごとに溶けて、粉々に崩れたら、次の肥料を与える。 チッソ成分で葉色を鮮やかに！花肥のリンサン成分で翌年も花つきよくなる','2015-12-24 18:50:37','2015-12-24 18:50:37',3),(4,'ハイポネックス',842,14,'15種類の栄養素をバランスよく含み、植物の花・実つき、花・葉色を良くします。','2015-12-24 18:51:14','2015-12-24 18:51:14',3),(5,'花工場原液',540,23,'花工場原液は植物に欠かせない成分をバランスよく配合した。','2015-12-24 18:51:57','2015-12-24 18:51:57',3),(6,'ソテツ',21000,5,'庭木として人気の高い。寿命が非常に長く、1000年を超えるものも。 生命力が強いので初心者におすすめ。','2015-12-24 18:53:10','2015-12-24 18:53:10',1),(7,'オーガスタ',8400,3,'大きな楕円形の葉が印象的。以外にも寒さに強く育てやすい。 初心者にお勧めで、インパクトもあるのでギフトにもOK。','2015-12-24 18:53:40','2015-12-24 18:53:40',1),(8,'パキラ',16000,5,'ミニ観葉から幹を編み込んだものまで、サイズも樹形も様々で楽しめる。 成長が早く、育てやすいので初心者に良い。病害虫もつきにくい。','2015-12-24 18:54:14','2015-12-24 18:54:14',1),(9,'カポック',16000,6,'寒さにも乾燥にも強く、初心者にお勧め。 小さなスペースで育てることも可能。ギフトとしても喜ばれる。','2015-12-24 18:54:50','2015-12-24 18:54:50',1),(10,'マッサン',20000,4,'「幸福の木」としても有名。シンプルな樹形が有名な植物。 育てやすいが気温にだけは注意する必要がある。','2015-12-24 18:55:18','2015-12-24 18:55:18',1),(11,'アロエ・ディコトマ',70000,2,'アロエの中でも最も大きくなる種類の一つ。 高くなると10m程の大きさにまで育つ。乾燥に強く、管理しやすい植物。 水の与えすぎに注意。','2015-12-24 19:10:31','2015-12-24 19:10:31',2),(12,'イポメア・ホルビー',35000,5,'丸々とした塊根から生える繊細なツルが印象的。 とても成長が遅く、1年に1cmも成長しない。寒さにとても弱い。','2015-12-24 19:11:02','2015-12-24 19:11:02',2),(13,'アデニア・グロボーザ',190000,1,'枝に大きな棘が特徴的。流通量が少なく希少な植物。','2015-12-24 19:11:25','2015-12-24 19:11:25',2),(14,'パキポディウム・ラメリー',6500,3,'乾燥地帯に自生する植物。春先に花茎をのばして、黄色い花を咲かす。','2015-12-24 19:11:52','2015-12-24 19:11:52',2),(15,'ギロカルプス・ジャイクニー',140000,1,'流通量が非常に少ない希少な植物。葉の形が特徴的で面白く、葉の角も増加していく。 オレンジの鮮やかな花を咲かせる。','2015-12-24 19:13:09','2015-12-24 19:13:09',2),(16,'リプサリス・SP',2000,5,'サボテンの仲間で、細長い茎が何本も出てくる面白い植物。 直射日光は必要ないがなるべく明るいところで育てると良い。','2015-12-24 19:13:37','2015-12-24 19:13:37',2);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-08 18:39:15
