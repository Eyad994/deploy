-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: haircutdb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_09_25_060606_create_providers_table',1),(9,'2019_09_25_060634_create_reserves_table',1),(10,'2019_09_25_072832_add_columns_to_reserves',1),(11,'2019_09_25_090016_rename_provider_id_in_users_table',1),(13,'2019_11_08_093341_add_approved_column_to_reserves',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('00833c4c166f21381471a51ea0d7c4747094fc6dc246451e46175e1e09ad3eec86af562505e8b9bc',1,1,'Personal Access Token','[]',0,'2019-10-09 20:22:54','2019-10-09 20:22:54','2020-10-09 23:22:54'),('088965ecb3c3368230f19b62782ec4e7a7b2ffe999872f1b4b7db2c05cecde62a62b80cb19734e94',1,1,'Personal Access Token','[]',0,'2019-10-11 15:06:53','2019-10-11 15:06:53','2020-10-11 18:06:53'),('094b4c44f48a655885cf4a218480066de279d1d877e2a682b3bb6d7ba6f13d35e7bd17d83a541a0d',2,1,'Personal Access Token','[]',0,'2019-10-11 17:18:31','2019-10-11 17:18:31','2020-10-11 20:18:31'),('0d32721d15d8d022e13e4d9a588d3a80d5a75bf6ac4121829aba73c05a118a3016e92cc4d6a8fc47',1,1,'Personal Access Token','[]',0,'2019-10-11 18:05:52','2019-10-11 18:05:52','2020-10-11 21:05:52'),('0ece2ea220d414d876d1f1ef572366ad5bc101a3907b85af454e0834267bf6e099fb8e2554ee12b6',1,1,'Personal Access Token','[]',0,'2019-10-11 17:25:12','2019-10-11 17:25:12','2020-10-11 20:25:12'),('1133d1d20a749f6ebe7db45357a2f5666025950fc0dcdf5286c4195bf4029ab9cbcb68545cb04cc3',1,1,'Personal Access Token','[]',0,'2019-10-12 07:04:58','2019-10-12 07:04:58','2020-10-12 10:04:58'),('11873d3be9530a68cc30b3ba46af057ecc977b01881139140f87d321c4e4e7409f0462f4b9c632cc',1,1,'Personal Access Token','[]',0,'2019-10-09 20:22:49','2019-10-09 20:22:49','2020-10-09 23:22:49'),('154029f70ad7d98acb93ad31ef7f0a528b0829350b87711302c4db4c98b9a997947aa775c1b4c967',2,1,'Personal Access Token','[]',0,'2019-10-11 17:25:50','2019-10-11 17:25:50','2020-10-11 20:25:50'),('15d0ec617e8fdafcee0243b19ea5585158ebee18f156ae9837f35d70449b1cd50ab8a0aef3d7a9ab',2,1,'Personal Access Token','[]',0,'2019-10-11 17:21:29','2019-10-11 17:21:29','2020-10-11 20:21:29'),('1781b8c06d3595d0b361a44c8cb6c79962a558deb1662fe79d18de99d6e8ee3732cabf52d76f2140',1,1,'Personal Access Token','[]',0,'2019-10-11 17:07:23','2019-10-11 17:07:23','2020-10-11 20:07:23'),('187ffa5257af9136ec7b72ad751c2ad1d198787345f52ac147534774727614f7ce196190faf9bde8',1,1,'Personal Access Token','[]',0,'2019-10-11 17:24:48','2019-10-11 17:24:48','2020-10-11 20:24:48'),('1ac1f00ea47af79e4416de0d09a72f54678159d403aae6f4d3e49168bd94f38fbcd4f36e2c9dd7ae',2,1,'Personal Access Token','[]',0,'2019-10-11 17:25:20','2019-10-11 17:25:20','2020-10-11 20:25:20'),('1ad81d939573b60020bb7a2ce8815fd8ff87b53b36edf3d2fb4ae7988b55af3887e6d4d9fb144196',2,1,'Personal Access Token','[]',0,'2019-10-11 17:31:33','2019-10-11 17:31:33','2020-10-11 20:31:33'),('2158690503f19d419bb9decef6d1231e598fb4b8455ea3b02a15634b13ea3fc5ef66e9b9c275fe7d',2,1,'Personal Access Token','[]',0,'2019-10-11 17:25:18','2019-10-11 17:25:18','2020-10-11 20:25:18'),('27e3042e190cab285d8f74b6279f93b4a7b73c02be51194ff4e038d77b0bf5eecf6f816b4f34af28',1,1,'Personal Access Token','[]',0,'2019-10-11 16:33:12','2019-10-11 16:33:12','2020-10-11 19:33:12'),('2b3864bdb038400d99de50ba83e77100eec2764a2321fec10e3648ce1e84044838deb101296d06ef',1,1,'Personal Access Token','[]',0,'2019-10-11 06:51:50','2019-10-11 06:51:50','2020-10-11 09:51:50'),('2c9f689184cff47337bc8f2032a00e4548835070e512379c7041c0d017eeb4c24e6c694fd8254952',1,1,'Personal Access Token','[]',0,'2019-10-11 16:37:20','2019-10-11 16:37:20','2020-10-11 19:37:20'),('314aa0a1ac61f54da7da2841a01f54a84d7a8d25130b93f5c097535ffe6d296edb8c1bc0d38b0eee',1,1,'Personal Access Token','[]',0,'2019-10-09 20:48:35','2019-10-09 20:48:35','2020-10-09 23:48:35'),('315bba0e0be029efb7f387a98629e58f7e77255776578cbef693d84ab61cf070d215548b5f347b44',2,1,'Personal Access Token','[]',0,'2019-10-11 17:24:26','2019-10-11 17:24:26','2020-10-11 20:24:26'),('318d9f912b9c7cfc4856e2736e1c439dea871260670b63e55672a3e6c7fafa0006c11ae7b5a709c7',1,1,'Personal Access Token','[]',0,'2019-10-11 17:41:40','2019-10-11 17:41:40','2020-10-11 20:41:40'),('380e22f096cd48970ec8aa5604ca6fedc4b843671cb34e65bc5d5f03f2adf5b1ef44354f008a8993',2,1,'Personal Access Token','[]',0,'2019-10-11 17:31:03','2019-10-11 17:31:03','2020-10-11 20:31:03'),('3a19d47ed431e3d49ce1210552aa657fe3754a99e1ce6d44be879c450f89f5503b96af018a2fa1b2',1,1,'Personal Access Token','[]',0,'2019-10-11 17:24:45','2019-10-11 17:24:45','2020-10-11 20:24:45'),('3efa74aae9af2fb3e0125753ec14daa41e3f1ae914cfa832cb67537e59d63a77643e70ff3e1a371b',2,1,'Personal Access Token','[]',0,'2019-10-12 07:35:49','2019-10-12 07:35:49','2020-10-12 10:35:49'),('4f64b32f6f4368dcecb1700852ec745875a6b4a101de4ab2bd02d2dfe436c4c6a25bb2e63aee2d4b',1,1,'Personal Access Token','[]',0,'2019-10-11 18:03:37','2019-10-11 18:03:37','2020-10-11 21:03:37'),('51d1934af5fbf25fa70f57536ad2384c2892cfbfaf97c6349d3ba0bc8c1e30b1cb23c39a128e8407',1,1,'Personal Access Token','[]',0,'2019-10-11 14:17:56','2019-10-11 14:17:56','2020-10-11 17:17:56'),('558d4e45e7f2c18875f6f921de5877051f23b0f48102881cfbee46776caed6a274e73dd1e05cd994',1,1,'Personal Access Token','[]',0,'2019-10-11 16:08:59','2019-10-11 16:08:59','2020-10-11 19:08:59'),('57994f65a054265924636c69997736023acb1590d0e72964a14099b1aa403b803ca37e0c71405f50',2,1,'Personal Access Token','[]',0,'2019-10-11 17:29:06','2019-10-11 17:29:06','2020-10-11 20:29:06'),('5ac1bbaf2a701ed58dbe67b37aeb09e629b858f6991b04e068b2c6f150a9087ecbd8142c2ac7da11',1,1,'Personal Access Token','[]',0,'2019-10-09 20:45:15','2019-10-09 20:45:15','2020-10-09 23:45:15'),('5f2049963adafce5e1f43a5c2f2fbb7b75f0e9c11bfafec362ac951695f6567caf712768a6a77a6e',1,1,'Personal Access Token','[]',0,'2019-10-11 17:58:07','2019-10-11 17:58:07','2020-10-11 20:58:07'),('5fa1d8cc966efff77b6786927e06b71f585a1715abd219563ff9fb917f98756b4559e3d4a44893a9',1,1,'Personal Access Token','[]',0,'2019-10-12 12:26:32','2019-10-12 12:26:32','2020-10-12 15:26:32'),('62656ad577605e59d803f5ac4ba3bd18760593811e543c2cd94053b3badb7008f3891d1ac0913bb5',2,1,'Personal Access Token','[]',0,'2019-10-11 17:19:51','2019-10-11 17:19:51','2020-10-11 20:19:51'),('638cc5399bae926d91b2697dfc30117e03aa2804ccb3cd9750dd168247d97e135316e23191dedb70',1,1,'Personal Access Token','[]',0,'2019-10-11 16:02:55','2019-10-11 16:02:55','2020-10-11 19:02:55'),('6a72ddc468a64bf160d63f0bd333df15a62342936ab04b54a68f528c5a08a62f97c3ac67cc09199b',1,1,'Personal Access Token','[]',0,'2019-10-11 17:32:10','2019-10-11 17:32:10','2020-10-11 20:32:10'),('6bbdd7bc4263978d0406f0fcfed390759df2b9f4304d2bac81b5a7d5c32f8044166e41757e83ef39',1,1,'Personal Access Token','[]',0,'2019-10-12 19:39:14','2019-10-12 19:39:14','2020-10-12 22:39:14'),('6c7037e63b7ae7d9fff8ae83d4f73c14a0b3989f6a37fc7a41902baaf2e5ad49e27c8ee3b241625f',1,1,'Personal Access Token','[]',0,'2019-10-11 17:27:20','2019-10-11 17:27:20','2020-10-11 20:27:20'),('6d04bfc5ed923ad13108542988b9060a4cb14588f77d22381f893c176ebbddba3b49b42a1f1fbc93',1,1,'Personal Access Token','[]',0,'2019-10-11 17:13:04','2019-10-11 17:13:04','2020-10-11 20:13:04'),('6dbd276233ba4795d6fb2598d3a53860c14d1808d470126bb254707772a32cd64272b4f0f32970fc',1,1,'Personal Access Token','[]',0,'2019-10-09 16:31:36','2019-10-09 16:31:36','2020-10-09 19:31:36'),('6f7305db40008eb13dd3440a2c24232b59736520a2a4e5268ad28aab6cc4be08f924024d21d478a5',1,1,'Personal Access Token','[]',0,'2019-10-11 17:28:22','2019-10-11 17:28:22','2020-10-11 20:28:22'),('7291ad456c9d45a81111fe0b4bac0e0bab56b0c9b6e4475e4f196cbfd7569f44d0c85c4dae52bc56',2,1,'Personal Access Token','[]',0,'2019-10-11 17:32:24','2019-10-11 17:32:24','2020-10-11 20:32:24'),('759ef0e1a7802394d054e5ee921b496288350cf2df9c63b9ed127ae5979a4ccce1d049a475554ef6',1,1,'Personal Access Token','[]',0,'2019-10-11 17:26:44','2019-10-11 17:26:44','2020-10-11 20:26:44'),('7977737b5d9800efdfc9dd245670c07af0295011f3eb6b00b66afd3777f653479c19fd4ff45dba55',1,1,'Personal Access Token','[]',0,'2019-10-11 16:23:02','2019-10-11 16:23:02','2020-10-11 19:23:02'),('7a92d7d2b894fce7c25ae02c545f5d9a78cdeb8895fe6a00203319bba3fe5cf8ed5539e5d864e789',1,1,'Personal Access Token','[]',0,'2019-10-11 15:11:25','2019-10-11 15:11:25','2020-10-11 18:11:25'),('7e438218cd8d84e3922582b2b4d0b8458dfe61bae6dff1752d694ec01c2b8392ebd6b29c12135ada',1,1,'Personal Access Token','[]',0,'2019-10-11 15:57:35','2019-10-11 15:57:35','2020-10-11 18:57:35'),('7ea01e2d228faccd42359d0a679a8498af736b260881a7258696a1204a4b8835e097369da99e103f',1,1,'Personal Access Token','[]',0,'2019-10-11 17:51:17','2019-10-11 17:51:17','2020-10-11 20:51:17'),('827d526ff7d5290fcdc1cbc951dbae4e8ca9983073452ae01cf365ac013e945c9ea09698a89a4865',1,1,'Personal Access Token','[]',0,'2019-10-11 16:10:14','2019-10-11 16:10:14','2020-10-11 19:10:14'),('83678357083e49e0899780475cee772205c358e909da97c8135dcb460c5dc6c0f88eba9816477008',1,1,'Personal Access Token','[]',0,'2019-10-11 17:28:57','2019-10-11 17:28:57','2020-10-11 20:28:57'),('86c88264bcfcd1a1162ac3b9b9d3bc84c564b2e2679380f9d7f59ccd2ab1f95c9ec9865833a4c45c',1,1,'Personal Access Token','[]',0,'2019-10-11 15:16:47','2019-10-11 15:16:47','2020-10-11 18:16:47'),('891be38735067f7438446bdd19f8eceb21eb03f9ce5d5963e601587c1e3255b2f425a2b03f792bb1',1,1,'Personal Access Token','[]',0,'2019-10-11 15:15:29','2019-10-11 15:15:29','2020-10-11 18:15:29'),('8a2b6dfe5f916abd8216c2ed808f788a2ee86e9fb33c5e5a5717e4ce7641a4d8d71194a04f3e3244',1,1,'Personal Access Token','[]',0,'2019-10-09 20:47:42','2019-10-09 20:47:42','2020-10-09 23:47:42'),('8b8182d0e50957967459e867a24ec7292b693c66a3109b5d66030a206b699c36324d2514851e1c2f',1,1,'Personal Access Token','[]',0,'2019-10-09 20:45:43','2019-10-09 20:45:43','2020-10-09 23:45:43'),('8d9161c856ddcf33e12fbd61db4c0375243a2e559070ee9b325695005b140c4c943b52af24d0b23e',1,1,'Personal Access Token','[]',0,'2019-10-09 20:46:25','2019-10-09 20:46:25','2020-10-09 23:46:25'),('8de0a4dcffafb5f8616d7d8b4d5e59a50fd63e5ededf37133b7772ed27c10bc704738c190ce16f7e',1,1,'Personal Access Token','[]',0,'2019-10-09 20:47:00','2019-10-09 20:47:00','2020-10-09 23:47:00'),('91d7f5617f81f3526f5d8f95b88a8f02071ed39bd8b738b669128ebbbb42e2d734a635d13d11c9ef',2,1,'Personal Access Token','[]',0,'2019-10-11 17:23:39','2019-10-11 17:23:39','2020-10-11 20:23:39'),('93ef7e8fadd57a7400b7c2877e8121c6228ea254e8e5b8ffc70c930d28f1cf0bf8c8f4a11fc55f1f',1,1,'Personal Access Token','[]',0,'2019-10-11 15:11:24','2019-10-11 15:11:24','2020-10-11 18:11:24'),('9531dfdd913ef60c35b0d77ce9d08d40b089f67164cfecd866d567c1bae388cbe74b6d0b36fb1a1a',1,1,'Personal Access Token','[]',0,'2019-10-09 20:45:16','2019-10-09 20:45:16','2020-10-09 23:45:16'),('97eb27abf3d16653ebca929293448a2c79b46266e82da9ff742a0cb4e5884466881357a3120a0ada',1,1,'Personal Access Token','[]',0,'2019-10-11 16:08:43','2019-10-11 16:08:43','2020-10-11 19:08:43'),('98aed02ae414d57829997636fb7245a5a91897acd94806c823bd81e55990c962bd62cf6f9ecedf1c',1,1,'Personal Access Token','[]',0,'2019-10-09 20:45:57','2019-10-09 20:45:57','2020-10-09 23:45:57'),('993448a3416f2d4668a88eb9bc0a7c8f10b2181ba3a0461c1f5c7e366aa0526d9e9261795d74c7c7',1,1,'Personal Access Token','[]',0,'2019-10-12 12:31:14','2019-10-12 12:31:14','2020-10-12 15:31:14'),('9cbfdf27497ee4375fe6842c9e1671d0136b875644f1084f01070590769efde187d9a8056e1768e0',1,1,'Personal Access Token','[]',0,'2019-10-09 20:47:52','2019-10-09 20:47:52','2020-10-09 23:47:52'),('a29f4a6e247a97cb3c8e4f3fea7c48e932d74679fd6d98ebc1122a94a7747be8274d5b715da2cf11',2,1,'Personal Access Token','[]',0,'2019-10-11 17:30:50','2019-10-11 17:30:50','2020-10-11 20:30:50'),('a3093455c705f5af4595e494c4494a9a09838575e7b60fd103ea209162b90685eaa44fd6e9f90659',1,1,'Personal Access Token','[]',0,'2019-10-11 15:18:21','2019-10-11 15:18:21','2020-10-11 18:18:21'),('a438c7d824b8695b8159d42b091d23c6d9334d9a3311afa0cb5d3a43d77c7c0ca7ad2695b5f0357e',2,1,'Personal Access Token','[]',0,'2019-10-11 17:36:35','2019-10-11 17:36:35','2020-10-11 20:36:35'),('a44c4a30960943105d398814872a812d50634bfc53cc30f80f6743d2866194f6d5f3302088ca41ed',2,1,'Personal Access Token','[]',0,'2019-10-11 17:24:32','2019-10-11 17:24:32','2020-10-11 20:24:32'),('a4a1a335abb93ac1ec245b7848001de435ea9ddefb7e73f7a446ceab219ff9d200500ced955e5cfc',1,1,'Personal Access Token','[]',0,'2019-10-11 15:12:01','2019-10-11 15:12:01','2020-10-11 18:12:01'),('a529c15c2fbe2a3b2d9bb5333ff54ab2bbdda6108aab1b8da0efb4d3c6a12a75caab07147364a4ed',1,1,'Personal Access Token','[]',0,'2019-10-09 20:49:19','2019-10-09 20:49:19','2020-10-09 23:49:19'),('a9902616f364f835bc18122cff99b22d53368a7054066ab316561a3f72fe121924aec968433f1d8e',1,1,'Personal Access Token','[]',0,'2019-10-11 15:14:17','2019-10-11 15:14:17','2020-10-11 18:14:17'),('abd8fac0c3398b9f54dd3a53e21eb6327253013eeafb8407d9ae06146c8e8f353c760d22cef668f5',1,1,'Personal Access Token','[]',0,'2019-10-09 20:11:31','2019-10-09 20:11:31','2020-10-09 23:11:31'),('b1adba8c8b012e94c630780b095700dababd9cc71bd0647d52419b0a6485f91ebc4134b70c4f7d69',1,1,'Personal Access Token','[]',0,'2019-10-09 20:46:04','2019-10-09 20:46:04','2020-10-09 23:46:04'),('b2968326d8d5785da4230a2378f0814e2f92177c495d662825c043cf23c9985248d7d6e950ea3d13',1,1,'Personal Access Token','[]',0,'2019-10-09 20:47:13','2019-10-09 20:47:13','2020-10-09 23:47:13'),('b2e0011aac8e1432a48812fdcff4885daf79d778044223e60473e597f9c25cf4265201bb61218619',1,1,'Personal Access Token','[]',0,'2019-10-09 20:41:15','2019-10-09 20:41:15','2020-10-09 23:41:15'),('b314c8af740e5dc83dcbfdf2fe375b905df3d0db531e8004854d99db8a6022b84567292ff2226eda',2,1,'Personal Access Token','[]',0,'2019-10-12 07:37:05','2019-10-12 07:37:05','2020-10-12 10:37:05'),('b5a5c6092b1c78de6f6dd382f89c74e171722d395f4fff34d1111238d474af38a36a7d0efd4a0d78',1,1,'Personal Access Token','[]',0,'2019-10-11 17:16:30','2019-10-11 17:16:30','2020-10-11 20:16:30'),('b8e8bdec1f76e01451495301f79629d59ae82af1fda612a78c7f0077085df1f443181fcd352e3520',2,1,'Personal Access Token','[]',0,'2019-10-11 17:30:59','2019-10-11 17:30:59','2020-10-11 20:30:59'),('b90057af7d4b9cc4fa71d53e9c1e7996b3b3696123ee3bf511dbaf2436c5c1f34fbd3e98db2fd2da',1,1,'Personal Access Token','[]',0,'2019-10-11 06:59:41','2019-10-11 06:59:41','2020-10-11 09:59:41'),('baff591d9e283d2ec7aee1b229bda231de6a5a58354793a9fefdc246738f8d2ba522a78e57df821d',1,1,'Personal Access Token','[]',0,'2019-10-11 14:17:58','2019-10-11 14:17:58','2020-10-11 17:17:58'),('bb888ea54f8fa50d99d2316bdc7a3cfc32daf45ae830f9467322a910f6c2e7ce777320064b2fc6f7',2,1,'Personal Access Token','[]',0,'2019-10-11 17:35:16','2019-10-11 17:35:16','2020-10-11 20:35:16'),('c012cc2d24fc41365845f28e877aa315672871c1457267767f2a1344ae2a1c2e6e9d82cd733b2481',1,1,'Personal Access Token','[]',0,'2019-10-11 17:25:59','2019-10-11 17:25:59','2020-10-11 20:25:59'),('c178026f9f818415ff7cee9c34e2c13d9249e84f4ea4fa7b37196356f59a4b6e283ebb4aebdca62f',1,1,'Personal Access Token','[]',0,'2019-10-11 06:37:34','2019-10-11 06:37:34','2020-10-11 09:37:34'),('c6917c2aa587e796172bd5a0143905bf13a78848929d4d589522886442e97547eb9951104ce98370',2,1,'Personal Access Token','[]',0,'2019-10-11 17:32:21','2019-10-11 17:32:21','2020-10-11 20:32:21'),('cb7709b141c75e2c348c336065abc1a1fe832acb4baecd8aff5d415ca6314e8bfe5fa67873dde41b',1,1,'Personal Access Token','[]',0,'2019-10-11 15:14:19','2019-10-11 15:14:19','2020-10-11 18:14:19'),('d02376525a07cc79144851487b87da2950ba150714dfdd11e7841159a6122bc16e7561ff0a096b5a',1,1,'Personal Access Token','[]',0,'2019-10-11 15:17:40','2019-10-11 15:17:40','2020-10-11 18:17:40'),('d1720a676b6a225d8bbac773d4ef72e045d8f2607d0adca212735e13e406c8fc71aad61aca41a854',1,1,'Personal Access Token','[]',0,'2019-10-11 16:26:53','2019-10-11 16:26:53','2020-10-11 19:26:53'),('d25a4d3109d879dc1217d6502a192c80cb876e48abda7d262f93b6f2182a698a64f11fbb84e02dd8',1,1,'Personal Access Token','[]',0,'2019-10-12 07:46:53','2019-10-12 07:46:53','2020-10-12 10:46:53'),('d2d2fd7e5e20e2bbe5fda6adc568599dfb44b406950d535fef47883240e6e8a8b92d099f7f8b38a5',1,1,'Personal Access Token','[]',0,'2019-10-11 17:16:33','2019-10-11 17:16:33','2020-10-11 20:16:33'),('d4884b3909ad3c666939c9d7d3bf95ef5c53d5a77438199fead415311c2cac61180fdaaeac9cb57c',2,1,'Personal Access Token','[]',0,'2019-10-11 17:29:12','2019-10-11 17:29:12','2020-10-11 20:29:12'),('d48973f4ba02a30bf16a60ebf207a78bfc2072aaef1fc30d0c5ff0f7c8660f7d5550aa384cff7479',1,1,'Personal Access Token','[]',0,'2019-10-11 17:31:45','2019-10-11 17:31:45','2020-10-11 20:31:45'),('d9f7507be5ffdbaa1457f2d68e0c6a42ec0baf581af6842341e2b6847211dbd756d8705cae6c66e9',1,1,'Personal Access Token','[]',0,'2019-10-11 15:18:52','2019-10-11 15:18:52','2020-10-11 18:18:52'),('dc830c6b7e731974ac8057f7338f699815ee2777ebf7cc0547b23e67db84dc3be791f50e8e966d20',2,1,'Personal Access Token','[]',0,'2019-10-11 17:29:09','2019-10-11 17:29:09','2020-10-11 20:29:09'),('df44a7795d8744e9ae49cd18a45d310dcf3ff3618c27486219edb201512dc65bdec92b203a7a091c',2,1,'Personal Access Token','[]',0,'2019-10-12 07:39:23','2019-10-12 07:39:23','2020-10-12 10:39:23'),('e0296a2980e730a3a525aca5846cf17ea6675e9a7dda008e2ff1fef9c214396dce88177f691c2294',2,1,'Personal Access Token','[]',0,'2019-10-11 17:22:15','2019-10-11 17:22:15','2020-10-11 20:22:15'),('e0fc563f31e141d1ed3a108bcef1d1eeae7fabbb58eb37ad4b7ead7615c112a1d862b56308747238',1,1,'Personal Access Token','[]',0,'2019-10-11 16:37:45','2019-10-11 16:37:45','2020-10-11 19:37:45'),('e21de850c578c344a3a6f7aa21e2b64e0fc72868d5c9ccc6d024a7cfac6a933ba7520800ce97b6ce',1,1,'Personal Access Token','[]',0,'2019-10-11 17:27:40','2019-10-11 17:27:40','2020-10-11 20:27:40'),('e252f3403c43cbd76c69923de4628797e4acfb7eabeb419e73c6b9f5136f27f60f26d7375b7d86c9',1,1,'Personal Access Token','[]',0,'2019-10-11 17:35:07','2019-10-11 17:35:07','2020-10-11 20:35:07'),('e3b4c249c6729857ef0725248d3f33bde905be95c7cd4922e766b352fb4b6ed53e34b7c9903d27ab',1,1,'Personal Access Token','[]',0,'2019-10-11 15:18:24','2019-10-11 15:18:24','2020-10-11 18:18:24'),('e87e1dbc0a4946265a046d4ef8125669e1a13eabb4df31ef9a4dfa7b92ddc49fe3cc374b4f11b0c5',1,1,'Personal Access Token','[]',0,'2019-10-11 17:26:02','2019-10-11 17:26:02','2020-10-11 20:26:02'),('e962668fd600d17c217450c4ed1e0624ab89861bb727faa30bf5c2ba0190fd4efd595a2b9d5d7cb4',1,1,'Personal Access Token','[]',0,'2019-10-11 06:43:40','2019-10-11 06:43:40','2020-10-11 09:43:40'),('ec739eace499473177bb7ef05e68d8d3ca94126016bc610a43098c06655db147ae0e50f28b1fbc94',1,1,'Personal Access Token','[]',0,'2019-10-09 20:45:13','2019-10-09 20:45:13','2020-10-09 23:45:13'),('ee4aef2a2bc4a2141ffd7e2618b299204799751fb0a8300d4f9fb93cb06736b8d34d74b6b7f9e469',1,1,'Personal Access Token','[]',0,'2019-10-09 20:47:37','2019-10-09 20:47:37','2020-10-09 23:47:37'),('f62e908dbeb847a37e8c6797268f0e9f9de724ba32cb365c3b3c5b50f82db592bea8e868348b2d1f',1,1,'Personal Access Token','[]',0,'2019-10-11 17:17:39','2019-10-11 17:17:39','2020-10-11 20:17:39'),('f9308e39e0841f36eab998fe390f1b3bc8b7db02429dc662789671a972635a5f3f13bde61a14653e',1,1,'Personal Access Token','[]',0,'2019-10-11 07:00:41','2019-10-11 07:00:41','2020-10-11 10:00:41'),('fd21252de2dc271a7c0e7e3f51059a3d9713c228087219c06bbb3e3dc25bf351f403bbbb368dcf84',2,1,'Personal Access Token','[]',0,'2019-10-11 17:31:15','2019-10-11 17:31:15','2020-10-11 20:31:15');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','EXM91ohFQCLll07b7nut1arrKoXMdqYCJ523IMen','http://localhost',1,0,0,'2019-10-09 16:31:32','2019-10-09 16:31:32'),(2,NULL,'Laravel Password Grant Client','z7YiE3SICY3b9F50VPrDcC2L0ZyY441Yy6kzIKWZ','http://localhost',0,1,0,'2019-10-09 16:31:32','2019-10-09 16:31:32');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2019-10-09 16:31:32','2019-10-09 16:31:32');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,31.918308,35.9249,NULL,NULL),(2,31.92685,35.905373,NULL,NULL),(3,31.906868,35.886062,NULL,NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserves`
--

