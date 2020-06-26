-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2020 a las 22:48:35
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bddocente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `IDArchivos` int(11) NOT NULL,
  `arcNombre` varchar(200) NOT NULL,
  `arcDescripcion` varchar(200) NOT NULL,
  `arcRuta` varchar(200) NOT NULL,
  `arcTipo` varchar(200) NOT NULL,
  `arcSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`IDArchivos`, `arcNombre`, `arcDescripcion`, `arcRuta`, `arcTipo`, `arcSize`) VALUES
(1, '0', '0', '7', '0', 437328),
(2, '0', '0', '7', '0', 437328),
(3, '0', '0', '0', '0', 381075);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id_clases` int(10) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `intrucciones` varchar(250) NOT NULL,
  `para` varchar(20) NOT NULL,
  `puntos` float NOT NULL,
  `fecha_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_clases`
--

CREATE TABLE `grupos_clases` (
  `id` int(10) NOT NULL,
  `Nombre_Clase` varchar(50) NOT NULL,
  `Seccion` varchar(10) NOT NULL,
  `Asunto` varchar(10) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupos_clases`
--

INSERT INTO `grupos_clases` (`id`, `Nombre_Clase`, `Seccion`, `Asunto`, `usuario_id`) VALUES
(1, '123', '123', '123', 0),
(2, 'ty', 'ty', 'ty', 18),
(3, 'ty', 'ty', 'ty', 18),
(4, 'ty', 'ty', 'ty', 18),
(5, 're', 're', 're', 18),
(6, 'ip', 'ip', 'ip', 18),
(7, 'pp', 'pp', 'pp', 18),
(8, 'pp', 'pp', 'pp', 18),
(9, 'tu', 'yo', 'jojo', 18),
(10, 'hh', 'hh', 'jj', 18),
(11, 'hh', 'hh', 'jj', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id_tema` int(10) NOT NULL,
  `nombre_tema` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id_tema`, `nombre_tema`) VALUES
(1, 'programación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `password` varchar(250) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `Usuario`, `correo`, `celular`, `password`, `estado`) VALUES
(5, 'midalith pari laime', '', 'samid@hotmail.com', '960784563', '12345', 1),
(6, 'Azucena matos torres', '', 'peru@hotmail.com', '907896432', '123456789', 1),
(7, 'xiomara santos ovispo', '', 'xio@gmail.com', '980675123', '0987654321', 1),
(16, '123', '', '123', '123', '123', 1),
(18, '321', '321', '321', '321', '321', 1),
(20, 'cori', 'cori', '73005648@continental.edu.pe', '912015118', 'cori', 1),
(21, '000', '000', '000@gmail.com', '000', '000', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`IDArchivos`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id_clases`);

--
-- Indices de la tabla `grupos_clases`
--
ALTER TABLE `grupos_clases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id_tema`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `IDArchivos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id_clases` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupos_clases`
--
ALTER TABLE `grupos_clases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id_tema` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
