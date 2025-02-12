-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 00:35:16
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Luis Mario', 'Carrillo Vega', '23325061070678', '2008-10-09', 1, 'luis.carrillo23@cetis107.edu.mx', '6971130887'),
(2, 'Esteban', 'valenzuela zavala', '23325061070716', '2008-06-09', 1, 'ramon.valenzuela23@cetis107.edu.mx', '6672298375'),
(3, 'yurei', 'torres landeros', '233250610706114', '2008-04-04', 1, 'yuriel_torres@icloud.com', '6677309261|'),
(4, 'Juan ', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juan.trejo23@cetis107.edu.mx', '6674911079'),
(5, 'Isaac', 'Salomon Rendon', '2332506107610', '2008-06-08', 1, 'isaac.salomon23@cetis107.edu.mx', '6677910586'),
(6, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-04-28', 1, 'emiliano.ojeda23@cetis107.edu.mx', '66773092615'),
(7, 'victor', 'diaz gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'programacion', 'Programación es relevante porque: contribuye a la formación de personas capaces de\r\nintegrarse a un mercado laboral dinámico y de alta demanda, que esta a la vanguardia en el uso de la tecnología y que contribuye a la\r\ntransformación digital de los sectores productivos en el país.'),
(2, 'ofimatica', 'ofrece las competencias profesionales que permiten al estudiante realizar actividades dirigidas a obtener y gestionar información de manera digital, mediante el uso eficaz y eficiente de los recursos informáticos disponibles con la finalidad de satisfacer las necesidades'),
(3, 'electronica', ' rama de la ingeniería que se preocupa por las aplicaciones prácticas de la electricidad, los circuitos y sistemas eléctricos, así como el equipamiento y sistemas que surjan de ellos.'),
(4, 'contabilidad', 'Es el área de las finanzas que estudia las partidas del flujo económico y financiero de una organización, que puede ser pública o privada.'),
(5, 'construccion', 'altamente competentes y competitivos a nivel nacional e internacional, con actitud de servicio y poseedores de valores cívicos y éticos;'),
(6, 'diseño grafico', 'consiste en aprender sobre la composición visual, estética y manejo de herramientas para transformar una idea en una pieza grafica. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Luis Carlos', 'lus_carlos23@cetis107.edu.mx', 1, '1987-01-05'),
(2, 'Maru Aguilar', 'maru.aguilar23@cetis107.edu.mx', 0, '1852-07-14'),
(3, 'Lizbeth Hernández', 'lizbeth_hernandez23@cetis107.edu.mz', 0, '1978-10-18'),
(4, 'Gael Ibarra', 'gael.ibarra23@cetis107.edu.mx', 1, '1972-06-06'),
(5, 'Ivan Torres', 'ivan.torres23@cetis107.edu.mx', 1, '1990-04-17'),
(6, 'Pedro Gonzales', 'pedro.gonzales23@cetis107.edu.mx', 1, '1978-08-14'),
(7, 'Liliana Rosalia', 'liliana.rosalia23@cetis107.edu.mx', 0, '1972-09-19'),
(8, 'Yuriel Torres', 'yuriel.torres23@cetis107.edu.mx', 1, '1990-09-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Matematicas', 4),
(2, 'Ingles', 4),
(3, 'historia', 4),
(4, 'ciencias sociales', 4),
(5, 'quimica', 4),
(6, 'recursos socioemocionales', 4),
(7, 'base de datos no relacionales', 4),
(8, 'base de datos relacionales', 4),
(9, 'tutorias', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
