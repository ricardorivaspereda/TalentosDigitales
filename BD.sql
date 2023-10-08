-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2023 a las 21:31:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lezcano_j`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(3, 'antonio', 'Lezcano', 'antonio', 'antonio@gmail.com', '$2y$10$UxgjopB507cGFS7.OA2gJ.RKQmBMGTIfQLUdTliSgFUKCmWA0yf36', 2, 'NO'),
(4, 'roque', 'Lezcano', 'roque', 'roque@gmail.com', '$2y$10$DNrR0eFVsXZ1HM/tkO7/g.NxVSmchkV2WvGEjDU1ZZfz/Y2vEHGLu', 1, 'NO'),
(5, 'maria', 'Lezcano', 'maria', 'maria@gmail.com', '$2y$10$sLIk4kDvk3SHvhFjDKwdSubEtnqDFHFuzLtNo8J9HmfGPU6CeFYk2', 2, 'NO'),
(6, 'rubious', 'Lezcano', 'rubious', 'rubious@gmail.com', '$2y$10$6c41zvjmhrovN5ZzrONFJe7kqWSPwEPMjX3n1Q1cJDrNGd5lF9mem', 2, 'NO'),
(7, 'lucas', 'Lezcano', 'lucas', 'lucas@gmail.com', '$2y$10$VtxHGXogcUmMbxSVxlk3wuv62JVTw.qIL8tO49/Yv0x/b33kzMwj6', 2, 'NO'),
(8, 'ricardo', 'ricardo', 'ricardo', 'ricardo@gmail.com', '$2y$10$cvTkXdmfWrVLS8TZBolQYut70ULKMrfT07O0jxIrfry8zz6utDUvC', 2, 'NO'),
(9, 'florencia', 'florencia', 'flrencia', 'florencia@gmail.com', '$2y$10$ej9Ypgx.7.fNoARIaKwSp.r7bfAtA/kUxjMe7an4S2Gwupg7Svfau', 2, 'NO'),
(10, 'ilda', 'lezcano', 'ilda', 'ilda@gmail.com', '$2y$10$95.JlS9xpWcCclt8xsihiuKBucCPfp.r6DZzOBokiXLbUmZ.mMlWi', 2, 'NO'),
(11, 'rogelio', 'lezcano', 'rogelio', 'rogelio@gmail.com', '$2y$10$dVorF6BAGyu4Uust2cVNT.I1.dutTEpHAsHM.NtZyw6AoBgf4eYMi', 2, 'NO'),
(12, 'brad', 'brad', 'brad', 'brad@gmail.com', '$2y$10$B5qnzROOLCBpCNgpEd//6uPhebWB9m5mjrv989eheV0ntRx3yqVGW', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
