-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para examen_unitec
CREATE DATABASE IF NOT EXISTS `examen_unitec` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `examen_unitec`;

-- Volcando estructura para tabla examen_unitec.educacion
CREATE TABLE IF NOT EXISTS `educacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_interes_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `educacion_nivel_interes_id_foreign` (`nivel_interes_id`),
  CONSTRAINT `educacion_nivel_interes_id_foreign` FOREIGN KEY (`nivel_interes_id`) REFERENCES `nivel_interes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.educacion: ~0 rows (aproximadamente)
DELETE FROM `educacion`;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
INSERT INTO `educacion` (`id`, `nombre`, `nivel_interes_id`, `created_at`, `updated_at`) VALUES
	(1, 'Lic. En Derecho', 2, '2019-09-12 06:39:23', NULL),
	(2, 'Lic. En Finanzas', 2, '2019-09-12 06:39:23', NULL),
	(3, 'Mtria. Admon', 3, '2019-09-12 06:39:23', NULL),
	(4, 'Mtria. En Direccion De Proyectos', 3, '2019-09-12 06:39:23', NULL);
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;

-- Volcando estructura para tabla examen_unitec.estado_civil
CREATE TABLE IF NOT EXISTS `estado_civil` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.estado_civil: ~0 rows (aproximadamente)
DELETE FROM `estado_civil`;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Soltero', NULL, NULL),
	(2, 'Casado', NULL, NULL),
	(3, 'Union Libre', NULL, NULL),
	(4, 'Viudo', NULL, NULL);
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;

-- Volcando estructura para tabla examen_unitec.genero
CREATE TABLE IF NOT EXISTS `genero` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.genero: ~0 rows (aproximadamente)
DELETE FROM `genero`;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Masculino', '2019-09-12 06:39:13', NULL),
	(2, 'Femenino', '2019-09-12 06:39:13', NULL);
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;

-- Volcando estructura para tabla examen_unitec.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.migrations: ~8 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2019_03_12_032023_create_users_table', 1),
	(14, '2019_09_12_032023_create_users_table', 2),
	(22, '2014_10_12_100000_create_password_resets_table', 3),
	(23, '2019_09_12_031630_create_estado_civil_table', 3),
	(24, '2019_09_12_031758_create_nivel_interes_table', 3),
	(25, '2019_09_12_031828_create_genero_table', 3),
	(26, '2019_09_12_031923_create_educacion_table', 3),
	(27, '2019_09_12_032025_create_users_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla examen_unitec.nivel_interes
CREATE TABLE IF NOT EXISTS `nivel_interes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.nivel_interes: ~0 rows (aproximadamente)
DELETE FROM `nivel_interes`;
/*!40000 ALTER TABLE `nivel_interes` DISABLE KEYS */;
INSERT INTO `nivel_interes` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'Preparatoria', '2019-09-12 06:38:57', NULL),
	(2, 'Licenciatura', '2019-09-12 06:38:57', NULL),
	(3, 'Posgrado', '2019-09-12 06:38:57', NULL);
/*!40000 ALTER TABLE `nivel_interes` ENABLE KEYS */;

-- Volcando estructura para tabla examen_unitec.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla examen_unitec.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_civil_id` int(10) unsigned NOT NULL,
  `educacion_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_genero_id_foreign` (`genero_id`),
  KEY `users_estado_civil_id_foreign` (`estado_civil_id`),
  KEY `users_educacion_id_foreign` (`educacion_id`),
  CONSTRAINT `users_educacion_id_foreign` FOREIGN KEY (`educacion_id`) REFERENCES `educacion` (`id`),
  CONSTRAINT `users_estado_civil_id_foreign` FOREIGN KEY (`estado_civil_id`) REFERENCES `estado_civil` (`id`),
  CONSTRAINT `users_genero_id_foreign` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla examen_unitec.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `edad`, `email`, `password`, `genero_id`, `remember_token`, `estado_civil_id`, `educacion_id`, `created_at`, `updated_at`) VALUES
	(1, 'Edgar', 'Travel', 'De la Vega', 30, 'chavarria.delavega@gmail.com', '$2y$10$.8a7yHWsWCwSkJe4liISr..8S1qe3GSqG2k.hvj/ydcxQ/sfJ0MgC', 1, '165m22jAkTDILzg6IjMGprAIX7cTN8YEosrNJ6anwYX64oQiHW1eJBJIA2HO', 2, NULL, '2019-09-12 07:02:29', '2019-09-12 07:02:29'),
	(2, 'Sebastian', 'Chavarria', 'Cadena', 33, 'scadena@mail.com', '$2y$10$hRut561zAzyG.VJ61aaSWuij4MZMWRIUsFJyePS6pknPOp3TdiVc6', 1, '9okbcV5hK8eOgaks5v3VWKLGuLgyaU9hIPcsRoAsvJmI19iTl51K9CQJ8bBs', 3, NULL, '2019-09-12 07:03:15', '2019-09-12 07:03:15'),
	(3, 'Mary', 'Cadena', 'Lezama', 33, 'mlezama@gmail.com', '$2y$10$xw1p/DCyT3o1YRmzFocdT.YWdH7Vy1G.wbJOXpGPq4LgzwfSepL.6', 2, 'o54H3Q0SOS3l9ny3o8N5hV2SoRwsaqCmK9Qm2JUDZffWhygPk5hRHig8tTSc', 2, NULL, '2019-09-12 07:12:11', '2019-09-12 07:12:11'),
	(4, 'Berenice', 'Chavarria', 'Vega', 28, 'bchavarria@gmail.com', '$2y$10$Tix.GbR7mAulmOA9jw0buet7rzt2avAOfrPraQfSUgq9GoKq6w3mK', 2, 'hMHMj2msDAnXK07I0sMYom4NVDhIJR7lSfOw1g8oDMSdK7dtZjyvGocH82fK', 1, 1, '2019-09-12 07:22:25', '2019-09-12 07:22:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
