-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-09-2020 a las 05:10:40
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alitaware`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_09_19_040257_table_suscriptor', 1),
(2, '2020_09_19_040435_table_suscriptor_team', 1),
(3, '2020_09_19_041530_table_service', 1),
(4, '2020_09_19_041532_table_pago', 1),
(5, '2020_09_19_043606_services_suscriptors', 1),
(6, '2020_09_19_055258_alter_table_team_sucriptor', 1),
(7, '2020_09_19_231652_alter_table_suscriptor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `pago_id` bigint(20) UNSIGNED NOT NULL,
  `monto` double(8,2) NOT NULL,
  `fecha_pago` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`pago_id`, `monto`, `fecha_pago`, `fecha_vencimiento`, `created_at`, `updated_at`) VALUES
(1, 1644.00, '2000-12-03', '1990-05-12', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(2, 1883.00, '1993-05-06', '1994-08-29', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(3, 1962.00, '1991-10-18', '1991-09-26', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(4, 3616.00, '1970-02-06', '1977-01-08', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(5, 1886.00, '1978-03-11', '1970-01-13', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(6, 1894.00, '1991-02-06', '1978-12-19', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(7, 1075.00, '2012-09-07', '1986-04-13', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(8, 3228.00, '1984-11-01', '1985-10-10', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(9, 2580.00, '1988-09-02', '1986-12-10', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(10, 2038.00, '1998-11-24', '2017-06-17', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(11, 2041.00, '2002-03-31', '2004-06-20', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(12, 1294.00, '2000-05-04', '2002-12-13', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(13, 2396.00, '2005-09-04', '1991-04-27', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(14, 3371.00, '2015-10-10', '1991-07-28', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(15, 2163.00, '2014-03-05', '1984-04-06', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(16, 1262.00, '2003-08-30', '1992-02-19', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(17, 2899.00, '1981-10-29', '1999-06-06', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(18, 3908.00, '2018-02-11', '2016-09-20', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(19, 2729.00, '1998-11-12', '1984-05-21', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(20, 3924.00, '2003-07-22', '1992-02-29', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(21, 2989.00, '2016-01-08', '2014-02-18', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(22, 2598.00, '2002-12-12', '1971-07-10', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(23, 3214.00, '1983-08-31', '2016-02-29', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(24, 1832.00, '1987-03-23', '1972-08-10', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(25, 3559.00, '1994-11-14', '1993-03-12', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(26, 3095.00, '1986-02-12', '1993-12-20', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(27, 1136.00, '1995-06-14', '2003-01-12', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(28, 1907.00, '1970-10-09', '2003-11-20', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(29, 1928.00, '1997-08-09', '2005-04-12', '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(30, 1058.00, '1991-02-06', '2005-10-26', '2020-09-21 05:44:05', '2020-09-21 05:44:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

CREATE TABLE `service` (
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `nombre_servicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_nivel_1` double(8,2) NOT NULL,
  `precio_nivel_2` double(8,2) NOT NULL,
  `precio_nivel_3` double(8,2) NOT NULL,
  `precio_nivel_4` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`service_id`, `nombre_servicio`, `precio_nivel_1`, `precio_nivel_2`, `precio_nivel_3`, `precio_nivel_4`, `created_at`, `updated_at`) VALUES
(1, 'Aplicación digital', 100.00, 200.00, 300.00, 400.00, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(2, 'Revista digital', 150.00, 250.00, 350.00, 450.00, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(3, 'Juego digital', 180.00, 280.00, 380.00, 480.00, '2020-09-21 05:44:05', '2020-09-21 05:44:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_has_suscriptor`
--

