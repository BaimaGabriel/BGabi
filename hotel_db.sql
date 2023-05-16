-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 29 avr. 2023 à 11:33
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotel_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `idadministrateur` int(3) NOT NULL,
  `motdepass` varchar(300) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) DEFAULT NULL,
  `civilite` enum('f','m') DEFAULT NULL,
  `nationalite` varchar(250) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `contact` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`idadministrateur`, `motdepass`, `nom`, `prenom`, `civilite`, `nationalite`, `adresse`, `contact`) VALUES
(1, 'Prisca123', 'ASTA epse OWONA', '', 'f', 'CAMEROUNAISE', 'BERTOUA', 2147483647);

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `idchambre` int(3) NOT NULL,
  `numchambre` int(5) NOT NULL,
  `prix_s` int(10) NOT NULL,
  `prix_n` int(10) NOT NULL,
  `typechambre` varchar(255) NOT NULL,
  `statut` enum('reserver','non reserver') DEFAULT 'non reserver'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`idchambre`, `numchambre`, `prix_s`, `prix_n`, `typechambre`, `statut`) VALUES
(1, 210, 3000, 5000, 'simple', NULL),
(2, 211, 3000, 5000, 'simple', NULL),
(3, 212, 3000, 5000, 'simple', NULL),
(4, 213, 3000, 5000, 'simple', NULL),
(6, 214, 3000, 5000, 'simple', NULL),
(7, 215, 3000, 5000, 'simple', NULL),
(8, 315, 5000, 10000, 'climatise', NULL),
(9, 115, 3000, 5000, 'simple', NULL),
(10, 111, 3000, 5000, 'simple', NULL),
(11, 112, 3000, 5000, 'simple', NULL),
(12, 310, 3000, 5000, 'simple', NULL),
(13, 314, 4000, 8000, 'ventilise', NULL),
(14, 313, 4000, 8000, 'ventilise', NULL),
(15, 312, 4000, 8000, 'ventilise', NULL),
(16, 110, 4000, 8000, 'ventilise', NULL),
(17, 113, 4000, 8000, 'ventilise', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` int(3) NOT NULL,
  `ncni` int(20) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) DEFAULT NULL,
  `civilite` enum('f','m') DEFAULT NULL,
  `nationalite` varchar(250) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `profession` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `ncni`, `nom`, `prenom`, `civilite`, `nationalite`, `adresse`, `contact`, `profession`) VALUES
(1, 123658958, 'adama', 'seraphine', 'f', 'CAMEROUNAISE', 'YAOUNDE', '00237656557755', 'avocat'),
(2, 171298643, 'EBENEZER', 'LUC', 'm', 'CAMEROUNAISE', 'YAOUNDE', '00237675597755', 'professeur'),
(3, 765589321, 'yana', 'constant', 'm', 'CAMEROUNAISE', 'YAGOUA', '00237685097555', 'ingenieur '),
(4, 123845060, 'NTALEH', 'MODESTE', 'm', 'CAMEROUNAISE', 'BUEA', '00237655714122', 'styliste'),
(5, 154321980, 'NAOUDAI', 'SEVERIN', 'm', 'CAMEROUNAISE', 'NGAOUNDERE', '00237697397166', 'inspecteur des impots'),
(8, 765932980, 'EDONG ', 'DORINE', 'f', 'CAMEROUNAISE', 'REINE(FRANCE)', '0033694033761\r\n', 'aide soignante'),
(9, 2147483647, 'tchouga ', 'leila', 'f', 'francaise', 'REINE(FRANCE)', '00336548943\r\n ', 'ingenieur');

-- --------------------------------------------------------

--
-- Structure de la table `listeattente`
--

CREATE TABLE `listeattente` (
  `id` int(3) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `prix` int(10) NOT NULL,
  `idclient` int(3) DEFAULT NULL,
  `numchambre` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `receptioniste`
--

CREATE TABLE `receptioniste` (
  `idreceptioniste` int(3) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) DEFAULT NULL,
  `civilite` enum('f','m') DEFAULT NULL,
  `nationalite` varchar(250) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `contact` int(15) NOT NULL,
  `motdepass` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `receptioniste`
--

INSERT INTO `receptioniste` (`idreceptioniste`, `nom`, `prenom`, `civilite`, `nationalite`, `adresse`, `contact`, `motdepass`) VALUES
(1, 'NDONG EFOUA', 'LOIC DANIEL', 'm', 'CAMEROUNAISE', 'BERTOUA', 2147483647, 'Dani0123'),
(3, 'OWONA', 'GHISLAIN AVANY', 'm', 'CAMEROUNAISE', 'BERTOUA', 2147483647, 'Owona123'),
(4, 'OWONA', 'VERONIQUE', 'f', 'CAMEROUNAISE', 'BERTOUA', 2147483647, 'Vero123');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `idreservation` int(3) NOT NULL,
  `numchambre` int(5) DEFAULT NULL,
  `idclient` int(3) DEFAULT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `PRIX` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`idreservation`, `numchambre`, `idclient`, `datedebut`, `datefin`, `PRIX`) VALUES
(1, 113, 1, '2023-03-25', '2023-04-20', 24000),
(2, 315, 4, '2023-03-19', '2023-04-10', 80000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`idchambre`),
  ADD UNIQUE KEY `numchambre` (`numchambre`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`),
  ADD UNIQUE KEY `ncni` (`ncni`);

--
-- Index pour la table `listeattente`
--
ALTER TABLE `listeattente`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `receptioniste`
--
ALTER TABLE `receptioniste`
  ADD PRIMARY KEY (`idreceptioniste`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idreservation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `idchambre` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `listeattente`
--
ALTER TABLE `listeattente`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `receptioniste`
--
ALTER TABLE `receptioniste`
  MODIFY `idreceptioniste` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idreservation` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
