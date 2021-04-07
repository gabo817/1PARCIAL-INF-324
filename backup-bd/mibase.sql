-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2021 a las 08:30:32
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE `nota` (
  `ci` int(16) NOT NULL,
  `sigla` varchar(20) DEFAULT NULL,
  `nota1` int(10) DEFAULT NULL,
  `nota2` int(10) DEFAULT NULL,
  `nota3` int(10) DEFAULT NULL,
  `notafinal` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`ci`, `sigla`, `nota1`, `nota2`, `nota3`, `notafinal`) VALUES
(1111, 'INF111', 26, 25, 14, 65),
(2222, 'INF121', 6, 2, 25, 33),
(3333, 'INF131', 6, 27, 7, 40),
(4444, 'INF111', 14, 15, 24, 53),
(5555, 'INF121', 11, 28, 40, 79),
(6666, 'INF131', 9, 19, 17, 45),
(7777, 'INF111', 20, 19, 35, 74),
(8888, 'INF121', 27, 24, 35, 86),
(9999, 'INF131', 10, 6, 30, 46),
(6666, 'INF111', 20, 24, 20, 64);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `ci` int(16) NOT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `departamento` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`ci`, `nombres`, `paterno`, `materno`, `fecha_nac`, `departamento`) VALUES
(1111, 'NOM1', 'PAT1', 'PAT2', '2036-03-09', 'LP'),
(2222, 'NOM2', 'PAT1', 'PAT2', '0000-00-00', 'CB'),
(3333, 'NOM3', 'PAT1', 'PAT2', '2036-04-01', 'SC'),
(4444, 'NOM4', 'PAT1', 'PAT2', '2036-04-02', 'OR'),
(5555, 'NOM5', 'PAT1', 'PAT2', '2036-04-03', 'PD'),
(6666, 'NOM6', 'PAT1', 'PAT2', '2036-04-04', 'LP'),
(7777, 'NOM7', 'PAT1', 'PAT2', '2036-04-05', 'CB'),
(8888, 'NOM8', 'PAT1', 'PAT2', '2036-04-06', 'SC'),
(9999, 'NOM9', 'PAT1', 'PAT2', '2036-04-07', 'OR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(16) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `usuario`, `contrasena`, `color`, `rol`) VALUES
(1111, 'USER1', '1111', '#15997', 'ESTUDIANTE'),
(2222, 'USER2', '2222', '#23D00A', 'ESTUDIANTE'),
(3333, 'USER3', '3333', '#EEFF12', 'ESTUDIANTE'),
(4444, 'USER4', '4444', '#2AFCFA', 'ESTUDIANTE'),
(5555, 'USER5', '5555', '#CD2AFC', 'ESTUDIANTE'),
(6666, 'USER6', '6666', '#FC632A', 'DOCENTE'),
(7777, 'USER7', '7777', '#FC2A4A', 'DOCENTE'),
(8888, 'USER8', '8888', '#15997', 'DOCENTE'),
(9999, 'USER9', '9999', '#23D00A', 'DOCENTE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
