-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2020 at 01:29 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gestionsanitaire`
--

-- --------------------------------------------------------

--
-- Table structure for table `avantages`
--

CREATE TABLE `avantages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Libelle` varchar(100) NOT NULL,
  `critere` smallint(6) DEFAULT 0,
  `etat` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `carriere`
--

CREATE TABLE `carriere` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Poste_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Debut` date NOT NULL,
  `Fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `etat` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `competence`
--

CREATE TABLE `competence` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `competence_poste`
--

CREATE TABLE `competence_poste` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Poste_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Competence_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Pourcentage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contrat`
--

CREATE TABLE `contrat` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `contrat_file` varchar(50) NOT NULL,
  `Employe_id` smallint(5) UNSIGNED NOT NULL,
  `nbre_jourOuvrable` int(11) NOT NULL,
  `nbre_jourSupplementaire` int(11) DEFAULT NULL,
  `cout_jourSupplementaire` double DEFAULT NULL,
  `type_contrat` smallint(6) NOT NULL,
  `titre_contrat` int(11) DEFAULT NULL,
  `duree` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `demande_conge`
--

CREATE TABLE `demande_conge` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Jours` int(11) NOT NULL,
  `Motif` text DEFAULT NULL,
  `Employe_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Validation_first` smallint(5) UNSIGNED DEFAULT NULL,
  `Validation_second` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_avantages`
--

CREATE TABLE `detail_avantages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED NOT NULL,
  `Avantage_id` smallint(5) UNSIGNED NOT NULL,
  `montant` double DEFAULT NULL,
  `fin` date DEFAULT NULL,
  `debut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_competence`
--

CREATE TABLE `detail_competence` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Competence_id` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_horaire_garde`
--

CREATE TABLE `detail_horaire_garde` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED NOT NULL,
  `Horaire_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_performance`
--

CREATE TABLE `detail_performance` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Performance_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Critere_1` double DEFAULT NULL,
  `Critere_2` double DEFAULT NULL,
  `Critere_3` double DEFAULT NULL,
  `Critere_4` double DEFAULT NULL,
  `Critere_5` double DEFAULT NULL,
  `Critere_6` double DEFAULT NULL,
  `Critere_7` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_poste`
--

CREATE TABLE `detail_poste` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Poste_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Service_id` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_retenu`
--

CREATE TABLE `detail_retenu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED DEFAULT NULL,
  `Retenu_id` smallint(5) UNSIGNED DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_salaire`
--

CREATE TABLE `detail_salaire` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED NOT NULL,
  `Salaire_id` smallint(5) UNSIGNED NOT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dette`
--

CREATE TABLE `dette` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `montant` double NOT NULL,
  `echeance` int(11) NOT NULL,
  `Employe_id` smallint(5) UNSIGNED DEFAULT NULL,
  `creancier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diplome`
--

CREATE TABLE `diplome` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `salaire` double NOT NULL,
  `titrediplome` varchar(250) NOT NULL,
  `indice` double NOT NULL,
  `valeurpoint` double NOT NULL,
  `categorieid` smallint(6) NOT NULL,
  `etat` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `adresse` varchar(150) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `matricule` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `NNI` varchar(20) NOT NULL,
  `NSS` varchar(20) NOT NULL,
  `statut_matrimonial` varchar(20) NOT NULL,
  `enfant` int(11) DEFAULT NULL,
  `ville` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `private_public` int(11) DEFAULT 0,
  `date_enreg` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bq_nom` varchar(50) NOT NULL,
  `bq_numero` varchar(50) NOT NULL,
  `bq_adresse` varchar(50) NOT NULL,
  `bq_ville` varchar(50) NOT NULL,
  `pc_nom` varchar(150) NOT NULL,
  `pc_telephone` varchar(20) NOT NULL,
  `etat` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`id`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `matricule`, `password`, `sexe`, `date_naissance`, `mobile`, `NNI`, `NSS`, `statut_matrimonial`, `enfant`, `ville`, `pays`, `photo`, `private_public`, `date_enreg`, `bq_nom`, `bq_numero`, `bq_adresse`, `bq_ville`, `pc_nom`, `pc_telephone`, `etat`) VALUES
(1, 'KABONDO', 'Jeremie', 'Mutanga - Nord, Gikumgu', '76956035', 'arsene@gmail.com', 'MT0001', 'employe123', 'Masculin', '2019-07-02', '22666633', 'N000323', 'NS343434', 'CÃ©libataire', 0, 'Bujumbura', 'Burundi', '', 0, '2020-11-29 16:58:04', 'BCB', '2333-23-43443-434', 'Bujumbura Mairi', 'Bujumbura', 'KABONDO', '0823939081', 0),
(2, 'KILINDO', 'Vainqueur', 'Bukavu, Karhale - ISDR', '75324563', 'vainko@gmail.com', '', 'employe123', 'Masculin', '2020-11-29', '22444555', 'NN003232', 'NSS3243434', 'CÃ©libataire', 0, 'Bukavu', 'RD Congo', '', 0, '2020-11-29 17:05:23', 'Bcc', '2333-44343-445', 'Labotte, No 140', 'Bukavu', 'Bulambo', '0974354678', 0),
(3, 'KILINDO', 'Vainqueur', 'Bukavu, Karhale - ISDR', '75324563', 'vainko@gmail.com', '', 'employe123', 'Masculin', '2020-11-29', '22444555', 'NN003232', 'NSS3243434', 'CÃ©libataire', 0, 'Bukavu', 'RD Congo', '', 0, '2020-11-29 17:07:01', 'Bcc', '2333-44343-445', 'Labotte, No 140', 'Bukavu', 'Bulambo', '0974354678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employe_superviseurs`
--

