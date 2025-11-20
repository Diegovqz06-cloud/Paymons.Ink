-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2025 a las 23:49:46
-- Versión del servidor: 8.0.43
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paymons`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_1`
--

CREATE TABLE `contacto_1` (
  `COL 1` varchar(2) DEFAULT NULL,
  `COL 2` varchar(17) DEFAULT NULL,
  `COL 3` varchar(29) DEFAULT NULL,
  `COL 4` varchar(12) DEFAULT NULL,
  `COL 5` varchar(10) DEFAULT NULL,
  `COL 6` varchar(10) DEFAULT NULL,
  `COL 7` varchar(15) DEFAULT NULL,
  `COL 8` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `contacto_1`
--

INSERT INTO `contacto_1` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`) VALUES
('id', 'nombre', 'correo', 'idea_tatuaje', 'usuario_id', 'celular', 'inspiracion', 'imagen'),
('1', 'Ana LÃ³pez', 'ana.lopez@example.com', 'DragÃ³n', '10001', '5551234567', 'Naturaleza', 'naturaleza.jpg'),
('2', 'Carlos MuÃ±oz', 'carlos.munoz@example.com', 'FÃ©nix', '10002', '5559876543', 'Cultura Azteca', 'cultura_azteca.jpg'),
('3', 'MarÃ­a PÃ©rez', 'maria.perez@example.com', 'Lobo', '10003', '5552135467', 'MitologÃ­a', 'mitologia.jpg'),
('4', 'JosÃ© DÃ­az', 'jose.diaz@example.com', 'Rosa', '10004', '5553217654', 'Amor', 'amor.jpg'),
('5', 'LucÃ­a HernÃ¡ndez', 'lucia.hernandez@example.com', 'Tigre', '10005', '5554521763', 'Fuerza', 'fuerza.jpg'),
('6', 'Diego RamÃ­rez', 'diego.ramirez@example.com', 'Calavera', '10006', '5556574832', 'DÃ­a de Muertos', 'dia_de_muertos.jpg'),
('7', 'SofÃ­a Castro', 'sofia.castro@example.com', 'Loto', '10007', '5557896543', 'Espiritualidad', 'espiritualidad.jpg'),
('8', 'AndrÃ©s MartÃ­nez', 'andres.martinez@example.com', 'Ãguila', '10008', '5553459876', 'Libertad', 'libertad.jpg'),
('9', 'Elena Torres', 'elena.torres@example.com', 'Mariposa', '10009', '5559871245', 'TransformaciÃ³n', 'transformacion.jpg'),
('10', 'Miguel SÃ¡nchez', 'miguel.sanchez@example.com', 'Ancla', '10010', '5552143657', 'Estabilidad', 'estabilidad.jpg'),
('11', 'Isabel Flores', 'isabel.flores@example.com', 'Serpiente', '10011', '5554532769', 'SabidurÃ­a', 'sabiduria.jpg'),
('12', 'RaÃºl JimÃ©nez', 'raul.jimenez@example.com', 'Sol', '10012', '5557654321', 'EnergÃ­a', 'energia.jpg'),
('13', 'Patricia Vega', 'patricia.vega@example.com', 'Lobo', '10013', '5556543217', 'Lealtad', 'lealtad.jpg'),
('14', 'Fernando Ruiz', 'fernando.ruiz@example.com', 'Estrella', '10014', '5552136457', 'GuÃ­a', 'guia.jpg'),
('15', 'VerÃ³nica Molina', 'veronica.molina@example.com', 'Mariposa', '10015', '5558765432', 'Renacimiento', 'renacimiento.jpg'),
('16', 'Roberto Herrera', 'roberto.herrera@example.com', 'DragÃ³n', '10016', '5559876541', 'ProtecciÃ³n', 'proteccion.jpg'),
('17', 'Alejandra Salazar', 'alejandra.salazar@example.com', 'Rosa', '10017', '5551237896', 'Belleza', 'belleza.jpg'),
('18', 'Sergio Morales', 'sergio.morales@example.com', 'FÃ©nix', '10018', '5553456721', 'SuperaciÃ³n', 'superacion.jpg'),
('19', 'Gloria Castro', 'gloria.castro@example.com', 'Tigre', '10019', '5555678932', 'Fuerza', 'fuerza.jpg'),
('20', 'Julio LÃ³pez', 'julio.lopez@example.com', 'Calavera', '10020', '5557893214', 'Cultura', 'cultura.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes de contacto`
--

CREATE TABLE `mensajes de contacto` (
  `id` int NOT NULL,
  `nombre` text NOT NULL,
  `correo` text NOT NULL,
  `idea_tatuaje` text NOT NULL,
  `usuario_id` int NOT NULL,
  `celular` text NOT NULL,
  `inspiracion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `nombre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `perfil` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'U'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `clave`, `perfil`) VALUES
(2, 'ADMIN', 'admin@gmail.com', 'scrypt:32768:8:1$XBajS7CdM84Lm5DR$d0284b8e9d312ab45f44f47c57f980b050b521afd39983d78c8f1b4bddfc0028881a2ad109fac311e94eaf66bda6360731ae92992be6b2c2965aa23d75f31730', 'A'),
(5, 'Adan', 'adan@gmail.com', 'scrypt:32768:8:1$8pj0ITeTQdhyDu52$ca8cfde5b350de6c1c53cb9b99df6d64c1e18c487a7a63c7546f6a758c19e91be5113327a5b9dd8e1c1a3b7841553c319dea20fa2b1daa6ff042bc5f888c2c23', 'U');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensajes de contacto`
--
ALTER TABLE `mensajes de contacto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensajes de contacto`
--
ALTER TABLE `mensajes de contacto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
