


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table testimoniales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `testimoniales`;

CREATE TABLE `testimoniales` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `testimoniales` WRITE;
/*!40000 ALTER TABLE `testimoniales` DISABLE KEYS */;

INSERT INTO `testimoniales` (`id`, `nombre`, `correo`, `mensaje`, `created_at`, `updated_at`) VALUES
	('d572b78e-c1f4-4b85-80f2-ef46b73ff4f4', 'wilson juma', 'wjuma19@gmail.com', 'Excelente app, muy intuitiva y facil de usar.', '2026-11-06 03:30:58', '2026-11-06 03:30:58'),
	('fcf5786e-7c03-464d-af60-a33fc7bdfe4c', 'pedro martinez', 'pedro@user.co', 'Que chula esta esta pagina, gracias por compartir.', '2026-11-06 03:23:28', '2026-11-06 03:23:28');

/*!40000 ALTER TABLE `testimoniales` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of table viajes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `viajes`;

CREATE TABLE `viajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` float NOT NULL,
  `fecha_ida` date NOT NULL,
  `fecha_vuelta` date NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibles` int(11) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `slug_2` (`slug`),
  UNIQUE KEY `slug_3` (`slug`),
  UNIQUE KEY `slug_4` (`slug`),
  UNIQUE KEY `slug_5` (`slug`),
  UNIQUE KEY `slug_6` (`slug`),
  UNIQUE KEY `slug_7` (`slug`),
  UNIQUE KEY `slug_8` (`slug`),
  UNIQUE KEY `slug_9` (`slug`),
  UNIQUE KEY `slug_10` (`slug`),
  UNIQUE KEY `slug_11` (`slug`),
  UNIQUE KEY `slug_12` (`slug`),
  UNIQUE KEY `slug_13` (`slug`),
  UNIQUE KEY `slug_14` (`slug`),
  UNIQUE KEY `slug_15` (`slug`),
  UNIQUE KEY `slug_16` (`slug`),
  UNIQUE KEY `slug_17` (`slug`),
  UNIQUE KEY `slug_18` (`slug`),
  UNIQUE KEY `slug_19` (`slug`),
  UNIQUE KEY `slug_20` (`slug`),
  UNIQUE KEY `slug_21` (`slug`),
  UNIQUE KEY `slug_22` (`slug`),
  UNIQUE KEY `slug_23` (`slug`),
  UNIQUE KEY `slug_24` (`slug`),
  UNIQUE KEY `slug_25` (`slug`),
  UNIQUE KEY `slug_26` (`slug`),
  UNIQUE KEY `slug_27` (`slug`),
  UNIQUE KEY `slug_28` (`slug`),
  UNIQUE KEY `slug_29` (`slug`),
  UNIQUE KEY `slug_30` (`slug`),
  UNIQUE KEY `slug_31` (`slug`),
  UNIQUE KEY `slug_32` (`slug`),
  UNIQUE KEY `slug_33` (`slug`),
  UNIQUE KEY `slug_34` (`slug`),
  UNIQUE KEY `slug_35` (`slug`),
  UNIQUE KEY `slug_36` (`slug`),
  UNIQUE KEY `slug_37` (`slug`),
  UNIQUE KEY `slug_38` (`slug`),
  UNIQUE KEY `slug_39` (`slug`),
  UNIQUE KEY `slug_40` (`slug`),
  UNIQUE KEY `slug_41` (`slug`),
  UNIQUE KEY `slug_42` (`slug`),
  UNIQUE KEY `slug_43` (`slug`),
  UNIQUE KEY `slug_44` (`slug`),
  UNIQUE KEY `slug_45` (`slug`),
  UNIQUE KEY `slug_46` (`slug`),
  UNIQUE KEY `slug_47` (`slug`),
  UNIQUE KEY `slug_48` (`slug`),
  UNIQUE KEY `slug_49` (`slug`),
  UNIQUE KEY `slug_50` (`slug`),
  UNIQUE KEY `slug_51` (`slug`),
  UNIQUE KEY `slug_52` (`slug`),
  UNIQUE KEY `slug_53` (`slug`),
  UNIQUE KEY `slug_54` (`slug`),
  UNIQUE KEY `slug_55` (`slug`),
  UNIQUE KEY `slug_56` (`slug`),
  UNIQUE KEY `slug_57` (`slug`),
  UNIQUE KEY `slug_58` (`slug`),
  UNIQUE KEY `slug_59` (`slug`),
  UNIQUE KEY `slug_60` (`slug`),
  UNIQUE KEY `slug_61` (`slug`),
  UNIQUE KEY `slug_62` (`slug`),
  UNIQUE KEY `slug_63` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `viajes` WRITE;
/*!40000 ALTER TABLE `viajes` DISABLE KEYS */;

