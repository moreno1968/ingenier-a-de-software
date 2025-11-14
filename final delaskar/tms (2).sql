-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2025 a las 02:09:07
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
-- Base de datos: `tms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'administrador', 'b1c0fde670fdf12cf672d4a3da089c65', '2025-05-30 15:24:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(11, 14, 'margot@gmail.com', NULL, NULL, 'muy bonito sitio', '2025-05-30 20:24:49', 0, NULL, NULL),
(12, 12, 'encar@gmail.com', NULL, NULL, 'muy bonito sitio', '2025-05-31 03:33:24', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Consulta para el viaje a Manali.', 'Por favor proporcioneme más ofertas.', '2020-07-08 06:30:32', 1),
(2, 'Dario Ozorio', 'dozor@gmail.com', '6797947987', 'Consulta', 'Cualquier oferta para viaje al norte.', '2020-07-08 06:31:38', 1),
(3, 'Dorian', 'dor@gmail.com', '1646689721', 'Alguna oferta para el norte.', 'Alguna oferta para el norte.', '2020-07-08 06:32:41', 1),
(4, 'Jose', 'jr@me.com', '3201254587', 'Consulta', 'Buenas tardes, me pueden contactar por favor.', '2023-09-26 21:02:42', 1),
(5, 'jilmar', 'yiljoel2016@gmail.com', '3137315348', 'cuando es la temporada de ballenas en bahia ?', 'quiero mirar ballenas', '2025-05-26 05:09:32', 1),
(6, 'jiseth jurely moreno cordoba', 'yiljoel2016@gmail.com', '3137315348', 'hola', 'de nada', '2025-11-13 01:58:07', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Problemas de reserva', 'No puedo reservar el paquete.', '2020-07-08 06:36:03', 'Ok, solucionaremos el problema lo antes posible.', '2023-09-26 19:55:38'),
(7, 'test@gmail.com', 'Reembolso', 'quiero mi reembolso', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2025-05-16 21:58:27', NULL, NULL),
(9, NULL, NULL, NULL, '2025-05-21 18:27:16', NULL, NULL),
(10, 'yiljoel2016@gmail.com', 'Refund', '123', '2025-05-26 05:07:18', 'bueno sera lo posible', '2025-05-26 05:11:21'),
(11, NULL, NULL, NULL, '2025-05-30 20:23:59', NULL, NULL),
(12, NULL, NULL, NULL, '2025-05-31 03:28:49', NULL, NULL),
(13, NULL, NULL, NULL, '2025-06-03 18:45:50', NULL, NULL),
(14, 'holamenapalacios@gmail.com', 'Booking Issues', 'hola', '2025-06-03 18:46:33', 'pronto le damos respuesta', '2025-06-03 18:47:51'),
(15, 'yiljoel2016@gmail.com', 'Problemas con un sitio', 'hola', '2025-06-03 19:01:08', 'tranquiilooo', '2025-06-03 19:01:37'),
(16, 'yiljoel2016@gmail.com', 'Problemas con un sitio', 'necesito ', '2025-06-05 18:15:34', 'hola ', '2025-11-06 12:29:49'),
(17, NULL, NULL, NULL, '2025-11-05 06:10:04', NULL, NULL),
(18, NULL, NULL, NULL, '2025-11-05 18:12:32', NULL, NULL),
(19, NULL, NULL, NULL, '2025-11-06 03:13:16', NULL, NULL),
(20, NULL, NULL, NULL, '2025-11-06 03:20:02', NULL, NULL),
(21, 'yiljoel2016@gmail.com', 'necesito mas informacion', 'de la cascada el tigre ', '2025-11-13 04:47:30', 'la cascada es via maritima y ianianinaskn', '2025-11-13 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACEPTACIÓN DE TERMINOS</font><br><br></strong>¡Bienvenido a Yahoo!. 1Yahoo Web Services Private Limited Yahoo\", \"nosotros\" o \"nos\", según sea el caso) le proporciona el Servicio (definido a continuación), sujeto a los siguientes Términos de servicio (\"TOS\"), que pueden ser actualizados por nosotros de vez en cuando sin previo aviso. Puede revisar la versión más actualizada de los TOS en cualquier momento en</font><font size=\"2\">:&nbsp;</font><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"background-color: rgb(255, 255, 255);\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">.</font><font size=\"2\">&nbsp;Además, cuando utilice determinados servicios de Yahoo o servicios de terceros, usted y Yahoo estarán sujetos a las pautas o reglas publicadas aplicables a dichos servicios que pueden publicarse de vez en cuando. Todas dichas pautas o reglas, que pueden estar sujetas a cambios, se incorporan por la presente como referencia a los TOS. En la mayoría de los casos, las guías y reglas son específicas de una parte particular del Servicio y lo ayudarán a aplicar los TOS a esa parte, pero en la medida de cualquier inconsistencia entre los TOS y cualquier guía o regla, prevalecerán los TOS. También podemos ofrecer otros servicios de vez en cuando que se rigen por diferentes Términos de servicios, en cuyo caso los TOS no se aplican a dichos otros servicios si y en la medida en que dichos Términos de servicios diferentes los excluyan expresamente. Yahoo también puede ofrecer otros servicios de vez en cuando que se rigen por diferentes Términos de Servicios. Estos TOS no se aplican a otros servicios que se rigen por Términos de servicio diferentes.<br></font></p><p align=\"justify\"><font size=\"2\">¡Bienvenido a Yahoo!. 1Yahoo Web Services India Private Limited Yahoo\", \"nosotros\" o \"nos\", según sea el caso) le proporciona el Servicio (definido a continuación), sujeto a los siguientes Términos de servicio (\"TOS\"), que pueden ser actualizados por nosotros de vez en cuando sin previo aviso. Puede revisar la versión más actualizada de los TOS en cualquier momento en</font><font size=\"2\">:&nbsp;</font><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"background-color: rgb(255, 255, 255);\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">.</font><font size=\"2\">&nbsp;Además, cuando utilice determinados servicios de Yahoo o servicios de terceros, usted y Yahoo estarán sujetos a las pautas o reglas publicadas aplicables a dichos servicios que pueden publicarse de vez en cuando. Todas dichas pautas o reglas, que pueden estar sujetas a cambios, se incorporan por la presente como referencia a los TOS. En la mayoría de los casos, las guías y reglas son específicas de una parte particular del Servicio y lo ayudarán a aplicar los TOS a esa parte, pero en la medida de cualquier inconsistencia entre los TOS y cualquier guía o regla, prevalecerán los TOS. También podemos ofrecer otros servicios de vez en cuando que se rigen por diferentes Términos de servicios, en cuyo caso los TOS no se aplican a dichos otros servicios si y en la medida en que dichos Términos de servicios diferentes los excluyan expresamente. Yahoo también puede ofrecer otros servicios de vez en cuando que se rigen por diferentes Términos de Servicios. Estos TOS no se aplican a otros servicios que se rigen por Términos de servicio diferentes.</font><font size=\"2\"><br></font></p>\r\n<p align=\"justify\"><br></p>\r\n										\r\n										'),
(2, 'privacy', '<p style=\"margin-bottom: 1rem; line-height: 1.8; color: rgb(68, 68, 69); font-size: 0.9rem; font-family: &quot;Open Sans&quot;, sans-serif;\">Esta Política de Privacidad describe cómo se recopila, utiliza y comparte tu información personal cuando visitas o realizas una compra en (URL de la tienda).</p><p style=\"margin-bottom: 1rem; line-height: 1.8; color: rgb(68, 68, 69); font-size: 0.9rem; font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-weight: bolder;\">QUÉ INFORMACIÓN PERSONAL RECOPILAMOS</span></p><p style=\"margin-bottom: 1rem; line-height: 1.8; color: rgb(68, 68, 69); font-size: 0.9rem; font-family: &quot;Open Sans&quot;, sans-serif;\">Cuando visitas el Sitio, recopilamos automáticamente cierta información sobre tu dispositivo, incluida información sobre tu navegador web, dirección IP, zona horaria y algunas de las cookies que están instaladas en tu dispositivo.</p><p style=\"margin-bottom: 1rem; line-height: 1.8; color: rgb(68, 68, 69); font-size: 0.9rem; font-family: &quot;Open Sans&quot;, sans-serif;\">Además, a medida que navegas por el Sitio, recopilamos información sobre las páginas web individuales o los productos que ves, qué sitios web o términos de búsqueda te remiten al Sitio, e información sobre cómo interactúas con el Sitio. Nos referimos a esta información recopilada automáticamente como&nbsp;<span style=\"font-weight: bolder;\">Información del Dispositivo</span>&nbsp;(device information).</p><p style=\"margin-bottom: 1rem; line-height: 1.8; color: rgb(68, 68, 69); font-size: 0.9rem; font-family: &quot;Open Sans&quot;, sans-serif;\">Recopilamos información del dispositivo utilizando las siguientes tecnologías:</p><ul style=\"padding-left: 2rem; margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\"><li style=\"color: rgb(68, 68, 69); font-size: 1rem; line-height: 1.8;\"><p style=\"margin-bottom: 1rem; line-height: 1.8; font-size: 0.9rem;\"><span style=\"font-weight: bolder;\">Cookies</span>: son archivos de datos que se colocan en tu dispositivo o computadora y con frecuencia incluyen un identificador único anónimo.</p></li><li style=\"color: rgb(68, 68, 69); font-size: 1rem; line-height: 1.8;\"><p style=\"margin-bottom: 1rem; line-height: 1.8; font-size: 0.9rem;\"><span style=\"font-weight: bolder;\">Archivos de registro</span>: rastrean las acciones que ocurren en el Sitio y recopilan datos, incluida tu dirección IP, el tipo de navegador, el proveedor de servicios de Internet, las páginas de referencia/salida y las marcas de fecha y hora.</p></li></ul><p style=\"margin-bottom: 1rem; line-height: 1.8; color: rgb(68, 68, 69); font-size: 0.9rem; font-family: &quot;Open Sans&quot;, sans-serif;\"><em>Menciona todas las demás herramientas de seguimiento y/o tecnologías que usa tu sitio web.</em></p>'),
(3, 'aboutus', '																				<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\">¡¡¡Bienvenidos al Sistema de Gestión Turística!!!</span></div><div style=\"text-align: justify;\">En&nbsp;<a href=\"http://localhost/tms/index.php\" style=\"text-align: start; background-color: transparent; color: rgb(63, 132, 177); letter-spacing: 1px; font-size: 2em; font-family: Oswald, sans-serif; display: inline !important;\">Chocó&nbsp;<span style=\"color: rgb(52, 173, 0);\">Adventure</span></a><div class=\"lock fadeInDown animated\" data-wow-delay=\".5s\" style=\"float: right; margin-top: 7px; animation-duration: 1s; animation-fill-mode: both; animation-name: fadeInDown; font-family: &quot;Open Sans&quot;, sans-serif; text-align: start;\"><div class=\"clearfix\"></div></div>, creemos en el poder de mostrar lo nuestro. Esta plataforma fue creada para brindar a locales y visitantes una experiencia completa al explorar los destinos más impresionantes del Chocó. A través de un sitio web accesible, organizado y visualmente atractivo, reunimos en un solo lugar información confiable sobre playas, cascadas, cultura, naturaleza y eventos. Nuestro objetivo es facilitar la planificación de viajes, impulsar el turismo responsable y dar visibilidad a la riqueza natural y cultural de nuestro territorio. Conectamos a los turistas con la belleza del Chocó y a las comunidades locales con nuevas oportunidades.</div>										<div></div>\r\n										\r\n										'),
(11, 'contact', '<ol><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Cra 9 #27 ---- Bogotá, Colombia</span><img src=\"https://www.google.com/search?sca_esv=b1a2f407046ddbac&amp;rlz=1C1CHBF_esCO1101CO1101&amp;sxsrf=AE3TifP9P2xnNKfsX9j2HIdVw0HyRGKMAQ:1763013705749&amp;udm=2&amp;fbs=AIIjpHx4nJjfGojPVHhEACUHPiMQht6_BFq6vBIoFFRK7qchKG1cRgcE0P7z3SNizmlu0Qkf3lbe5QA1jF9jyTPCCmBTgIm9KHj75XGOTxZd_A9ElEQMY7KbBXcuG3YvitHoff7Ej-6PL5CfmMYqcVEhhymhRxRDPmUNDG4O0uk1a9g1_TAXhJMwWeQkV0o2_9TAXt82ud0sJ8lLnpTpdw7Hl_ihuGm0EQ&amp;q=imagenes&amp;sa=X&amp;ved=2ahUKEwiE-6jtue6QAxXcSDABHV6mGcQQtKgLegQIFxAB&amp;biw=1920&amp;bih=912&amp;dpr=1#vhid=tNeroEJHb08zfM&amp;vssid=mosaic\" alt=\"\" align=\"none\">&nbsp;hola</li></ol>																																								');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(12, 'Cascada El Tigre', 'cascadas', 'Se encuentra en la zona selvática cercana al corregimiento de Termales, en el municipio de Nuquí, en', NULL, 'Es una imponente cascada de más de 30 metros de altura, rodeada de una densa selva tropical del Chocó biogeográfico.', 'Forma una piscina natural en su base, ideal para nadar y disfrutar del agua fresca.\r\nLa Cascada El Tigre es más que un salto de agua: es una aventura por la selva, una conexión con la naturaleza y una muestra del potencial ecoturístico del Pacífico colombiano', 'caption.jpg', '2025-05-15 22:04:06', NULL),
(13, 'Playa El Almejal ', 'playa', 'ubicada en el corregimiento de El Valle, a unos 18 kilómetros al sur de Bahía Solano en el departame', NULL, 'Esta playa se extiende por aproximadamente 2 kilómetros, ofreciendo arenas doradas y aguas cálidas que se fusionan con la selva húmeda tropical, creando un paisaje de inigualable belleza.', 'Avistamiento de ballenas: De julio a octubre, las ballenas jorobadas visitan estas aguas para reproducirse, ofreciendo un espectáculo natural impresionante.', 'almejal.jpg', '2025-05-16 15:59:12', '2025-05-16 16:03:31'),
(14, 'Cascadas de Tutunendo ( sal de frutas )', 'Cascadas', 'ubicadas en el corregimiento de Tutunendo, a tan solo 14 kilómetros de Quibdó.', NULL, 'Las Cascadas de Tutunendo combinan naturaleza pura, agua cristalina, acceso sencillo y una experiencia auténtica con las comunidades afro e indígenas del Chocó', 'Cascada Sal de Frutas\r\nLlamada así porque al caer, el agua forma burbujas como una bebida efervescente.\r\nCuenta con una piscina natural para bañarse y un tobogán de roca natural.\r\nSendero ecológico y turismo comunitario\r\nPosee un sendero construido para caminatas seguras en medio de la selva (1.4 km).', 'cascada-sal-de-frutas.jpg', '2025-05-17 02:41:01', NULL),
(15, 'Parque Nacional Natural Utría', 'parque ', 'ubicada en el departamento del Chocó, en la región del Pacífico colombiano. Este parque se extiende ', NULL, 'Alta biodiversidad terrestre y marina  Alberga cientos de especies de flora y fauna:  Mamíferos como jaguares, perezosos, tapires, monos aulladores.  Aves endémicas, tortugas marinas, peces tropicales y corales.  Es zona de anidación de tortugas Carey y G', 'Utría es uno de los pocos lugares del mundo donde la selva tropical llega directamente al mar, formando un paisaje inigualable donde la biodiversidad es tan impresionante como su belleza natural.\r\nSus paisajes incluyen manglares, arrecifes coralinos, playas vírgenes y montañas costeras, lo que lo convierte en un destino ideal para el ecoturismo. ', 'AOWFL574WRFLTP66SQHH2JOFTY.jpg', '2025-05-18 01:57:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `login_attempts` int(11) DEFAULT 0,
  `account_locked_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`, `login_attempts`, `account_locked_until`) VALUES
(8, 'jilmar', '3137315348', 'yiljoel2016@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-05-16 21:58:27', '2025-11-14 01:01:16', 4, '2025-11-14 02:02:16'),
(11, 'margot profe', '3135631243', 'margot@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', '2025-05-30 20:23:59', NULL, 0, NULL),
(12, 'encarnacion', '3137315389', 'encar@gmail.com', 'dd792137e541844b2eb80d9aaccba870', '2025-05-31 03:28:48', NULL, 0, NULL),
(13, 'jil', '3139687897', 'holamenapalacios@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-06-03 18:45:50', NULL, 0, NULL),
(14, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-06-03 18:46:33', NULL, 0, NULL),
(15, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-06-03 19:01:08', NULL, 0, NULL),
(16, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-06-05 18:15:34', NULL, 0, NULL),
(17, 'jiseth jurely moreno cordoba', '3125634878', 'jiseth@gmail.com', '202cb962ac59075b964b07152d234b70', '2025-11-06 03:20:02', NULL, 0, NULL),
(18, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2025-11-13 04:47:30', NULL, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indices de la tabla `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indices de la tabla `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
