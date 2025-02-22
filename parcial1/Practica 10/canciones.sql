-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2025 a las 02:18:09
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Llamado de Emergencia', 10, '00:04:00', '2008-07-23', 1, 'llamadodeemergencia.jpg'),
(2, 'con calma', 10, '00:03:31', '2019-01-23', 1, 'concalma.jpg'),
(3, 'gasolina', 10, '00:03:44', '2004-08-12', 1, 'gasolina.jpg'),
(4, 'dura', 10, '00:03:20', '2018-01-18', 1, 'dura.jpg'),
(5, 'limbo', 10, '00:03:44', '2012-10-27', 1, 'limbo.jpg'),
(6, 'AMG', 2, '00:02:54', '2022-11-24', 1, 'amg.jpg'),
(7, 'vino tinto', 2, '00:04:29', '2024-06-24', 1, 'vinotinto.jpg'),
(8, 'cuerno azulado', 2, '00:04:11', '2023-06-30', 1, 'cuernoazulado.jpg'),
(9, 'prc', 2, '00:03:04', '2023-01-24', 1, 'prc.jpg'),
(10, 'entre las de 20', 2, '00:02:48', '2024-04-03', 1, 'entrelasde20.jpg'),
(11, 'aerolinea carrillo', 3, '00:03:33', '2018-09-28', 1, 'aerolineacarrillo.jpg'),
(12, 'ojitos de miel', 3, '00:03:11', '2020-10-29', 1, 'ojitosdemiel.jpg'),
(13, 'Rafa caro', 3, '00:04:18', '2017-06-21', 1, 'rafacaro.jpg'),
(14, 'mi religion', 3, '00:03:33', '2018-05-14', 1, 'mireligion.jpg'),
(15, 'capitan del barco', 3, '00:03:24', '2025-02-14', 1, 'capitandelbarco.jpg'),
(16, 'si no quieres no', 4, '00:02:27', '2024-03-09', 1, 'sinoquieresno.jpg'),
(17, 'el buho', 4, '00:02:57', '2019-02-06', 1, 'elbuho.jpg'),
(18, 'me meti en el ruedo', 4, '00:02:50', '2020-12-30', 1, 'memetienelruedo.jpg'),
(19, 'jgl', 4, '00:03:15', '2022-08-30', 1, 'jgl.jpg'),
(20, 'siempre pendientes', 4, '00:02:27', '2022-08-15', 1, 'siemprependientes.jgl'),
(21, 'china', 7, '00:05:01', '2019-07-19', 1, 'china.jpg'),
(22, 'secreto', 7, '00:04:30', '2019-04-06', 1, 'secreto.jpg'),
(23, 'ella quiere beber', 7, '00:03:27', '2022-08-01', 1, 'ellaquierebeber.jpg'),
(24, 'adicto', 7, '00:03:26', '2020-09-10', 1, 'adicto.jpg'),
(25, 'amanece', 7, '00:03:34', '2020-12-30', 1, 'amanece.jpg'),
(26, 'propuesta indecente', 9, '00:03:55', '2013-09-09', 1, 'propuestaindecente.jpg'),
(27, 'eres mia', 9, '00:04:10', '2014-06-17', 1, 'eresmia.jpg'),
(28, 'heroe favorito', 9, '00:03:54', '2017-02-10', 1, 'heroefavorito.jpg'),
(29, 'imitadora', 9, '00:03:54', '2017-06-23', 1, 'imitadora.jpg'),
(30, 'sobredosis', 9, '00:03:18', '2018-02-14', 1, 'sobredosis.jpg'),
(31, 'lose yourself', 8, '00:05:26', '2002-08-28', 1, 'love yourself'),
(32, 'stan', 8, '00:06:44', '2000-09-21', 1, 'stan.jpg'),
(33, 'the real slim shady', 8, '00:04:44', '2000-05-16', 1, 'therealslimshady.jpg'),
(34, 'withouth me', 8, '00:04:50', '2002-05-14', 1, 'withouthme.jpg'),
(35, 'love the way you lie', 8, '00:04:23', '2010-09-09', 1, 'lovethewayyoulie.jpg'),
(36, 'entrega de amor', 5, '00:03:48', '1993-05-05', 1, 'entregadeamor.jpg'),
(37, 'como te voy a olvidar', 5, '00:03:15', '1996-04-12', 1, 'comotevoyaolvidar.jp'),
(38, 'mis sentimientos', 5, '00:03:47', '2013-08-10', 1, 'missentimientos.jpg'),
(39, '17 años', 5, '00:03:35', '2000-02-08', 1, '17años.jpg'),
(40, 'el amor de mi vida', 5, '00:03:13', '2023-05-06', 1, 'elamordemivida.jpg'),
(41, '6 am', 10, '00:04:03', '2013-04-06', 1, '6am.jp'),
(42, 'mi gente', 10, '00:03:06', '2017-04-08', 1, 'migente.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
