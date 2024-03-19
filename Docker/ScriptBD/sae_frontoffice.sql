-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 18 jan. 2024 à 09:20
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae_frontoffice`
--

-- Création de la base de données
CREATE SCHEMA IF NOT EXISTS `sae_frontoffice` DEFAULT CHARACTER SET utf8;
USE `sae_frontoffice`;

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`abonnement`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`abonnement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adherent_id` int NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_351268BB25F06C53` (`adherent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO `abonnement` (`id`, `adherent_id`, `date_debut`, `date_fin`) VALUES
(1, 1, '2008-06-01', '1971-08-08'),
(2, 2, '2017-07-28', '1977-12-09'),
(3, 3, '2009-12-10', '2007-03-18'),
(4, 4, '2006-12-02', '2007-03-31'),
(5, 5, '1980-07-27', '1973-10-06'),
(6, 6, '1991-03-29', '1994-12-29'),
(7, 7, '1998-12-06', '1985-06-12'),
(8, 8, '2006-11-09', '1971-12-22'),
(9, 9, '1979-11-28', '2013-08-04'),
(10, 10, '2007-09-14', '2018-09-23'),
(11, 11, '1994-09-16', '2011-03-23'),
(12, 12, '2000-08-23', '1981-02-17'),
(13, 13, '1972-03-30', '1975-10-02'),
(14, 14, '1975-10-21', '2013-05-03'),
(15, 15, '2010-09-13', '2020-04-21'),
(16, 16, '2008-06-16', '1993-08-07'),
(17, 17, '2004-08-10', '2022-12-14'),
(18, 18, '2011-08-15', '2004-06-18'),
(19, 19, '2009-12-24', '1970-12-23'),
(20, 20, '1980-02-04', '1972-01-22'),
(21, 21, '1980-10-26', '2013-11-04'),
(22, 22, '1981-06-22', '1988-08-03'),
(23, 23, '2013-01-30', '1977-02-08'),
(24, 24, '1986-08-18', '2010-12-16'),
(25, 25, '1984-12-01', '2018-01-30'),
(26, 26, '1982-09-21', '2021-03-26'),
(27, 27, '2003-04-15', '1976-10-27'),
(28, 28, '1987-06-06', '2012-06-02'),
(29, 29, '1999-08-15', '2018-06-22'),
(30, 30, '1985-03-31', '1987-11-03'),
(31, 31, '2003-04-14', '2021-02-08'),
(32, 32, '1993-01-01', '1970-11-02'),
(33, 33, '1993-06-23', '1980-12-05'),
(34, 34, '2000-08-14', '2020-08-05'),
(35, 35, '2005-12-19', '2012-02-15'),
(36, 36, '1996-12-06', '1989-11-07'),
(37, 37, '1990-01-30', '1994-11-08'),
(38, 38, '1980-12-29', '2019-12-05'),
(39, 39, '1973-03-22', '1999-02-09'),
(40, 40, '2008-09-13', '1970-04-28'),
(41, 41, '1976-07-10', '1994-11-12'),
(42, 42, '1984-11-15', '1994-03-08'),
(43, 43, '1986-05-30', '1993-06-05'),
(44, 44, '2010-06-18', '1993-04-06'),
(45, 45, '1991-08-29', '1997-12-30'),
(46, 46, '2009-09-03', '2021-05-07'),
(47, 47, '1971-06-21', '2011-01-11'),
(48, 48, '1998-09-02', '1971-03-11'),
(49, 49, '2009-09-18', '1979-05-05'),
(50, 50, '1971-02-10', '2009-12-30'),
(51, 51, '2016-11-02', '2010-03-06'),
(52, 52, '2004-11-19', '1987-05-27'),
(53, 53, '1996-10-18', '1996-05-20'),
(54, 54, '2019-05-04', '1978-12-19'),
(55, 55, '2002-04-02', '2009-08-12'),
(56, 56, '1984-07-18', '2009-02-06'),
(57, 57, '2015-01-19', '1995-11-21'),
(58, 58, '1992-01-31', '2012-03-04'),
(59, 59, '1995-12-08', '1983-10-10'),
(60, 60, '2007-09-24', '1985-10-14'),
(61, 61, '2013-10-04', '1983-03-29'),
(62, 62, '1998-12-23', '2004-06-08'),
(63, 63, '1971-11-12', '2006-04-25'),
(64, 64, '1972-01-09', '1970-12-13'),
(65, 65, '2012-12-20', '2000-06-02'),
(66, 66, '1982-03-20', '2006-04-03'),
(67, 67, '1976-10-05', '2011-03-01'),
(68, 68, '2014-06-30', '2003-07-25'),
(69, 69, '2005-04-23', '1985-09-09'),
(70, 70, '1996-06-18', '1998-08-17'),
(71, 71, '2021-08-18', '2008-07-29'),
(72, 72, '2005-02-21', '1977-01-15'),
(73, 73, '1988-11-26', '1979-10-09'),
(74, 74, '2020-08-29', '1977-07-26'),
(75, 75, '1978-06-15', '2003-04-20'),
(76, 76, '2004-08-03', '1995-04-03'),
(77, 77, '1997-06-09', '1976-05-21'),
(78, 78, '2017-01-08', '2022-02-16'),
(79, 79, '1975-08-20', '1987-05-13'),
(80, 80, '1986-01-07', '2022-04-28'),
(81, 81, '1971-11-07', '2008-10-09'),
(82, 82, '2023-07-28', '1980-06-12'),
(83, 83, '1998-03-09', '2013-04-13'),
(84, 84, '2008-06-24', '2014-05-22'),
(85, 85, '1993-04-28', '2020-12-29'),
(86, 86, '1978-10-07', '2013-10-21'),
(87, 87, '2023-02-15', '2009-02-22'),
(88, 88, '2019-01-07', '1996-02-07'),
(89, 89, '1994-08-27', '2022-10-27'),
(90, 90, '1976-02-11', '2015-04-14'),
(91, 91, '1985-04-18', '1995-04-10'),
(92, 92, '1970-06-30', '1992-05-12'),
(93, 93, '1990-08-02', '2007-05-31'),
(94, 94, '1973-02-17', '1996-10-15'),
(95, 95, '2020-11-02', '1974-04-29'),
(96, 96, '2018-05-17', '1971-02-18'),
(97, 97, '2020-11-26', '1982-09-03'),
(98, 98, '2019-04-16', '1996-07-06'),
(99, 99, '1989-07-14', '2022-05-08'),
(100, 100, '1993-11-15', '2022-10-28');

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`adherent`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`adherent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `adherent`
--

INSERT INTO `adherent` (`id`, `adresse`, `code_postal`, `ville`) VALUES
(1, '30, chemin Jean\n51915 BergerBourg', '13 611', 'Meyer-la-Forêt'),
(2, '506, avenue Breton\n50 082 Gaudin', '71204', 'Chauveau-sur-Mer'),
(3, '41, chemin Stéphane Royer\n05895 ChauveauBourg', '82 987', 'Poulain-sur-Faivre'),
(4, '38, chemin de Loiseau\n82 639 JolyBourg', '25745', 'FabreBourg'),
(5, '103, impasse Éléonore Maillet\n75 163 MichaudVille', '48673', 'PiresBourg'),
(6, '129, place Guillou\n58 880 Fleury', '65 777', 'MarchandBourg'),
(7, '93, place Leroy\n02 007 TraoreVille', '96493', 'Dupuy'),
(8, '449, impasse Gérard Garcia\n97369 Letellier-sur-Mer', '20 971', 'Fischer'),
(9, '12, impasse Fabre\n45916 Renault', '51 261', 'Pruvost'),
(10, '248, rue Théophile Hubert\n86 208 Bonnet-sur-Julien', '87841', 'Girard'),
(11, '10, impasse Grondin\n56835 BlancBourg', '88174', 'Fournier'),
(12, '932, avenue Antoine Denis\n05 933 Leblanc-sur-Dias', '86622', 'Chevalier'),
(13, '4, avenue de Bigot\n59691 Fournierboeuf', '66 870', 'Pasquier'),
(14, '88, rue Auguste Lenoir\n65699 Mary', '26 801', 'Parisboeuf'),
(15, '123, rue Nathalie Colas\n52 790 Dupuydan', '74 346', 'Carrenec'),
(16, '516, avenue de Brun\n77 015 Jourdan', '04553', 'LemoineVille'),
(17, 'chemin de Leroux\n26425 Verdier-la-Forêt', '71933', 'Monniernec'),
(18, '56, avenue Dufour\n92927 Hamel', '78 722', 'Grenier'),
(19, '5, boulevard Grégoire Guyot\n13533 Marty', '48405', 'Lelievre'),
(20, '960, place Mathilde Gillet\n92801 Hoarau', '34694', 'Lesage-sur-Paris'),
(21, '445, rue de Prevost\n79931 Maury-sur-Couturier', '20785', 'Letellier-sur-Mer'),
(22, '17, chemin Costa\n56029 Maury', '39 395', 'Courtois-les-Bains'),
(23, 'avenue Marchal\n38 047 Raymond', '39 359', 'Barbier'),
(24, '78, rue Blanchet\n10843 Paulboeuf', '94172', 'Evrard-la-Forêt'),
(25, '651, place Alexandria Petit\n24 318 LemaireVille', '01677', 'Levy-la-Forêt'),
(26, '8, rue Moreno\n70 524 Pichon-sur-Maury', '55810', 'ClementBourg'),
(27, '43, place Barbier\n14783 Blin', '67 535', 'Maillard-sur-Pascal'),
(28, '25, rue de Olivier\n11 901 Joseph-sur-Brun', '64962', 'LejeuneVille'),
(29, '62, chemin Perrier\n88109 Roche', '29449', 'Marion-sur-Pascal'),
(30, 'avenue de Guibert\n60 282 Gilles', '19639', 'Coulon'),
(31, '6, rue de Hamel\n38 211 Vincent-les-Bains', '80004', 'Hebert'),
(32, '922, avenue de Bailly\n61695 Descamps', '50 558', 'Perrot'),
(33, '19, impasse Suzanne Millet\n81689 Gautier', '04 212', 'ChauvinVille'),
(34, '792, impasse Denis Thierry\n36452 Adam-sur-Turpin', '90 123', 'Ribeiro'),
(35, '23, boulevard de Bigot\n61 939 Morvan', '30 765', 'Vaillant-sur-Salmon'),
(36, '70, avenue de Fernandez\n75897 Lucas-sur-Mer', '49236', 'Guillet'),
(37, '70, place Frédéric Tessier\n12 005 MathieuVille', '20 869', 'Klein'),
(38, '1, chemin Huet\n05276 Pasquier', '31 231', 'Alves'),
(39, '18, rue Lagarde\n17 905 Aubry', '23466', 'Bernier-la-Forêt'),
(40, '35, avenue Perret\n11 366 Faivre-sur-Chauveau', '87 343', 'Lefevre'),
(41, '763, impasse Hebert\n08 583 Delmas', '71455', 'Joubert'),
(42, '651, impasse Antoine Dijoux\n15755 Faure', '91542', 'Gomes-sur-Girard'),
(43, '95, place de Schmitt\n20 193 Fournier-les-Bains', '87540', 'Texier'),
(44, '5, chemin Payet\n70014 Lemaitre', '83502', 'Delattre'),
(45, '65, impasse Auguste Hoarau\n17899 Bousquet-la-Forêt', '45096', 'Chevalier-sur-Mer'),
(46, '15, rue Margaud Colin\n67 050 LenoirVille', '47260', 'Morin'),
(47, '53, rue Pierre Garnier\n86273 Thibault-sur-Perrin', '28 185', 'LedouxVille'),
(48, '79, chemin Benard\n39 208 Daniel-sur-Mer', '09 605', 'Carlierdan'),
(49, '74, chemin Aurélie Laine\n60 072 Giraud', '70051', 'Barbier-sur-Teixeira'),
(50, '11, chemin Virginie Colin\n12723 Dufour-sur-Coste', '08553', 'Huet'),
(51, '41, rue Francois\n82463 Guichard', '00940', 'Toussaintnec'),
(52, '190, avenue de Adam\n19 927 Maillotdan', '33821', 'Bouvier'),
(53, '38, place Alain Simon\n08628 Bertin-sur-Peltier', '38501', 'GuichardBourg'),
(54, '3, place Bertrand Peron\n27 350 Delaunay', '86693', 'Hamon'),
(55, '97, rue René Moulin\n87045 Gilles', '21472', 'Lesageboeuf'),
(56, '361, rue Jules Paul\n98188 Fouquetdan', '96773', 'Barbe'),
(57, 'impasse de Ferrand\n99316 Schneider', '23609', 'Boyer'),
(58, '75, rue de Mary\n68423 Ponsdan', '13 362', 'Laurent'),
(59, '867, chemin Turpin\n47055 Humbert', '48298', 'Royer'),
(60, '74, boulevard Suzanne Perez\n19 903 Roger', '04 532', 'Pruvost-sur-Teixeira'),
(61, '86, boulevard Madeleine Lebon\n05881 Carpentier', '19 561', 'DidierVille'),
(62, '1, place Capucine Albert\n50 256 Pasquierboeuf', '87620', 'GosselinBourg'),
(63, '8, avenue Bertrand Dupre\n87 316 Bertin', '10289', 'LefebvreVille'),
(64, '154, rue Ledoux\n28 636 Ferrand-sur-Berthelot', '94357', 'Fontaine'),
(65, '15, avenue Stéphanie Renard\n92 712 Riou', '77 996', 'Chevalier'),
(66, '42, place Xavier Boulanger\n66547 GuyotVille', '40595', 'Blondel'),
(67, '26, impasse Albert\n79 157 Philippe-sur-Mer', '85 960', 'Ribeiro'),
(68, '7, rue Delannoy\n09030 Albertdan', '02206', 'FabreBourg'),
(69, '44, rue François Pichon\n70893 PoirierVille', '52 165', 'Lemoine-les-Bains'),
(70, '966, boulevard Marthe Mary\n93 244 Pascal', '53143', 'Goncalves'),
(71, 'rue Thibaut Meunier\n38580 Sauvage-sur-Mer', '86909', 'Germain-sur-Mer'),
(72, '37, rue Ribeiro\n99 446 Le Rouxboeuf', '13890', 'Robert'),
(73, '99, rue de Merle\n48 694 Gauthier', '52 102', 'Martins-sur-Courtois'),
(74, '211, boulevard de Tanguy\n01629 Moulin-sur-Paul', '73 055', 'Gregoire-sur-Ruiz'),
(75, '19, boulevard de Peltier\n49 687 Gonzalez', '51526', 'Gregoire-les-Bains'),
(76, '743, chemin Laetitia Jacques\n52750 NicolasBourg', '99 910', 'RaymondVille'),
(77, '1, impasse Benoit\n74603 Barre', '02490', 'LemaitreVille'),
(78, 'impasse de Daniel\n48704 Guillaume', '63053', 'Gomes'),
(79, '752, chemin Roche\n15 528 Fontaine-la-Forêt', '76 255', 'Dupont-sur-Langlois'),
(80, '58, avenue de Devaux\n39 721 Pinto', '88029', 'Chartier'),
(81, '565, avenue Mary\n94 585 Marion-la-Forêt', '29 180', 'Roussel-sur-Mer'),
(82, '78, rue Caroline Reynaud\n82755 Maury-sur-Philippe', '54424', 'Aubry-la-Forêt'),
(83, '87, place Franck Boyer\n64946 Jacquot', '34185', 'Coste'),
(84, '83, impasse de Le Roux\n91452 FernandezBourg', '13 224', 'Verdier'),
(85, '72, place Turpin\n85 163 Traore-la-Forêt', '93 835', 'Briand-les-Bains'),
(86, 'avenue de Joubert\n49032 Mallet', '85074', 'Lebrun'),
(87, '71, rue Arnaud\n26294 DupuisBourg', '92 794', 'Laurent'),
(88, '393, rue de Courtois\n66 946 DescampsBourg', '28991', 'Cordier'),
(89, '92, chemin de Bazin\n91 781 RousseauBourg', '29648', 'Buisson'),
(90, 'avenue Brunet\n27128 Costa-sur-Mer', '45 337', 'Roussel'),
(91, '58, chemin Lucas Delmas\n38 640 Costa', '29 462', 'Monnier'),
(92, '594, rue de Garcia\n96729 Brunel', '17 889', 'Dijoux'),
(93, '64, chemin Maurice Aubry\n11 676 Traore', '12951', 'Goncalves-les-Bains'),
(94, 'rue Gimenez\n84 974 LaurentVille', '54 583', 'LombardBourg'),
(95, '24, place de Dupuis\n50 536 ReyBourg', '20906', 'Faure'),
(96, '81, avenue de Langlois\n71 120 Bouviernec', '13732', 'Daniel'),
(97, '20, impasse Riou\n39463 Marie', '99 727', 'Richard-les-Bains'),
(98, '7, chemin Thierry Colin\n57 448 Joseph', '96 163', 'Gimenez'),
(99, '32, place de Rey\n18237 Berthelotdan', '10751', 'Schmitt'),
(100, '48, boulevard Poirier\n44 136 Martel', '46 762', 'Petit-sur-Langlois');

-- --------------------------------------------------------

--
-- Structure de la table `adhesion`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`adhesion`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`adhesion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structure_id` int NOT NULL,
  `type_adhesion_id` int NOT NULL,
  `date_debut` date NOT NULL,
  `adherent_id` int NOT NULL,
  `date_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C50CA65A2534008B` (`structure_id`),
  KEY `IDX_C50CA65ABD98EE46` (`type_adhesion_id`),
  KEY `IDX_C50CA65A25F06C53` (`adherent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `adhesion`
--

INSERT INTO `adhesion` (`id`, `structure_id`, `type_adhesion_id`, `date_debut`, `adherent_id`, `date_fin`) VALUES
(1, 2, 1, '2000-07-13', 1, NULL),
(2, 1, 1, '1983-01-15', 2, NULL),
(3, 3, 1, '1991-08-22', 3, NULL),
(4, 1, 2, '1989-04-30', 4, NULL),
(5, 1, 2, '1989-03-06', 5, NULL),
(6, 3, 2, '2011-09-23', 6, NULL),
(7, 1, 1, '1970-03-06', 7, NULL),
(8, 2, 2, '1997-02-19', 8, NULL),
(9, 2, 2, '2002-04-17', 9, NULL),
(10, 2, 2, '2011-10-03', 10, NULL),
(11, 1, 2, '2012-04-19', 11, NULL),
(12, 1, 1, '1998-07-06', 12, NULL),
(13, 2, 1, '1981-11-25', 13, NULL),
(14, 1, 2, '2007-08-26', 14, NULL),
(15, 2, 2, '1975-08-19', 15, NULL),
(16, 1, 2, '1985-10-12', 16, NULL),
(17, 1, 1, '1982-11-13', 17, NULL),
(18, 3, 2, '2007-09-23', 18, NULL),
(19, 2, 2, '1985-09-15', 19, NULL),
(20, 2, 1, '1990-08-14', 20, NULL),
(21, 2, 2, '2014-03-12', 21, NULL),
(22, 1, 1, '1978-07-26', 22, NULL),
(23, 3, 2, '1984-07-30', 23, NULL),
(24, 2, 2, '1992-02-17', 24, NULL),
(25, 1, 1, '1984-05-24', 25, NULL),
(26, 3, 1, '1985-09-24', 26, NULL),
(27, 2, 2, '1974-03-19', 27, NULL),
(28, 3, 2, '2009-07-18', 28, NULL),
(29, 2, 1, '2000-02-20', 29, NULL),
(30, 3, 1, '1977-04-14', 30, NULL),
(31, 1, 1, '1990-11-18', 31, NULL),
(32, 3, 2, '1977-08-09', 32, NULL),
(33, 2, 2, '1986-07-26', 33, NULL),
(34, 1, 2, '2007-07-05', 34, NULL),
(35, 2, 1, '1997-11-24', 35, NULL),
(36, 1, 1, '1990-09-11', 36, NULL),
(37, 1, 1, '2012-03-08', 37, NULL),
(38, 3, 1, '1978-07-03', 38, NULL),
(39, 3, 2, '1986-03-27', 39, NULL),
(40, 1, 1, '1994-06-14', 40, NULL),
(41, 2, 2, '1990-12-12', 41, NULL),
(42, 2, 1, '1990-03-04', 42, NULL),
(43, 3, 1, '1989-10-28', 43, NULL),
(44, 3, 1, '2006-07-21', 44, NULL),
(45, 2, 2, '1988-07-05', 45, NULL),
(46, 3, 2, '1981-09-21', 46, NULL),
(47, 2, 2, '2018-07-09', 47, NULL),
(48, 3, 2, '2021-01-12', 48, NULL),
(49, 3, 2, '1984-04-16', 49, NULL),
(50, 2, 1, '1975-11-23', 50, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`calendrier`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`calendrier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `livrable` tinyint(1) NOT NULL,
  `structure_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B2753CB92534008B` (`structure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `civilite`
--

DROP TABLE IF EXISTS `civilite`;
CREATE TABLE IF NOT EXISTS `civilite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `civilite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `civilite`
--

INSERT INTO `civilite` (`id`, `civilite`) VALUES
(1, 'Monsieur'),
(2, 'Madame'),
(3, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `depot`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`depot`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`depot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_47948BBCDD842E46` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `depot`
--

INSERT INTO `depot` (`id`, `nom`, `adresse`, `telephone`, `position_id`) VALUES
(1, 'Verdier Roche S.A.R.L.', '3 Rue Antoine de Saint-Exupéry, 88100 Saint-Dié-des-Vosges', '0122937398', 4),
(2, 'Lebrun', '183 Rue Ernest Charlier, 88100 Sainte-Marguerite', '+33 5 94 56 80 73', 5),
(3, 'Reynaud S.A.S.', '1620 Chemin des Goutys, 88100 Nayemont-les-Fosses', '0181502391', 6),
(4, 'Bigot Marchal S.A.S.', '7 Avenue de Saint-Dié, 88000 Épinal', '0141657728', 7),
(5, 'Grondin S.A.S.', '9 Rue du Professeur Roux, 88000 Épinal', '+33 5 04 17 83 28', 8),
(6, 'Maillet', '3 Avenue Pierre de Coubertin, 88150 Thaon-les-Vosges', '+33 (0)6 54 12 27 11', 9),
(7, 'Dupuis SA', '270 Avenue Mal de Lattre de Tassigny, 88500 Mirecourt', '02 73 96 36 66', 10),
(8, 'Pottier', '501 Avenue Gambetta, 88500 Mirecourt', '0309635022', 11),
(9, 'Thomas S.A.', '581 Rue de Mirecourt, 88500 Poussay', '+33 7 74 34 36 83', 12);

-- --------------------------------------------------------

--
-- Structure de la table `depot_calendrier`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`depot_calendrier`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`depot_calendrier` (
  `depot_id` int NOT NULL,
  `calendrier_id` int NOT NULL,
  PRIMARY KEY (`depot_id`,`calendrier_id`),
  KEY `IDX_2E6B0AB58510D4DE` (`depot_id`),
  KEY `IDX_2E6B0AB5FF52FC51` (`calendrier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231212135358', '2024-01-18 09:09:16', 1108),
('DoctrineMigrations\\Version20231217095209', '2024-01-18 09:09:17', 59),
('DoctrineMigrations\\Version20231221100351', '2024-01-18 09:09:17', 8),
('DoctrineMigrations\\Version20240116152703', '2024-01-18 09:09:17', 56),
('DoctrineMigrations\\Version20240117161015', '2024-01-18 09:09:17', 181);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`employe`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`employe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structure_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F804D3B92534008B` (`structure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `frequence`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`frequence`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`frequence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structure_id` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_327EE45C2534008B` (`structure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `gpspoint`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`gpspoint`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`gpspoint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gpspoint`
--

INSERT INTO `gpspoint` (`id`, `name`, `latitude`, `longitude`) VALUES
(1, 'Les jardins Déodatiens', 48.28977565, 6.9418580184812),
(2, 'Le potager des Arches', 48.118689, 6.485822),
(3, 'La ferme Valféricurtienne', 48.1947553, 6.0948519),
(4, 'Verdier Roche S.A.R.L.', 48.2913006, 6.9382287),
(5, 'Lebrun', 48.27248025, 6.9672147164668),
(6, 'Reynaud S.A.S.', 48.2869287, 7.0026608),
(7, 'Bigot Marchal S.A.S.', 48.186084, 6.4714424),
(8, 'Grondin S.A.S.', 48.1795204, 6.4336889),
(9, 'Maillet', 48.2460608, 6.4256678),
(10, 'Dupuis SA', 48.2924234, 6.1308546),
(11, 'Pottier', 48.3032455, 6.1360165),
(12, 'Thomas S.A.', 48.3180805, 6.1254836572848);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`messenger_messages`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`panier`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`panier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abonnement_id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_24CC0DF2F1D74413` (`abonnement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `abonnement_id`, `nom`, `description`) VALUES
(1, 1, 'Panier de fruits', 'Numquam est itaque ipsum esse. Et hic aut culpa eos veniam repellendus voluptatibus hic. Quasi maxime labore ullam iusto natus quidem aspernatur et.'),
(2, 2, 'Panier de légumes', 'Quisquam ullam aut voluptatem illum dignissimos nesciunt. Harum voluptate iste cum repudiandae aspernatur.'),
(3, 3, 'Panier mixte', 'Officiis sequi minus dolorem harum. Amet quam debitis quia ut. Exercitationem perferendis sit voluptatum molestias praesentium molestiae repellat.'),
(4, 4, 'Panier de fruits', 'Quia ipsum molestiae et expedita dicta architecto commodi. Officia placeat sequi est iusto officia vel rerum.'),
(5, 5, 'Panier de fruits', 'Eum molestias et aperiam voluptas omnis quibusdam. Modi totam laborum distinctio ipsa enim. Eum ea ipsum ullam et similique.'),
(6, 6, 'Panier mixte', 'Perspiciatis in molestias voluptas id ipsam. Autem rem molestiae eius est animi et ea. Nobis sit nobis sequi qui. Dignissimos dolorum magnam possimus voluptatem.'),
(7, 7, 'Panier mixte', 'Blanditiis ut tempora molestias qui eum iusto. Consectetur ducimus animi deserunt aperiam laboriosam nisi. Amet voluptas aut officia. In sunt eligendi quo consequuntur rerum praesentium.'),
(8, 8, 'Panier de légumes', 'Et expedita adipisci omnis recusandae pariatur ea officia voluptates. Dolores voluptas distinctio perferendis perferendis est vel non. Enim quis dolore id voluptatem aut quo. Et a et ullam odio.'),
(9, 9, 'Panier de légumes', 'Id possimus placeat molestias dolor. Qui vel enim quas aliquam. Ut placeat suscipit totam ad deleniti.'),
(10, 10, 'Panier de fruits', 'Est totam dolor consequatur et. Rerum id eveniet sed fuga possimus. Minus dolor reiciendis sed voluptatem modi sed occaecati. Molestiae minima enim sunt repellendus assumenda.');

-- --------------------------------------------------------

--
-- Structure de la table `panier_produit`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`panier_produit`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`panier_produit` (
  `panier_id` int NOT NULL,
  `produit_id` int NOT NULL,
  PRIMARY KEY (`panier_id`,`produit_id`),
  KEY `IDX_D31F28A6F77D927C` (`panier_id`),
  KEY `IDX_D31F28A6F347EFB` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`produit`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unite_id` int DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_29A5EC27EC4A74AB` (`unite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `unite_id`, `nom`, `photo`, `description`) VALUES
(1, 4, 'Mangue', 'https://via.placeholder.com/640x480.png/004422?text=voluptates', 'Aperiam et nihil pariatur. Nisi minima et ut illo eum. Sequi est fugiat maxime illo incidunt reiciendis. Amet id molestias consequuntur animi corrupti laboriosam nam.'),
(2, 5, 'Raisin', 'https://via.placeholder.com/640x480.png/004499?text=quibusdam', 'Autem perspiciatis iste molestiae cumque dolorem odio. Quo maiores iure ad totam. Veritatis facere officia aut eius vero animi sed est. Nemo vitae qui distinctio vero omnis a iste.'),
(3, 4, 'Abricot', 'https://via.placeholder.com/640x480.png/0000aa?text=eum', 'Animi cupiditate quis nihil ad. Sint voluptas nisi harum velit. Voluptas qui ab officia modi qui ut.'),
(4, 3, 'Brocoli', 'https://via.placeholder.com/640x480.png/0044ee?text=ad', 'Ab sit quidem repellendus laborum ipsam ducimus labore. Aliquid tempora culpa molestias sit veritatis. Dicta ea molestiae consequuntur dolorum non et.'),
(5, 1, 'Mangue', 'https://via.placeholder.com/640x480.png/00ffdd?text=ducimus', 'Modi sint et aut doloribus reiciendis facilis. Necessitatibus aperiam aliquid repudiandae id. Porro fugit quia velit.'),
(6, 1, 'Oignon', 'https://via.placeholder.com/640x480.png/008844?text=adipisci', 'Et fugit et neque eaque vel. Enim dolores cumque ut autem dolorum et.'),
(7, 3, 'Oignon', 'https://via.placeholder.com/640x480.png/0000bb?text=aspernatur', 'Expedita ipsa quos aperiam eos laudantium deserunt ipsam. Est magni inventore repellendus eveniet non voluptatem unde culpa. Quasi dolorem eum nihil et.'),
(8, 2, 'Concombre', 'https://via.placeholder.com/640x480.png/00cc77?text=voluptatem', 'Et sunt sit cupiditate odit voluptate. Dignissimos possimus atque recusandae inventore magnam. Inventore doloremque voluptatem quae adipisci commodi. In fugit eligendi omnis.'),
(9, 6, 'Banane', 'https://via.placeholder.com/640x480.png/002222?text=voluptatem', 'Odit voluptate vel quos cupiditate labore velit quas eos. Aut commodi voluptatem eum optio tempora. Ea iusto qui sint ut quis.'),
(10, 3, 'Carotte', 'https://via.placeholder.com/640x480.png/0011dd?text=quis', 'Officiis et unde autem repudiandae cumque aut quaerat. Aut omnis quia voluptatem et magnam. Et aut fugiat et voluptas sequi aut.');

-- --------------------------------------------------------

--
-- Structure de la table `structure`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`structure`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`structure` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raison_sociale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siege_social` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_gestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coord_commerciales` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_identification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6F0137EADD842E46` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `structure`
--

INSERT INTO `structure` (`id`, `nom`, `ville`, `raison_sociale`, `siege_social`, `adresse_gestion`, `coord_commerciales`, `num_identification`, `position_id`) VALUES
(1, 'Les jardins Déodatiens', 'Saint-Dié-des-Vosges', 'Muller', '11 Rue de l''Université, 88100 Saint-Dié-des-Vosges', '11 Rue de l''Université, 88100 Saint-Dié-des-Vosges', '11 Rue de l''Université, 88100 Saint-Dié-des-Vosges', '618396746', 1),
(2, 'Le potager des Arches', 'Arches', 'Diallo', '2 Chemin du Chaufaux, 88380 Arches', '2 Chemin du Chaufaux, 88380 Arches', '2 Chemin du Chaufaux, 88380 Arches', '473551317', 2),
(3, 'La ferme Valféricurtienne', 'Valfroicourt', 'Leduc SAS', '252 Voie des Saules, 88270 Valfroicourt', '252 Voie des Saules, 88270 Valfroicourt', '252 Voie des Saules, 88270 Valfroicourt', '571440988', 3);

-- --------------------------------------------------------

--
-- Structure de la table `tournee`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`tournee`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`tournee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employe_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `etat_livraison` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EBF67D7E1B65292` (`employe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tournee_depot`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`tournee_depot`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`tournee_depot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tournee_id` int NOT NULL,
  `depot_id` int NOT NULL,
  `ordre_passage` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FB7C59D5F661D013` (`tournee_id`),
  KEY `IDX_FB7C59D58510D4DE` (`depot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_adhesion`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`type_adhesion`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`type_adhesion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `structure_id` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duree` int NOT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8F381A62534008B` (`structure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_adhesion`
--

INSERT INTO `type_adhesion` (`id`, `structure_id`, `label`, `duree`, `prix`) VALUES
(1, 1, 'Adhésion soutien', 6, 35),
(2, 2, 'Adhésion solidaire', 1, 40),
(3, 2, 'Adhésion active', 12, 31);

-- --------------------------------------------------------

--
-- Structure de la table `unite`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`unite`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`unite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unite`
--

INSERT INTO `unite` (`id`, `label`, `display`) VALUES
(1, 'g', 'g'),
(2, 'kg', 'kg'),
(3, 'l', 'l'),
(4, 'cl', 'cl'),
(5, 'ml', 'ml'),
(6, 'pièce', 'pièce');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `sae_frontoffice`.`utilisateur`;
CREATE TABLE IF NOT EXISTS `sae_frontoffice`.`utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `civilite_id` int NOT NULL,
  `employe_id` int DEFAULT NULL,
  `adherent_id` int DEFAULT NULL,
  `mail` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1D1C63B35126AC48` (`mail`),
  UNIQUE KEY `UNIQ_1D1C63B31B65292` (`employe_id`),
  UNIQUE KEY `UNIQ_1D1C63B325F06C53` (`adherent_id`),
  KEY `IDX_1D1C63B339194ABF` (`civilite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `civilite_id`, `employe_id`, `adherent_id`, `mail`, `roles`, `password`, `nom`, `prenom`, `telephone`) VALUES
(1, 2, NULL, 1, 'charles.penelope@live.com', '[\"ROLE_USER\"]', '$2y$10$OR6MKFCETZlo7/bUsvq/fOV5PyiYiVf6PgX8OUmte0Bu6IvyDjLUy', 'Marques', 'Charlotte', '+33 1 88 40 33 95'),
(2, 2, NULL, 2, 'haubert@briand.com', '[\"ROLE_USER\"]', '$2y$10$6hqyvXHduoImHKoNoczVYuo6Jct.bAjFq8.C0orLZ3Lo71SoNHUnu', 'Bertin', 'Margaud', '+33 (0)3 82 20 17 02'),
(3, 2, NULL, 3, 'christophe.cohen@fabre.fr', '[\"ROLE_USER\"]', '$2y$10$fSjRLhylnYj.onH7fMMzw.dXLDJdsopP516SVcsuCu2IWT/3pTawa', 'Thierry', 'Madeleine', '0751952148'),
(4, 2, NULL, 4, 'klegrand@tele2.fr', '[\"ROLE_USER\"]', '$2y$10$GhISCEmiGt5SUHOhXGBp8OYMZg/yU.bu8oZh8V5CZoeCp3IeKB3dm', 'Monnier', 'Victor', '04 55 26 96 85'),
(5, 3, NULL, 5, 'delmas.hortense@louis.fr', '[\"ROLE_USER\"]', '$2y$10$ly64ss1PeN80T/ywRkVBce/7Cd.JsU9ssCalDCh/522cmp2FHC0fK', 'Berthelot', 'Roger', '+33 (0)9 55 10 40 82'),
(6, 2, NULL, 6, 'lleleu@noos.fr', '[\"ROLE_USER\"]', '$2y$10$nVS6IHXLldZ8UQNbL/ZVzOibiwUs3cI9AkEizCYrfmlbEobShq5xu', 'Pelletier', 'Agathe', '+33 9 02 11 52 40'),
(7, 2, NULL, 7, 'cblin@sfr.fr', '[\"ROLE_USER\"]', '$2y$10$T6lhgXT39xmxrOija/ixIe2GW9kuWmUUdMkIwijMdkoF4HIiS4Gpm', 'Diaz', 'Aurore', '0747651961'),
(8, 2, NULL, 8, 'fischer.jean@dasilva.fr', '[\"ROLE_USER\"]', '$2y$10$aFUx4uHxG8rVQsyvkVaF0ut6g9Ite7I9u3Z7kTnwj9wl0QxjieSym', 'Labbe', 'Véronique', '0606050965'),
(9, 2, NULL, 9, 'oceane.pelletier@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$6KXuNgFBna1OPUC0phe6RO2edNMJCqzY9cI56EKyN8Rqp0G3SlglG', 'Pelletier', 'Raymond', '02 47 30 89 92'),
(10, 2, NULL, 10, 'leon53@simon.com', '[\"ROLE_USER\"]', '$2y$10$qkP66VCmF4YcONv8aR2g7.DtRK90Y2OWD2qUcApHJ7d1To3Ab9WPW', 'Louis', 'Théodore', '02 95 80 67 72'),
(11, 3, NULL, 11, 'bourgeois.sylvie@gonzalez.org', '[\"ROLE_USER\"]', '$2y$10$oPpLK5fBdm646NNOKCYnu.95zRRAa0stcHY4NMYa1w6Su1c/zaeti', 'Grondin', 'William', '0827359088'),
(12, 3, NULL, 12, 'dvincent@club-internet.fr', '[\"ROLE_USER\"]', '$2y$10$BYumdc5p.ojiuQK2/3vxyepKeBw2ELjqVb75FUKCpun5r12Z5u8TS', 'Gilles', 'Alexandria', '+33 7 48 83 92 72'),
(13, 2, NULL, 13, 'margot.gautier@dijoux.fr', '[\"ROLE_USER\"]', '$2y$10$hbvFZn9UoNf.tHXyoWgnruSVnne3HZFOG8xddbD1.QxRaHC/Op.Cu', 'Dupont', 'Lucy', '+33 1 85 66 25 93'),
(14, 2, NULL, 14, 'valette.simone@pelletier.fr', '[\"ROLE_USER\"]', '$2y$10$SUSRZdpvRQivUuuQxdDMD.xRAZdgh4xVBhTXm3FB8l09YITwuaq32', 'Pottier', 'Sylvie', '+33 5 72 86 91 76'),
(15, 3, NULL, 15, 'roland54@marechal.org', '[\"ROLE_USER\"]', '$2y$10$UgDoZ4.UCep.r7/FaqJqxuZGq23oSy.nC2rPajOfLkFvVFF7vhWK6', 'Riviere', 'Danielle', '+33 9 15 03 23 45'),
(16, 3, NULL, 16, 'bbarthelemy@tele2.fr', '[\"ROLE_USER\"]', '$2y$10$RCx6m/Fe1O8V.IS8nXEMXOng6m1/2srUlURQTop53pVJOsnOXC6ry', 'Maury', 'Jeanne', '0189068032'),
(17, 2, NULL, 17, 'dmorvan@leroux.fr', '[\"ROLE_USER\"]', '$2y$10$KmbfGAsSjB8IW..wwPuZVeL9QkptkwX928SW4bf6ruzPQq6/LeXzS', 'Robert', 'Martin', '02 35 54 39 70'),
(18, 3, NULL, 18, 'garnier.benoit@club-internet.fr', '[\"ROLE_USER\"]', '$2y$10$Uc.qpNnVHuVrtymJOWRnaOO7yr2x7RXiz9h0yVMXmSiIvnln/lyZ2', 'Alves', 'Marie', '01 51 78 42 14'),
(19, 3, NULL, 19, 'martine17@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$7r0q/C/13kLQ5S26keEwO.EoXLI9LOo.IBHEZhRiSDv5kZxWJ8G2m', 'Paul', 'Aurore', '06 98 67 01 35'),
(20, 3, NULL, 20, 'manon.riou@goncalves.com', '[\"ROLE_USER\"]', '$2y$10$hjQeLf0yaj4BY4gskZDpN.yPGnG534soIgpuqAZOkxocWYbtzeOI2', 'Berthelot', 'Adrienne', '+33 8 95 58 97 16'),
(21, 2, NULL, 21, 'diane88@jean.fr', '[\"ROLE_USER\"]', '$2y$10$.xtiH4P1zKeYMmliYFTuNe.B8SAimfOnngf40k6Bu5ZhhQvICGL6W', 'Da Silva', 'Christiane', '+33 (0)7 89 04 25 38'),
(22, 3, NULL, 22, 'vgerard@dbmail.com', '[\"ROLE_USER\"]', '$2y$10$gYb/FZVLvxtEDF00GmPQqOHILZ06eXxiCWfUNPlpPl8qnLpGRHyWS', 'Bodin', 'Sébastien', '01 11 22 08 47'),
(23, 2, NULL, 23, 'hortense.morin@besnard.fr', '[\"ROLE_USER\"]', '$2y$10$wewTMbg.JJheI0JychkhyuLQzMbrKg6uFvFR3bdt76wSrSuOWHWF.', 'Fouquet', 'Gabriel', '0347449206'),
(24, 2, NULL, 24, 'andre99@gonzalez.com', '[\"ROLE_USER\"]', '$2y$10$.c2F/7mKk73qyZvaVWliv.jeTUsKWcWr7bYeInLhxmQdkaNT8fyNa', 'Martineau', 'Émile', '08 99 11 07 06'),
(25, 2, NULL, 25, 'lcourtois@marion.com', '[\"ROLE_USER\"]', '$2y$10$CpyH/gbQXklUpK3rRxrswewDkg95eBUfCqvDyPefosh9NAUgIsGGK', 'Lelievre', 'Thibault', '01 10 03 60 07'),
(26, 3, NULL, 26, 'nicole.letellier@sfr.fr', '[\"ROLE_USER\"]', '$2y$10$5e6b.U2TDNvyoM5vaxfFpOvr1cboDOO2bQzBn.Lj.9KE3qsKdVdcy', 'Gallet', 'Christine', '+33 5 38 79 58 29'),
(27, 3, NULL, 27, 'audrey70@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$x1p3U/TwAHsJPO6T0nGnP.YynVjygTHawsoAyjoYNZFXoj0huuzzW', 'Pottier', 'Franck', '+33 (0)4 54 08 35 20'),
(28, 2, NULL, 28, 'berger.genevieve@desousa.com', '[\"ROLE_USER\"]', '$2y$10$PDQW4qSkmNIdTkef4uETO.PDYuuuBLJ6kD27EXPo26A1iq9VkaqBC', 'Bodin', 'Patrick', '+33 5 16 46 85 17'),
(29, 2, NULL, 29, 'mace.caroline@noos.fr', '[\"ROLE_USER\"]', '$2y$10$nFFK9K/6R82YeWV2bLXVz.n0QfW4y5jHvbdA7KZRp7oV2CxeJ2DNO', 'Le Goff', 'Martin', '06 22 76 16 05'),
(30, 3, NULL, 30, 'luce.gaudin@olivier.fr', '[\"ROLE_USER\"]', '$2y$10$SdtKDwiSWNQle5vpDESrgesBy/lWL6J9oY0h4ydbjvnbDEUXR7.ja', 'Berthelot', 'Laurence', '0432462090'),
(31, 2, NULL, 31, 'william53@laposte.net', '[\"ROLE_USER\"]', '$2y$10$uWlOx3pB8J2uYv412FMMeeL.6tCWTGzUO2LMt0oYl5LeEJEkRlhSG', 'Lopes', 'Claire', '+33 7 60 41 71 87'),
(32, 3, NULL, 32, 'robert.daniel@club-internet.fr', '[\"ROLE_USER\"]', '$2y$10$54qPx5pDZqKF5bFcTaGgd.ZEwcxyWoWmrb4PKILYeT/RjQ1Bv/6gO', 'Guillaume', 'Stéphanie', '06 07 78 03 38'),
(33, 2, NULL, 33, 'jeannine75@noos.fr', '[\"ROLE_USER\"]', '$2y$10$Hy91cMgctcWWiBEsBzZ57uhmFVNqIadvCGvE.C6VLnBah3Ek8iyTK', 'Allain', 'Marthe', '0158130222'),
(34, 3, NULL, 34, 'ehernandez@club-internet.fr', '[\"ROLE_USER\"]', '$2y$10$L9KdyNQaG.vV4XD8zuLPQO8iQQfUCb1tZPcow4YGoaM2Wpr4RR4Dy', 'Rossi', 'Alain', '0569842593'),
(35, 3, NULL, 35, 'brunet.nicole@joly.com', '[\"ROLE_USER\"]', '$2y$10$i4PdPSxiq9g/wrheOPsheO5JDhG4xMm0eIA3wHCkj/oqSJ4FuNAYm', 'Chretien', 'Michel', '0151964229'),
(36, 2, NULL, 36, 'daniel.rene@gomez.fr', '[\"ROLE_USER\"]', '$2y$10$2hKd95vxio49rPDuwwEZieL3j//Ru2EzmPtHKY28AbAVdGzS0s/0e', 'Moulin', 'Capucine', '04 30 53 21 83'),
(37, 2, NULL, 37, 'theodore.bruneau@noos.fr', '[\"ROLE_USER\"]', '$2y$10$MAazYuk0BK8vdhrmM3gy8ebV8cO5AX.z1aLpJ49LVAsmZaV5doSyW', 'Brunel', 'Olivier', '+33 8 08 18 35 57'),
(38, 2, NULL, 38, 'benjamin44@martel.com', '[\"ROLE_USER\"]', '$2y$10$hERu/06uqWtKaWUVv2FmCu.ZD3.J3PIfCDBltIn2DpGbEowWY1/XW', 'Francois', 'Thierry', '01 60 00 39 08'),
(39, 3, NULL, 39, 'timothee.dumas@lefebvre.com', '[\"ROLE_USER\"]', '$2y$10$a6BWeYexBZe19XwUHvAgaOTnC7fX5LTeQNeKhlPDxMTwd1W95UTvi', 'Roux', 'François', '+33 (0)8 21 98 95 84'),
(40, 3, NULL, 40, 'ladam@bourgeois.fr', '[\"ROLE_USER\"]', '$2y$10$8mmPf3AbdwBQEhBEcg3bG.2PHiUwJirvngtN6A9BUXtHvzdY55THG', 'Cordier', 'Roger', '+33 7 58 27 09 41'),
(41, 3, NULL, 41, 'gilles.david@dijoux.fr', '[\"ROLE_USER\"]', '$2y$10$kO95kMWlMOLQSn5hgxNagOw.fVm1dRg8DR7jSpWm0sCVQf23hcXf2', 'Chauvin', 'Renée', '0281676169'),
(42, 2, NULL, 42, 'eseguin@boyer.com', '[\"ROLE_USER\"]', '$2y$10$N9I0F7.onGTm.dwHyNafCORUYFLP1TQrzmZPI918y.wKKF8JZCGPu', 'Collet', 'Franck', '+33 (0)8 99 43 68 96'),
(43, 2, NULL, 43, 'jgodard@yahoo.fr', '[\"ROLE_USER\"]', '$2y$10$N8YU4Raxv1Jbn4Gv9B9n..07xum1Og9sYqnXqB0wAAlGf.dr3mImK', 'Leroy', 'Édouard', '+33 (0)1 13 40 30 87'),
(44, 2, NULL, 44, 'louis.mace@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$Bple5BJ6VjIyzcoXOCdSMe4dWewK1knyKpPqxHIfsocubDIzLmMbW', 'Bouvier', 'Gérard', '0589438597'),
(45, 2, NULL, 45, 'prossi@chauvet.fr', '[\"ROLE_USER\"]', '$2y$10$iMtbp6wTdKfyG6hZ8Ip9P.mW9J7kAMCWWVoGyGuk5pveOgjW30yYu', 'Royer', 'David', '+33 (0)4 51 26 16 53'),
(46, 2, NULL, 46, 'rroyer@samson.com', '[\"ROLE_USER\"]', '$2y$10$9JL16vp/4kcCEynMWPYpfegKJL1wYhj65vKQuoxsIQWlJfK7.07rS', 'Riou', 'Alphonse', '+33 (0)5 23 97 73 73'),
(47, 2, NULL, 47, 'uboyer@gmail.com', '[\"ROLE_USER\"]', '$2y$10$Rg4Uwgt04amKAbCSfzZ25exeZYR/82mOWVZomrirpo.OZwj.IyNmq', 'Leroy', 'Antoinette', '08 12 88 26 04'),
(48, 3, NULL, 48, 'nicole99@sfr.fr', '[\"ROLE_USER\"]', '$2y$10$mZUj37KE.Y2dSAeJXliOlOSP0oYIZ.Nn3sRbAZ8s2hB.CmwjB0B62', 'Marie', 'Louise', '+33 1 44 63 33 05'),
(49, 2, NULL, 49, 'thierry90@yahoo.fr', '[\"ROLE_USER\"]', '$2y$10$d9ha/m6HoLl7.GH/QmqCX..dF/C04fVLdz45rUxpvR86Tr/499Y.W', 'Jourdan', 'Vincent', '01 24 17 54 16'),
(50, 2, NULL, 50, 'edith25@couturier.net', '[\"ROLE_USER\"]', '$2y$10$HKX2tUNcIo2Hacka38QfserQ0OQbTRq6Wdk0Dy1Uta3kUtlAeWP6y', 'Boulanger', 'Pauline', '+33 (0)1 37 46 02 28'),
(51, 2, NULL, 51, 'rodrigues.agathe@laposte.net', '[\"ROLE_USER\"]', '$2y$10$gf44JId5k.6bSyKQNi1G0.7oHA3f0JkUUUaC1YruSc3baaxBVhwlC', 'Deschamps', 'Bertrand', '09 76 16 47 13'),
(52, 3, NULL, 52, 'eugene02@masse.net', '[\"ROLE_USER\"]', '$2y$10$Murh3LDcywD99A6sfcUJK.53KeMnmwdN.23jlHO4eIMqm1u7z5up.', 'Mahe', 'Benoît', '01 14 73 80 06'),
(53, 2, NULL, 53, 'klaine@marie.com', '[\"ROLE_USER\"]', '$2y$10$V7c/R1rS608vAPjJ1hQ1..yqrvIaB2fmV9fPopKTDaR6Z9KHO7CEy', 'Peron', 'Andrée', '0604746957'),
(54, 2, NULL, 54, 'guyon.henri@live.com', '[\"ROLE_USER\"]', '$2y$10$HKNtZyAzu3qQx8WAgtS1x.LnKYZpGIOKKNnL8OgreufpAOhSn4bd.', 'Fernandez', 'David', '08 24 90 73 97'),
(55, 2, NULL, 55, 'elodie00@leger.fr', '[\"ROLE_USER\"]', '$2y$10$89YOA1w2RLCSMxbT6AyZ0ubFSDmfONhNP48szEwHjf.Nc08HCe68y', 'Rousset', 'Constance', '08 93 79 35 56'),
(56, 3, NULL, 56, 'luc40@gmail.com', '[\"ROLE_USER\"]', '$2y$10$/ioJ4A9hwWP8OvL70CYtaenV6I/rW7rOqzXYk9gwIHmha/ISbI8Km', 'Martineau', 'Mathilde', '+33 5 20 30 31 96'),
(57, 2, NULL, 57, 'leduc.louis@yahoo.fr', '[\"ROLE_USER\"]', '$2y$10$EnAcjChWJ12Hk08Hbz4RHusHSWGrkU1RJraClx9i4.V/hXYR9ed8W', 'Schmitt', 'Marc', '+33 (0)9 32 34 45 89'),
(58, 2, NULL, 58, 'ymerle@boucher.com', '[\"ROLE_USER\"]', '$2y$10$P2E3SO8FyZSuczatUFI69uk0CV2gN2jewpNIHItcnl.2wsTDuiqZC', 'Fontaine', 'Jean', '03 63 10 76 45'),
(59, 3, NULL, 59, 'juliette21@hebert.net', '[\"ROLE_USER\"]', '$2y$10$AKHwptoKPERGeBqcmCJAlegu5l5wtWVkdIKfNFth1m6ren6inZEgW', 'Albert', 'Paul', '09 17 06 76 08'),
(60, 3, NULL, 60, 'brun.denise@allard.com', '[\"ROLE_USER\"]', '$2y$10$cWRK4AqKIGZJSVzXvFJkqu8Qh2Tsowkg3sqmTPsqyb8ewc4NVBfsG', 'Maury', 'Benjamin', '+33 (0)1 61 70 47 42'),
(61, 2, NULL, 61, 'ggaillard@orange.fr', '[\"ROLE_USER\"]', '$2y$10$cJvFfaWCjRQpmZirtiY1nu/CCYtbJyryMzk2vGWfJHFWBjg3DcM1K', 'Chevallier', 'Hélène', '0898556942'),
(62, 2, NULL, 62, 'maggie57@reynaud.fr', '[\"ROLE_USER\"]', '$2y$10$Pq1.lt3KXExGkc52qOID5.6Cc7.BtAL8.In7IFUwJykS/nn1zHo32', 'Tessier', 'Antoine', '0897243225'),
(63, 3, NULL, 63, 'adrien50@carlier.fr', '[\"ROLE_USER\"]', '$2y$10$2xp8zsnrCH29mA/aJCW.wOx3329y0eu3ieF0AnyxTd/uVYApnLi5q', 'Lagarde', 'Théophile', '+33 (0)8 92 54 75 70'),
(64, 2, NULL, 64, 'simon.laurent@club-internet.fr', '[\"ROLE_USER\"]', '$2y$10$.frKnxHP/4ojIR7oRvrAK.aa7Wvfj8KOzPhqdfKtMZbsUkfzaRJUa', 'Morin', 'Lucie', '0543812436'),
(65, 3, NULL, 65, 'broussel@bruneau.fr', '[\"ROLE_USER\"]', '$2y$10$rSRSPwPDU/8ElPsV8YPCmO4zGn37MDGQLqRrfnhMTWFlanY8qh2Fu', 'Pichon', 'Adrienne', '+33 (0)3 34 78 90 84'),
(66, 3, NULL, 66, 'guillaume.tanguy@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$mfGHnWwW1B.DNjRIKE.nm.bXhVrXbikFMYRvKC8fjcmFEWXTKXrFm', 'Roger', 'Alphonse', '+33 7 38 72 53 06'),
(67, 3, NULL, 67, 'pboulanger@yahoo.fr', '[\"ROLE_USER\"]', '$2y$10$QPTRhZ/4k1J7sDSZ0GUOAeF/2YaKdf8Mfw5vr/RfXVhTE0W6gUPCG', 'Morin', 'Dominique', '07 74 63 39 98'),
(68, 2, NULL, 68, 'ygonzalez@chevalier.com', '[\"ROLE_USER\"]', '$2y$10$XfjlCCW10FbclX5V4A.E8uYyPopYBcE8wTPdZT3vjPIJl3LvEaSF6', 'Bigot', 'Daniel', '09 12 17 03 09'),
(69, 3, NULL, 69, 'sophie.perrot@live.com', '[\"ROLE_USER\"]', '$2y$10$0c0cHybR1/XXJF0PTp75IOqWnjtXxExHIGxunIGtUuOYeEXz5izie', 'Dupre', 'Julien', '+33 (0)1 20 80 42 85'),
(70, 2, NULL, 70, 'marianne84@free.fr', '[\"ROLE_USER\"]', '$2y$10$odP2m7LKTdQUZZGwLkxo0.FktvcNN2/J93OgYG8NhmFFo59jBSZTu', 'Marques', 'Honoré', '+33 6 80 59 42 75'),
(71, 3, NULL, 71, 'benjamin22@lecoq.com', '[\"ROLE_USER\"]', '$2y$10$Kmmbo5rX5DdLSSBuklokuuSV82iaDMMdJERNKU9ZcJrkGjrVRBmNO', 'Torres', 'Eugène', '+33 2 20 38 50 80'),
(72, 2, NULL, 72, 'aimee07@laposte.net', '[\"ROLE_USER\"]', '$2y$10$0SIICiJMvv/mFxUsOqfHC.V8ckqQeCqtp2HR1sNQ.Jyt23/QvbyWO', 'Germain', 'Adrienne', '05 38 36 95 37'),
(73, 2, NULL, 73, 'etienne.roger@joseph.com', '[\"ROLE_USER\"]', '$2y$10$gqiZF2mR9BV3H84HFqxKZOP9zwPcInCeSechxnjPV83yzPZb4c7Vq', 'Pichon', 'Hortense', '0277815498'),
(74, 3, NULL, 74, 'pereira.therese@fernandes.fr', '[\"ROLE_USER\"]', '$2y$10$msTYcqHHjEy28n.I0m/EvOgYNK2cp7dIWA5pToV.cswrTOoA1QKmG', 'Le Goff', 'Gilles', '03 65 04 74 77'),
(75, 3, NULL, 75, 'qbruneau@jean.org', '[\"ROLE_USER\"]', '$2y$10$3AhDvNiLxLwaR2NFUUg.b.k41JBw0Qg3XspWnY8IwsPpcLMGxJSci', 'Lemaitre', 'Laure', '0643710014'),
(76, 2, NULL, 76, 'meunier.guy@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$Uo6TkEL4U0DBs.6oQZyf..fTTkk74box9dvzH2z3ux8gclRK1xnPi', 'Chauvin', 'Amélie', '+33 5 60 69 20 30'),
(77, 3, NULL, 77, 'lecomte.renee@gmail.com', '[\"ROLE_USER\"]', '$2y$10$/0A6mtzJrjIkI3JlKHG6v.lO998U19FDIRcmktFjCVkF3ovuZ6R.O', 'Lelievre', 'Madeleine', '+33 (0)4 64 28 47 11'),
(78, 3, NULL, 78, 'vidal.margot@guyot.com', '[\"ROLE_USER\"]', '$2y$10$wvrqcuYNcnBoDsCcwbGXqeHXrM76Ozmb582T1gmcIK34ZRvuFg5jq', 'Hebert', 'Julie', '+33 (0)8 01 40 92 90'),
(79, 2, NULL, 79, 'henriette96@dupre.net', '[\"ROLE_USER\"]', '$2y$10$hbrH3.r9Q1n9Y.e8mBfgNOHqZZa0CJpCM.Nx.kzVZW/WXMH85Fqwq', 'Boutin', 'Paul', '+33 (0)1 27 44 10 97'),
(80, 2, NULL, 80, 'marine21@dbmail.com', '[\"ROLE_USER\"]', '$2y$10$OhhSpZi.mswpqd2W/A6m8OMLJyi6nPN/8iJmiSko/JmIEMfAsPOoi', 'Peron', 'Michelle', '0748614697'),
(81, 2, NULL, 81, 'tcarlier@gmail.com', '[\"ROLE_USER\"]', '$2y$10$aVCzTuv/rlSQzpbHLXys0ebgBPzDhu2m61xekG28URwDYCfY90eKK', 'Marques', 'Bertrand', '08 12 14 12 91'),
(82, 2, NULL, 82, 'tristan48@noos.fr', '[\"ROLE_USER\"]', '$2y$10$Q3FajH2PReA5q2AsDWtTwe2.xRub4F/pkw9OrWhw1pf1.ZuAvSvWi', 'Brunel', 'Henriette', '+33 (0)2 88 27 55 03'),
(83, 3, NULL, 83, 'margaret75@hotmail.fr', '[\"ROLE_USER\"]', '$2y$10$FwVEeoyf8UZNppbf8ckW9.s/77N.dPZJemSnP2GUwKROMh9sNncUK', 'Pineau', 'Agnès', '0450060783'),
(84, 2, NULL, 84, 'muller.roger@dbmail.com', '[\"ROLE_USER\"]', '$2y$10$.BkCYbszXrFuORPOcgRXtut4aksH.8BuNTTkvNDCpAMZAsTtdTdzm', 'Blot', 'Luce', '+33 (0)3 31 96 57 40'),
(85, 2, NULL, 85, 'deoliveira.gilles@live.com', '[\"ROLE_USER\"]', '$2y$10$Eqtw.I0Lg.vr9i7vX8gkA.2uVs.tVbcZ66.MGoCuB6iIgrQyDVK4q', 'Dijoux', 'Philippe', '0536154745'),
(86, 3, NULL, 86, 'michelle.laine@robert.org', '[\"ROLE_USER\"]', '$2y$10$59JyGQihujsz1nVsTcOVxez4lmyB9I7sIqe/4JsmfPBtcsnHK.BgW', 'Salmon', 'Denis', '+33 4 92 11 34 33'),
(87, 3, NULL, 87, 'fguillon@laposte.net', '[\"ROLE_USER\"]', '$2y$10$1t8N//HdNp3bz6qPKEYRyuGuchocjA1KmfVcRVvTbBSy/YaACNqga', 'Carre', 'Brigitte', '+33 7 62 78 36 63'),
(88, 3, NULL, 88, 'pierre.brigitte@club-internet.fr', '[\"ROLE_USER\"]', '$2y$10$sIDZgqs1BqsUpX/gfsCOD.m8dJXkqBWcSwNghhgWO6ihN1..mzeHO', 'Julien', 'Robert', '+33 (0)1 99 36 56 08'),
(89, 2, NULL, 89, 'edith66@lecomte.com', '[\"ROLE_USER\"]', '$2y$10$vCsog4BAqH5oJHqPLDoH.eaAw.Xg7EIpDL2Ve9kg6M.b9Detf4Rua', 'Ferrand', 'Caroline', '+33 (0)9 96 56 40 12'),
(90, 2, NULL, 90, 'tgaillard@benard.com', '[\"ROLE_USER\"]', '$2y$10$d.UvLlsvYbCUa6TkerslVuZeL9oHsz69.oxqNgf6o0.ttKDpNS/SW', 'Lejeune', 'Daniel', '+33 6 78 40 44 44'),
(91, 2, NULL, 91, 'lebreton.zoe@gros.com', '[\"ROLE_USER\"]', '$2y$10$iduFq1Znbej9cWP3KXemoufJWKp9zX0A/nc3K5ZdFMS3LSdzqrrr.', 'Ferrand', 'Étienne', '0799110351'),
(92, 2, NULL, 92, 'xdumas@samson.com', '[\"ROLE_USER\"]', '$2y$10$wlv9.G1FFjjz.3lJVsvJM.uvodBnd49HyKjh1JnJTBCanU57ygKrG', 'Launay', 'Nathalie', '+33 1 58 94 18 99'),
(93, 2, NULL, 93, 'laetitia.teixeira@martineau.com', '[\"ROLE_USER\"]', '$2y$10$R8DLspZC0ei4SHXqAuPbwus7JNQc.GwL1Y7k21Jt3EauNoNE3uqW6', 'Clerc', 'Jules', '03 45 78 91 36'),
(94, 3, NULL, 94, 'ollivier.gerard@leclerc.com', '[\"ROLE_USER\"]', '$2y$10$Q7yw2Zt/c/GtHwA8GdhSMuoBuUehuvfyVDQIsNmFoj2Ceykph2uEG', 'Charpentier', 'Philippe', '01 04 93 55 12'),
(95, 2, NULL, 95, 'lucas21@wanadoo.fr', '[\"ROLE_USER\"]', '$2y$10$BmgcoqYqTBFQBCBR3W49VeRE7UyG2cjIJLNCPaH7X2I7JmrbqfPke', 'Neveu', 'Jacques', '+33 2 14 97 72 17'),
(96, 2, NULL, 96, 'francoise.leveque@gilbert.com', '[\"ROLE_USER\"]', '$2y$10$ad4jPfq1zD0Z1x2VKoUj9eRNs8VM0SnvXyynF3SWIldQRzcgN0iI.', 'Imbert', 'Noël', '0356855711'),
(97, 3, NULL, 97, 'leon71@marechal.com', '[\"ROLE_USER\"]', '$2y$10$Li/AqMaCJ.8Kj4w0P1lJougU4LMokziirug/ExOi3VqwqicwIr2f6', 'Masson', 'Amélie', '+33 (0)3 10 16 24 97'),
(98, 2, NULL, 98, 'triou@wanadoo.fr', '[\"ROLE_USER\"]', '$2y$10$RtL./PvjhciL/xxATwwRKeGChRLtQqTYxrmOrc2nrQ1ByWiNMK2o6', 'Thibault', 'Michèle', '05 27 29 63 53'),
(99, 3, NULL, 99, 'picard.edouard@bourgeois.net', '[\"ROLE_USER\"]', '$2y$10$K5d7MInvgpb8fyyQ7cqkNO5JFncBKVLyfJTvzn21/veF28mCaw142', 'Munoz', 'Maurice', '0187289510'),
(100, 2, NULL, 100, 'gregoire.berthelot@samson.com', '[\"ROLE_USER\"]', '$2y$10$tDl98avUdrlqmlYdEJZ5w.4PYXPEcJ8mIbbiX.mMneI7yrwH7KRGu', 'Andre', 'Xavier', '08 95 64 31 02'),
(101, 3, NULL, NULL, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$2y$10$CcocYysBcugUC9adUJsmXe7GPtjVdTjmzZ75awLhRaGuGR6TK5R0.', 'Admin', 'Admin', '0136773747'),
(102, 3, NULL, NULL, 'User0@user.com', '[\"ROLE_USER\"]', '$2y$10$RSqBEFLbJzsD7lCSG5HV5OgaGsdVAVhvyr5kfzN96UEBvssEa4Sfq', 'Name0', 'User0', '+33 (0)6 80 18 41 00'),
(103, 2, NULL, NULL, 'User1@user.com', '[\"ROLE_USER\"]', '$2y$10$YPyj7kAyarqlwr9.kf/xeOjZQViA2hzqWvw/lJxMG69YPQN6TgD26', 'Name1', 'User1', '09 65 20 69 78'),
(104, 3, NULL, NULL, 'User2@user.com', '[\"ROLE_USER\"]', '$2y$10$JZEYZ53aGArtnTBMfv3jKe1GpaKRSsrdJcIPxv/KtHWPcCCOJWqQC', 'Name2', 'User2', '+33 8 98 29 04 25');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD CONSTRAINT `FK_351268BB25F06C53` FOREIGN KEY (`adherent_id`) REFERENCES `sae_frontoffice`.`adherent` (`id`);

--
-- Contraintes pour la table `adhesion`
--
ALTER TABLE `adhesion`
  ADD CONSTRAINT `FK_C50CA65A2534008B` FOREIGN KEY (`structure_id`) REFERENCES `sae_frontoffice`.`structure` (`id`),
  ADD CONSTRAINT `FK_C50CA65A25F06C53` FOREIGN KEY (`adherent_id`) REFERENCES `sae_frontoffice`.`adherent` (`id`),
  ADD CONSTRAINT `FK_C50CA65ABD98EE46` FOREIGN KEY (`type_adhesion_id`) REFERENCES `sae_frontoffice`.`type_adhesion` (`id`);

--
-- Contraintes pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD CONSTRAINT `FK_B2753CB92534008B` FOREIGN KEY (`structure_id`) REFERENCES `sae_frontoffice`.`structure` (`id`);

--
-- Contraintes pour la table `depot`
--
ALTER TABLE `depot`
  ADD CONSTRAINT `FK_47948BBCDD842E46` FOREIGN KEY (`position_id`) REFERENCES `sae_frontoffice`.`gpspoint` (`id`);

--
-- Contraintes pour la table `depot_calendrier`
--
ALTER TABLE `depot_calendrier`
  ADD CONSTRAINT `FK_2E6B0AB58510D4DE` FOREIGN KEY (`depot_id`) REFERENCES `sae_frontoffice`.`depot` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2E6B0AB5FF52FC51` FOREIGN KEY (`calendrier_id`) REFERENCES `sae_frontoffice`.`calendrier` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `FK_F804D3B92534008B` FOREIGN KEY (`structure_id`) REFERENCES `sae_frontoffice`.`structure` (`id`);

--
-- Contraintes pour la table `frequence`
--
ALTER TABLE `frequence`
  ADD CONSTRAINT `FK_327EE45C2534008B` FOREIGN KEY (`structure_id`) REFERENCES `sae_frontoffice`.`structure` (`id`);

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `FK_24CC0DF2F1D74413` FOREIGN KEY (`abonnement_id`) REFERENCES `sae_frontoffice`.`abonnement` (`id`);

--
-- Contraintes pour la table `panier_produit`
--
ALTER TABLE `panier_produit`
  ADD CONSTRAINT `FK_D31F28A6F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `sae_frontoffice`.`produit` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D31F28A6F77D927C` FOREIGN KEY (`panier_id`) REFERENCES `sae_frontoffice`.`panier` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_29A5EC27EC4A74AB` FOREIGN KEY (`unite_id`) REFERENCES `sae_frontoffice`.`unite` (`id`);

--
-- Contraintes pour la table `structure`
--
ALTER TABLE `structure`
  ADD CONSTRAINT `FK_6F0137EADD842E46` FOREIGN KEY (`position_id`) REFERENCES `sae_frontoffice`.`gpspoint` (`id`);

--
-- Contraintes pour la table `tournee`
--
ALTER TABLE `tournee`
  ADD CONSTRAINT `FK_EBF67D7E1B65292` FOREIGN KEY (`employe_id`) REFERENCES `sae_frontoffice`.`employe` (`id`);

--
-- Contraintes pour la table `tournee_depot`
--
ALTER TABLE `tournee_depot`
  ADD CONSTRAINT `FK_FB7C59D58510D4DE` FOREIGN KEY (`depot_id`) REFERENCES `sae_frontoffice`.`depot` (`id`),
  ADD CONSTRAINT `FK_FB7C59D5F661D013` FOREIGN KEY (`tournee_id`) REFERENCES `sae_frontoffice`.`tournee` (`id`);

--
-- Contraintes pour la table `type_adhesion`
--
ALTER TABLE `type_adhesion`
  ADD CONSTRAINT `FK_8F381A62534008B` FOREIGN KEY (`structure_id`) REFERENCES `sae_frontoffice`.`structure` (`id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_1D1C63B31B65292` FOREIGN KEY (`employe_id`) REFERENCES `sae_frontoffice`.`employe` (`id`),
  ADD CONSTRAINT `FK_1D1C63B325F06C53` FOREIGN KEY (`adherent_id`) REFERENCES `sae_frontoffice`.`adherent` (`id`),
  ADD CONSTRAINT `FK_1D1C63B339194ABF` FOREIGN KEY (`civilite_id`) REFERENCES `sae_frontoffice`.`civilite` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
