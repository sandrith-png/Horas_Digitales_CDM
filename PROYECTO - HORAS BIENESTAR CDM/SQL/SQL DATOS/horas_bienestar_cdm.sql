-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2026 a las 05:14:45
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
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `id_actividad` int(11) NOT NULL,
  `codigo_actividad` varchar(20) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `horas_otorgadas` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`id_actividad`, `codigo_actividad`, `nombre`, `descripcion`, `fecha`, `horas_otorgadas`, `estado`, `id_usuario`) VALUES
(1, 'ACT001', 'Torneo de Futbol', 'Actividad deportiva', '2026-09-10', 8, 1, 1),
(2, 'ACT000', 'Manejo del Estrés', 'Taller psicologico', '2026-01-15', 4, 1, 2),
(3, 'ACT002', 'Proyecto de Vida', 'Orientacion psicologica', '2026-02-10', 4, 1, 2),
(4, 'ACT003', 'Salud Mental', 'Prevencion emocional', '2026-03-12', 4, 1, 2),
(5, 'ACT004', 'Inteligencia Emocional', 'Bienestar emocional', '2026-04-18', 4, 1, 2),
(6, 'ACT005', 'Prevencion del Suicidio', 'Sensibilizacion', '2026-08-10', 4, 1, 2),
(7, 'ACT006', 'Jornada de Vacunacion', 'Promocion de salud', '2026-02-20', 4, 1, 3),
(8, 'ACT007', 'Salud Sexual', 'Prevencion y autocuidado', '2026-03-20', 4, 1, 3),
(9, 'ACT008', 'Primeros Auxilios', 'Capacitacion basica', '2026-04-25', 6, 1, 3),
(10, 'ACT009', 'Habitos Saludables', 'Promocion de salud', '2026-07-15', 4, 1, 3),
(11, 'ACT010', 'Donacion de Sangre', 'Campaña institucional', '2026-09-20', 4, 1, 3),
(12, 'ACT011', 'Integracion Familiar', 'Trabajo social', '2026-01-30', 4, 1, 4),
(13, 'ACT012', 'Prevencion de Violencias', 'Sensibilizacion', '2026-02-28', 4, 1, 4),
(14, 'ACT013', 'Inclusión Social', 'Participacion comunitaria', '2026-04-10', 4, 1, 4),
(15, 'ACT014', 'Liderazgo Juvenil', 'Desarrollo personal', '2026-08-25', 6, 1, 4),
(16, 'ACT015', 'Convivencia Ciudadana', 'Formacion integral', '2026-10-05', 4, 1, 4),
(17, 'ACT016', 'Torneo Futbol Sala', 'Actividad deportiva', '2026-03-05', 8, 1, 5),
(18, 'ACT017', 'Campeonato Voleibol', 'Actividad deportiva', '2026-04-22', 8, 1, 5),
(19, 'ACT018', 'Festival Cultural', 'Arte y cultura', '2026-06-15', 6, 1, 5),
(20, 'ACT019', 'Carrera Atletica', 'Actividad fisica', '2026-09-12', 8, 1, 5),
(21, 'ACT020', 'Semana Cultural', 'Integracion institucional', '2026-11-18', 8, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `id_aprendiz` int(11) NOT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aprendiz`
--

INSERT INTO `aprendiz` (`id_aprendiz`, `documento`, `nombres`, `apellidos`, `correo`, `estado`, `id_ficha`) VALUES
(1, '1001234567', 'Sandrith Marcela', 'Gutierrez Martinez', 'sandrith2910@gmail.com', 1, 1),
(2, '100100001', 'Juan David', 'Perez', 'juan1@gmail.com', 1, 1),
(3, '100100002', 'Maria Fernanda', 'Lopez', 'maria1@gmail.com', 1, 1),
(4, '100100003', 'Camilo Andres', 'Rojas', 'camilo@gmail.com', 1, 2),
(5, '100100004', 'Laura Sofia', 'Garcia', 'laura@gmail.com', 1, 2),
(6, '100100005', 'Daniel Felipe', 'Martinez', 'daniel@gmail.com', 1, 3),
(7, '100100006', 'Valentina', 'Moreno', 'valentina@gmail.com', 1, 3),
(8, '100100007', 'Nicolas', 'Torres', 'nicolas@gmail.com', 1, 4),
(9, '100100008', 'Paula Andrea', 'Diaz', 'paula@gmail.com', 1, 4),
(10, '100100009', 'Sebastian', 'Vargas', 'sebastian@gmail.com', 1, 5),
(11, '100100010', 'Juliana', 'Ramirez', 'juliana@gmail.com', 1, 5),
(12, '100100011', 'Kevin', 'Castro', 'kevin@gmail.com', 1, 6),
(13, '100100012', 'Tatiana', 'Gomez', 'tatiana@gmail.com', 1, 6),
(14, '100100013', 'Cristian', 'Suarez', 'cristian@gmail.com', 1, 7),
(15, '100100014', 'Angie', 'Herrera', 'angie@gmail.com', 1, 7),
(16, '100100015', 'Jhonatan', 'Ruiz', 'jhonatan@gmail.com', 1, 8),
(17, '100100016', 'Karen', 'Mendoza', 'karen@gmail.com', 1, 8),
(18, '100100017', 'Miguel Angel', 'Ortiz', 'miguel@gmail.com', 1, 9),
(19, '100100018', 'Diana Carolina', 'Parra', 'diana@gmail.com', 1, 9),
(20, '100100019', 'Santiago', 'Leon', 'santiago@gmail.com', 1, 10),
(21, '100100020', 'Alejandra', 'Gil', 'alejandra@gmail.com', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `id_certificado` int(11) NOT NULL,
  `fecha_emision` date DEFAULT NULL,
  `total_horas` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `id_aprendiz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`id_certificado`, `fecha_emision`, `total_horas`, `estado`, `id_aprendiz`) VALUES