INSERT INTO `viajes` (`id`, `titulo`, `precio`, `fecha_ida`, `fecha_vuelta`, `imagen`, `descripcion`, `disponibles`, `slug`) VALUES
	(1, 'Vacación a Cancún', 1200, '2026-12-10', '2026-12-18', 'https://images.unsplash.com/photo-1630252421399-ddde79af47b3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8VmFjYWNpJUMzJUIzbiUyMGElMjBDYW5jJUMzJUJBbnxlbnwwfHx8fDE3OTMzOTA4NTB8MA&ixlib=rb-4.1.0&q=80&w=1080', 'Tour de playa y resort todo incluido.', 5, 'vacacion-cancun'),
	(2, 'Ruta por Europa', 1500, '2027-01-05', '2027-01-15', 'https://images.unsplash.com/photo-1567939696026-529d1b096303?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8UnV0YSUyMHBvciUyMEV1cm9wYXxlbnwwfHx8fDE3OTMzOTA4NDl8MA&ixlib=rb-4.1.0&q=80&w=1080', 'Recorrido por ciudades históricas y museos.', 3, 'ruta-por-europa'),
	(3, 'Escapada a Medellín', 900, '2026-11-20', '2026-11-27', 'https://images.unsplash.com/photo-1663269275922-6c5af53b317a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8RXNjYXBhZGElMjBhJTIwTWVkZWxsJUMzJUFEbnxlbnwwfHx8fDE3OTMzOTA4NDl8MA&ixlib=rb-4.1.0&q=80&w=1080', 'Aventura, gastronomía y clima cálido.', 8, 'escapada-medellin'),
	(4, 'Viaje a París', 1800, '2027-02-08', '2027-02-16', 'https://images.unsplash.com/photo-1565364807961-f6d4f7dcef03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8VmlhamUlMjBhJTIwUGFyJUMzJUFEc3xlbnwwfHx8fDE3OTMzOTA4NTB8MA&ixlib=rb-4.1.0&q=80&w=1080', 'Experiencia romántica con tour por la ciudad.', 4, 'viaje-a-paris'),
	(5, 'Playa del Carmen', 1100, '2026-10-30', '2026-11-05', 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8UGxheWElMjBkZWwlMjBDYXJtZW58ZW58MHx8fHwxNzkzMzkwODQ5fDA&ixlib=rb-4.1.0&q=80&w=1080', 'Disfruta del mar, bares y excursiones.', 7, 'playa-del-carmen'),
	(6, 'Aventura en Cusco', 1350, '2027-03-12', '2027-03-20', 'https://images.unsplash.com/photo-1568805647831-79a19e414f21?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8QXZlbnR1cmElMjBlbiUyMEN1c2NvfGVufDB8fHx8MTc5MzM5MDg0OXww&ixlib=rb-4.1.0&q=80&w=1080', 'Museos, montañas y cultura andina.', 6, 'aventura-en-cusco'),
	(7, 'Circuito por Japón', 2200, '2027-04-10', '2027-04-22', 'https://images.unsplash.com/photo-1749534275082-03ea489ea5af?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8Q2lyY3VpdG8lMjBwb3IlMjBKYXAlQzMlQjNufGVufDB8fHx8MTc5MzM5MDg1MHww&ixlib=rb-4.1.0&q=80&w=1080', 'Cultura, tecnología y ciudades vibrantes.', 2, 'circuito-por-japon'),
	(8, 'Vacaciones en Punta Cana', 1250, '2026-12-15', '2026-12-22', 'https://images.unsplash.com/photo-1569700946659-fe1941c71fe4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8VmFjYWNpb25lcyUyMGVuJTIwUHVudGElMjBDYW5hfGVufDB8fHx8MTc5MzM5MDg1MHww&ixlib=rb-4.1.0&q=80&w=1080', 'Resort con piscina, mar y actividades.', 9, 'vacaciones-punta-cana'),
	(9, 'Tour por Buenos Aires', 980, '2027-05-03', '2027-05-09', 'https://images.unsplash.com/photo-1725499267114-15531716d101?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8VG91ciUyMHBvciUyMEJ1ZW5vcyUyMEFpcmVzfGVufDB8fHx8MTc5MzM5MDg1MHww&ixlib=rb-4.1.0&q=80&w=1080', 'Gastronomía, arte y tango en la ciudad.', 5, 'tour-buenos-aires'),
	(10, 'Safari en Kenia', 2500, '2027-06-01', '2027-06-12', 'https://images.unsplash.com/photo-1667634580116-67265da35141?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTE4Mzk0fDB8MXxzZWFyY2h8MXx8U2FmYXJpJTIwZW4lMjBLZW5pYXxlbnwwfHx8fDE3OTMzOTA4NTB8MA&ixlib=rb-4.1.0&q=80&w=1080', 'Aventura en naturaleza y fauna salvaje.', 3, 'safari-kenia');

/*!40000 ALTER TABLE `viajes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


