-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2026 a las 01:44:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horas_bienestar_cdm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `firma_digital`
--

CREATE TABLE `firma_digital` (
  `id_firma` int(11) NOT NULL,
  `firma` text DEFAULT NULL,
  `fecha_firma` datetime DEFAULT NULL,
  `id_participacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `firma_digital`
--

INSERT INTO `firma_digital` (`id_firma`, `firma`, `fecha_firma`, `id_participacion`) VALUES
(1, 'FirmaDigitalAprendiz', '2026-06-12 16:40:17', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participacion`
--

CREATE TABLE `participacion` (
  `id_participacion` int(11) NOT NULL,
  `id_aprendiz` int(11) DEFAULT NULL,
  `id_actividad` int(11) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `estado_participacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `participacion`
--

INSERT INTO `participacion` (`id_participacion`, `id_aprendiz`, `id_actividad`, `fecha_registro`, `estado_participacion`) VALUES
(1, 1, 1, '2026-06-12 16:40:17', 'Asistió');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_horas`
--

CREATE TABLE `registro_horas` (
  `id_registro` int(11) NOT NULL,
  `horas_aprobadas` int(11) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `id_participacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_horas`
--

INSERT INTO `registro_horas` (`id_registro`, `horas_aprobadas`, `fecha_registro`, `id_participacion`) VALUES
(1, 8, '2026-06-12 16:40:17', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `firma_digital`
--
ALTER TABLE `firma_digital`
  ADD PRIMARY KEY (`id_firma`),
  ADD UNIQUE KEY `id_participacion` (`id_participacion`);

--
-- Indices de la tabla `participacion`
--
ALTER TABLE `participacion`
  ADD PRIMARY KEY (`id_participacion`),
  ADD KEY `id_aprendiz` (`id_aprendiz`),
  ADD KEY `id_actividad` (`id_actividad`);

--
-- Indices de la tabla `registro_horas`
--
ALTER TABLE `registro_horas`
  ADD PRIMARY KEY (`id_registro`),
  ADD UNIQUE KEY `id_participacion` (`id_participacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `firma_digital`
--
ALTER TABLE `firma_digital`
  MODIFY `id_firma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `participacion`
--
ALTER TABLE `participacion`
  MODIFY `id_participacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro_horas`
--
ALTER TABLE `registro_horas`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `firma_digital`
--
ALTER TABLE `firma_digital`
  ADD CONSTRAINT `firma_digital_ibfk_1` FOREIGN KEY (`id_participacion`) REFERENCES `participacion` (`id_participacion`);

--
-- Filtros para la tabla `participacion`
--
ALTER TABLE `participacion`
  ADD CONSTRAINT `participacion_ibfk_1` FOREIGN KEY (`id_aprendiz`) REFERENCES `aprendiz` (`id_aprendiz`),
  ADD CONSTRAINT `participacion_ibfk_2` FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id_actividad`);

--
-- Filtros para la tabla `registro_horas`
--
ALTER TABLE `registro_horas`
  ADD CONSTRAINT `registro_horas_ibfk_1` FOREIGN KEY (`id_participacion`) REFERENCES `participacion` (`id_participacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
