-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 14:25
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(50) DEFAULT NULL,
  `nom_image` varchar(50) DEFAULT NULL,
  `historique` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`) VALUES
(1, 'Linus Torvalds', 'Linus_Torvalds.jpg', 'Linus Torwalds est le créateur du système d’exploitation Linux, la communauté du manchot. La popularité de son invention a d’ailleurs été presque accidentelle. Étant étudiant, il trouvait que l’émulateur de son ordinateur était trop lent. Alors il a commencé à en écrire un à lui, et à la suite d’une fausse manipulation, c’est tout le système d’exploitation d’origine qu’il a supprimé de son ordinateur. Bien obligé de le remplacer, il développa le sien en entier, puis le mit en partage gratuitement dans la communauté. Ainsi Linux a rapidement gagné en popularité et en stabilité, pour devenir un système d’exploitation concurrent de celui de Windows.'),
(2, 'Steve Jobs', 'steve-jobs.jpg', 'Steve Jobs et Stephen Wozniak étaient justement de ces amateurs qui cherchaient un modèle économique pour les ordinateurs personnels. En 1976, ils fondent la société Apple Computer pour distribuer l’Apple I qu’avait conçu Wozniak et qu’il assemblait dans le garage de Jobs (ah les garages !). L’Apple I fut suivi de l’Apple II, mais l’étape suivante la plus importante fut la création du Macintosh qui reprenait des idées développées par Xerox (les photocopieurs) et que que Jobs avait pu voir lors d’une visite. Les chercheurs de Xerox avaient du talent pour inventer un tas de choses, mais leurs patrons avaient du mal à vendre quelque chose qui ne ressemblait pas à un photocopieur ! Au contraire, Jobs ne s’arrêtait pas à ses détails, et il comprit vite qu’un Macintosh plus une imprimante faisaient un excellent poste de travail, d’où la création de l’imprimante laser LaserWriter. C’était le début d’une histoire assez mouvementée, où Jobs est proprement viré de chez Apple en 1985, y revient 12 ans après, pour lancer les produits mythiques que l’on connait, l’iPod, l’iPhone, l’iPad qui ont en commun de ne pas être que des ordinateurs, de former un écosystème, et de renouveler les modèles économiques des objets électroniques et de leurs contenus.'),
(3, 'Rasmus Lerdof', 'rasmuslerdof.jpg', 'Rasmus Lerdorf, né le 22 novembre 1968 à Qeqertarsuaq au Groenland, est un programmeur groenlandais et canadien principalement connu pour être l\'auteur de la première version du langage de programmation PHP.'),
(4, 'Roberta Williams', 'RobertaWilliams.jpg', 'Jeune fille Roberta Williams est connue pour être à l\'origine du jeu vidéo Mystery House (1979), le premier jeu d\'aventure graphique, dont le succès fut tel qu\'elle co-créa en 1980 l\'entreprise phare du secteur, Sierra On-Line. On lui doit de nombreux autres classiques du jeu d\'aventure comme The Wizard and the Princess, les King\'s Quest, Time Zone ou encore Black Cauldron et Dark Crystal.'),
(5, 'Margaret Hamilton', 'MargaretHamilton.jpg', 'L\'homme n\'aurait jamais marché sur la lune sans… une femme. Et son code informatique, qualifié par les experts de la mission de «si bon» qu\'on lui doit le succès de la mission Apollo 11. Elle avait ainsi anticipé certaines pannes des composants électroniques du vaisseau et fait en sorte que sa commande reste fonctionnelle lors de la phase d\'alunissage, sauvant ainsi la mission. À l\'époque, la partie de développement logiciel (software) était souvent reléguée aux femmes car jugée moins importante.'),
(6, 'Tim Berners Lee', 'TimBernersLee.jpg', 'C’est en mai 1990 qu’il baptise son réseau, World Wide Web, la Toile qui couvre le monde. Une équipe va ensuite se former autour de lui pour améliorer cette proposition et développer les trois principales technologies du Web : les adresses web, le protocole de transfert hypertexte (le http), et le langage de balisage hypertexte (le HTML). Les premiers navigateurs étaient trop puissants pour que tous les ordinateurs les supportent, mais peu à peu les interfaces ont été améliorées. Et le Web scientifique s’est peu à peu ouvert pour devenir l’outil grand-public que nous connaissons aujourd’hui.'),
(7, 'James Gosling', 'JamesGosling.jpg', 'Il est le concepteur du langage de programmation Java en 1994 et du système de fenêtrage NeWS. Il a créé l\'architecture initiale du langage Java et implémenté son compilateur original et sa première machine virtuelle. Il est également l\'auteur de Gosling Emacs, la première version d\'Emacs pour système Unix.  Employé de Sun Microsystems depuis 1984, il a remis sa démission le 2 avril 20101, à la suite du rachat de Sun par Oracle Corporation. Il a indiqué vouloir prendre de longues vacances avant de chercher un autre poste. En mars 2011, il est engagé par Google2, qu\'il quitte en août de la même année pour intégrer Liquid Robotics3.'),
(8, 'Lawrence Gordon Tesler', 'LawrenceGordonTesler.jpg', 'Lawrence Gordon Tesler, dit Larry Tesler, né le 24 avril 1945 à New York et mort le 16 février 2020 à Portola Valley en Californie, est un informaticien américain, Diplômé de Stanford en 1965, il travaille essentiellement sur la conception d\'interface utilisateur.  Débauché de chez Xerox en 1980, il passe dix-sept ans chez Apple où il développe la fonctionnalité du copier-coller, des manipulations informatiques utilisées pour reproduire ou déplacer des données (texte, image, fichier, etc.) facilement depuis une source vers une destination5. Il poursuit sa carrière d\'abord chez Amazon puis chez Yahoo!.  Il meurt le 16 février 2020 à Portola Valley (Californie) à l\'âge de 74 ans.'),
(9, 'Douglas Engelbart', 'DouglasEngelbart.jpg', 'Douglas Engelbart en 1968 fait la démonstration d’un outil très rudimentaire : une petite boite en bois avec des molettes sur les côtés. Celle-ci permettait de commander une flèche sur l’écran et de cliquer sur des commandes proposées à l’écran. Cette démonstration, les informaticiens disent « démo », est parfois appelée « La mère de toutes les démos » car Engelbart y montrait tous les éléments d’un ordinateur moderne : l’écran-bureau, les fenêtres, l’hyper-texte, le courrier électronique, et le fonctionnement en réseau !');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
