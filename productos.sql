-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:17:38
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripcion`, `cantidad`) VALUES
(1, 'Desodorante en aerosol Axe Apollo 150 ml', 52.2, 'axe', 'El desodorante Axe Apollo destruye el mal olor y brinda protección duradera\r\n48 horas de frescura con una fragancia irresistible a cítricos y madera\r\nDesodorante en aerosol para hombre con 0% sales de aluminio\r\nAgita, gira y aplica el desodorante en tu cuerpo, a no menos de 15 cm de la piel\r\nDesodorante que no daña la capa de ozono, en lata hecha de metal 100% reciclable\r\nCompleta el efecto Axe con el antitranspirante y jabón líquido Axe Apollo', 1),
(2, 'NIVEA Derma Skin Clear Tónico Anti-imperfecciones (200 ml)', 72, 'nivea', 'Refresca e hidrata profundamente la piel: Gracias a su fórmula concentrada con ácido salicílico, sal marina y niacinamida, elimina el exceso de sebo y suciedad, mejorando la textura de la piel.\r\nEquilibra y controla el brillo de la piel: Fórmula aprobada dermatológicamente que ayuda a controlar el brillo y mejorar la textura de la piel, reduciendo la apariencia de poros.\r\nIdeal para pieles con tendencia al acné: Fórmula vegana específicamente diseñada para pieles grasas y con tendencia al acné, ', 1),
(3, 'Garnier Express Aclara Crema de Ojos, Reduce Ojeras y Líneas Finas, Mejora la Tez, Ilumina la Piel y Minimiza Manchas, Fórmula con Vitamina C + Niacinamida + Cafeína, 15 ml', 109, 'garnier', 'EFICACIA CLÍNICA: Actúa contra ojeras, líneas finas y opacidad, con un 94% de usuarios sintiendo el contorno de ojos fresco e hidratado tras 8 semanas de uso.\r\nFÓRMULA POTENTE: Contiene un 4% de vitamina C, niacinamida, cafeína y polvo de plátano, aportando luminosidad y ayudando a controlar la oleosidad de la piel.\r\nMIRADA LUMINOSA: Ayuda a reducir visiblemente los signos de fatiga y la apariencia de líneas de expresión, para conseguir unos ojos más luminosos y con sensación fresca.\r\nINGREDIENT', 1),
(4, 'Pinol Limpiador Multiusos Desinfectante Original', 122.5, 'pinol', 'Limpiador multiusos\r\nDesinfectante\r\nAntibacterial\r\nExplora nuestra gama de productos\r\nBotella 100% de PET reciclado\r\nElimina el 99.9% de Virus y Bacterias', 1),
(5, 'Garnier Express Aclara Anti Imperfecciones Gel Matificante con Ácido Salicílico, Vitamina C y Niacinamida para Piel Mixta a Grasa, Hidratante Facial, Controla el Brillo y Reduce Manchas, 50 ml', 108, 'garnier', 'ACCIÓN MATIFICANTE Y UNIFICADORA: Controla el brillo al instante y ayuda a corregir marcas para un tono de piel visiblemente más uniforme\r\nFÓRMULA POTENCIADA CON ACTIVOS DERMATOLÓGICOS: Contiene ácido salicílico para desobstruir poros, vitamina C para iluminar y niacinamida para calmar la piel\r\nRESULTADOS VISIBLES EN 4 SEMANAS: Eficacia comprobada con una reducción de hasta el 34% en marcas y una minimización notoria de los poros\r\n48 HORAS DE HIDRATACIÓN LIGERA: Su textura en gel de rápida absor', 1),
(6, 'Cloralex Gel Blanqueador Desinfectante 950ml', 20, 'cloralex', 'Jabón Líquido de Lavandería\r\nPrelavador\r\nespeso\r\nno salpica\r\ndesinfecta\r\nNo amarillenta la ropa.\r\nBlancura.', 1),
(7, 'Axion Lavatrastes Líquido Poderoso en Plásticos 1.1 L. 100% Efectivo Arrancagrasa que Limpia Profundamente Superficies Difíciles y Elimina las Bacterias que Pueden Causar Malos Olores', 59.23, 'ariel', '100% Activos biodegradables\r\n100% Botella Reciclable con Tapa\r\n100% Efectivo Arrancagrasa\r\n¡Deja tus platos rechinando de limpio!\r\nImpulsa tu estilo de vida ecológico mientras lavas los trastes con Axion Natural Essentials', 1),
(8, 'ESQUIMAL Juego de Sábanas de Microfibra + Fundas de Almohada Extra, Suaves y Frescas (Khaki - Marfil, Queen Size)', 649, 'esquimal', 'SET QUEEN SIZE CON FUNDAS EXTRA: Juego de 6 piezas con 1 sábana plana (2.35 m x 2.40 m), 1 sábana de cajón ajustable (1.50 m x 1.95 m x 40 cm) y 4 fundas de almohada (76 cm x 52 cm). Sus fundas dobles añaden practicidad y estilo completo para un dormitorio funcional y elegante.\r\nSUAVIDAD EXTRAORDINARIA: Sus fibras ultra finas 100% poliéster ofrecen una textura excepcionalmente suave y duradera inspirada en el algodón egipcio y una tela antiarrugas para una apariencia impecable. Garantizan un des', 1),
(9, 'Biobel Serum Facial Hidratante Biohyaluronic 30ml', 1166, 'biolbel', 'Hidratación Profunda: El ácido hialurónico y los extractos de asteria vulgaris y enteromorfa compresa hidratan la piel en profundidad, dejándola suave y revitalizada.\r\nMejora la Elasticidad: El colágeno y la elastina hidrolizados restauran la elasticidad de la piel, proporcionando un aspecto más joven y tonificado.\r\nAfinamiento del Poro: Con extractos de manzana, guaraná y manzanilla, nuestro serum ayuda a afinar el poro, dejando la piel con una textura más suave y uniforme.\r\nProtección Antioxid', 1),
(10, 'Pato Limpiador Líquido Desinfectante Sanitarios Brisa de Mar 500 ml', 48, 'pato', 'Pato Gel de Acción Profunda limpia y desinfecta tu inodoro a fondo, matando el 99.9% de los gérmenes y las bacterias\r\nCon su diseño de cuello de botella, Pato Gel de Acción Profunda, Desinfectante de inodoro llega a las zonas más difíciles debajo del borde de la taza\r\nPato Gel de Acción Profunda Aroma Brisa del Mar es un eliminador de olores de baño\r\nPato Gel de Acción profunda es Desinfectante de inodoros con fresco, agradable y duradero aroma\r\nDescubre Pato Gel de Acción Profunda, Limpiador de', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