DROP TABLE IF EXISTS `reserves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reserves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `approved` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserves`
--

LOCK TABLES `reserves` WRITE;
/*!40000 ALTER TABLE `reserves` DISABLE KEYS */;
INSERT INTO `reserves` VALUES (1,'2019-10-09 16:43:30','2019-10-09 16:43:30','3:30 PM','27-9-2019',2,1,0),(8,'2019-10-12 12:28:19','2019-10-12 12:28:19','02.33 AM','12/10/2009',2,1,1),(9,'2019-10-12 12:29:08','2019-10-12 12:29:08','06.29 PM','12/10/2020',23,1,2);
/*!40000 ALTER TABLE `reserves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_provider` tinyint(1) NOT NULL DEFAULT '0',
  `place_id` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'userName','userEmail@gmail.com',NULL,'$2y$10$zBDdGsG7kfqiuBhP7zfuQu2A5.DcdndQnVZ49et55Pq87znQ0Dbui',0,NULL,NULL,'2019-10-09 16:29:37','2019-10-09 16:29:37'),(2,'provider','provider@gmail.com',NULL,'$2y$10$4Vri0ZwvRrCQ3vxaO3oq7uK/23Gi0Z.1tuQc6bBI7rpOdxpdawnGm',1,1,NULL,'2019-10-09 16:42:57','2019-10-09 16:42:57'),(23,'provider2','provider2@gmail.com',NULL,'$2y$10$4Vri0ZwvRrCQ3vxaO3oq7uK/23Gi0Z.1tuQc6bBI7rpOdxpdawnGm',1,2,NULL,'2019-10-09 16:42:57','2019-10-09 16:42:57'),(24,'provider4','provider4@gmail.com',NULL,'$2y$10$dwEVTQups..47MJ0tVflkOC8CakUtdGNAUysfl5nqI70qUN2r/YMq',1,3,NULL,'2019-10-12 07:49:53','2019-10-12 07:49:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 22:49:08
