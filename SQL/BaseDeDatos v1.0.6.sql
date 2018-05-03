-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2018 a las 23:38:14
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario-db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `monto` varchar(9) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajachica`
--

CREATE TABLE `cajachica` (
  `id` int(11) NOT NULL,
  `monto` varchar(9) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajachicaregistros`
--

CREATE TABLE `cajachicaregistros` (
  `id` int(15) NOT NULL,
  `monto` varchar(9) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `Detalle` text,
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajaregistros`
--

CREATE TABLE `cajaregistros` (
  `id` int(15) NOT NULL,
  `monto` varchar(9) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `detalle` varchar(75) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajatmp`
--

CREATE TABLE `cajatmp` (
  `id` int(25) NOT NULL,
  `idfactura` int(25) DEFAULT NULL,
  `producto` int(2) DEFAULT NULL,
  `cantidad` int(5) DEFAULT '1',
  `precio` float DEFAULT NULL,
  `totalprecio` float DEFAULT NULL,
  `vendedor` int(9) DEFAULT NULL,
  `cliente` int(9) DEFAULT '1',
  `stockTmp` int(9) DEFAULT '0',
  `stock` int(9) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canton`
--

CREATE TABLE `canton` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `id_provincia` smallint(5) UNSIGNED NOT NULL,
  `canton` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canton`
--

INSERT INTO `canton` (`id`, `id_provincia`, `canton`) VALUES
(101, 1, 'San José'),
(102, 1, 'Escazú'),
(103, 1, 'Desamparados'),
(104, 1, 'Puriscal'),
(105, 1, 'Tarrazú'),
(106, 1, 'Aserrí'),
(107, 1, 'Mora'),
(108, 1, 'Goicoechea'),
(109, 1, 'Santa Ana'),
(110, 1, 'Alajuelita'),
(111, 1, 'Vasquez de Coronado'),
(112, 1, 'Acosta'),
(113, 1, 'Tibás'),
(114, 1, 'Moravia'),
(115, 1, 'Montes de Oca'),
(116, 1, 'Turrubares'),
(117, 1, 'Dota'),
(118, 1, 'Curridabat'),
(119, 1, 'Pérez Zeledón'),
(120, 1, 'León Cortés'),
(201, 2, 'Alajuela'),
(202, 2, 'San Ramón'),
(203, 2, 'Grecia'),
(204, 2, 'San Mateo'),
(205, 2, 'Atenas'),
(206, 2, 'Naranjo'),
(207, 2, 'Palmares'),
(208, 2, 'Poás'),
(209, 2, 'Orotina'),
(210, 2, 'San Carlos'),
(211, 2, 'Alfaro Ruiz'),
(212, 2, 'Valverde Vega'),
(213, 2, 'Upala'),
(214, 2, 'Los Chiles'),
(215, 2, 'Guatuso'),
(301, 3, 'Cartago'),
(302, 3, 'Paraíso'),
(303, 3, 'La Unión'),
(304, 3, 'Jiménez'),
(305, 3, 'Turrialba'),
(306, 3, 'Alvarado'),
(307, 3, 'Oreamuno'),
(308, 3, 'El Guarco'),
(401, 4, 'Heredia'),
(402, 4, 'Barva'),
(403, 4, 'Santo Domingo'),
(404, 4, 'Santa Bárbara'),
(405, 4, 'San Rafael'),
(406, 4, 'San Isidro'),
(407, 4, 'Belén'),
(408, 4, 'Flores'),
(409, 4, 'San Pablo'),
(410, 4, 'Sarapiquí '),
(501, 5, 'Liberia'),
(502, 5, 'Nicoya'),
(503, 5, 'Santa Cruz'),
(504, 5, 'Bagaces'),
(505, 5, 'Carrillo'),
(506, 5, 'Cañas'),
(507, 5, 'Abangares'),
(508, 5, 'Tilarán'),
(509, 5, 'Nandayure'),
(510, 5, 'La Cruz'),
(511, 5, 'Hojancha'),
(601, 6, 'Puntarenas'),
(602, 6, 'Esparza'),
(603, 6, 'Buenos Aires'),
(604, 6, 'Montes de Oro'),
(605, 6, 'Osa'),
(606, 6, 'Aguirre'),
(607, 6, 'Golfito'),
(608, 6, 'Coto Brus'),
(609, 6, 'Parrita'),
(610, 6, 'Corredores'),
(611, 6, 'Garabito'),
(701, 7, 'Limón'),
(702, 7, 'Pococí'),
(703, 7, 'Siquirres'),
(704, 7, 'Talamanca'),
(705, 7, 'Matina'),
(706, 7, 'Guácimo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cierre`
--

CREATE TABLE `cierre` (
  `id` int(25) NOT NULL,
  `numero` int(2) DEFAULT NULL,
  `valor` int(5) DEFAULT NULL,
  `tipo` varchar(35) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `hora` varchar(25) DEFAULT NULL,
  `vendedor` varchar(35) DEFAULT NULL,
  `cliente` varchar(35) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(9) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descuento` varchar(4) DEFAULT '0',
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `descuento`, `habilitado`) VALUES
(1, 'Cliente Contado', '0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credito`
--

CREATE TABLE `credito` (
  `id` int(25) NOT NULL,
  `id_cliente` int(25) DEFAULT NULL,
  `deuda` int(25) DEFAULT NULL,
  `deudaNeta` int(25) DEFAULT NULL,
  `saldo` int(25) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `interes` int(5) DEFAULT NULL,
  `cuota` varchar(25) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(9) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `habilitada` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `habilitada`) VALUES
(1, 'Genérico ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_canton` smallint(5) UNSIGNED NOT NULL,
  `distrito` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id`, `id_canton`, `distrito`) VALUES
(10101, 101, 'Carmen'),
(10102, 101, 'Merced'),
(10103, 101, 'Hospital'),
(10104, 101, 'Catedral'),
(10105, 101, 'Zapote'),
(10106, 101, 'San Francisco de Dos Ríos'),
(10107, 101, 'Uruca'),
(10108, 101, 'Mata Redonda'),
(10109, 101, 'Pavas'),
(10110, 101, 'Hatillo'),
(10111, 101, 'San Sebastián'),
(10201, 102, 'Escazú'),
(10202, 102, 'San Antonio'),
(10203, 102, 'San Rafael'),
(10301, 103, 'Desamparados'),
(10302, 103, 'San Miguel'),
(10303, 103, 'San Juan de Dios'),
(10304, 103, 'San Rafael Arriba'),
(10305, 103, 'San Antonio'),
(10306, 103, 'Frailes'),
(10307, 103, 'Patarrá'),
(10308, 103, 'San Cristóbal'),
(10309, 103, 'Rosario'),
(10310, 103, 'Damas'),
(10311, 103, 'San Rafael Abajo'),
(10312, 103, 'Gravilias'),
(10313, 103, 'Los Guido'),
(10401, 104, 'Santiago'),
(10402, 104, 'Mercedes Sur'),
(10403, 104, 'Barbacoas'),
(10404, 104, 'Grifo Alto'),
(10405, 104, 'San Rafael'),
(10406, 104, 'Candelaria'),
(10407, 104, 'Desamparaditos'),
(10408, 104, 'San Antonio'),
(10409, 104, 'Chires'),
(10501, 105, 'San Marcos'),
(10502, 105, 'San Lorenzo'),
(10503, 105, 'San Carlos'),
(10601, 106, 'Aserrí'),
(10602, 106, 'Tarbaca o Praga'),
(10603, 106, 'Vuelta de Jorco'),
(10604, 106, 'San Gabriel'),
(10605, 106, 'La Legua'),
(10606, 106, 'Monterrey'),
(10607, 106, 'Salitrillos'),
(10701, 107, 'Colón'),
(10702, 107, 'Guayabo'),
(10703, 107, 'Tabarcia'),
(10704, 107, 'Piedras Negras'),
(10705, 107, 'Picagres'),
(10801, 108, 'Guadalupe'),
(10802, 108, 'San Francisco'),
(10803, 108, 'Calle Blancos'),
(10804, 108, 'Mata de Plátano'),
(10805, 108, 'Ipís'),
(10806, 108, 'Rancho Redondo'),
(10807, 108, 'Purral'),
(10901, 109, 'Santa Ana'),
(10902, 109, 'Salitral'),
(10903, 109, 'Pozos o Concepción'),
(10904, 109, 'Uruca o San Joaquín'),
(10905, 109, 'Piedades'),
(10906, 109, 'Brasil'),
(11001, 110, 'Alajuelita'),
(11002, 110, 'San Josecito'),
(11003, 110, 'San Antonio'),
(11004, 110, 'Concepción'),
(11005, 110, 'San Felipe'),
(11101, 111, 'San Isidro'),
(11102, 111, 'San Rafael'),
(11103, 111, 'Dulce Nombre de Jesús'),
(11104, 111, 'Patalillo'),
(11105, 111, 'Cascajal'),
(11201, 112, 'San Ignacio'),
(11202, 112, 'Guaitil'),
(11203, 112, 'Palmichal'),
(11204, 112, 'Cangrejal'),
(11205, 112, 'Sabanillas'),
(11301, 113, 'San Juan'),
(11302, 113, 'Cinco Esquinas'),
(11303, 113, 'Anselmo Llorente'),
(11304, 113, 'León XIII'),
(11305, 113, 'Colima'),
(11401, 114, 'San Vicente'),
(11402, 114, 'San Jerónimo'),
(11403, 114, 'Trinidad'),
(11501, 115, 'San Pedro'),
(11502, 115, 'Sabanilla'),
(11503, 115, 'Mercedes o Betania'),
(11504, 115, 'San Rafael'),
(11601, 116, 'San Pablo'),
(11602, 116, 'San Pedro'),
(11603, 116, 'San Juan de Mata'),
(11604, 116, 'San Luis'),
(11605, 116, 'Cárara'),
(11701, 117, 'Santa María'),
(11702, 117, 'Jardín'),
(11703, 117, 'Copey'),
(11801, 118, 'Curridabat'),
(11802, 118, 'Granadilla'),
(11803, 118, 'Sánchez'),
(11804, 118, 'Tirrases'),
(11901, 119, 'San Isidro de el General'),
(11902, 119, 'General'),
(11903, 119, 'Daniel Flores'),
(11904, 119, 'Rivas'),
(11905, 119, 'San Pedro'),
(11906, 119, 'Platanares'),
(11907, 119, 'Pejibaye'),
(11908, 119, 'Cajón'),
(11909, 119, 'Barú'),
(11910, 119, 'Río Nuevo'),
(11911, 119, 'Páramo'),
(12001, 120, 'San Pablo'),
(12002, 120, 'San Andrés'),
(12003, 120, 'Llano Bonito'),
(12004, 120, 'San Isidro'),
(12005, 120, 'Santa Cruz'),
(12006, 120, 'San Antonio'),
(20101, 201, 'Alajuela'),
(20102, 201, 'San José'),
(20103, 201, 'Carrizal'),
(20104, 201, 'San Antonio'),
(20105, 201, 'Guácima'),
(20106, 201, 'San Isidro'),
(20107, 201, 'Sabanilla'),
(20108, 201, 'San Rafael'),
(20109, 201, 'Río Segundo'),
(20110, 201, 'Desamparados'),
(20111, 201, 'Turrucares'),
(20112, 201, 'Tambor'),
(20113, 201, 'La Garita'),
(20114, 201, 'Sarapiquí'),
(20201, 202, 'San Ramón'),
(20202, 202, 'Santiago'),
(20203, 202, 'San Juan'),
(20204, 202, 'Piedades Norte'),
(20205, 202, 'Piedades Sur'),
(20206, 202, 'San Rafael'),
(20207, 202, 'San Isidro'),
(20208, 202, 'Angeles'),
(20209, 202, 'Alfaro'),
(20210, 202, 'Volio'),
(20211, 202, 'Concepción'),
(20212, 202, 'Zapotal'),
(20213, 202, 'San Isidro de Peñas Blancas'),
(20301, 203, 'Grecia'),
(20302, 203, 'San Isidro'),
(20303, 203, 'San José'),
(20304, 203, 'San Roque'),
(20305, 203, 'Tacares'),
(20306, 203, 'Río Cuarto'),
(20307, 203, 'Puente Piedra'),
(20308, 203, 'Bolívar'),
(20401, 204, 'San Mateo'),
(20402, 204, 'Desmonte'),
(20403, 204, 'Jesús María'),
(20501, 205, 'Atenas'),
(20502, 205, 'Jesús'),
(20503, 205, 'Mercedes'),
(20504, 205, 'San Isidro'),
(20505, 205, 'Concepción'),
(20506, 205, 'San José'),
(20507, 205, 'Santa Eulalia'),
(20508, 205, 'Escobal'),
(20601, 206, 'Naranjo'),
(20602, 206, 'San Miguel'),
(20603, 206, 'San José'),
(20604, 206, 'Cirrí Sur'),
(20605, 206, 'San Jerónimo'),
(20606, 206, 'San Juan'),
(20607, 206, 'Rosario'),
(20701, 207, 'Palmares'),
(20702, 207, 'Zaragoza'),
(20703, 207, 'Buenos Aires'),
(20704, 207, 'Santiago'),
(20705, 207, 'Candelaria'),
(20706, 207, 'Esquipulas'),
(20707, 207, 'La Granja'),
(20801, 208, 'San Pedro'),
(20802, 208, 'San Juan'),
(20803, 208, 'San Rafael'),
(20804, 208, 'Carrillos'),
(20805, 208, 'Sabana Redonda'),
(20901, 209, 'Orotina'),
(20902, 209, 'Mastate'),
(20903, 209, 'Hacienda Vieja'),
(20904, 209, 'Coyolar'),
(20905, 209, 'Ceiba'),
(21001, 210, 'Quesada'),
(21002, 210, 'Florencia'),
(21003, 210, 'Buenavista'),
(21004, 210, 'Aguas Zarcas'),
(21005, 210, 'Venecia'),
(21006, 210, 'Pital'),
(21007, 210, 'Fortuna'),
(21008, 210, 'Tigra'),
(21009, 210, 'Palmera'),
(21010, 210, 'Venado'),
(21011, 210, 'Cutris'),
(21012, 210, 'Monterrey'),
(21013, 210, 'Pocosol'),
(21101, 211, 'Zarcero'),
(21102, 211, 'Laguna'),
(21103, 211, 'Tapezco'),
(21104, 211, 'Guadalupe'),
(21105, 211, 'Palmira'),
(21106, 211, 'Zapote'),
(21107, 211, 'Las Brisas'),
(21201, 212, 'Sarchí Norte'),
(21202, 212, 'Sarchí Sur'),
(21203, 212, 'Toro Amarillo'),
(21204, 212, 'San Pedro'),
(21205, 212, 'Rodríguez'),
(21301, 213, 'Upala'),
(21302, 213, 'Aguas Claras'),
(21303, 213, 'San José o Pizote'),
(21304, 213, 'Bijagua'),
(21305, 213, 'Delicias'),
(21306, 213, 'Dos Ríos'),
(21307, 213, 'Yolillal'),
(21401, 214, 'Los Chiles'),
(21402, 214, 'Caño Negro'),
(21403, 214, 'Amparo'),
(21404, 214, 'San Jorge'),
(21501, 215, 'San Rafael'),
(21502, 215, 'Buenavista'),
(21503, 215, 'Cote'),
(30101, 301, 'Oriental'),
(30102, 301, 'Occidental'),
(30103, 301, 'Carmen'),
(30104, 301, 'San Nicolás'),
(30105, 301, 'Aguacaliente o San Francisco'),
(30106, 301, 'Guadalupe o Arenilla'),
(30107, 301, 'Corralillo'),
(30108, 301, 'Tierra Blanca'),
(30109, 301, 'Dulce Nombre'),
(30110, 301, 'Llano Grande'),
(30111, 301, 'Quebradilla'),
(30201, 302, 'Paraíso'),
(30202, 302, 'Santiago'),
(30203, 302, 'Orosi'),
(30204, 302, 'Cachí'),
(30205, 302, 'Los Llanos de Santa Lucía'),
(30301, 303, 'Tres Ríos'),
(30302, 303, 'San Diego'),
(30303, 303, 'San Juan'),
(30304, 303, 'San Rafael'),
(30305, 303, 'Concepción'),
(30306, 303, 'Dulce Nombre'),
(30307, 303, 'San Ramón'),
(30308, 303, 'Río Azul'),
(30401, 304, 'Juan Viñas'),
(30402, 304, 'Tucurrique'),
(30403, 304, 'Pejibaye'),
(30501, 305, 'Turrialba'),
(30502, 305, 'La Suiza'),
(30503, 305, 'Peralta'),
(30504, 305, 'Santa Cruz'),
(30505, 305, 'Santa Teresita'),
(30506, 305, 'Pavones'),
(30507, 305, 'Tuis'),
(30508, 305, 'Tayutic'),
(30509, 305, 'Santa Rosa'),
(30510, 305, 'Tres Equis'),
(30511, 305, 'La Isabel'),
(30512, 305, 'Chirripó'),
(30601, 306, 'Pacayas'),
(30602, 306, 'Cervantes'),
(30603, 306, 'Capellades'),
(30701, 307, 'San Rafael'),
(30702, 307, 'Cot'),
(30703, 307, 'Potrero Cerrado'),
(30704, 307, 'Cipreses'),
(30705, 307, 'Santa Rosa'),
(30801, 308, 'El Tejar'),
(30802, 308, 'San Isidro'),
(30803, 308, 'Tobosi'),
(30804, 308, 'Patio de Agua'),
(40101, 401, 'Heredia'),
(40102, 401, 'Mercedes'),
(40103, 401, 'San Francisco'),
(40104, 401, 'Ulloa'),
(40105, 401, 'Varablanca'),
(40201, 402, 'Barva'),
(40202, 402, 'San Pedro'),
(40203, 402, 'San Pablo'),
(40204, 402, 'San Roque'),
(40205, 402, 'Santa Lucía'),
(40206, 402, 'San José de la Montaña'),
(40301, 403, 'Santo Domingo'),
(40302, 403, 'San Vicente'),
(40303, 403, 'San Miguel'),
(40304, 403, 'Paracito'),
(40305, 403, 'Santo Tomás'),
(40306, 403, 'Santa Rosa'),
(40307, 403, 'Tures'),
(40308, 403, 'Pará'),
(40401, 404, 'Santa Bárbara'),
(40402, 404, 'San Pedro'),
(40403, 404, 'San Juan'),
(40404, 404, 'Jesús'),
(40405, 404, 'Santo Domingo del Roble'),
(40406, 404, 'Puraba'),
(40501, 405, 'San Rafael'),
(40502, 405, 'San Josecito'),
(40503, 405, 'Santiago'),
(40504, 405, 'Angeles'),
(40505, 405, 'Concepción'),
(40601, 406, 'San Isidro'),
(40602, 406, 'San José'),
(40603, 406, 'Concepción'),
(40604, 406, 'San Francisco'),
(40701, 407, 'San Antonio'),
(40702, 407, 'La Ribera'),
(40703, 407, 'Asunción'),
(40801, 408, 'San Joaquín'),
(40802, 408, 'Barrantes'),
(40803, 408, 'Llorente'),
(40901, 409, 'San Pablo'),
(41001, 410, 'Puerto Viejo'),
(41002, 410, 'La Virgen'),
(41003, 410, 'Horquetas'),
(41004, 410, 'Llanuras de Gaspar'),
(41005, 410, 'Cureña'),
(50101, 501, 'Liberia'),
(50102, 501, 'Cañas Dulces'),
(50103, 501, 'Mayorga'),
(50104, 501, 'Nacascolo'),
(50105, 501, 'Curubande'),
(50201, 502, 'Nicoya'),
(50202, 502, 'Mansión'),
(50203, 502, 'San Antonio'),
(50204, 502, 'Quebrada Honda'),
(50205, 502, 'Sámara'),
(50206, 502, 'Nósara'),
(50207, 502, 'Belén de Nosarita'),
(50301, 503, 'Santa Cruz'),
(50302, 503, 'Bolsón'),
(50303, 503, 'Veintisiete de Abril'),
(50304, 503, 'Tempate'),
(50305, 503, 'Cartagena'),
(50306, 503, 'Cuajiniquil'),
(50307, 503, 'Diriá'),
(50308, 503, 'Cabo Velas'),
(50309, 503, 'Tamarindo'),
(50401, 504, 'Bagaces'),
(50402, 504, 'Fortuna'),
(50403, 504, 'Mogote'),
(50404, 504, 'Río Naranjo'),
(50501, 505, 'Filadelfia'),
(50502, 505, 'Palmira'),
(50503, 505, 'Sardinal'),
(50504, 505, 'Belén'),
(50601, 506, 'Cañas'),
(50602, 506, 'Palmira'),
(50603, 506, 'San Miguel'),
(50604, 506, 'Bebedero'),
(50605, 506, 'Porozal'),
(50701, 507, 'Juntas'),
(50702, 507, 'Sierra'),
(50703, 507, 'San Juan'),
(50704, 507, 'Colorado'),
(50801, 508, 'Tilarán'),
(50802, 508, 'Quebrada Grande'),
(50803, 508, 'Tronadora'),
(50804, 508, 'Santa Rosa'),
(50805, 508, 'Líbano'),
(50806, 508, 'Tierras Morenas'),
(50807, 508, 'Arenal'),
(50901, 509, 'Carmona'),
(50902, 509, 'Santa Rita'),
(50903, 509, 'Zapotal'),
(50904, 509, 'San Pablo'),
(50905, 509, 'Porvenir'),
(50906, 509, 'Bejuco'),
(51001, 510, 'La Cruz'),
(51002, 510, 'Santa Cecilia'),
(51003, 510, 'Garita'),
(51004, 510, 'Santa Elena'),
(51101, 511, 'Hojancha'),
(51102, 511, 'Monte Romo'),
(51103, 511, 'Puerto Carrillo'),
(51104, 511, 'Huacas'),
(60101, 601, 'Puntarenas'),
(60102, 601, 'Pitahaya'),
(60103, 601, 'Chomes'),
(60104, 601, 'Lepanto'),
(60105, 601, 'Paquera'),
(60106, 601, 'Manzanillo'),
(60107, 601, 'Guacimal'),
(60108, 601, 'Barranca'),
(60109, 601, 'Monte Verde'),
(60110, 601, 'Isla del Coco'),
(60111, 601, 'Cóbano'),
(60112, 601, 'Chacarita'),
(60113, 601, 'Chira'),
(60114, 601, 'Acapulco'),
(60115, 601, 'Roble'),
(60116, 601, 'Arancibia'),
(60201, 602, 'Espíritu Santo'),
(60202, 602, 'San Juan Grande'),
(60203, 602, 'Macacona'),
(60204, 602, 'San Rafael'),
(60205, 602, 'San Jerónimo'),
(60301, 603, 'Buenos Aires'),
(60302, 603, 'Volcán'),
(60303, 603, 'Potrero Grande'),
(60304, 603, 'Boruca'),
(60305, 603, 'Pilas'),
(60306, 603, 'Colinas o Bajo de Maíz'),
(60307, 603, 'Chánguena'),
(60308, 603, 'Bioley'),
(60309, 603, 'Brunka'),
(60401, 604, 'Miramar'),
(60402, 604, 'Unión'),
(60403, 604, 'San Isidro'),
(60501, 605, 'Puerto Cortés'),
(60502, 605, 'Palmar'),
(60503, 605, 'Sierpe'),
(60504, 605, 'Bahía Ballena'),
(60505, 605, 'Piedras Blancas'),
(60601, 606, 'Quepos'),
(60602, 606, 'Savegre'),
(60603, 606, 'Naranjito'),
(60701, 607, 'Golfito'),
(60702, 607, 'Puerto Jiménez'),
(60703, 607, 'Guaycará'),
(60704, 607, 'Pavon'),
(60801, 608, 'San Vito'),
(60802, 608, 'Sabalito'),
(60803, 608, 'Agua Buena'),
(60804, 608, 'Limoncito'),
(60805, 608, 'Pittier'),
(60901, 609, 'Parrita'),
(61001, 610, 'Corredor'),
(61002, 610, 'La Cuesta'),
(61003, 610, 'Paso Canoas'),
(61004, 610, 'Laurel'),
(61101, 611, 'Jacó'),
(61102, 611, 'Tárcoles'),
(70101, 701, 'Limón'),
(70102, 701, 'Valle La Estrella'),
(70103, 701, 'Río Blanco'),
(70104, 701, 'Matama'),
(70201, 702, 'Guápiles'),
(70202, 702, 'Jiménez'),
(70203, 702, 'Rita'),
(70204, 702, 'Roxana'),
(70205, 702, 'Cariari'),
(70206, 702, 'Colorado'),
(70301, 703, 'Siquirres'),
(70302, 703, 'Pacuarito'),
(70303, 703, 'Florida'),
(70304, 703, 'Germania'),
(70305, 703, 'Cairo'),
(70306, 703, 'Alegría'),
(70401, 704, 'Bratsi'),
(70402, 704, 'Sixaola'),
(70403, 704, 'Cahuita'),
(70404, 704, 'Telire'),
(70501, 705, 'Matina'),
(70502, 705, 'Batán'),
(70503, 705, 'Carrandí'),
(70601, 706, 'Guácimo'),
(70602, 706, 'Mercedes'),
(70603, 706, 'Pocora'),
(70604, 706, 'Río Jiménez'),
(70605, 706, 'Duacarí');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradasalidaregistro`
--

CREATE TABLE `entradasalidaregistro` (
  `id` int(15) NOT NULL,
  `monto` varchar(9) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(12) DEFAULT NULL,
  `Detalle` text,
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `id` int(9) NOT NULL,
  `nombre` varchar(35) DEFAULT NULL,
  `telefono` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `establecimiento`
--

INSERT INTO `establecimiento` (`id`, `nombre`, `telefono`) VALUES
(1, 'Souvenir #1', '26661234'),
(2, 'Souvenir #2', '26661235'),
(3, 'Souvenir #3', '26665432');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id` int(20) NOT NULL,
  `total` varchar(20) DEFAULT NULL,
  `fecha` varchar(25) DEFAULT NULL,
  `hora` varchar(25) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `cliente` varchar(30) DEFAULT '1',
  `tipo` tinyint(1) DEFAULT '1',
  `habilitado` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id`, `total`, `fecha`, `hora`, `usuario`, `cliente`, `tipo`, `habilitado`) VALUES
(1, '105.000,0', '28-04-2018', '04:06:26 pm', '1', '1', 1, 1),
(2, '700,0', '28-04-2018', '04:11:17 pm', '1', '1', 1, 1),
(3, '4.500,0', '28-04-2018', '04:12:45 pm', '1', '1', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE `iva` (
  `id` int(9) NOT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'Nombre del impuesto de venta',
  `valor` int(4) DEFAULT NULL COMMENT 'Valor del impuesto de venta',
  `habilitado` tinyint(1) DEFAULT NULL COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `iva`
--

INSERT INTO `iva` (`id`, `nombre`, `valor`, `habilitado`) VALUES
(1, 'Sin Impuesto de Venta', 0, 1),
(2, 'Impuesto de Venta', 13, 1),
(3, 'Impuesto de Servicio', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `id` int(5) NOT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `entrada` int(11) DEFAULT '0',
  `salida` int(11) DEFAULT '0',
  `stock` int(11) DEFAULT NULL,
  `preciounitario` varchar(15) DEFAULT NULL,
  `preciototal` varchar(15) DEFAULT NULL,
  `detalle` varchar(50) DEFAULT 'Salida de Producto',
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`id`, `producto`, `entrada`, `salida`, `stock`, `preciounitario`, `preciototal`, `detalle`, `fecha`, `hora`) VALUES
(1, '1', 0, 150, 850, '700', '105000', 'Salida de Producto', '28-04-2018', '04:06:19 pm'),
(2, '1', 0, 1, 899, '700', '700', 'Salida de Producto', '28-04-2018', '04:11:08 pm'),
(4, '1', 100, 0, 999, '700', '70000', 'Ingreso de Producto', '28-04-2018', NULL),
(5, '1', 50, 0, 1049, '200', '10000', 'Ingreso de Producto', '28-04-2018', '04:22:46 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `id` int(9) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `signo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `medida`
--

INSERT INTO `medida` (`id`, `nombre`, `signo`) VALUES
(1, 'Unidad/Pza', 'U'),
(2, 'Litro', 'L'),
(3, 'Kilo', 'K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `id` int(9) NOT NULL,
  `moneda` varchar(55) DEFAULT NULL,
  `signo` varchar(25) DEFAULT NULL,
  `valor` int(9) DEFAULT NULL,
  `rango` tinyint(1) DEFAULT '0',
  `habilitada` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`id`, `moneda`, `signo`, `valor`, `rango`, `habilitada`) VALUES
(1, 'Pesos', '$', 1, 2, 1),
(2, 'Dolar', 'USD', 3000, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientostipo`
--

CREATE TABLE `movimientostipo` (
  `id` int(2) NOT NULL,
  `nombre` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movimientostipo`
--

INSERT INTO `movimientostipo` (`id`, `nombre`) VALUES
(1, 'Apertura de Caja'),
(2, 'Cierre de Caja'),
(3, 'Entrada de Dinero'),
(4, 'Salida de Dinero'),
(5, 'Entrada de Dinero Caja Chica'),
(6, 'Salida de Dinero Caja Chica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `notificacion` text,
  `fecha` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(9) NOT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `perfil` varchar(50) DEFAULT NULL COMMENT 'Nombre del perfil de usuario',
  `comentario` text COMMENT 'aclaración o comentario explicativo del tipo de perfil',
  `habilitado` tinyint(1) DEFAULT '1' COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `perfil`, `comentario`, `habilitado`) VALUES
(1, 'Administrador', '', 1),
(2, 'Vendedor', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(9) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `preciocosto` float DEFAULT NULL,
  `precioventa` float DEFAULT NULL,
  `proveedor` int(9) DEFAULT NULL,
  `departamento` int(6) DEFAULT NULL,
  `stock` int(9) DEFAULT NULL,
  `stockMin` int(9) DEFAULT NULL,
  `impuesto` int(3) DEFAULT '0',
  `medida` varchar(50) DEFAULT NULL,
  `especificaciones` text,
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `nombre`, `preciocosto`, `precioventa`, `proveedor`, `departamento`, `stock`, `stockMin`, `impuesto`, `medida`, `especificaciones`, `habilitado`) VALUES
(1, 'G01', 'Galletas', 200, 700, 1, 1, 1049, 100, 1, '1', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(9) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `telefono` varchar(35) DEFAULT NULL,
  `contacto` varchar(80) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `telefono`, `contacto`, `direccion`, `habilitado`) VALUES
(1, 'Genérico', '012345678', 'Genérico', 'Genérico', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `provincia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `provincia`) VALUES
(1, 'San José'),
(2, 'Alajuela'),
(3, 'Cartago'),
(4, 'Heredia'),
(5, 'Guanacaste'),
(6, 'Puntarenas'),
(7, 'Limón');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema`
--

CREATE TABLE `sistema` (
  `id` int(1) NOT NULL,
  `logo` varchar(55) DEFAULT 'logo.jpg',
  `TipoCambio` tinyint(1) DEFAULT '1',
  `version` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sistema`
--

INSERT INTO `sistema` (`id`, `logo`, `TipoCambio`, `version`) VALUES
(1, 'Carulla_2010.png', 1, 'v1.0.5 Estable');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `id` int(5) NOT NULL,
  `nombre` varchar(35) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`id`, `nombre`, `habilitado`) VALUES
(1, 'Amelia', 0),
(2, 'Cerulean', 0),
(3, 'Cosmo', 0),
(4, 'Cyborg', 0),
(5, 'Darkly', 0),
(6, 'Defecto', 0),
(7, 'Flatly', 0),
(8, 'Journal', 0),
(9, 'Lumen', 0),
(10, 'Paper', 0),
(11, 'Readable', 0),
(12, 'Sandstone', 0),
(13, 'Simplex', 0),
(14, 'Slate', 0),
(15, 'Spacelab', 0),
(16, 'Superhero', 0),
(17, 'United', 1),
(18, 'Yeti', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `usuario` varchar(50) DEFAULT NULL COMMENT 'Nombre del pseudonimo del usuario del sistema',
  `contrasena` varchar(40) DEFAULT NULL COMMENT 'Contraseña de acceso al sistema',
  `id_vendedor` int(9) DEFAULT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Foránea-Tabla Perfil)(1:1)',
  `id_perfil` int(1) DEFAULT '2',
  `habilitado` tinyint(1) DEFAULT '1' COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contrasena`, `id_vendedor`, `id_perfil`, `habilitado`) VALUES
(1, 'luis', 'luis', 1, 1, 1),
(2, 'sergio', 'sergio', 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(9) NOT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)',
  `nombre` varchar(50) DEFAULT NULL COMMENT 'Nombre real de la persona que va a utilizar el sistema',
  `apellido1` varchar(50) DEFAULT NULL COMMENT 'Primer apellido de la persona que va a utilizar el sistema',
  `apellido2` varchar(50) DEFAULT NULL COMMENT 'Segundo apellido de la persona que va a utilizar el sistema',
  `establecimiento` varchar(80) DEFAULT NULL COMMENT 'Nombre del Establecimiento',
  `nota` text COMMENT 'Dirección de la residencia de la persona',
  `provincia` int(15) DEFAULT NULL,
  `canton` int(10) DEFAULT NULL,
  `distrito` int(10) DEFAULT NULL,
  `id_usuario` int(9) DEFAULT NULL COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Foránea-Tabla Usuario(1:1). Relaciona un usuario específico con un empleado en una relación uno a uno.',
  `habilitado` tinyint(1) DEFAULT '1' COMMENT 'Determina si el registro es válido para utilizarse o se debe ignorar para operaciones sobre los datos.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id`, `nombre`, `apellido1`, `apellido2`, `establecimiento`, `nota`, `provincia`, `canton`, `distrito`, `id_usuario`, `habilitado`) VALUES
(1, 'Luis', 'Cortés', 'Juárez', 'Qualtiva WebApp', '600 metros este y 75 norte del Liceo Nocturno de Liberia', 5, 501, 50101, 1, 1),
(2, 'Sergio', 'Suarez', 'Flores', 'Souvenir #1', '', 1, 102, 10202, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(25) NOT NULL,
  `idfactura` int(25) DEFAULT NULL,
  `producto` int(2) DEFAULT NULL,
  `cantidad` int(5) DEFAULT '1',
  `precio` float DEFAULT NULL,
  `totalprecio` float DEFAULT NULL,
  `vendedor` int(9) DEFAULT NULL,
  `cliente` int(9) DEFAULT '1',
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(11) DEFAULT NULL,
  `tipo` tinyint(1) DEFAULT NULL,
  `habilitada` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `idfactura`, `producto`, `cantidad`, `precio`, `totalprecio`, `vendedor`, `cliente`, `fecha`, `hora`, `tipo`, `habilitada`) VALUES
(1, 1, 1, 150, 700, 105000, 1, 1, '28-04-2018', '04:06:19 pm', NULL, 1),
(2, 2, 1, 1, 700, 700, 1, 1, '28-04-2018', '04:11:08 pm', NULL, 1),
(3, 3, 2, 3, 1500, 4500, 1, 1, '28-04-2018', '04:12:40 pm', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajachica`
--
ALTER TABLE `cajachica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajachicaregistros`
--
ALTER TABLE `cajachicaregistros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajaregistros`
--
ALTER TABLE `cajaregistros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajatmp`
--
ALTER TABLE `cajatmp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canton`
--
ALTER TABLE `canton`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_CANTON_PROVINCIA` (`id_provincia`);

--
-- Indices de la tabla `cierre`
--
ALTER TABLE `cierre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `credito`
--
ALTER TABLE `credito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_credito` (`id_cliente`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DISTRITO_CANTON` (`id_canton`);

--
-- Indices de la tabla `entradasalidaregistro`
--
ALTER TABLE `entradasalidaregistro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientostipo`
--
ALTER TABLE `movimientostipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_producto` (`departamento`),
  ADD KEY `FK_id_proveedor` (`proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_usuario` (`id_vendedor`),
  ADD KEY `FK_perfil` (`id_perfil`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_usuario` (`id_usuario`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajachica`
--
ALTER TABLE `cajachica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajachicaregistros`
--
ALTER TABLE `cajachicaregistros`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajaregistros`
--
ALTER TABLE `cajaregistros`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cajatmp`
--
ALTER TABLE `cajatmp`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cierre`
--
ALTER TABLE `cierre`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `credito`
--
ALTER TABLE `credito`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entradasalidaregistro`
--
ALTER TABLE `entradasalidaregistro`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `movimientostipo`
--
ALTER TABLE `movimientostipo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sistema`
--
ALTER TABLE `sistema`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT COMMENT 'Identificador numérico para cada uno de los registros de la tabla.(Llave Primaria)', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `canton`
--
ALTER TABLE `canton`
  ADD CONSTRAINT `FK_CANTON_PROVINCIA` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`);

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `FK_DISTRITO_CANTON` FOREIGN KEY (`id_canton`) REFERENCES `canton` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_id_categoria` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_id_proveedor` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
