-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql
-- Tiempo de generación: 21-03-2023 a las 23:54:12
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendamvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addreeses`
--

CREATE TABLE `addreeses` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name_1` varchar(200) NOT NULL,
  `last_name_2` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `addreeses`
--

INSERT INTO `addreeses` (`id`, `user_id`, `first_name`, `last_name_1`, `last_name_2`, `email`, `address`, `city`, `state`, `zipcode`, `country`) VALUES
(1, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30010', 'Espa&ntilde;a'),
(2, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30010', 'Espa&ntilde;a'),
(3, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'Espa&ntilde;a'),
(4, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'Espa&ntilde;a'),
(5, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '2500', 'Espa&ntilde;a'),
(6, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '2500', 'Espa&ntilde;a'),
(7, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '2500', 'Espa&ntilde;a'),
(8, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '2500', 'Espa&ntilde;a'),
(9, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '2500', 'Espa&ntilde;a'),
(10, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '2500', 'Espa&ntilde;a'),
(11, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '3010', 'Espa&ntilde;a'),
(12, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '3010', 'Espa&ntilde;a'),
(13, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '213516', 'Espa&ntilde;a'),
(14, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '213516', 'Espa&ntilde;a'),
(15, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(16, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(17, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(18, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(19, 1, 'pablo', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'Espa&ntilde;a'),
(20, 1, 'pablo', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'Espa&ntilde;a'),
(21, 1, 'pablo', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'Espa&ntilde;a'),
(22, 1, 'pablo', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'Espa&ntilde;a'),
(23, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '3456', 'Espa&ntilde;a'),
(24, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '3456', 'Espa&ntilde;a'),
(25, 1, 'Pepe', 'fghf', 'fghf', 'pepe@mail.es', 'fgf', 'hfh', 'fghf', '454', 'España'),
(26, 1, 'Pepe', 'fghf', 'fghf', 'pepe@mail.es', 'fgf', 'hfh', 'fghf', '454', 'España'),
(27, 1, 'fj', 'fhhfj', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'hgj', 'Mghfj', 'ghjgf', 'fj'),
(28, 1, 'fj', 'fhhfj', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'hgj', 'Mghfj', 'ghjgf', 'fj'),
(29, 4, 'Sandra', 'safaf', 'sdfgag', 'sandra@gmail.com', 'fgafgf', 'fgagfg', 'afgag', 'afag', 'afdfg'),
(30, 4, 'Sandra', 'safaf', 'sdfgag', 'sandra@gmail.com', 'fgafgf', 'fgagfg', 'afgag', 'afag', 'afdfg'),
(31, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(32, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(33, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(34, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(35, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(36, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(37, 1, 'paco', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', 'sdgsgd', 'Espa&ntilde;a'),
(38, 1, 'paco', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', 'sdgsgd', 'Espa&ntilde;a'),
(39, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', 'FGHFSH', 'Espa&ntilde;a'),
(40, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', 'FGHFSH', 'Espa&ntilde;a'),
(41, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', 'sfaf', 'Espa&ntilde;a'),
(42, 1, 'Pepe', 'P&eacute;rez', 'S&aacute;nchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', 'sfaf', 'Espa&ntilde;a'),
(43, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(44, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(45, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España'),
(46, 1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` tinyint NOT NULL,
  `deleted` tinyint NOT NULL,
  `login_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `deleted`, `login_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Jorge', 'jorge@mail.es', '806cc6e9290ccac7e77a34f545b28fdf3c8a87dab0f144f3885b2411483e433df0a34d9d11355f20b74df86b9bbbe5dd95d4046be9430851b8fbdbc390dc8e54', 1, 0, '2023-03-16 21:59:44', '2022-10-07 18:00:41', '2022-10-11 17:27:38', NULL),
(4, 'Jaime', 'jaime@mail.es', '806cc6e9290ccac7e77a34f545b28fdf3c8a87dab0f144f3885b2411483e433df0a34d9d11355f20b74df86b9bbbe5dd95d4046be9430851b8fbdbc390dc8e54', 1, 0, '2023-03-20 22:23:02', '2022-10-11 18:02:06', NULL, NULL),
(12, 'Sandra', 'sandra@gmail.com', 'a69f16dbd2c154898e4bf453fd0694a11d429bc86972a26b521ffd9c2c84b9ca6253e0b10ae26c39d0d7b71f0eb973758f6b43eba1949fd9c4faaeeb18dd5b74', 1, 0, '2023-03-21 23:05:16', '2023-03-16 17:05:52', NULL, NULL),
(13, 'pablo', 'pablo@gmail.com', 'a69f16dbd2c154898e4bf453fd0694a11d429bc86972a26b521ffd9c2c84b9ca6253e0b10ae26c39d0d7b71f0eb973758f6b43eba1949fd9c4faaeeb18dd5b74', 1, 0, NULL, '2023-03-16 22:16:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int NOT NULL,
  `state` tinyint NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `send` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `state`, `user_id`, `product_id`, `quantity`, `discount`, `send`, `date`, `price`, `payment_id`) VALUES
(1, 1, 1, 2, '1.00', '1.99', '2.99', '2022-10-21 18:38:02', '0.00', NULL),
(7, 1, 1, 2, '1.00', '1.99', '2.99', '2022-11-17 19:19:39', '0.00', NULL),
(11, 1, 1, 2, '1.00', '1.99', '2.99', '2022-11-17 22:05:12', '0.00', NULL),
(13, 1, 1, 2, '1.00', '1.99', '2.99', '2022-11-17 22:43:16', '0.00', NULL),
(15, 1, 1, 2, '1.00', '1.99', '2.99', '2022-11-17 23:11:53', '0.00', NULL),
(17, 1, 1, 2, '1.00', '1.99', '2.99', '2022-11-17 23:23:48', '19.99', NULL),
(20, 1, 4, 1, '1.00', '0.99', '1.99', '2023-03-17 11:48:32', NULL, NULL),
(21, 1, 4, 3, '1.00', '0.99', '0.00', '2023-03-17 11:48:32', NULL, NULL),
(22, 1, 1, 2, '1.00', '1.99', '2.99', '2023-03-17 18:27:28', NULL, NULL),
(35, 1, 1, 2, '1.00', '1.99', '2.99', '2023-03-19 20:05:04', NULL, NULL),
(36, 1, 1, 2, '1.00', '1.99', '2.99', '2023-03-19 20:06:25', NULL, NULL),
(39, 1, 4, 1, '1.00', '0.99', '1.99', '2023-03-21 08:48:24', NULL, NULL),
(49, 1, 1, 3, '1.00', '0.99', '0.00', '2023-03-21 23:34:54', '9.99', NULL),
(50, 0, 1, 5, '1.00', '12.00', '2.00', '2023-03-21 23:53:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` int NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `type`, `value`, `description`) VALUES
(1, 'adminStatus', 0, 'Inactivo'),
(2, 'adminStatus', 1, 'Activo'),
(3, 'productType', 1, 'Curso en línea'),
(4, 'productType', 2, 'Libro'),
(5, 'productStatus', 0, 'Inactivo'),
(6, 'productStatus', 1, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `type` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `send` decimal(10,2) NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `published` date NOT NULL,
  `relation1` int NOT NULL,
  `relation2` int NOT NULL,
  `relation3` int NOT NULL,
  `mostSold` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `new` char(1) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `status` tinyint NOT NULL,
  `deleted` tinyint NOT NULL,
  `create_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `author` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `publisher` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `pages` int NOT NULL,
  `people` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `objetives` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `necesites` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `type`, `name`, `description`, `price`, `discount`, `send`, `image`, `published`, `relation1`, `relation2`, `relation3`, `mostSold`, `new`, `status`, `deleted`, `create_at`, `updated_at`, `deleted_at`, `author`, `publisher`, `pages`, `people`, `objetives`, `necesites`) VALUES
(1, '2', 'El nombre de la rosa', '&lt;p&gt;dfvsdfv jdfd &amp;nbsp;&amp;nbsp;&lt;strong&gt;kjdfh&lt;/strong&gt; kjf &lt;i&gt;jdjgk&lt;/i&gt; vjk&lt;/p&gt;', '9.99', '0.99', '1.99', '20150613-mac.jpg', '2022-10-19', 0, 0, 0, '1', '1', 0, 0, '2022-10-18 19:12:02', NULL, NULL, 'Pepe', 'Jos&eacute;', 100, '', '', ''),
(2, '2', 'El retorno del rey', '&lt;p&gt;dfvsdfv jdfd &amp;nbsp;&amp;nbsp;&lt;strong&gt;kjdfh&lt;/strong&gt; kjf &lt;i&gt;jdjgk&lt;/i&gt; vjk&lt;/p&gt;', '19.99', '1.99', '2.99', '20150627-mac.jpg', '2022-10-26', 0, 0, 0, '0', '1', 0, 0, '2022-10-18 19:16:16', '2022-10-19 17:38:33', NULL, 'Pepe', 'Jos&eacute;', 100, '', '', ''),
(3, '1', 'From zero to master in PHP', '&lt;p&gt;&lt;i&gt;Mejora hasta el infinito&lt;/i&gt; tus habilidades en &lt;strong&gt;PHP&lt;/strong&gt; y programaci&oacute;n orientada a objetos, &lt;strong&gt;POO&lt;/strong&gt;.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br&gt;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br&gt;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br&gt;consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br&gt;cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br&gt;proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', '9.99', '0.99', '0.00', '20150711-mac.jpg', '2022-10-27', 0, 0, 0, '1', '1', 1, 0, '2022-10-20 14:23:44', '2022-10-20 14:25:24', NULL, 'Pepe', 'Jos&eacute;', 100, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(4, '2', 'Cosas', '&lt;p&gt;Cosas&lt;/p&gt;', '48.20', '4.10', '5.00', 'f100031882.jpg', '2022-11-26', 0, 3, 0, '1', '0', 0, 1, '2022-11-16 22:34:12', NULL, '2022-11-16 22:34:18', 'Cosas', 'Cosas', 546, 'Novatos', 'Desde la nada al todo en PHP', 'Ganas, muchas ganas'),
(5, '1', 'hgfhdfhg', '&lt;p&gt;dgfhfjdfhgj&lt;/p&gt;', '45.00', '12.00', '2.00', 'roosa.jpeg', '2023-04-01', 3, 0, 0, '1', '1', 0, 0, '2023-03-17 23:04:21', '2023-03-21 23:05:59', NULL, 'Pepe', 'Jos&eacute;', 100, 'dgjdjdj', 'dhjdgj', 'djdjdghj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `last_name_1` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `last_name_2` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `address` varchar(150) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `state` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `zipcode` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `country` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `is_admin` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name_1`, `last_name_2`, `email`, `address`, `city`, `state`, `zipcode`, `country`, `password`, `is_admin`) VALUES
(1, 'Pepe', 'Pérez', 'Sánchez', 'pepe@mail.es', 'c/ La suya 1', 'Murcia', 'Murcia', '30001', 'España', 'a69f16dbd2c154898e4bf453fd0694a11d429bc86972a26b521ffd9c2c84b9ca6253e0b10ae26c39d0d7b71f0eb973758f6b43eba1949fd9c4faaeeb18dd5b74', 0),
(2, 'Juan', 'García', 'Martínez', 'juan@juan.es', 'c/ La otra', 'Valencia', 'Valencia', '46001', 'España', '806cc6e9290ccac7e77a34f545b28fdf3c8a87dab0f144f3885b2411483e433df0a34d9d11355f20b74df86b9bbbe5dd95d4046be9430851b8fbdbc390dc8e54', 0),
(4, 'Sandra', '', '', 'sandra@gmail.com', '', '', '', '', '', 'a69f16dbd2c154898e4bf453fd0694a11d429bc86972a26b521ffd9c2c84b9ca6253e0b10ae26c39d0d7b71f0eb973758f6b43eba1949fd9c4faaeeb18dd5b74', 1),
(7, 'pablo', '', '', 'pablo@gmail.com', '', '', '', '', '', 'a69f16dbd2c154898e4bf453fd0694a11d429bc86972a26b521ffd9c2c84b9ca6253e0b10ae26c39d0d7b71f0eb973758f6b43eba1949fd9c4faaeeb18dd5b74', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addreeses`
--
ALTER TABLE `addreeses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addreeses`
--
ALTER TABLE `addreeses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
