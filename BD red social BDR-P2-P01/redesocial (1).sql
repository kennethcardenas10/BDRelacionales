-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2026 a las 16:33:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `redesocial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 5, 5, 'este tiktok es una basura en tu vida vuelvas a subir un tiktok we neta paro', '2026-04-15 16:39:27'),
(2, 2, 4, 'este equipo tiene merecido 10 champions porque es el peor equipo', '2026-04-15 16:39:27'),
(3, 4, 2, 'tus clips de valorant son una basura y hala madrid', '2026-04-15 16:39:27'),
(4, 1, 1, 'wey eres bien malo pal  fort alv retirate no sirves para este videojuego peterbot te deja 100-1', '2026-04-15 16:39:27'),
(5, 3, 3, 'nambre rey de mrd que se retire ya ,le quedan todos los rebotes aaeste malisimp', '2026-04-15 16:39:27'),
(6, 10, 2, 'El Arsenal debería de aprender de otros equipos a no achicarse como siempre', '2026-04-15 04:16:31'),
(7, 8, 4, 'Robo robo maldito ', '2026-04-14 14:39:31'),
(8, 7, 3, 'No le ganan ni a los pumitas', '2026-04-11 08:28:31'),
(9, 9, 1, 'Actualmente Neymar es un muerto que vive de lo que hizo ', '2026-04-11 04:32:31'),
(10, 6, 5, 'No sabes nada de fútbol, mi manchester city es de los mejores equipos de la actualidad y el Barcelona sobravalora a sus jugadores Nico o reilly es mejor que Eric García', '2026-04-15 16:59:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#vivaelphonk', '2026-04-02'),
(2, '#halamadrid', '2026-04-03'),
(3, '#viscabarcayviscacataluña', '2026-04-13'),
(4, '#vivavalorant', '2026-04-03'),
(5, '#cristonuestroseñoramen', '2026-04-05'),
(6, '#barcelonaucl', '2016-04-01'),
(7, '#parati', '2019-04-27'),
(8, '#mundialbrasil', '2014-04-23'),
(9, '#LamineYamal', '2023-05-15'),
(10, '#robo', '2026-04-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` varchar(1000) NOT NULL,
  `imagen_url` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(1, 1, 'clips de fortnite\r\n', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQizP9d_fsCro0CwUAOccVAClUC6rWK8X26bA&s', '2026-04-15 16:32:22', 1720),
(2, 4, 'clips del narca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6cYNRVdt5n_mv3w4LaG37mudaP-Q7FXw3cA&s', '2026-04-15 16:32:22', 1),
(3, 3, 'sube clips del neymar regateando', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMgSeKmifEDFo3GytCm70KY4LCMsBi0P-aFA&s', '2026-04-15 16:32:22', 1333),
(4, 2, 'sube sus clips de valorant aunq es bien malo', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHDbI9i7G2fNMqyI0VrtiOfo8G2F7KTXZcUQ&s', '2026-04-15 16:32:22', 10),
(5, 5, 'sube tiktoks de tralalero tralala', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRk1xakS1EowmDCEzGFvz1C4NSZ9_jW7cgvw&s', '2026-04-15 16:32:22', 4324),
(6, 1, 'Manchester city y su decaída', 'https://i.ytimg.com/vi/iNrLXQcWy2c/maxresdefault.jpg', '2025-11-20 07:53:16', 342),
(7, 2, 'Chivas es candidato al título', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIbyp9FPsdu-n5cITYV7Dx-ydpnN7hqXYsYw&s', '2026-04-15 16:53:07', 1300),
(8, 2, 'Atraco al Barcelona en champions ', 'https://www.reuters.com/resizer/v2/NHIJP6T2XFOGFEMHTDZQEE3RKU.jpg?auth=3a87272044ea074d847dfb7718d149fbc7a18f36ffe705541fffc5fd6a4c68e1&width=1920&quality=80', '2026-04-15 16:53:07', 643),
(9, 3, 'La razón por la que neymar debe ir a su último mundial con brasil', 'https://images.ctfassets.net/3mv54pzvptwz/7Jj4ryLGJazS8pDUlCK2Vg/10b71577e0270c8158d669b5fca17aa9/54331642772_05fa9ffe6b_o_dentro.jpg', '2026-04-15 16:53:07', 555),
(10, 5, 'Arsenal equipo pecho frío', 'https://a.espncdn.com/combiner/i?img=/media/images/2026/0411/Hu_260411_deportes_QHL_Arsenal/Hu_260411_deportes_QHL_Arsenal.jpg&w=1256', '2026-04-15 16:53:07', 766);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtag`
--

CREATE TABLE `pub_hashtag` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_hashtag`
--

INSERT INTO `pub_hashtag` (`pub_id`, `hashtag_id`) VALUES
(1, 2),
(3, 1),
(4, 3),
(5, 4),
(3, 5),
(1, 7),
(2, 5),
(3, 8),
(8, 10),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_lite` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pub_likes`
--

INSERT INTO `pub_likes` (`pub_id`, `usuario_id`, `fecha_lite`) VALUES
(2, 4, '2026-04-15 16:51:48'),
(3, 3, '2026-04-15 16:51:48'),
(1, 1, '2026-04-15 16:51:48'),
(4, 2, '2026-04-15 16:51:48'),
(5, 5, '2026-04-15 16:51:48'),
(7, 2, '2026-04-17 16:23:32'),
(9, 3, '2026-04-17 16:24:05'),
(10, 1, '2026-04-17 16:24:21'),
(5, 5, '2026-04-17 16:24:34'),
(4, 2, '2026-04-17 16:25:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seguidores`
--

INSERT INTO `seguidores` (`seguidor_id`, `seguido_id`, `fecha_follow`) VALUES
(1, 5, '2026-04-09'),
(5, 1, '2026-04-03'),
(4, 1, '2026-04-03'),
(2, 2, '2026-04-06'),
(1, 2, '2026-04-10'),
(1, 3, '2026-03-05'),
(7, 4, '0000-00-00'),
(1, 3, '0000-00-00'),
(4, 5, '0000-00-00'),
(6, 7, '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuariosd_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuariosd_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'Axelito', 'Axell.rosales24@cetis107.edu.mx', 'viscamadrid hala barca', '2026-04-13'),
(2, 'yosgart', 'salazarplatayosd@gmail.com', 'el limite es el cielo y yo ya ando en la luna', '2026-04-10'),
(3, 'Kenneth', 'kenneth.cardenas@gmail.com', 'neymar midios', '2026-04-09'),
(4, 'alejandro', 'alejandro@millonario.gmail.com', 'hala madrid', '2026-04-09'),
(5, 'santiago tralala', 'santiago.santiago@tuntuntunsahur.com', 'tutuututuutuuututuutuututuutnsahur', '2026-04-13'),
(6, 'Luis Sahur', 'Luiselflacolopez@gmail.com', 'Saquen el rainbow 6', '2024-04-25'),
(7, 'Israel', 'Osoisraga@gmail.com', 'mi novia es mi todo', '2026-01-21'),
(9, 'ivan', 'ivanbrazini@gmail.com', 'notengo brazo mucha puñeta', '0000-00-00'),
(11, 'camila', 'camilaanahy123@gmail.com', 'soy bien insana en el fortnite', '2026-04-17'),
(12, 'dana', 'danacarrillo10@gmail.com', 'me gustan los caballos y los carrillos', '2026-04-01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtag`
--
ALTER TABLE `pub_hashtag`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD KEY `seguidor_id` (`seguidor_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuariosd_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuariosd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuariosd_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuariosd_id`);

--
-- Filtros para la tabla `pub_hashtag`
--
ALTER TABLE `pub_hashtag`
  ADD CONSTRAINT `pub_hashtag_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtag_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuariosd_id`);

--
-- Filtros para la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`usuariosd_id`),
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`usuariosd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
