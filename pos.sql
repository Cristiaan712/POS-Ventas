-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2020 a las 21:57:25
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Abarrotes', '2020-07-20 18:01:47'),
(2, 'Enlatados', '2020-07-20 18:08:57'),
(3, 'Lacteos', '2020-07-20 18:09:10'),
(4, 'Piqueos', '2020-07-20 18:09:23'),
(5, 'Confitería y Dulceria', '2020-07-20 18:09:48'),
(6, 'Harinas y Pan', '2020-07-20 18:10:02'),
(7, 'Frutas y Verduras', '2020-07-20 18:10:18'),
(8, 'Bebidas', '2020-07-20 18:10:31'),
(9, 'BEBIDAS ALCOHOLICAS', '2020-07-20 18:10:52'),
(10, 'ALIMENTOS PREPARADOS', '2020-07-20 18:11:14'),
(11, 'HIGENE PERSONAL', '2020-07-20 18:11:32'),
(12, 'USO DOMESTICO', '2020-07-20 18:11:53'),
(13, 'Helados y Tortas', '2020-07-20 18:12:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Cristian Gonzales', 2147483647, 'cristian@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1995-12-07', 35, '2020-07-19 04:40:17', '2020-07-19 09:40:17'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 2, '2017-12-26 17:27:42', '2020-07-15 20:23:07'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 22, '2017-12-26 17:27:13', '2020-07-15 20:23:35'),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 8, '2017-12-26 17:26:51', '2020-07-15 20:23:39'),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 4, '2017-12-25 17:23:38', '2020-07-15 20:24:43'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 2, '2020-07-02 16:29:01', '2020-07-15 20:24:36'),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 12, '2017-12-26 17:25:33', '2017-12-26 22:25:33'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 18, '2017-12-26 17:25:08', '2017-12-26 22:25:08'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 10, '2017-12-26 17:24:50', '2017-12-26 22:24:50'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 24, '2017-12-25 17:24:24', '2017-12-27 00:30:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(59, 5, '516', 'Cono slump', 'vistas/img/productos/516/228.jpg', 15, 140, 196, 5, '2018-02-06 22:47:02'),
(60, 5, '517', 'Cortadora de Baldosin', 'vistas/img/productos/517/746.jpg', 6, 930, 1302, 14, '2020-07-19 08:46:48'),
(63, 8, '7750073003196', 'Alcohol Casa Grande 900 ml', 'vistas/img/productos/7750073003196/906.jpg', 10, 10.5, 15, 20, '2020-07-19 09:40:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2020-07-20 14:55:57', '2020-07-20 19:55:57'),
(57, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 1, '2018-02-06 16:58:50', '2018-02-06 21:58:50'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Especial', 'vistas/img/usuarios/julio/100.png', 1, '2018-02-06 17:09:22', '2018-02-06 22:09:22'),
(60, 'Judith Quispe', 'judithtasty', '$2a$07$asxx54ahjppf45sd87a5au4LVhmR99JvMkhYBRePUWRLLo4L3ogY6', 'Administrador', 'vistas/img/usuarios/judithtasty/941.jpg', 1, '2020-07-20 13:32:35', '2020-07-20 18:32:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(22, 10006, 10, 1, '[{\"id\":\"3\",\"descripcion\":\"Compresor de Aire para pintura\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"4200\",\"total\":\"4200\"},{\"id\":\"4\",\"descripcion\":\"Cortadora de Adobe sin Disco \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"5600\",\"total\":\"5600\"},{\"id\":\"5\",\"descripcion\":\"Cortadora de Piso sin Disco \",\"cantidad\":\"3\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"6468\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"1540\",\"total\":\"1540\"}]', 3383.52, 17808, 21191.5, 'Efectivo', '2018-01-26 15:03:22'),
(23, 10007, 9, 1, '[{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"2156\",\"total\":\"2156\"},{\"id\":\"8\",\"descripcion\":\"Guadañadora \",\"cantidad\":\"6\",\"stock\":\"13\",\"precio\":\"2156\",\"total\":\"12936\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"3640\",\"total\":\"3640\"}]', 3851.68, 20272, 24123.7, 'TC-357547467346', '2017-11-30 15:03:53'),
(24, 10008, 12, 1, '[{\"id\":\"2\",\"descripcion\":\"Plato Flotante para Allanadora\",\"cantidad\":\"1\",\"stock\":\"6\",\"precio\":\"6300\",\"total\":\"6300\"},{\"id\":\"7\",\"descripcion\":\"Extractor de Aire \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"2156\",\"total\":\"10780\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"1540\",\"total\":\"1540\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"3640\",\"total\":\"3640\"}]', 4229.4, 22260, 26489.4, 'TD-35745575', '2017-12-25 15:04:11'),
(25, 10009, 11, 1, '[{\"id\":\"10\",\"descripcion\":\"Hidrolavadora Gasolina\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3094\",\"total\":\"3094\"},{\"id\":\"9\",\"descripcion\":\"Hidrolavadora Eléctrica \",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"3640\",\"total\":\"3640\"},{\"id\":\"6\",\"descripcion\":\"Disco Punta Diamante \",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"1540\",\"total\":\"1540\"}]', 1572.06, 8274, 9846.06, 'TD-5745745745', '2017-08-15 15:04:38'),
(27, 10011, 7, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"}]', 550.62, 2898, 3448.62, 'Efectivo', '2017-12-25 22:23:38'),
(28, 10012, 12, 57, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"1078\",\"total\":\"1078\"}]', 529.34, 2786, 3315.34, 'TC-3545235235', '2017-12-25 22:24:24'),
(29, 10013, 11, 57, '[{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"1302\",\"total\":\"6510\"}]', 1449.7, 7630, 9079.7, 'TC-425235235235', '2017-12-26 22:24:50'),
(30, 10014, 10, 57, '[{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"196\",\"total\":\"196\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"924\",\"total\":\"924\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"1078\",\"total\":\"10780\"}]', 2261, 11900, 14161, 'Efectivo', '2017-12-26 22:25:09'),
(31, 10015, 9, 57, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"812\",\"total\":\"2436\"}]', 462.84, 2436, 2898.84, 'Efectivo', '2017-12-26 22:25:33'),
(34, 10018, 6, 57, '[{\"id\":\"51\",\"descripcion\":\"Tensor\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"52\",\"descripcion\":\"Bascula \",\"cantidad\":\"5\",\"stock\":\"12\",\"precio\":\"182\",\"total\":\"910\"},{\"id\":\"53\",\"descripcion\":\"Bomba Hidrostatica\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"1078\",\"total\":\"1078\"}]', 404.32, 2128, 2532.32, 'Efectivo', '2017-12-26 22:26:51'),
(35, 10019, 5, 57, '[{\"id\":\"56\",\"descripcion\":\"Cizalla de Palanca\",\"cantidad\":\"15\",\"stock\":\"3\",\"precio\":\"630\",\"total\":\"9450\"},{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"560\",\"total\":\"560\"}]', 1901.9, 10010, 11911.9, 'Efectivo', '2017-12-26 22:27:13'),
(36, 10020, 4, 57, '[{\"id\":\"55\",\"descripcion\":\"Cilindro muestra de concreto\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"560\",\"total\":\"560\"},{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"924\",\"total\":\"924\"}]', 281.96, 1484, 1765.96, 'TC-46346346346', '2017-12-26 22:27:42'),
(37, 10021, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"1302\",\"total\":\"1302\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"196\",\"total\":\"196\"}]', 149.8, 1498, 1647.8, 'Efectivo', '2018-02-06 22:47:02'),
(38, 10022, 8, 1, '[{\"id\":\"58\",\"descripcion\":\"Coche llanta neumatica\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"588\",\"total\":\"588\"},{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"812\",\"total\":\"812\"}]', 28, 1400, 1428, 'Efectivo', '2020-07-02 21:29:01'),
(39, 10023, 6, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"1302\",\"total\":\"1302\"}]', 13.02, 1302, 1315.02, 'Efectivo', '2020-07-15 17:38:42'),
(40, 10024, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"15\",\"total\":\"15\"}]', 1.5, 15, 16.5, 'Efectivo', '2020-07-17 00:59:22'),
(41, 10025, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-17 02:58:29'),
(42, 10025, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-17 03:22:50'),
(43, 10025, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"17\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-17 03:39:17'),
(44, 10026, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"15\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-19 04:50:55'),
(45, 10026, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"15\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-19 04:58:10'),
(46, 10026, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"15\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-19 04:59:32'),
(47, 10027, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-19 05:00:11'),
(48, 10027, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"13\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-19 05:34:04'),
(49, 10028, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"1302\",\"total\":\"1302\"}]', 13.02, 1302, 1315.02, 'Efectivo', '2020-07-19 05:34:37'),
(50, 10029, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"2\",\"stock\":\"9\",\"precio\":\"1302\",\"total\":\"2604\"}]', 26.04, 2604, 2630.04, 'Efectivo', '2020-07-19 06:06:32'),
(51, 10030, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"1302\",\"total\":\"1302\"}]', 13.02, 1302, 1315.02, 'Efectivo', '2020-07-19 08:17:57'),
(52, 10031, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"HDD 500 GB laptop\",\"cantidad\":\"2\",\"stock\":\"7\",\"precio\":\"140\",\"total\":\"280\"}]', 2.8, 280, 282.8, 'Efectivo', '2020-07-19 08:20:06'),
(53, 10032, 3, 1, '[{\"id\":\"57\",\"descripcion\":\"Cizalla de Tijera\",\"cantidad\":\"1\",\"stock\":\"27\",\"precio\":\"812\",\"total\":\"812\"}]', 8.12, 812, 820.12, 'Efectivo', '2020-07-19 08:21:42'),
(54, 10033, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"HDD 500 GB laptop\",\"cantidad\":\"2\",\"stock\":\"5\",\"precio\":\"140\",\"total\":\"280\"}]', 2.8, 280, 282.8, 'Efectivo', '2020-07-19 08:39:43'),
(55, 10034, 3, 1, '[{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"2\",\"stock\":\"6\",\"precio\":\"1302\",\"total\":\"2604\"}]', 26.04, 2604, 2630.04, 'Efectivo', '2020-07-19 08:46:48'),
(56, 10035, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"2\",\"stock\":\"11\",\"precio\":\"15\",\"total\":\"30\"}]', 0.3, 30, 30.3, 'Efectivo', '2020-07-19 09:11:03'),
(57, 10036, 3, 1, '[{\"id\":\"66\",\"descripcion\":\"HDD 500 GB laptop\",\"cantidad\":\"2\",\"stock\":\"3\",\"precio\":\"140\",\"total\":\"280\"}]', 2.8, 280, 282.8, 'Efectivo', '2020-07-19 09:30:36'),
(58, 10037, 3, 1, '[{\"id\":\"63\",\"descripcion\":\"Alcohol Casa Grande 900 ml\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"15\",\"total\":\"15\"}]', 0.15, 15, 15.15, 'Efectivo', '2020-07-19 09:40:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
