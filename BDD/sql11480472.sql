-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 25 mars 2022 à 16:43
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sql11480472`
--

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_commentmeta`
--

CREATE TABLE `cv_wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_comments`
--

CREATE TABLE `cv_wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_comments`
--

INSERT INTO `cv_wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-03-14 10:51:45', '2022-03-14 09:51:45', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_competence`
--

CREATE TABLE `cv_wp_custom_competence` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `competences` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_competences`
--

CREATE TABLE `cv_wp_custom_competences` (
  `id` int(11) NOT NULL,
  `competence` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_cv`
--

CREATE TABLE `cv_wp_custom_cv` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `verif` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cv_wp_custom_cv`
--

INSERT INTO `cv_wp_custom_cv` (`id`, `id_user`, `nom`, `date`, `verif`) VALUES
(1, 50, 'mouchon', '2022-03-25 00:00:00', 'pas_vu'),
(4, 51, 'gachi', '2022-03-25 00:00:00', 'pas_vu'),
(7, 54, 'Hébert', '2022-03-25 00:00:00', 'pas_vu'),
(8, 55, 'qzdqzd', '2022-03-25 00:00:00', 'pas_vu');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_exp-pro`
--

CREATE TABLE `cv_wp_custom_exp-pro` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `entreprise` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cv_wp_custom_exp-pro`
--

INSERT INTO `cv_wp_custom_exp-pro` (`id`, `id_user`, `date_debut`, `date_fin`, `entreprise`, `lieu`, `poste`, `description`) VALUES
(4, 50, '2021-10-01 00:00:00', '2021-11-01 00:00:00', 'altameos Multimedia', 'Evreux', 'développeur web', 'stage de développement web. Mise en ligne d\\\'une partie administrative.'),
(5, 51, '2016-02-06 00:00:00', '2017-02-06 00:00:00', 'Apple', 'Rouen', 'développeur web', 'Stage'),
(6, 51, '2018-06-25 00:00:00', '2018-12-25 00:00:00', 'Intermarché', 'rouen', 'caissier', 'chef de caisse'),
(9, 54, '2021-09-18 00:00:00', '2024-09-18 00:00:00', 'NFS', 'Rouen', 'développeur web', 'du code'),
(10, 54, '2020-02-02 00:00:00', '2021-03-02 00:00:00', 'Leclerc', 'Elbeuf', 'Caissier', 'Nourriture'),
(11, 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 'développeur web', '');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_formation`
--

CREATE TABLE `cv_wp_custom_formation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `etablissement` varchar(100) NOT NULL,
  `diplome` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `titre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cv_wp_custom_formation`
--

INSERT INTO `cv_wp_custom_formation` (`id`, `id_user`, `date_debut`, `date_fin`, `etablissement`, `diplome`, `lieu`, `titre`) VALUES
(3, 50, '2021-05-01 00:00:00', '2021-11-19 00:00:00', 'ESCCI', 'BTS', 'Evreux', 'développeur web et web mobile'),
(4, 51, '2021-11-18 00:00:00', '2024-09-25 00:00:00', 'Need for school', 'BTS', 'Rouen', 'développeur web et web mobile'),
(7, 54, '2021-02-02 00:00:00', '2022-02-02 00:00:00', 'NFS', 'BTS', 'Rouen', 'développeur web et web mobile'),
(8, 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'BEP', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_hobbies`
--

CREATE TABLE `cv_wp_custom_hobbies` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `hobbies` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_info_perso`
--

CREATE TABLE `cv_wp_custom_info_perso` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_de_naissance` datetime NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `permis` varchar(255) NOT NULL,
  `addresse_postale` varchar(255) NOT NULL,
  `competences` varchar(255) NOT NULL,
  `langues` varchar(255) NOT NULL,
  `hobbies` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cv_wp_custom_info_perso`
--

INSERT INTO `cv_wp_custom_info_perso` (`id`, `id_user`, `nom`, `prenom`, `email`, `date_de_naissance`, `telephone`, `permis`, `addresse_postale`, `competences`, `langues`, `hobbies`) VALUES
(2, 50, 'mouchon', 'alexis', 'alexismouchon09@gmail.com', '2001-04-08 11:53:57', '0777785521', 'permis A; permis B', '63 Rue Du Hameau Des Brouettes', 'HTML; CSS; React; Node JS; Mysql; JavaScript', 'Français; Anglais', 'Jeux vidéo; Séries'),
(4, 51, 'gachi', 'Selim', 'selimgachi@gmail.com', '1995-08-03 00:00:00', '0712982901', 'permis A; Permis B', '56 rue de la porte, 76100 Rouen', 'HTML; CSS; PHP; SQL; JavaScript', 'Français; Anglais; espagnol; Russe', 'Jeux vidéo; cinéma; lecture; série'),
(6, 54, 'Hébert', 'Maxime', 'maxime.76.hebert@gmail.com', '1995-10-03 00:00:00', '0656789876', 'Permis A; Permis B', 'Rouen', 'HTML; CSS; JS', 'Anglais', 'Cinéma'),
(7, 55, 'qzdqzd', 'qzdqzd', 'qzdqzdqzd@ff.fr', '2222-02-22 00:00:00', 'qzdqzd', 'permis A; permis Z; dqdzd; ; ; ', 'qzdqzdqzd', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_langue`
--

