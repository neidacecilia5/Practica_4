-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-08-2021 a las 20:54:37
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `ID_USUARIOS` int(11) NOT NULL,
  `CUENTA` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `MONTO` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`ID_USUARIOS`, `CUENTA`, `NOMBRE`, `MONTO`) VALUES
(1, 89398, 'Neida Romero', 3723),
(2, 54, 'María Melgal', 862),
(3, 54, 'María Melgal', 862),
(4, 54, 'María Melgal', 862),
(5, 54, 'María Melgal', 862),
(6, 54, 'María Melgal', 862),
(7, 54, 'María Melgal', 862),
(8, 54, 'María Melgal', 862),
(9, 54, 'María Melgal', 862),
(10, 54, 'María Melgal', 862),
(11, 54, 'María Melgal', 862),
(12, 54, 'María Melgal', 862),
(13, 54, 'María Melgal', 862),
(14, 54, 'María Melgal', 862),
(15, 447923, 'Alejandro Mejía', 4485),
(16, 8095, 'Hola hkso', 788),
(17, 465, 'rty', 345),
(18, 98903, 'djhw', 2983),
(19, 23, 'kjjhd', 33982),
(20, 3435, 'gsd', 6456),
(21, 83749, 'Hola', 48595),
(22, 28393, 'Holis', 3859450),
(23, 1, 'fgg', 356),
(24, 134, 'dgdhf', 4645),
(25, 993, 'Neida', 3859),
(26, 345, 'sdfh', 2346),
(27, 123, 'fghhjk', 983),
(28, 23456, 'fdgfd', 976),
(29, 673, 'njed', 87),
(30, 3455, 'frtgh', 6433),
(31, 3455, 'frtgh', 6433),
(32, 3455, 'frtgh', 6433),
(33, 3455, 'frtgh', 6433),
(34, 3455, 'frtgh', 6433),
(35, 3455, 'frtgh', 6433),
(36, 3455, 'frtgh', 6433),
(37, 3455, 'frtgh', 6433),
(38, 3455, 'frtgh', 6433),
(39, 3455, 'frtgh', 6433),
(40, 3455, 'frtgh', 6433),
(41, 3455, 'frtgh', 6433),
(42, 3455, 'frtgh', 6433),
(43, 3455, 'frtgh', 6433),
(44, 5566, 'HHGG', 233),
(45, 5566, 'HHGG', 233),
(46, 5566, 'HHGG', 233),
(47, 1, 'GE', 5),
(48, 66, 'tggg', 6),
(49, 66, 'tggg', 6),
(50, 122, 'fgh', 765),
(51, 111, 'dfg', 7655),
(52, 754, 'gggg', 5555),
(53, 333, 'ghh', 44),
(54, 678, 'fgnn', 7654),
(55, 8656, 'wertyu', 1233),
(56, 788, 'jhu', 876),
(57, 4454, 'grrhg', 345),
(58, 4454, 'grrhg', 345);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`ID_USUARIOS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `ID_USUARIOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
