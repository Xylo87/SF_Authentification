-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour sf_authentification
CREATE DATABASE IF NOT EXISTS `sf_authentification` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sf_authentification`;

-- Listage de la structure de table sf_authentification. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table sf_authentification.doctrine_migration_versions : ~1 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20250123093806', '2025-01-23 09:46:40', 39);

-- Listage de la structure de table sf_authentification. messenger_messages
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sf_authentification.messenger_messages : ~0 rows (environ)

-- Listage de la structure de table sf_authentification. user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sf_authentification.user : ~10 rows (environ)
INSERT INTO `user` (`id`, `email`, `roles`, `password`, `is_verified`, `pseudo`) VALUES
	(1, 'xylo@aol.com', '[]', '$2y$13$SXJkaie0HuGJQWQawIx84uOorms2Fte..iAnXisEKOi/WmG3OP7/m', 0, 'Xylo'),
	(2, 'rez@aol.com', '[]', '$2y$13$NV889GUC2NAtiMdKW45v8OQaZNH57hIqO8spnIE4uvPkJZs5OGcqW', 1, 'Rez'),
	(3, 'kiouze@aol.com', '[]', '$2y$13$G9nHC59pF6vH0eKYeLhyS.cMo80lJ4K2bIsbMRiaZ4N20p/Vy2oOK', 0, 'Kiouze'),
	(4, 'isimorn@aol.com', '[]', '$2y$13$uphzPA94/w9mDjN8n/ORKOrEzbFV6jTEwG31h3v.Z91a.WYP60PRK', 1, 'Isimorn'),
	(5, 'boisrenard@aol.com', '[]', '$2y$13$tSAAn3YAlqzlsPwYUBXwD.Y5EgF1Tg5K4DakwIClKxjnVOEPvXS1C', 1, 'Kessel'),
	(6, 'admin@aol.com', '["ROLE_ADMIN"]', '$2y$13$ixSlTZJnvsbNuZ89A2r63.00FhFv3dtbH/cnFilpzALwK2D9RRBXy', 1, 'master'),
	(7, 'kazel@aol.com', '[]', '$2y$13$XlgciwClibR5HDE.Bp2dgOCQQHC429q2LbrrJgvs4FLxpBJLbnGD.', 1, 'Kazel'),
	(8, 'objeac@aol.com', '[]', '$2y$13$mI.Fl3XbMFnwBx6iTKlKtuC9TLbrVknJopX/H8yQRNqlTHC4gpxqK', 1, 'Objeac'),
	(9, 'ludovictor@aol.com', '[]', '$2y$13$ieHbxPENacLM2XJgyLTEeuaL5h/RYnSG1uFu/QPX2p9DMBDDvit9y', 0, 'Ludovictor'),
	(10, 'our@aol.com', '[]', '$2y$13$dKNdcsDYX37yZpa2ME9q5u0gdH26oMPUAvnY8eIh.gdA5vkhYxdta', 1, 'Our');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