CREATE TABLE `cv_wp_custom_langue` (
  `id` int(11) NOT NULL,
  `langues` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_langues`
--

CREATE TABLE `cv_wp_custom_langues` (
  `id` int(11) NOT NULL,
  `langue` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_permis`
--

CREATE TABLE `cv_wp_custom_permis` (
  `id` int(11) NOT NULL,
  `permis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_custom_users`
--

CREATE TABLE `cv_wp_custom_users` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cv_wp_custom_users`
--

INSERT INTO `cv_wp_custom_users` (`id`, `nom`, `prenom`, `email`, `password`, `photo`, `role`) VALUES
(49, 'Bertolucci', 'Menfredo', 'bertolucci@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$M2ZYZ3NMd1I3ZktieExLdA$JddxXRODVZ7Q28WFKgv4EEsEieS/Bh+3Q284QSommEA', '/profil_pic/avatar_49.png', 'role_ADMIN'),
(50, 'mouchon', 'alexis', 'alexismouchon09@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$YmtESVVBVzRJMkJoSUJqeg$UZfnlnFd0OAhAHkZ1gHz+uYg1O2oQ7T+LcbySUrpPhY', '/profil_pic/avatar_50.png', 'role_USER'),
(51, 'Gachi', 'Selim', 'selimgachi@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$cDFKVVdJTlBnYVpES2VudQ$xXCfxfpSIn/5yoaHfhX0QKLybu6Rhu4YYipx+GwUiVM', '/profil_pic/avatar_51.png', 'role_USER'),
(52, 'Florent', 'Batiste', 'batiste@florent.fr', '$argon2i$v=19$m=65536,t=4,p=1$NTQyc2V4cmFIOVFQeC5Gbg$8INOQtW8QNaPvEKePW379pVyFb1NBhU5b+hZOSilW2I', '/profil_pic/avatar_52.png', 'role_USER'),
(54, 'Hébert', 'Maxime', 'maxime.76.hebert@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$TFp6bXZacXBUdWljc0o1Mg$5R8KrG3Mb3gUIcngfo9SX00B2kzUh8b6Nwrxf7S+54A', '/profil_pic/avatar_54.png', 'role_USER'),
(55, 'celestin', 'celestin', 'celestin@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$djd0ZUp6eDZERm5QUTZkTQ$nvhvmGMcVldWVMHryWbFWMO+hUYneTT/iqkU7LJEF8M', '/profil_pic/avatar_55.png', 'role_USER');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_links`
--

CREATE TABLE `cv_wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_options`
--

CREATE TABLE `cv_wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_options`
--

INSERT INTO `cv_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/WP/CV_tech', 'yes'),
(2, 'home', 'http://localhost/WP/CV_tech', 'yes'),
(3, 'blogname', 'cv_tech', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexismouchon09@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=43&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'theme_cvtech', 'yes'),
(41, 'stylesheet', 'theme_cvtech', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:21:\"mailin/sendinblue.php\";a:2:{i:0;s:11:\"SIB_Manager\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '43', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1662803505', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'cv_wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1648223505;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1648245105;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1648288305;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648288316;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648288317;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648547505;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647252407;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:32:\"La vérification SSL a échoué.\";}}', 'yes'),
(147, 'can_compress_scripts', '1', 'no'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(163, 'current_theme', 'theme_cvtech', 'yes'),
(164, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647947612;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(167, 'theme_mods_theme_cvtech', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647947594;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(182, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":6,\"critical\":2}', 'yes'),
(217, 'category_children', 'a:0:{}', 'yes'),
(311, 'recently_activated', 'a:0:{}', 'yes'),
(401, 'sib_main_option', 'a:0:{}', 'yes'),
(402, 'sib_home_option', 'a:2:{s:14:\"activate_email\";s:2:\"no\";s:11:\"activate_ma\";s:2:\"no\";}', 'yes'),
(403, 'sib_token_store', 'a:0:{}', 'yes'),
(404, 'sib_use_apiv2', '1', 'yes'),
(640, 'recovery_mode_email_last_sent', '1647858250', 'yes'),
(1954, '_site_transient_timeout_browser_2eaaab5f214dc1a66290388536e53c54', '1648456352', 'no'),
(1955, '_site_transient_browser_2eaaab5f214dc1a66290388536e53c54', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.74\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1970, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(2035, '_site_transient_timeout_php_check_bbe0b0d516d9a70a0e1aa1834ea07179', '1648463909', 'no'),
(2036, '_site_transient_php_check_bbe0b0d516d9a70a0e1aa1834ea07179', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2494, '_site_transient_timeout_browser_80d5acab83bf6c5c284a7b1402425c61', '1648548024', 'no'),
(2495, '_site_transient_browser_80d5acab83bf6c5c284a7b1402425c61', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.74\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2496, '_site_transient_timeout_php_check_fada79097c18d933243b7f5826b158f4', '1648548024', 'no'),
(2497, '_site_transient_php_check_fada79097c18d933243b7f5826b158f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2554, '_site_transient_timeout_browser_787b0918bc8fdb40e5240f418ea60b48', '1648550081', 'no'),
(2555, '_site_transient_browser_787b0918bc8fdb40e5240f418ea60b48', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.74\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(2727, '_site_transient_timeout_php_check_4de7e9af3f748ee5158089c9fe028235', '1648559884', 'no'),
(2728, '_site_transient_php_check_4de7e9af3f748ee5158089c9fe028235', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(3532, '_site_transient_timeout_browser_a37de56df4eb013c98c447b3b0967110', '1648652176', 'no'),
(3533, '_site_transient_browser_a37de56df4eb013c98c447b3b0967110', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.82\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(3534, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1648652177', 'no'),
(3535, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4346, '_site_transient_timeout_theme_roots', '1648203812', 'no'),
(4347, '_site_transient_theme_roots', 'a:2:{s:12:\"theme_cvtech\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(4348, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.9.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:3:\"5.9\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-rollback-0.zip\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:3:\"5.9\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1648202013;s:15:\"version_checked\";s:3:\"5.9\";s:12:\"translations\";a:0:{}}', 'no'),
(4349, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1648202013;s:7:\"checked\";a:2:{s:12:\"theme_cvtech\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.9\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.9\";s:7:\"updated\";s:19:\"2021-01-10 22:30:31\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.9/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(4350, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1648202013;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(4410, '_site_transient_timeout_available_translations', '1648217905', 'no');
INSERT INTO `cv_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4411, '_site_transient_available_translations', 'a:128:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 21:35:31\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-13 09:26:26\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.20/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-01 15:31:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-26 00:32:49\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-23 08:02:22\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 07:44:53\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 16:29:19\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-31 16:48:08\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-24 12:22:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.9/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-24 12:26:13\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-23 19:42:08\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-17 21:11:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-17 21:14:01\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.9/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 15:26:10\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.9/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-21 16:41:01\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-11 01:23:43\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-18 05:55:29\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 08:36:22\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-18 22:20:21\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-24 13:28:57\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-12 15:14:43\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-22 09:13:24\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 05:01:53\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 05:01:05\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-18 14:17:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-07-30 00:35:05\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.15/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 05:01:34\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2022-02-21 10:56:22\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-20 15:30:05\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-20 16:34:11\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-22 11:12:02\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-21 16:52:21\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-20 07:35:01\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 10:40:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.27\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.27/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-14 22:20:29\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-19 12:13:00\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 15:32:05\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.9/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-10 12:33:31\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-22 09:07:27\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-17 21:11:54\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 13:43:33\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-24 08:56:29\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-12 10:34:12\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.9/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.15\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.15/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-26 16:57:20\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-26 09:01:56\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.4/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-23 12:35:40\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-13 16:36:31\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.10/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.20/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"5.5.9\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.9/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-25 07:32:23\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-22 14:59:53\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-25 09:29:37\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.9/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-21 13:16:58\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 14:37:14\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.19/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-22 07:36:05\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.28\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.28/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-25 17:29:54\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-21 15:57:46\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-09-09 21:40:55\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-27 16:28:47\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-21 12:28:45\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-17 21:26:10\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.10/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 12:15:44\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-24 13:37:43\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.9/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-01 10:20:40\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 10:26:09\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.9/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-21 19:23:12\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.12\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.12/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.32\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.32/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-12-28 02:58:38\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.19\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.19/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-01-25 01:31:24\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.20\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.20/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2022-03-06 15:05:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.10\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.10/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.8.4\";s:7:\"updated\";s:19:\"2021-11-16 07:16:28\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-21 08:03:32\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-22 09:18:42\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"5.9\";s:7:\"updated\";s:19:\"2022-02-18 15:24:27\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.9/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `cv_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4484, '_transient_timeout_global_styles_theme_cvtech', '1648221842', 'no'),
(4485, '_transient_global_styles_theme_cvtech', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_postmeta`
--

CREATE TABLE `cv_wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_postmeta`
--

INSERT INTO `cv_wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1647252007:1'),
(6, 11, '_edit_lock', '1647436810:1'),
(7, 13, '_edit_lock', '1647338447:1'),
(9, 16, '_edit_lock', '1647338538:1'),
(10, 16, '_wp_page_template', 'template_connexion.php'),
(11, 16, '_wp_trash_meta_status', 'publish'),
(12, 16, '_wp_trash_meta_time', '1647338795'),
(13, 16, '_wp_desired_post_slug', 'connexion'),
(14, 18, '_edit_lock', '1647338822:1'),
(15, 18, '_wp_page_template', 'template_connexion.php'),
(16, 20, '_edit_lock', '1647437154:1'),
(17, 18, '_wp_trash_meta_status', 'publish'),
(18, 18, '_wp_trash_meta_time', '1647340500'),
(19, 18, '_wp_desired_post_slug', 'connexion'),
(20, 24, '_edit_lock', '1648042926:1'),
(21, 11, '_edit_last', '1'),
(22, 27, '_menu_item_type', 'post_type'),
(23, 27, '_menu_item_menu_item_parent', '0'),
(24, 27, '_menu_item_object_id', '20'),
(25, 27, '_menu_item_object', 'page'),
(26, 27, '_menu_item_target', ''),
(27, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 27, '_menu_item_xfn', ''),
(29, 27, '_menu_item_url', ''),
(30, 27, '_menu_item_orphaned', '1647349442'),
(31, 28, '_menu_item_type', 'post_type'),
(32, 28, '_menu_item_menu_item_parent', '0'),
(33, 28, '_menu_item_object_id', '11'),
(34, 28, '_menu_item_object', 'page'),
(35, 28, '_menu_item_target', ''),
(36, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 28, '_menu_item_xfn', ''),
(38, 28, '_menu_item_url', ''),
(39, 28, '_menu_item_orphaned', '1647349442'),
(40, 29, '_menu_item_type', 'post_type'),
(41, 29, '_menu_item_menu_item_parent', '0'),
(42, 29, '_menu_item_object_id', '5'),
(43, 29, '_menu_item_object', 'page'),
(44, 29, '_menu_item_target', ''),
(45, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 29, '_menu_item_xfn', ''),
(47, 29, '_menu_item_url', ''),
(48, 29, '_menu_item_orphaned', '1647349443'),
(49, 30, '_menu_item_type', 'post_type'),
(50, 30, '_menu_item_menu_item_parent', '0'),
(51, 30, '_menu_item_object_id', '2'),
(52, 30, '_menu_item_object', 'page'),
(53, 30, '_menu_item_target', ''),
(54, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 30, '_menu_item_xfn', ''),
(56, 30, '_menu_item_url', ''),
(57, 30, '_menu_item_orphaned', '1647349443'),
(58, 31, '_menu_item_type', 'post_type'),
(59, 31, '_menu_item_menu_item_parent', '0'),
(60, 31, '_menu_item_object_id', '13'),
(61, 31, '_menu_item_object', 'page'),
(62, 31, '_menu_item_target', ''),
(63, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 31, '_menu_item_xfn', ''),
(65, 31, '_menu_item_url', ''),
(66, 31, '_menu_item_orphaned', '1647349444'),
(70, 36, '_menu_item_type', 'post_type'),
(71, 36, '_menu_item_menu_item_parent', '0'),
(72, 36, '_menu_item_object_id', '20'),
(73, 36, '_menu_item_object', 'page'),
(74, 36, '_menu_item_target', ''),
(75, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 36, '_menu_item_xfn', ''),
(77, 36, '_menu_item_url', ''),
(78, 36, '_menu_item_orphaned', '1647349843'),
(79, 37, '_menu_item_type', 'post_type'),
(80, 37, '_menu_item_menu_item_parent', '0'),
(81, 37, '_menu_item_object_id', '11'),
(82, 37, '_menu_item_object', 'page'),
(83, 37, '_menu_item_target', ''),
(84, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 37, '_menu_item_xfn', ''),
(86, 37, '_menu_item_url', ''),
(87, 37, '_menu_item_orphaned', '1647349844'),
(88, 38, '_menu_item_type', 'post_type'),
(89, 38, '_menu_item_menu_item_parent', '0'),
(90, 38, '_menu_item_object_id', '5'),
(91, 38, '_menu_item_object', 'page'),
(92, 38, '_menu_item_target', ''),
(93, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 38, '_menu_item_xfn', ''),
(95, 38, '_menu_item_url', ''),
(96, 38, '_menu_item_orphaned', '1647349845'),
(97, 39, '_menu_item_type', 'post_type'),
(98, 39, '_menu_item_menu_item_parent', '0'),
(99, 39, '_menu_item_object_id', '2'),
(100, 39, '_menu_item_object', 'page'),
(101, 39, '_menu_item_target', ''),
(102, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 39, '_menu_item_xfn', ''),
(104, 39, '_menu_item_url', ''),
(105, 39, '_menu_item_orphaned', '1647349846'),
(106, 40, '_menu_item_type', 'post_type'),
(107, 40, '_menu_item_menu_item_parent', '0'),
(108, 40, '_menu_item_object_id', '13'),
(109, 40, '_menu_item_object', 'page'),
(110, 40, '_menu_item_target', ''),
(111, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 40, '_menu_item_xfn', ''),
(113, 40, '_menu_item_url', ''),
(114, 40, '_menu_item_orphaned', '1647349846'),
(116, 11, '_wp_page_template', 'template_mention.php'),
(117, 24, '_wp_page_template', 'template-creation.php'),
(118, 43, '_edit_lock', '1648114169:1'),
(119, 43, '_wp_page_template', 'template-home.php'),
(122, 48, '_edit_lock', '1647463192:1'),
(123, 48, '_wp_page_template', 'template_pdf.php'),
(124, 51, '_edit_lock', '1647555431:1'),
(125, 51, '_wp_page_template', 'template-userprofil.php'),
(126, 53, '_edit_lock', '1648027090:1'),
(127, 53, '_wp_page_template', 'template_recruteur.php'),
(128, 20, '_wp_trash_meta_status', 'publish'),
(129, 20, '_wp_trash_meta_time', '1647437170'),
(130, 20, '_wp_desired_post_slug', 'home'),
(131, 56, '_edit_lock', '1648115697:1'),
(132, 56, '_wp_page_template', 'template-recruteur-maxime.php'),
(133, 58, '_menu_item_type', 'post_type'),
(134, 58, '_menu_item_menu_item_parent', '0'),
(135, 58, '_menu_item_object_id', '43'),
(136, 58, '_menu_item_object', 'page'),
(137, 58, '_menu_item_target', ''),
(138, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 58, '_menu_item_xfn', ''),
(140, 58, '_menu_item_url', ''),
(141, 58, '_menu_item_orphaned', '1647851575'),
(142, 59, '_menu_item_type', 'post_type'),
(143, 59, '_menu_item_menu_item_parent', '0'),
(144, 59, '_menu_item_object_id', '24'),
(145, 59, '_menu_item_object', 'page'),
(146, 59, '_menu_item_target', ''),
(147, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 59, '_menu_item_xfn', ''),
(149, 59, '_menu_item_url', ''),
(150, 59, '_menu_item_orphaned', '1647851576'),
(151, 60, '_menu_item_type', 'post_type'),
(152, 60, '_menu_item_menu_item_parent', '0'),
(153, 60, '_menu_item_object_id', '11'),
(154, 60, '_menu_item_object', 'page'),
(155, 60, '_menu_item_target', ''),
(156, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 60, '_menu_item_xfn', ''),
(158, 60, '_menu_item_url', ''),
(159, 60, '_menu_item_orphaned', '1647851577'),
(160, 61, '_menu_item_type', 'post_type'),
(161, 61, '_menu_item_menu_item_parent', '0'),
(162, 61, '_menu_item_object_id', '51'),
(163, 61, '_menu_item_object', 'page'),
(164, 61, '_menu_item_target', ''),
(165, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 61, '_menu_item_xfn', ''),
(167, 61, '_menu_item_url', ''),
(168, 61, '_menu_item_orphaned', '1647851579'),
(169, 62, '_menu_item_type', 'post_type'),
(170, 62, '_menu_item_menu_item_parent', '0'),
(171, 62, '_menu_item_object_id', '5'),
(172, 62, '_menu_item_object', 'page'),
(173, 62, '_menu_item_target', ''),
(174, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 62, '_menu_item_xfn', ''),
(176, 62, '_menu_item_url', ''),
(177, 62, '_menu_item_orphaned', '1647851580'),
(178, 63, '_menu_item_type', 'post_type'),
(179, 63, '_menu_item_menu_item_parent', '0'),
(180, 63, '_menu_item_object_id', '2'),
(181, 63, '_menu_item_object', 'page'),
(182, 63, '_menu_item_target', ''),
(183, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 63, '_menu_item_xfn', ''),
(185, 63, '_menu_item_url', ''),
(186, 63, '_menu_item_orphaned', '1647851580'),
(187, 64, '_menu_item_type', 'post_type'),
(188, 64, '_menu_item_menu_item_parent', '0'),
(189, 64, '_menu_item_object_id', '48'),
(190, 64, '_menu_item_object', 'page'),
(191, 64, '_menu_item_target', ''),
(192, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 64, '_menu_item_xfn', ''),
(194, 64, '_menu_item_url', ''),
(195, 64, '_menu_item_orphaned', '1647851581'),
(196, 65, '_menu_item_type', 'post_type'),
(197, 65, '_menu_item_menu_item_parent', '0'),
(198, 65, '_menu_item_object_id', '53'),
(199, 65, '_menu_item_object', 'page'),
(200, 65, '_menu_item_target', ''),
(201, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 65, '_menu_item_xfn', ''),
(203, 65, '_menu_item_url', ''),
(204, 65, '_menu_item_orphaned', '1647851582'),
(205, 66, '_menu_item_type', 'post_type'),
(206, 66, '_menu_item_menu_item_parent', '0'),
(207, 66, '_menu_item_object_id', '13'),
(208, 66, '_menu_item_object', 'page'),
(209, 66, '_menu_item_target', ''),
(210, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 66, '_menu_item_xfn', ''),
(212, 66, '_menu_item_url', ''),
(213, 66, '_menu_item_orphaned', '1647851583'),
(214, 67, '_menu_item_type', 'post_type'),
(215, 67, '_menu_item_menu_item_parent', '0'),
(216, 67, '_menu_item_object_id', '43'),
(217, 67, '_menu_item_object', 'page'),
(218, 67, '_menu_item_target', ''),
(219, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 67, '_menu_item_xfn', ''),
(221, 67, '_menu_item_url', ''),
(222, 67, '_menu_item_orphaned', '1647851635'),
(223, 68, '_menu_item_type', 'post_type'),
(224, 68, '_menu_item_menu_item_parent', '0'),
(225, 68, '_menu_item_object_id', '24'),
(226, 68, '_menu_item_object', 'page'),
(227, 68, '_menu_item_target', ''),
(228, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 68, '_menu_item_xfn', ''),
(230, 68, '_menu_item_url', ''),
(231, 68, '_menu_item_orphaned', '1647851637'),
(232, 69, '_menu_item_type', 'post_type'),
(233, 69, '_menu_item_menu_item_parent', '0'),
(234, 69, '_menu_item_object_id', '11'),
(235, 69, '_menu_item_object', 'page'),
(236, 69, '_menu_item_target', ''),
(237, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 69, '_menu_item_xfn', ''),
(239, 69, '_menu_item_url', ''),
(240, 69, '_menu_item_orphaned', '1647851638'),
(241, 70, '_menu_item_type', 'post_type'),
(242, 70, '_menu_item_menu_item_parent', '0'),
(243, 70, '_menu_item_object_id', '51'),
(244, 70, '_menu_item_object', 'page'),
(245, 70, '_menu_item_target', ''),
(246, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(247, 70, '_menu_item_xfn', ''),
(248, 70, '_menu_item_url', ''),
(249, 70, '_menu_item_orphaned', '1647851639'),
(250, 71, '_menu_item_type', 'post_type'),
(251, 71, '_menu_item_menu_item_parent', '0'),
(252, 71, '_menu_item_object_id', '5'),
(253, 71, '_menu_item_object', 'page'),
(254, 71, '_menu_item_target', ''),
(255, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(256, 71, '_menu_item_xfn', ''),
(257, 71, '_menu_item_url', ''),
(258, 71, '_menu_item_orphaned', '1647851640'),
(259, 72, '_menu_item_type', 'post_type'),
(260, 72, '_menu_item_menu_item_parent', '0'),
(261, 72, '_menu_item_object_id', '2'),
(262, 72, '_menu_item_object', 'page'),
(263, 72, '_menu_item_target', ''),
(264, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 72, '_menu_item_xfn', ''),
(266, 72, '_menu_item_url', ''),
(267, 72, '_menu_item_orphaned', '1647851641'),
(268, 73, '_menu_item_type', 'post_type'),
(269, 73, '_menu_item_menu_item_parent', '0'),
(270, 73, '_menu_item_object_id', '48'),
(271, 73, '_menu_item_object', 'page'),
(272, 73, '_menu_item_target', ''),
(273, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 73, '_menu_item_xfn', ''),
(275, 73, '_menu_item_url', ''),
(276, 73, '_menu_item_orphaned', '1647851642'),
(277, 74, '_menu_item_type', 'post_type'),
(278, 74, '_menu_item_menu_item_parent', '0'),
(279, 74, '_menu_item_object_id', '53'),
(280, 74, '_menu_item_object', 'page'),
(281, 74, '_menu_item_target', ''),
(282, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 74, '_menu_item_xfn', ''),
(284, 74, '_menu_item_url', ''),
(285, 74, '_menu_item_orphaned', '1647851643'),
(286, 75, '_menu_item_type', 'post_type'),
(287, 75, '_menu_item_menu_item_parent', '0'),
(288, 75, '_menu_item_object_id', '13'),
(289, 75, '_menu_item_object', 'page'),
(290, 75, '_menu_item_target', ''),
(291, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 75, '_menu_item_xfn', ''),
(293, 75, '_menu_item_url', ''),
(294, 75, '_menu_item_orphaned', '1647851644'),
(295, 76, '_menu_item_type', 'post_type'),
(296, 76, '_menu_item_menu_item_parent', '0'),
(297, 76, '_menu_item_object_id', '43'),
(298, 76, '_menu_item_object', 'page'),
(299, 76, '_menu_item_target', ''),
(300, 76, '_menu_item_classes', 'a:1:{i:0;s:13:\"display-modal\";}'),
(301, 76, '_menu_item_xfn', ''),
(302, 76, '_menu_item_url', ''),
(304, 77, '_menu_item_type', 'post_type'),
(305, 77, '_menu_item_menu_item_parent', '0'),
(306, 77, '_menu_item_object_id', '24'),
(307, 77, '_menu_item_object', 'page'),
(308, 77, '_menu_item_target', ''),
(309, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(310, 77, '_menu_item_xfn', ''),
(311, 77, '_menu_item_url', ''),
(313, 78, '_menu_item_type', 'post_type'),
(314, 78, '_menu_item_menu_item_parent', '0'),
(315, 78, '_menu_item_object_id', '11'),
(316, 78, '_menu_item_object', 'page'),
(317, 78, '_menu_item_target', ''),
(318, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(319, 78, '_menu_item_xfn', ''),
(320, 78, '_menu_item_url', ''),
(322, 79, '_menu_item_type', 'post_type'),
(323, 79, '_menu_item_menu_item_parent', '0'),
(324, 79, '_menu_item_object_id', '51'),
(325, 79, '_menu_item_object', 'page'),
(326, 79, '_menu_item_target', ''),
(327, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(328, 79, '_menu_item_xfn', ''),
(329, 79, '_menu_item_url', ''),
(331, 80, '_menu_item_type', 'post_type'),
(332, 80, '_menu_item_menu_item_parent', '0'),
(333, 80, '_menu_item_object_id', '5'),
(334, 80, '_menu_item_object', 'page'),
(335, 80, '_menu_item_target', ''),
(336, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(337, 80, '_menu_item_xfn', ''),
(338, 80, '_menu_item_url', ''),
(340, 81, '_menu_item_type', 'post_type'),
(341, 81, '_menu_item_menu_item_parent', '0'),
(342, 81, '_menu_item_object_id', '2'),
(343, 81, '_menu_item_object', 'page'),
(344, 81, '_menu_item_target', ''),
(345, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(346, 81, '_menu_item_xfn', ''),
(347, 81, '_menu_item_url', ''),
(349, 82, '_menu_item_type', 'post_type'),
(350, 82, '_menu_item_menu_item_parent', '0'),
(351, 82, '_menu_item_object_id', '48'),
(352, 82, '_menu_item_object', 'page'),
(353, 82, '_menu_item_target', ''),
(354, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(355, 82, '_menu_item_xfn', ''),
(356, 82, '_menu_item_url', ''),
(358, 83, '_menu_item_type', 'post_type'),
(359, 83, '_menu_item_menu_item_parent', '0'),
(360, 83, '_menu_item_object_id', '53'),
(361, 83, '_menu_item_object', 'page'),
(362, 83, '_menu_item_target', ''),
(363, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(364, 83, '_menu_item_xfn', ''),
(365, 83, '_menu_item_url', ''),
(367, 84, '_menu_item_type', 'post_type'),
(368, 84, '_menu_item_menu_item_parent', '0'),
(369, 84, '_menu_item_object_id', '13'),
(370, 84, '_menu_item_object', 'page'),
(371, 84, '_menu_item_target', ''),
(372, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(373, 84, '_menu_item_xfn', ''),
(374, 84, '_menu_item_url', ''),
(376, 87, '_edit_lock', '1647946668:1'),
(377, 87, '_wp_page_template', 'template_update_infoPerso.php'),
(378, 89, '_edit_lock', '1647942303:1'),
(379, 89, '_wp_page_template', 'template-formulaire-cv.php'),
(380, 91, '_edit_lock', '1647943954:1'),
(381, 93, '_edit_lock', '1648046062:1'),
(382, 93, '_wp_page_template', 'template-contact.php'),
(383, 95, '_edit_lock', '1648113406:1'),
(384, 96, '_edit_lock', '1648114152:1'),
(385, 96, '_wp_page_template', 'template-deconnexion.php'),
(389, 53, '_wp_trash_meta_status', 'publish'),
(390, 53, '_wp_trash_meta_time', '1648115818'),
(391, 53, '_wp_desired_post_slug', 'recruteur'),
(392, 56, '_wp_trash_meta_status', 'publish'),
(393, 56, '_wp_trash_meta_time', '1648115845'),
(394, 56, '_wp_desired_post_slug', 'recruteur-maxime'),
(395, 99, '_edit_lock', '1648130225:1'),
(396, 99, '_wp_page_template', 'template-recruteur-maxime.php');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_posts`
--

CREATE TABLE `cv_wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_posts`
--

INSERT INTO `cv_wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-03-14 10:51:45', '2022-03-14 09:51:45', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2022-03-14 10:51:45', '2022-03-14 09:51:45', '', 0, 'http://localhost/WP/CV_tech/?p=1', 0, 'post', '', 1),
(2, 1, '2022-03-14 10:51:45', '2022-03-14 09:51:45', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost/WP/CV_tech/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2022-03-14 10:51:45', '2022-03-14 09:51:45', '', 0, 'http://localhost/WP/CV_tech/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-03-14 10:51:45', '2022-03-14 09:51:45', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost/WP/CV_tech.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2022-03-14 10:51:45', '2022-03-14 09:51:45', '', 0, 'http://localhost/WP/CV_tech/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-03-14 11:02:28', '2022-03-14 10:02:28', '<!-- wp:paragraph -->\n<p>page</p>\n<!-- /wp:paragraph -->', 'page', '', 'publish', 'closed', 'closed', '', 'page', '', '', '2022-03-14 11:02:28', '2022-03-14 10:02:28', '', 0, 'http://localhost/WP/CV_tech/?page_id=5', 0, 'page', '', 0),
(6, 1, '2022-03-14 11:02:19', '2022-03-14 10:02:19', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-03-14 11:02:19', '2022-03-14 10:02:19', '', 0, 'http://localhost/WP/CV_tech/2022/03/14/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-03-14 11:02:28', '2022-03-14 10:02:28', '<!-- wp:paragraph -->\n<p>page</p>\n<!-- /wp:paragraph -->', 'page', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-03-14 11:02:28', '2022-03-14 10:02:28', '', 5, 'http://localhost/WP/CV_tech/?p=7', 0, 'revision', '', 0),
(9, 1, '2022-03-15 10:52:41', '2022-03-15 09:52:41', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-theme_cvtech', '', '', '2022-03-15 10:52:41', '2022-03-15 09:52:41', '', 0, 'http://localhost/WP/CV_tech/2022/03/15/wp-global-styles-theme_cvtech/', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-03-15 10:56:05', '2022-03-15 09:56:05', '', 'mention', '', 'publish', 'closed', 'closed', '', 'mention', '', '', '2022-03-15 14:25:41', '2022-03-15 13:25:41', '', 0, 'http://localhost/WP/CV_tech/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-03-15 10:56:05', '2022-03-15 09:56:05', '', 'hjh', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-03-15 10:56:05', '2022-03-15 09:56:05', '', 11, 'http://localhost/WP/CV_tech/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-03-15 10:57:51', '2022-03-15 09:57:51', '', 'test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2022-03-15 10:57:51', '2022-03-15 09:57:51', '', 0, 'http://localhost/WP/CV_tech/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-03-15 10:57:51', '2022-03-15 09:57:51', '', 'test', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-03-15 10:57:51', '2022-03-15 09:57:51', '', 13, 'http://localhost/WP/CV_tech/?p=14', 0, 'revision', '', 0),
(16, 1, '2022-03-15 11:03:26', '2022-03-15 10:03:26', '', 'Connexion', '', 'trash', 'closed', 'closed', '', 'connexion__trashed', '', '', '2022-03-15 11:06:35', '2022-03-15 10:06:35', '', 0, 'http://localhost/WP/CV_tech/?page_id=16', 0, 'page', '', 0),
(17, 1, '2022-03-15 11:03:26', '2022-03-15 10:03:26', '', 'Connexion', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2022-03-15 11:03:26', '2022-03-15 10:03:26', '', 16, 'http://localhost/WP/CV_tech/?p=17', 0, 'revision', '', 0),
(18, 1, '2022-03-15 11:08:45', '2022-03-15 10:08:45', '', 'Connexion', '', 'trash', 'closed', 'closed', '', 'connexion__trashed-2', '', '', '2022-03-15 11:35:00', '2022-03-15 10:35:00', '', 0, 'http://localhost/WP/CV_tech/?page_id=18', 0, 'page', '', 0),
(19, 1, '2022-03-15 11:08:45', '2022-03-15 10:08:45', '', 'Connexion', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-03-15 11:08:45', '2022-03-15 10:08:45', '', 18, 'http://localhost/WP/CV_tech/?p=19', 0, 'revision', '', 0),
(20, 1, '2022-03-15 11:16:35', '2022-03-15 10:16:35', '', 'home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2022-03-16 14:26:11', '2022-03-16 13:26:11', '', 0, 'http://localhost/WP/CV_tech/?page_id=20', 0, 'page', '', 0),
(21, 1, '2022-03-15 11:16:35', '2022-03-15 10:16:35', '', 'home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-03-15 11:16:35', '2022-03-15 10:16:35', '', 20, 'http://localhost/WP/CV_tech/?p=21', 0, 'revision', '', 0),
(23, 1, '2022-03-15 13:53:14', '2022-03-15 12:53:14', '', 'mention', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-03-15 13:53:14', '2022-03-15 12:53:14', '', 11, 'http://localhost/WP/CV_tech/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-03-15 14:18:55', '2022-03-15 13:18:55', '', 'Créer votre CV', '', 'publish', 'closed', 'closed', '', 'creer-votre-cv', '', '', '2022-03-15 14:18:55', '2022-03-15 13:18:55', '', 0, 'http://localhost/WP/CV_tech/?page_id=24', 0, 'page', '', 0),
(26, 1, '2022-03-15 14:02:25', '2022-03-15 13:02:25', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwenty', '', '', '2022-03-15 14:02:25', '2022-03-15 13:02:25', '', 0, 'http://localhost/WP/CV_tech/wp-global-styles-twentytwenty/', 0, 'wp_global_styles', '', 0),
(27, 1, '2022-03-15 14:04:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:04:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2022-03-15 14:04:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:04:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2022-03-15 14:04:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:04:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2022-03-15 14:04:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:04:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2022-03-15 14:04:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:04:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=31', 1, 'nav_menu_item', '', 0),
(36, 1, '2022-03-15 14:10:42', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:10:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2022-03-15 14:10:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:10:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2022-03-15 14:10:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:10:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2022-03-15 14:10:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:10:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2022-03-15 14:10:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-15 14:10:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=40', 1, 'nav_menu_item', '', 0),
(42, 1, '2022-03-15 14:18:55', '2022-03-15 13:18:55', '', 'Créer votre CV', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-03-15 14:18:55', '2022-03-15 13:18:55', '', 24, 'http://localhost/WP/CV_tech/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-03-15 17:23:17', '2022-03-15 16:23:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2022-03-15 17:23:17', '2022-03-15 16:23:17', '', 0, 'http://localhost/WP/CV_tech/?page_id=43', 0, 'page', '', 0),
(44, 1, '2022-03-15 14:33:34', '2022-03-15 13:33:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2022-03-15 14:33:34', '2022-03-15 13:33:34', '', 43, 'http://localhost/WP/CV_tech/?p=44', 0, 'revision', '', 0),
(46, 1, '2022-03-15 17:25:26', '2022-03-15 16:25:26', '', 'mention', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2022-03-15 17:25:26', '2022-03-15 16:25:26', '', 11, 'http://localhost/WP/CV_tech/?p=46', 0, 'revision', '', 0),
(48, 1, '2022-03-16 09:23:08', '2022-03-16 08:23:08', '', 'pdf', '', 'publish', 'closed', 'closed', '', 'pdf', '', '', '2022-03-16 09:31:24', '2022-03-16 08:31:24', '', 0, 'http://localhost/WP/CV_tech/?page_id=48', 0, 'page', '', 0),
(49, 1, '2022-03-16 09:23:08', '2022-03-16 08:23:08', '', 'pdf', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2022-03-16 09:23:08', '2022-03-16 08:23:08', '', 48, 'http://localhost/WP/CV_tech/?p=49', 0, 'revision', '', 0),
(51, 1, '2022-03-16 10:21:54', '2022-03-16 09:21:54', '', 'Mon profil utilisateur', '', 'publish', 'closed', 'closed', '', 'mon-profil-utilisateur', '', '', '2022-03-16 10:21:54', '2022-03-16 09:21:54', '', 0, 'http://localhost/WP/CV_tech/?page_id=51', 0, 'page', '', 0),
(52, 1, '2022-03-16 10:21:54', '2022-03-16 09:21:54', '', 'Mon profil utilisateur', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2022-03-16 10:21:54', '2022-03-16 09:21:54', '', 51, 'http://localhost/WP/CV_tech/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-03-16 10:46:01', '2022-03-16 09:46:01', '', 'recruteur', '', 'trash', 'closed', 'closed', '', 'recruteur__trashed', '', '', '2022-03-24 10:56:58', '2022-03-24 09:56:58', '', 0, 'http://localhost/WP/CV_tech/?page_id=53', 0, 'page', '', 0),
(54, 1, '2022-03-16 10:46:01', '2022-03-16 09:46:01', '', 'recruteur', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-03-16 10:46:01', '2022-03-16 09:46:01', '', 53, 'http://localhost/WP/CV_tech/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-03-16 14:57:38', '2022-03-16 13:57:38', '', 'Mon profil utilisateur', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2022-03-16 14:57:38', '2022-03-16 13:57:38', '', 51, 'http://localhost/WP/CV_tech/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-03-24 10:55:51', '2022-03-24 09:55:51', '', 'Recruteur', '', 'trash', 'closed', 'closed', '', 'recruteur-maxime__trashed', '', '', '2022-03-24 10:57:25', '2022-03-24 09:57:25', '', 0, 'http://localhost/WP/CV_tech/?page_id=56', 0, 'page', '', 0),
(57, 1, '2022-03-17 12:29:24', '2022-03-17 11:29:24', '', 'Recruteur-Maxime', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-03-17 12:29:24', '2022-03-17 11:29:24', '', 56, 'http://localhost/WP/CV_tech/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-03-21 09:32:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:32:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=58', 1, 'nav_menu_item', '', 0),
(59, 1, '2022-03-21 09:32:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:32:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2022-03-21 09:32:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:32:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=60', 1, 'nav_menu_item', '', 0),
(61, 1, '2022-03-21 09:32:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:32:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2022-03-21 09:32:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:32:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2022-03-21 09:33:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2022-03-21 09:33:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=64', 1, 'nav_menu_item', '', 0),
(65, 1, '2022-03-21 09:33:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=65', 1, 'nav_menu_item', '', 0),
(66, 1, '2022-03-21 09:33:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2022-03-21 09:33:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=67', 1, 'nav_menu_item', '', 0),
(68, 1, '2022-03-21 09:33:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2022-03-21 09:33:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2022-03-21 09:33:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2022-03-21 09:33:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:33:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2022-03-21 09:34:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:34:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=72', 1, 'nav_menu_item', '', 0),
(73, 1, '2022-03-21 09:34:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:34:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=73', 1, 'nav_menu_item', '', 0),
(74, 1, '2022-03-21 09:34:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:34:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2022-03-21 09:34:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-03-21 09:34:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=75', 1, 'nav_menu_item', '', 0),
(76, 1, '2022-03-21 09:40:05', '2022-03-21 08:40:05', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2022-03-21 09:40:05', '2022-03-21 08:40:05', '', 0, 'http://localhost/WP/CV_tech/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2022-03-21 09:40:05', '2022-03-21 08:40:05', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2022-03-21 09:40:05', '2022-03-21 08:40:05', '', 0, 'http://localhost/WP/CV_tech/?p=77', 2, 'nav_menu_item', '', 0),
(78, 1, '2022-03-21 09:40:05', '2022-03-21 08:40:05', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2022-03-21 09:40:05', '2022-03-21 08:40:05', '', 0, 'http://localhost/WP/CV_tech/?p=78', 3, 'nav_menu_item', '', 0),
(79, 1, '2022-03-21 09:40:06', '2022-03-21 08:40:06', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2022-03-21 09:40:06', '2022-03-21 08:40:06', '', 0, 'http://localhost/WP/CV_tech/?p=79', 4, 'nav_menu_item', '', 0),
(80, 1, '2022-03-21 09:40:06', '2022-03-21 08:40:06', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2022-03-21 09:40:06', '2022-03-21 08:40:06', '', 0, 'http://localhost/WP/CV_tech/?p=80', 5, 'nav_menu_item', '', 0),
(81, 1, '2022-03-21 09:40:06', '2022-03-21 08:40:06', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2022-03-21 09:40:06', '2022-03-21 08:40:06', '', 0, 'http://localhost/WP/CV_tech/?p=81', 6, 'nav_menu_item', '', 0),
(82, 1, '2022-03-21 09:40:07', '2022-03-21 08:40:07', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2022-03-21 09:40:07', '2022-03-21 08:40:07', '', 0, 'http://localhost/WP/CV_tech/?p=82', 7, 'nav_menu_item', '', 0),
(83, 1, '2022-03-21 09:40:07', '2022-03-21 08:40:07', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2022-03-21 09:40:07', '2022-03-21 08:40:07', '', 0, 'http://localhost/WP/CV_tech/?p=83', 8, 'nav_menu_item', '', 0),
(84, 1, '2022-03-21 09:40:07', '2022-03-21 08:40:07', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2022-03-21 09:40:07', '2022-03-21 08:40:07', '', 0, 'http://localhost/WP/CV_tech/?p=84', 9, 'nav_menu_item', '', 0),
(85, 1, '2022-03-21 10:46:21', '2022-03-21 09:46:21', '', 'recruteur', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2022-03-21 10:46:21', '2022-03-21 09:46:21', '', 53, 'http://localhost/WP/CV_tech/?p=85', 0, 'revision', '', 0),
(86, 1, '2022-03-21 11:38:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-03-21 11:38:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?p=86', 0, 'post', '', 0),
(87, 1, '2022-03-21 15:57:46', '2022-03-21 14:57:46', '', 'update info user', '', 'publish', 'closed', 'closed', '', 'update-info-user', '', '', '2022-03-22 11:57:57', '2022-03-22 10:57:57', '', 0, 'http://localhost/WP/CV_tech/?page_id=87', 0, 'page', '', 0),
(88, 1, '2022-03-21 15:57:46', '2022-03-21 14:57:46', '', 'update info user', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2022-03-21 15:57:46', '2022-03-21 14:57:46', '', 87, 'http://localhost/WP/CV_tech/?p=88', 0, 'revision', '', 0),
(89, 1, '2022-03-21 17:20:22', '2022-03-21 16:20:22', '', 'formulaire CV', '', 'publish', 'closed', 'closed', '', 'formulaire-cv', '', '', '2022-03-21 17:20:22', '2022-03-21 16:20:22', '', 0, 'http://localhost/WP/CV_tech/?page_id=89', 0, 'page', '', 0),
(90, 1, '2022-03-21 17:20:22', '2022-03-21 16:20:22', '', 'formulaire CV', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2022-03-21 17:20:22', '2022-03-21 16:20:22', '', 89, 'http://localhost/WP/CV_tech/?p=90', 0, 'revision', '', 0),
(91, 1, '2022-03-22 11:14:52', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-22 11:14:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?page_id=91', 0, 'page', '', 0),
(93, 1, '2022-03-23 09:52:54', '2022-03-23 08:52:54', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-03-23 09:52:54', '2022-03-23 08:52:54', '', 0, 'http://localhost/WP/CV_tech/?page_id=93', 0, 'page', '', 0),
(94, 1, '2022-03-23 09:52:54', '2022-03-23 08:52:54', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2022-03-23 09:52:54', '2022-03-23 08:52:54', '', 93, 'http://localhost/WP/CV_tech/?p=94', 0, 'revision', '', 0),
(95, 1, '2022-03-24 10:18:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-24 10:18:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/WP/CV_tech/?page_id=95', 0, 'page', '', 0),
(96, 1, '2022-03-24 10:30:06', '2022-03-24 09:30:06', '', 'déconnexion', '', 'publish', 'closed', 'closed', '', 'deconnexion', '', '', '2022-03-24 10:30:06', '2022-03-24 09:30:06', '', 0, 'http://localhost/WP/CV_tech/?page_id=96', 0, 'page', '', 0),
(97, 1, '2022-03-24 10:30:06', '2022-03-24 09:30:06', '', 'déconnexion', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-03-24 10:30:06', '2022-03-24 09:30:06', '', 96, 'http://localhost/WP/CV_tech/?p=97', 0, 'revision', '', 0),
(98, 1, '2022-03-24 10:55:56', '2022-03-24 09:55:56', '', 'Recruteur', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-03-24 10:55:56', '2022-03-24 09:55:56', '', 56, 'http://localhost/WP/CV_tech/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-03-24 10:57:43', '2022-03-24 09:57:43', '', 'recruteur', '', 'publish', 'closed', 'closed', '', 'recruteur', '', '', '2022-03-24 10:57:43', '2022-03-24 09:57:43', '', 0, 'http://localhost/WP/CV_tech/?page_id=99', 0, 'page', '', 0),
(100, 1, '2022-03-24 10:57:43', '2022-03-24 09:57:43', '', 'recruteur', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2022-03-24 10:57:43', '2022-03-24 09:57:43', '', 99, 'http://localhost/WP/CV_tech/?p=100', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_termmeta`
--

CREATE TABLE `cv_wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_terms`
--

CREATE TABLE `cv_wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_terms`
--

INSERT INTO `cv_wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'theme_cvtech', 'theme_cvtech', 0),
(4, 'twentytwenty', 'twentytwenty', 0),
(5, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_term_relationships`
--

CREATE TABLE `cv_wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_term_relationships`
--

INSERT INTO `cv_wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(9, 3, 0),
(26, 4, 0),
(76, 5, 0),
(77, 5, 0),
(78, 5, 0),
(79, 5, 0),
(80, 5, 0),
(81, 5, 0),
(82, 5, 0),
(83, 5, 0),
(84, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_term_taxonomy`
--

CREATE TABLE `cv_wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_term_taxonomy`
--

INSERT INTO `cv_wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'wp_theme', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_usermeta`
--

CREATE TABLE `cv_wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_usermeta`
--

INSERT INTO `cv_wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'cv_wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'cv_wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"2cd2a635d267279c009385c2a42c54d65aacdf206773fa2d74b86d169b9b76c0\";a:4:{s:10:\"expiration\";i:1648552972;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36\";s:5:\"login\";i:1647343372;}s:64:\"dd7124d751d9d6f7d428089ceae141078ca49b7c1f7b2e949602e5a2fc52ab50\";a:4:{s:10:\"expiration\";i:1648220174;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36\";s:5:\"login\";i:1648047374;}}'),
(17, 1, 'cv_wp_dashboard_quick_press_last_post_id', '86'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '5');

-- --------------------------------------------------------

--
-- Structure de la table `cv_wp_users`
--

CREATE TABLE `cv_wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cv_wp_users`
--

INSERT INTO `cv_wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BuVwHv30detMo8qB2Aypcsr5hMlZu90', 'admin', 'alexismouchon09@gmail.com', 'http://localhost/WP/CV_tech', '2022-03-14 09:51:45', '', 0, 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cv_wp_commentmeta`
--
ALTER TABLE `cv_wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `cv_wp_comments`
--
ALTER TABLE `cv_wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `cv_wp_custom_competence`
--
ALTER TABLE `cv_wp_custom_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contrainte_competence` (`id_user`);

--
-- Index pour la table `cv_wp_custom_competences`
--
ALTER TABLE `cv_wp_custom_competences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cv_wp_custom_cv`
--
ALTER TABLE `cv_wp_custom_cv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `cv_wp_custom_exp-pro`
--
ALTER TABLE `cv_wp_custom_exp-pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cv_exp` (`id_user`);

--
-- Index pour la table `cv_wp_custom_formation`
--
ALTER TABLE `cv_wp_custom_formation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cv` (`id_user`);

--
-- Index pour la table `cv_wp_custom_hobbies`
--
ALTER TABLE `cv_wp_custom_hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cv_hobbies` (`id_user`);

--
-- Index pour la table `cv_wp_custom_info_perso`
--
ALTER TABLE `cv_wp_custom_info_perso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cv_info` (`id_user`);

--
-- Index pour la table `cv_wp_custom_langue`
--
ALTER TABLE `cv_wp_custom_langue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cv_langue` (`id_user`);

--
-- Index pour la table `cv_wp_custom_langues`
--
ALTER TABLE `cv_wp_custom_langues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cv_wp_custom_permis`
--
ALTER TABLE `cv_wp_custom_permis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cv_wp_custom_users`
--
ALTER TABLE `cv_wp_custom_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cv_wp_links`
--
ALTER TABLE `cv_wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `cv_wp_options`
--
ALTER TABLE `cv_wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `cv_wp_postmeta`
--
ALTER TABLE `cv_wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `cv_wp_posts`
--
ALTER TABLE `cv_wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `cv_wp_termmeta`
--
ALTER TABLE `cv_wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `cv_wp_terms`
--
ALTER TABLE `cv_wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `cv_wp_term_relationships`
--
ALTER TABLE `cv_wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `cv_wp_term_taxonomy`
--
ALTER TABLE `cv_wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `cv_wp_usermeta`
--
ALTER TABLE `cv_wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `cv_wp_users`
--
ALTER TABLE `cv_wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cv_wp_commentmeta`
--
ALTER TABLE `cv_wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_comments`
--
ALTER TABLE `cv_wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_competence`
--
ALTER TABLE `cv_wp_custom_competence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_competences`
--
ALTER TABLE `cv_wp_custom_competences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_cv`
--
ALTER TABLE `cv_wp_custom_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_exp-pro`
--
ALTER TABLE `cv_wp_custom_exp-pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_formation`
--
ALTER TABLE `cv_wp_custom_formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_hobbies`
--
ALTER TABLE `cv_wp_custom_hobbies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_info_perso`
--
ALTER TABLE `cv_wp_custom_info_perso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_langue`
--
ALTER TABLE `cv_wp_custom_langue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_langues`
--
ALTER TABLE `cv_wp_custom_langues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_permis`
--
ALTER TABLE `cv_wp_custom_permis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_custom_users`
--
ALTER TABLE `cv_wp_custom_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `cv_wp_links`
--
ALTER TABLE `cv_wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_options`
--
ALTER TABLE `cv_wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4486;

--
-- AUTO_INCREMENT pour la table `cv_wp_postmeta`
--
ALTER TABLE `cv_wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT pour la table `cv_wp_posts`
--
ALTER TABLE `cv_wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `cv_wp_termmeta`
--
ALTER TABLE `cv_wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cv_wp_terms`
--
ALTER TABLE `cv_wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `cv_wp_term_taxonomy`
--
ALTER TABLE `cv_wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `cv_wp_usermeta`
--
ALTER TABLE `cv_wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `cv_wp_users`
--
ALTER TABLE `cv_wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cv_wp_custom_competence`
--
ALTER TABLE `cv_wp_custom_competence`
  ADD CONSTRAINT `contrainte_competence` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);

--
-- Contraintes pour la table `cv_wp_custom_cv`
--
ALTER TABLE `cv_wp_custom_cv`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);

--
-- Contraintes pour la table `cv_wp_custom_exp-pro`
--
ALTER TABLE `cv_wp_custom_exp-pro`
  ADD CONSTRAINT `contrainte_expPro` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);

--
-- Contraintes pour la table `cv_wp_custom_formation`
--
ALTER TABLE `cv_wp_custom_formation`
  ADD CONSTRAINT `contrainte_formation` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);

--
-- Contraintes pour la table `cv_wp_custom_hobbies`
--
ALTER TABLE `cv_wp_custom_hobbies`
  ADD CONSTRAINT `contrainte_hobbies` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);

--
-- Contraintes pour la table `cv_wp_custom_info_perso`
--
ALTER TABLE `cv_wp_custom_info_perso`
  ADD CONSTRAINT `contrainte_infoPerso` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);

--
-- Contraintes pour la table `cv_wp_custom_langue`
--
ALTER TABLE `cv_wp_custom_langue`
  ADD CONSTRAINT `contrainte_lanque` FOREIGN KEY (`id_user`) REFERENCES `cv_wp_custom_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