(1, '2026-06-12', 40, 'Generado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `id_ficha` int(11) NOT NULL,
  `numero_ficha` varchar(20) DEFAULT NULL,
  `id_programa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`id_ficha`, `numero_ficha`, `id_programa`) VALUES
(1, '3230984', 1),
(2, '3230984', 1),
(3, '3230985', 1),
(4, '3230986', 2),
(5, '3230987', 2),
(6, '3230988', 3),
(7, '3230989', 3),
(8, '3230990', 4),
(9, '3230991', 4),
(10, '3230992', 5),
(11, '3230993', 5);

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
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id_permiso` int(11) NOT NULL,
  `nombre_permiso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id_permiso`, `nombre_permiso`) VALUES
(1, 'Gestionar Usuarios'),
(2, 'Gestionar Actividades'),
(3, 'Gestionar Aprendices'),
(4, 'Generar Reportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_formacion`
--

CREATE TABLE `programa_formacion` (
  `id_programa` int(11) NOT NULL,
  `nombre_programa` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programa_formacion`
--

INSERT INTO `programa_formacion` (`id_programa`, `nombre_programa`) VALUES
(1, 'ADSO'),
(2, 'ANÁLISIS Y DESARROLLO DE SOFTWARE'),
(3, 'AMI - Aseguramiento Metrologico Industrial'),
(4, 'ADSO - Analisis y Desarrollo de Software'),
(5, 'Mecatronica'),
(6, 'Ortesis y Protesis'),
(7, 'Tecnico en Programacion de Software');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'Administrador'),
(2, 'Profesional Bienestar'),
(3, 'Aprendiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_permiso`
--

CREATE TABLE `rol_permiso` (
  `id_rol` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol_permiso`
--

INSERT INTO `rol_permiso` (`id_rol`, `id_permiso`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `correo`, `contrasena`, `estado`, `id_rol`) VALUES
(1, 'Administrador General', 'admin@sena.edu.co', '123456', 1, 1),
(2, 'Diana Higuera', 'diana.higuera@sena.edu.co', '123456', 1, 2),
(3, 'Sandra Martinez', 'sandra.martinez@sena.edu.co', '123456', 1, 2),
(4, 'Juan Araque', 'juan.araque@sena.edu.co', '123456', 1, 2),
(5, 'Paola Jimenez', 'paola.jimenez@sena.edu.co', '123456', 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`id_actividad`),
  ADD UNIQUE KEY `codigo_actividad` (`codigo_actividad`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD KEY `id_ficha` (`id_ficha`);

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`id_certificado`),
  ADD KEY `id_aprendiz` (`id_aprendiz`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `id_programa` (`id_programa`);

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
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id_permiso`);

--
-- Indices de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  ADD PRIMARY KEY (`id_programa`);

--
-- Indices de la tabla `registro_horas`
--
ALTER TABLE `registro_horas`
  ADD PRIMARY KEY (`id_registro`),
  ADD UNIQUE KEY `id_participacion` (`id_participacion`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD PRIMARY KEY (`id_rol`,`id_permiso`),
  ADD KEY `id_permiso` (`id_permiso`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `id_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  MODIFY `id_aprendiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `certificado`
--
ALTER TABLE `certificado`
  MODIFY `id_certificado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `id_ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  MODIFY `id_programa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `registro_horas`
--
ALTER TABLE `registro_horas`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD CONSTRAINT `aprendiz_ibfk_1` FOREIGN KEY (`id_ficha`) REFERENCES `ficha` (`id_ficha`);

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `certificado_ibfk_1` FOREIGN KEY (`id_aprendiz`) REFERENCES `aprendiz` (`id_aprendiz`);

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`id_programa`) REFERENCES `programa_formacion` (`id_programa`);

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

--
-- Filtros para la tabla `rol_permiso`
--
ALTER TABLE `rol_permiso`
  ADD CONSTRAINT `rol_permiso_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `rol_permiso_ibfk_2` FOREIGN KEY (`id_permiso`) REFERENCES `permiso` (`id_permiso`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