CREATE TABLE `service_has_suscriptor` (
  `service_has_suscriptor_id` bigint(20) UNSIGNED NOT NULL,
  `service_idservice` bigint(20) UNSIGNED NOT NULL,
  `suscriptor_idSuscriptor` bigint(20) UNSIGNED NOT NULL,
  `pagos_idpagos` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `service_has_suscriptor`
--

INSERT INTO `service_has_suscriptor` (`service_has_suscriptor_id`, `service_idservice`, `suscriptor_idSuscriptor`, `pagos_idpagos`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 17, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(2, 1, 6, 2, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(3, 1, 6, 28, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(4, 3, 3, 7, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(5, 3, 2, 11, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(6, 2, 1, 21, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(7, 3, 4, 13, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(8, 2, 1, 19, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(9, 2, 8, 20, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(10, 1, 4, 14, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(11, 3, 3, 5, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(12, 1, 5, 4, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(13, 1, 1, 3, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(14, 1, 5, 24, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(15, 3, 9, 12, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(16, 1, 4, 9, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(17, 3, 2, 7, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(18, 1, 9, 15, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(19, 1, 8, 17, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(20, 2, 2, 27, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(21, 1, 7, 29, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(22, 3, 3, 18, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(23, 2, 3, 15, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(24, 1, 3, 4, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(25, 2, 8, 5, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(26, 1, 2, 17, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(27, 3, 9, 11, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(28, 2, 6, 5, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(29, 1, 8, 8, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(30, 1, 2, 19, '2020-09-21 05:44:05', '2020-09-21 05:44:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptor`
--

CREATE TABLE `suscriptor` (
  `suscriptor_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suscriptor`
--

INSERT INTO `suscriptor` (`suscriptor_id`, `nombre`, `apellido`, `password`, `email`, `latitud`, `longitud`, `created_at`, `updated_at`) VALUES
(1, 'Tomasa', 'Zulauf', '$2y$10$mXBVbKchKpq9buCszr8rJ.I7rhzao/Y8wNR4pPTH8TkXBYIdKfHQG', 'mona07@yahoo.com', '-28.721504', '-57.603488', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(2, 'Conrad', 'Hane', '$2y$10$HOqGMFmF7mkRz/E9HZy8K.OLcnvbnh0zKnSQO2EyrwgtWIaNnZz/K', 'woodrow.fahey@littel.org', '-25.279557', '-63.379662', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(3, 'Clementine', 'Connelly', '$2y$10$Bqv3QDiL6LC6uBG.aqRn8OzJUAwhNSFrSQppVhcH7m0EhVgaBKd.6', 'kayley25@gmail.com', '-30.672449', '-68.963564', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(4, 'Cecile', 'Boyle', '$2y$10$gLZpIBPkud6/l4T1LtsKK.HmFMahCnJkmCZXGQQm7bebE7IiqDijC', 'rau.webster@cormier.com', '-36.812326', '-67.106131', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(5, 'Cody', 'Padberg', '$2y$10$9v7VhbgwTsf1mswLdcJVQObOBD2XK/Hca.IGLVxvYeq3IHD/XEmya', 'glover.wilfrid@schuppe.com', '-27.271557', '-61.208059', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(6, 'Josiah', 'Cassin', '$2y$10$w7GtEa/eoxe3KEL4m/h1WOHvWRTgIvLQe/BFgRcx9/KEkzgkHV83.', 'kaelyn08@dibbert.info', '-32.351427', '-62.048529', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(7, 'Tad', 'Schultz', '$2y$10$nY0XL9wza.ZR2O1rw1a65ORSmTJ7c31cqU9JHiq0AejuPVoDvvbbm', 'howe.nels@hotmail.com', '-36.857876', '-67.321284', '2020-09-21 05:44:00', '2020-09-21 05:44:00'),
(8, 'Eunice', 'Leannon', '$2y$10$.t4lxxwO.b29NQXog6inuuyUCFqTOMDmcZPEF68aUWOkJ/1AIzku.', 'ohansen@yahoo.com', '-36.138378', '-62.178291', '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(9, 'Beau', 'Howe', '$2y$10$JsOMaI2YYuvJ.3c93.6xyeZ6.eHso81/016jbiVibYUK8NJwiln4m', 'ykihn@cormier.info', '-32.792367', '-67.809892', '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(10, 'Holly', 'Koss', '$2y$10$d/nKhse5ns2Ezyn9divFRuZOdX9770ut3U0X/6RusEcQC/4G6028a', 'grace.mcglynn@yahoo.com', '-33.098811', '-56.243406', '2020-09-21 05:44:01', '2020-09-21 05:44:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptor_team`
--

CREATE TABLE `suscriptor_team` (
  `suscriptor_team_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idSuscriptor` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suscriptor_team`
--

INSERT INTO `suscriptor_team` (`suscriptor_team_id`, `nombre`, `apellido`, `email`, `latitud`, `longitud`, `password`, `idSuscriptor`, `created_at`, `updated_at`) VALUES
(1, 'Chyna', 'King', 'goyette.jan@hotmail.com', '-31.710764', '-57.270132', '$2y$10$PX9a/osMhXoVEF3c1Lo2UewKO.ctE4Mz/dHQ4eENBbQFSww4MfWTm', 6, '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(2, 'Jordon', 'Kohler', 'hansen.deanna@gmail.com', '-28.191646', '-57.52618', '$2y$10$CoKUhqfollabOp7RNK3HW.mJpMjNwrNNi5PIXOZzdZTJhmxirgsIu', 9, '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(3, 'Earnest', 'Jones', 'zackery.reynolds@reichert.com', '-32.522689', '-66.226981', '$2y$10$EvRGAgb4X3zIuOHngDFbh.FA2sVlkzjV17nkIJr1NqdDQceaBiinm', 7, '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(4, 'Durward', 'Schinner', 'mjohnston@schinner.biz', '-23.278248', '-65.9517', '$2y$10$lJy0724O2C4L.z.qADu/HuASuCN5SNcvx4Jo/NsN4FtK3FNsM7piK', 4, '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(5, 'Royce', 'Corwin', 'sim.koepp@gmail.com', '-30.549148', '-66.144904', '$2y$10$R87oXhO2igVGGDXwHKSty.n/0gITrV84AU9CRShmtWQCOp.lnlA1e', 8, '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(6, 'Addison', 'Upton', 'lorena37@gmail.com', '-29.819135', '-57.579182', '$2y$10$AXBr2Aj12miQcXanYBvOGeYI8DZ7OoWKGlWUIddZ0/pdXqR3n6FwC', 5, '2020-09-21 05:44:01', '2020-09-21 05:44:01'),
(7, 'Bella', 'Casper', 'sauer.turner@kulas.com', '-30.466589', '-60.333411', '$2y$10$rSyQEL5vrMIOWYH3xLA7fOOslBJeD6SLpFmQLZUOdPrXuLD50ini6', 6, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(8, 'Hank', 'Upton', 'barrows.oran@gmail.com', '-27.72489', '-63.023255', '$2y$10$b.IBQUH59EANFX0Z3cYVWuoOkpp3.Kxelqt.B6I/FSjwfpkkrrFdO', 5, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(9, 'Stephany', 'Johns', 'zhane@sporer.biz', '-28.914212', '-62.324167', '$2y$10$Z.vYgMCg1SVyawZPsUe/HOLCgcfyMirHokE9raKt0k0tNzvYZWu56', 7, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(10, 'Fay', 'Balistreri', 'kkirlin@lueilwitz.biz', '-32.430602', '-65.025916', '$2y$10$5J0iNbwbsnQlF4j7QtVqYe0i7DBlY.TNn5RPwJC4SUsmDJhkuB9Yu', 2, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(11, 'Lauryn', 'Sporer', 'garfield58@yahoo.com', '-34.766483', '-58.897117', '$2y$10$DYa59LlEUprrqGD70JyNeuj2tnGM4hraoxlOeEQm/Swhf6ngYmUK.', 3, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(12, 'Wilford', 'Klein', 'lbradtke@gmail.com', '-26.427231', '-61.709552', '$2y$10$98M9qlSIAm08PLPNuTbAPe3W9NfeoTyjD7KdLHIAvLquFFZ7hfdRK', 4, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(13, 'Jonathan', 'Kling', 'lueilwitz.arvilla@yahoo.com', '-24.359821', '-58.225821', '$2y$10$QnFs6DrPPpCXUZpt4bbUpez4BM1XjFWwyPSw/aqDzQtkuc89tWnUm', 4, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(14, 'Trinity', 'Lehner', 'lpagac@gmail.com', '-25.979133', '-61.558962', '$2y$10$MMIWJqFRUgb2s5.eLcl6pergR5.hgG4g48J0k33ryIQtt0Ozx3ooO', 1, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(15, 'Riley', 'Barton', 'rosalind.wolf@yahoo.com', '-36.633262', '-65.587604', '$2y$10$UUvpwfzGgaQ9QBgkjmdE.eR7y07kL2c3vD88rx6H9plRUXrCr49p2', 7, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(16, 'Marcelina', 'Shields', 'candace.murray@gmail.com', '-30.69472', '-60.877488', '$2y$10$LYAlxPFq1QXJojfoyOpbMOXgcRVBVVyzT5sKMCxlEZ84cIffJs02e', 8, '2020-09-21 05:44:02', '2020-09-21 05:44:02'),
(17, 'Graciela', 'Gerlach', 'crooks.telly@orn.com', '-30.637495', '-66.982329', '$2y$10$QeVPywY08pANKBylefJ.FOEHfg9JVGcSS/azgG1hJ2BpfLJzLh6Ra', 4, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(18, 'Santina', 'Spencer', 'yasmine.kling@ratke.org', '-26.136056', '-62.41738', '$2y$10$k4R21pYvLOQNYFOZCRj.DePOv/o4kUkFYH.lLnfeQmnIEw5nBStCq', 4, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(19, 'Arturo', 'Huel', 'zlemke@hotmail.com', '-26.666616', '-56.859228', '$2y$10$jo5Mw3dueGsVsvM0gcddMOqZFzM80uXc0HBRHltzV.pjRNF/YRTry', 7, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(20, 'Joannie', 'Dare', 'carlotta.fahey@nader.com', '-32.296528', '-60.226937', '$2y$10$8yE/4a2kfE1x7tA/diWtp.bM9LbHoqSQ2PO3/NkpT9Csi.8jSoVGW', 5, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(21, 'Alexa', 'Greenholt', 'npfannerstill@hotmail.com', '-23.698442', '-59.348785', '$2y$10$/9AY18WWzpix7xuaeEyezeWlWDOU63hiL.2QNyjDNur2tKWURQAq6', 6, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(22, 'Kylie', 'Koepp', 'braun.anabel@rolfson.com', '-36.959243', '-66.704873', '$2y$10$zlDmjTxwkRrrwjtQtG6khOxvwGgtTJxeqkfQywXrmXTI3PA3bzQuW', 2, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(23, 'Verlie', 'Prosacco', 'cathy51@yahoo.com', '-31.995956', '-63.792632', '$2y$10$ncfZ4UUrb7A91E2m8IeR2eQjdZcDPvqAGE9nyTs415tcse47Fy4Pu', 8, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(24, 'Kasandra', 'Zieme', 'prunolfsdottir@yost.com', '-33.32757', '-68.353358', '$2y$10$tyBkhpGEGhU7eFhpK74sS./SjsUDQHOG4ZKfSMs/7rllFN/Q2.AU.', 3, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(25, 'Harmony', 'Ferry', 'rcremin@yahoo.com', '-29.398175', '-60.738326', '$2y$10$.w2Yvei9qpjdo6SMjS0vuO078L3k4jiyXJ8SKU.6ddkG8lLM9Fmia', 5, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(26, 'Candice', 'Douglas', 'vandervort.miles@flatley.com', '-35.813628', '-61.387046', '$2y$10$R952vfCziX3AJuY6PxtXFeWmHemcMIQmiMYD0lKyYsgc994hKd/kq', 9, '2020-09-21 05:44:03', '2020-09-21 05:44:03'),
(27, 'Clay', 'Schoen', 'fritsch.general@yahoo.com', '-33.750034', '-66.407994', '$2y$10$2J4qo76aaBzPbthP7mID2Oc1OsO5xDjMJEOfNzyEy50iXw7zKPnR.', 3, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(28, 'Jacklyn', 'King', 'arussel@hotmail.com', '-28.096261', '-56.493684', '$2y$10$viyY3CgckkyRgDCldroRnuayqpfBDFGfjwGNWBF8eyln.f2DUpvnO', 9, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(29, 'Keara', 'Morissette', 'maye.ferry@yahoo.com', '-36.490228', '-63.265426', '$2y$10$ChALrZVSj0OAqJQfXEiuD.AxFS9polCfT3a7RMFMUs4167eOXtKz6', 2, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(30, 'Janiya', 'Cormier', 'yyost@morissette.com', '-34.950417', '-66.302904', '$2y$10$/dHX6FEQv./1h3n0xMmCPeLFD7nN..vqAPjPSCxgHBTJhLhiPdrcq', 1, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(31, 'Clotilde', 'Vandervort', 'annamarie.gaylord@harvey.com', '-29.723924', '-67.503651', '$2y$10$nfKWfUvGz4wNwRb/tcDuvO1VdRBYTrAeJ/Os5eujVptN/PYmsqiju', 6, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(32, 'Emma', 'Gutkowski', 'bschuppe@hotmail.com', '-32.335187', '-68.530978', '$2y$10$3FSHv/DGCgzfiTTAAwMws.SbRmyVVMG5yy1j.YFum5CRYSHpcoNUW', 8, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(33, 'Russell', 'Hirthe', 'wuckert.hollie@hotmail.com', '-26.999285', '-61.729721', '$2y$10$DflbwDB0uSOptvx86Itw5u51ITiLKnlJ4f9uLfyqsfTCha0SywQ.S', 6, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(34, 'Ignatius', 'Harvey', 'monica.sporer@hartmann.com', '-32.877524', '-68.729786', '$2y$10$G/VLkrc/omOW2w7imStit.o8V4ybh4d6xrS/0roBfnJwzvo/aJ3yO', 6, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(35, 'Flavio', 'Bogan', 'maxine04@nikolaus.biz', '-25.329585', '-68.958483', '$2y$10$Xg6NC1UdrMVT.03bDD9HweYcDNhuXVItF7AaDC0vp7zdi28TIEuwe', 8, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(36, 'Juvenal', 'Predovic', 'adam51@gmail.com', '-30.458338', '-57.533088', '$2y$10$oPPt3r5wk2mI9XwidHJOH.IsMoGUmF0mw2xp9FNQ1PzX3nJEjuqf6', 8, '2020-09-21 05:44:04', '2020-09-21 05:44:04'),
(37, 'Ramiro', 'Dach', 'vergie.konopelski@yahoo.com', '-27.448373', '-64.304432', '$2y$10$iEFZxl.qQDE7uKxtmOp58OGETXy.hljZY2CjAbAZJzO1MZziSXyOa', 5, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(38, 'Johnathon', 'Hegmann', 'oferry@thompson.com', '-27.613411', '-56.379854', '$2y$10$sSHqmCR50TB16S6QoWT3h.En7Qy98hAYDWXwOVCgZOeeo7pLHy47e', 2, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(39, 'Enos', 'Spencer', 'jarod.hettinger@hotmail.com', '-29.879466', '-66.216654', '$2y$10$RFiydKZRP7lqaEgSxpMfX.zQlqqo4YVI/D1jwe2UYUHpQPadWzYjy', 2, '2020-09-21 05:44:05', '2020-09-21 05:44:05'),
(40, 'Bernita', 'Weimann', 'rubie12@hotmail.com', '-28.741203', '-61.502151', '$2y$10$52b.GeSnFGCfhJTaZAzNZeaEgcQPBE9yFpXUSXWdwGvdR8sVGk3rK', 8, '2020-09-21 05:44:05', '2020-09-21 05:44:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`pago_id`);

--
-- Indices de la tabla `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indices de la tabla `service_has_suscriptor`
--
ALTER TABLE `service_has_suscriptor`
  ADD PRIMARY KEY (`service_has_suscriptor_id`),
  ADD KEY `service_has_suscriptor_service_idservice_foreign` (`service_idservice`),
  ADD KEY `service_has_suscriptor_suscriptor_idsuscriptor_foreign` (`suscriptor_idSuscriptor`),
  ADD KEY `service_has_suscriptor_pagos_idpagos_foreign` (`pagos_idpagos`);

--
-- Indices de la tabla `suscriptor`
--
ALTER TABLE `suscriptor`
  ADD PRIMARY KEY (`suscriptor_id`),
  ADD UNIQUE KEY `suscriptor_email_unique` (`email`);

--
-- Indices de la tabla `suscriptor_team`
--
ALTER TABLE `suscriptor_team`
  ADD PRIMARY KEY (`suscriptor_team_id`),
  ADD UNIQUE KEY `suscriptor_team_email_unique` (`email`),
  ADD KEY `suscriptor_team_idsuscriptor_foreign` (`idSuscriptor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `pago_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `service`
--
ALTER TABLE `service`
  MODIFY `service_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `service_has_suscriptor`
--
ALTER TABLE `service_has_suscriptor`
  MODIFY `service_has_suscriptor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `suscriptor`
--
ALTER TABLE `suscriptor`
  MODIFY `suscriptor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `suscriptor_team`
--
ALTER TABLE `suscriptor_team`
  MODIFY `suscriptor_team_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `service_has_suscriptor`
--
ALTER TABLE `service_has_suscriptor`
  ADD CONSTRAINT `service_has_suscriptor_pagos_idpagos_foreign` FOREIGN KEY (`pagos_idpagos`) REFERENCES `pago` (`pago_id`),
  ADD CONSTRAINT `service_has_suscriptor_service_idservice_foreign` FOREIGN KEY (`service_idservice`) REFERENCES `service` (`service_id`),
  ADD CONSTRAINT `service_has_suscriptor_suscriptor_idsuscriptor_foreign` FOREIGN KEY (`suscriptor_idSuscriptor`) REFERENCES `suscriptor` (`suscriptor_id`);

--
-- Filtros para la tabla `suscriptor_team`
--
ALTER TABLE `suscriptor_team`
  ADD CONSTRAINT `suscriptor_team_idsuscriptor_foreign` FOREIGN KEY (`idSuscriptor`) REFERENCES `suscriptor` (`suscriptor_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