CREATE TABLE `employe_superviseurs` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED NOT NULL,
  `Superviseur_id` smallint(5) UNSIGNED NOT NULL,
  `Debut` date DEFAULT NULL,
  `Fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `horaire_garde`
--

CREATE TABLE `horaire_garde` (
  `id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paiement_dette`
--

CREATE TABLE `paiement_dette` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `montant` double NOT NULL,
  `Dette_id` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parametrage_retenu`
--

CREATE TABLE `parametrage_retenu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Retenu_id` smallint(5) UNSIGNED DEFAULT NULL,
  `ecart_debut` double NOT NULL,
  `ecart_fin` double DEFAULT NULL,
  `pourcentage` double DEFAULT NULL,
  `debut` date DEFAULT NULL,
  `fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poste`
--

CREATE TABLE `poste` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `presence`
--

CREATE TABLE `presence` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Employe_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `retenu`
--

CREATE TABLE `retenu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `libelle` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `Libelle` varchar(150) NOT NULL,
  `Departement_id` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `type_conge`
--

CREATE TABLE `type_conge` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `libelle` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

CREATE TABLE `t_users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fonction` varchar(50) NOT NULL,
  `etat` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`id`, `username`, `password`, `fonction`, `etat`) VALUES
(1, 'admin', 'admin', 'Administrateur', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avantages`
--
ALTER TABLE `avantages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carriere`
--
ALTER TABLE `carriere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Poste_id` (`Poste_id`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competence_poste`
--
ALTER TABLE `competence_poste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Poste_id` (`Poste_id`),
  ADD KEY `Competence_id` (`Competence_id`);

--
-- Indexes for table `contrat`
--
ALTER TABLE `contrat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`);

--
-- Indexes for table `demande_conge`
--
ALTER TABLE `demande_conge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Validation_first` (`Validation_first`),
  ADD KEY `Validation_second` (`Validation_second`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_avantages`
--
ALTER TABLE `detail_avantages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Avantage_id` (`Avantage_id`);

--
-- Indexes for table `detail_competence`
--
ALTER TABLE `detail_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Competence_id` (`Competence_id`),
  ADD KEY `Employe_id` (`Employe_id`);

--
-- Indexes for table `detail_horaire_garde`
--
ALTER TABLE `detail_horaire_garde`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Horaire_id` (`Horaire_id`);

--
-- Indexes for table `detail_performance`
--
ALTER TABLE `detail_performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Performance_id` (`Performance_id`),
  ADD KEY `Employe_id` (`Employe_id`);

--
-- Indexes for table `detail_poste`
--
ALTER TABLE `detail_poste`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Service_id` (`Service_id`),
  ADD KEY `Poste_id` (`Poste_id`);

--
-- Indexes for table `detail_retenu`
--
ALTER TABLE `detail_retenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Retenu_id` (`Retenu_id`);

--
-- Indexes for table `detail_salaire`
--
ALTER TABLE `detail_salaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Salaire_id` (`Salaire_id`);

--
-- Indexes for table `dette`
--
ALTER TABLE `dette`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`);

--
-- Indexes for table `diplome`
--
ALTER TABLE `diplome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employe_superviseurs`
--
ALTER TABLE `employe_superviseurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`),
  ADD KEY `Superviseur_id` (`Superviseur_id`);

--
-- Indexes for table `horaire_garde`
--
ALTER TABLE `horaire_garde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paiement_dette`
--
ALTER TABLE `paiement_dette`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Dette_id` (`Dette_id`);

--
-- Indexes for table `parametrage_retenu`
--
ALTER TABLE `parametrage_retenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Retenu_id` (`Retenu_id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poste`
--
ALTER TABLE `poste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Employe_id` (`Employe_id`);

--
-- Indexes for table `retenu`
--
ALTER TABLE `retenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Departement_id` (`Departement_id`);

--
-- Indexes for table `type_conge`
--
ALTER TABLE `type_conge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avantages`
--
ALTER TABLE `avantages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carriere`
--
ALTER TABLE `carriere`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competence`
--
ALTER TABLE `competence`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competence_poste`
--
ALTER TABLE `competence_poste`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contrat`
--
ALTER TABLE `contrat`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `demande_conge`
--
ALTER TABLE `demande_conge`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_avantages`
--
ALTER TABLE `detail_avantages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_competence`
--
ALTER TABLE `detail_competence`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_horaire_garde`
--
ALTER TABLE `detail_horaire_garde`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_performance`
--
ALTER TABLE `detail_performance`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_poste`
--
ALTER TABLE `detail_poste`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_retenu`
--
ALTER TABLE `detail_retenu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_salaire`
--
ALTER TABLE `detail_salaire`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dette`
--
ALTER TABLE `dette`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diplome`
--
ALTER TABLE `diplome`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employe_superviseurs`
--
ALTER TABLE `employe_superviseurs`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horaire_garde`
--
ALTER TABLE `horaire_garde`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paiement_dette`
--
ALTER TABLE `paiement_dette`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parametrage_retenu`
--
ALTER TABLE `parametrage_retenu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poste`
--
ALTER TABLE `poste`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presence`
--
ALTER TABLE `presence`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retenu`
--
ALTER TABLE `retenu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_conge`
--
ALTER TABLE `type_conge`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carriere`
--
ALTER TABLE `carriere`
  ADD CONSTRAINT `carriere_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `carriere_ibfk_2` FOREIGN KEY (`Poste_id`) REFERENCES `poste` (`id`);

--
-- Constraints for table `competence_poste`
--
ALTER TABLE `competence_poste`
  ADD CONSTRAINT `competence_poste_ibfk_1` FOREIGN KEY (`Poste_id`) REFERENCES `poste` (`id`),
  ADD CONSTRAINT `competence_poste_ibfk_2` FOREIGN KEY (`Competence_id`) REFERENCES `competence` (`id`);

--
-- Constraints for table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `contrat_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `demande_conge`
--
ALTER TABLE `demande_conge`
  ADD CONSTRAINT `demande_conge_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `demande_conge_ibfk_2` FOREIGN KEY (`Validation_first`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `demande_conge_ibfk_3` FOREIGN KEY (`Validation_second`) REFERENCES `employe` (`id`);

--
-- Constraints for table `detail_avantages`
--
ALTER TABLE `detail_avantages`
  ADD CONSTRAINT `detail_avantages_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `detail_avantages_ibfk_2` FOREIGN KEY (`Avantage_id`) REFERENCES `avantages` (`id`);

--
-- Constraints for table `detail_competence`
--
ALTER TABLE `detail_competence`
  ADD CONSTRAINT `detail_competence_ibfk_1` FOREIGN KEY (`Competence_id`) REFERENCES `competence` (`id`),
  ADD CONSTRAINT `detail_competence_ibfk_2` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `detail_horaire_garde`
--
ALTER TABLE `detail_horaire_garde`
  ADD CONSTRAINT `detail_horaire_garde_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `detail_horaire_garde_ibfk_2` FOREIGN KEY (`Horaire_id`) REFERENCES `horaire_garde` (`id`);

--
-- Constraints for table `detail_performance`
--
ALTER TABLE `detail_performance`
  ADD CONSTRAINT `detail_performance_ibfk_1` FOREIGN KEY (`Performance_id`) REFERENCES `performance` (`id`),
  ADD CONSTRAINT `detail_performance_ibfk_2` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `detail_poste`
--
ALTER TABLE `detail_poste`
  ADD CONSTRAINT `detail_poste_ibfk_1` FOREIGN KEY (`Service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `detail_poste_ibfk_2` FOREIGN KEY (`Poste_id`) REFERENCES `poste` (`id`);

--
-- Constraints for table `detail_retenu`
--
ALTER TABLE `detail_retenu`
  ADD CONSTRAINT `detail_retenu_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `detail_retenu_ibfk_2` FOREIGN KEY (`Retenu_id`) REFERENCES `retenu` (`id`);

--
-- Constraints for table `detail_salaire`
--
ALTER TABLE `detail_salaire`
  ADD CONSTRAINT `detail_salaire_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `detail_salaire_ibfk_2` FOREIGN KEY (`Salaire_id`) REFERENCES `diplome` (`id`);

--
-- Constraints for table `dette`
--
ALTER TABLE `dette`
  ADD CONSTRAINT `dette_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `employe_superviseurs`
--
ALTER TABLE `employe_superviseurs`
  ADD CONSTRAINT `employe_superviseurs_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`),
  ADD CONSTRAINT `employe_superviseurs_ibfk_2` FOREIGN KEY (`Superviseur_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `paiement_dette`
--
ALTER TABLE `paiement_dette`
  ADD CONSTRAINT `paiement_dette_ibfk_1` FOREIGN KEY (`Dette_id`) REFERENCES `dette` (`id`);

--
-- Constraints for table `parametrage_retenu`
--
ALTER TABLE `parametrage_retenu`
  ADD CONSTRAINT `parametrage_retenu_ibfk_1` FOREIGN KEY (`Retenu_id`) REFERENCES `retenu` (`id`);

--
-- Constraints for table `presence`
--
ALTER TABLE `presence`
  ADD CONSTRAINT `presence_ibfk_1` FOREIGN KEY (`Employe_id`) REFERENCES `employe` (`id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`Departement_id`) REFERENCES `departement` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
