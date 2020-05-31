-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2020 a las 00:04:09
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lapizzeria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 76, 'alex', 'neftalex1@gmail.com', '', '::1', '2019-03-01 02:19:15', '2019-03-01 02:19:15', 'me gusto mucho la entrada', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '', 0, 0),
(3, 76, 'alex coello', 'webmayansolutions@gmail.com', '', '::1', '2019-03-01 02:32:17', '2019-03-01 02:32:17', 'gracias', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '', 2, 0),
(4, 76, 'alex', 'neftalex1@gmail.com', '', '::1', '2019-03-01 02:33:05', '2019-03-01 02:33:05', 'excelente', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/lapizzeria', 'yes'),
(2, 'home', 'http://localhost/lapizzeria', 'yes'),
(3, 'blogname', 'lapizzeria', 'yes'),
(4, 'blogdescription', 'La mejor pizza de la ciudad', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'webmayansolutions@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"especialidades/?$\";s:34:\"index.php?post_type=especialidades\";s:47:\"especialidades/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=especialidades&feed=$matches[1]\";s:42:\"especialidades/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=especialidades&feed=$matches[1]\";s:34:\"especialidades/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=especialidades&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"especialidades/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"especialidades/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"especialidades/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"especialidades/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"especialidades/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"especialidades/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"especialidades/([^/]+)/embed/?$\";s:47:\"index.php?especialidades=$matches[1]&embed=true\";s:35:\"especialidades/([^/]+)/trackback/?$\";s:41:\"index.php?especialidades=$matches[1]&tb=1\";s:55:\"especialidades/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?especialidades=$matches[1]&feed=$matches[2]\";s:50:\"especialidades/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?especialidades=$matches[1]&feed=$matches[2]\";s:43:\"especialidades/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?especialidades=$matches[1]&paged=$matches[2]\";s:50:\"especialidades/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?especialidades=$matches[1]&cpage=$matches[2]\";s:39:\"especialidades/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?especialidades=$matches[1]&page=$matches[2]\";s:31:\"especialidades/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"especialidades/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"especialidades/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"especialidades/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"especialidades/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"especialidades/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=14&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'lapizzeria', 'yes'),
(41, 'stylesheet', 'lapizzeria', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '253', 'yes'),
(59, 'thumbnail_size_h', '164', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categorias\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '8', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_MX', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Buscar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:16:\"Ultimas entradas\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"blog_sidebar\";a:3:{i:0;s:8:\"search-3\";i:1;s:12:\"categories-3\";i:2;s:14:\"recent-posts-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1572409370;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572440375;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572483583;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572492632;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548559040;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(139, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:27:\"webmayansolutions@gmail.com\";s:7:\"version\";s:5:\"5.1.3\";s:9:\"timestamp\";i:1571708158;}', 'no'),
(141, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:5:\"admin\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(150, 'current_theme', '', 'yes'),
(151, 'theme_mods_lapizzeria', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"social-menu\";i:2;s:11:\"header-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(156, 'recently_activated', 'a:0:{}', 'yes'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(324, 'acf_version', '5.7.12', 'yes'),
(431, 'category_children', 'a:0:{}', 'yes'),
(523, 'lapizzeria_dbversion', '1.0', 'yes'),
(538, 'db_upgraded', '', 'yes'),
(543, 'can_compress_scripts', '1', 'no'),
(583, 'lapizzeria_direccion', '8179 Bay Avenue Mountain View CA 94043', 'yes'),
(584, 'lapizzeria_telefono', '+1-92-456-7890', 'yes'),
(608, 'new_admin_email', 'webmayansolutions@gmail.com', 'yes'),
(634, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.1.3-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.3-rollback-1.zip\";}s:7:\"current\";s:5:\"5.1.3\";s:7:\"version\";s:5:\"5.1.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.1.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1572407980;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(765, 'auto_core_update_failed', 'a:6:{s:9:\"attempted\";s:5:\"5.1.3\";s:7:\"current\";s:5:\"5.1.1\";s:10:\"error_code\";s:23:\"mkdir_failed_ziparchive\";s:10:\"error_data\";N;s:9:\"timestamp\";i:1571708158;s:5:\"retry\";b:0;}', 'no'),
(768, '_site_transient_timeout_theme_roots', '1572409781', 'no'),
(769, '_site_transient_theme_roots', 'a:2:{s:10:\"lapizzeria\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(770, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572407982;s:7:\"checked\";a:2:{s:10:\"lapizzeria\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(771, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572407983;s:7:\"checked\";a:1:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.0\";}s:8:\"response\";a:1:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.3\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 2, '_edit_lock', '1554686939:1'),
(5, 6, '_edit_lock', '1550972509:1'),
(6, 8, '_edit_lock', '1551150075:1'),
(7, 10, '_edit_lock', '1553053834:1'),
(8, 12, '_edit_lock', '1551756637:1'),
(9, 14, '_edit_lock', '1552533982:1'),
(10, 16, '_menu_item_type', 'custom'),
(11, 16, '_menu_item_menu_item_parent', '0'),
(12, 16, '_menu_item_object_id', '16'),
(13, 16, '_menu_item_object', 'custom'),
(14, 16, '_menu_item_target', ''),
(15, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 16, '_menu_item_xfn', ''),
(17, 16, '_menu_item_url', 'http://facebook.com'),
(19, 17, '_menu_item_type', 'custom'),
(20, 17, '_menu_item_menu_item_parent', '0'),
(21, 17, '_menu_item_object_id', '17'),
(22, 17, '_menu_item_object', 'custom'),
(23, 17, '_menu_item_target', ''),
(24, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 17, '_menu_item_xfn', ''),
(26, 17, '_menu_item_url', 'http://www.twitter.com'),
(28, 18, '_menu_item_type', 'custom'),
(29, 18, '_menu_item_menu_item_parent', '0'),
(30, 18, '_menu_item_object_id', '18'),
(31, 18, '_menu_item_object', 'custom'),
(32, 18, '_menu_item_target', ''),
(33, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 18, '_menu_item_xfn', ''),
(35, 18, '_menu_item_url', 'http://pinterest.com'),
(37, 19, '_menu_item_type', 'custom'),
(38, 19, '_menu_item_menu_item_parent', '0'),
(39, 19, '_menu_item_object_id', '19'),
(40, 19, '_menu_item_object', 'custom'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', 'http://www.youtube.com'),
(46, 20, '_menu_item_type', 'custom'),
(47, 20, '_menu_item_menu_item_parent', '0'),
(48, 20, '_menu_item_object_id', '20'),
(49, 20, '_menu_item_object', 'custom'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', 'http://instagram.com'),
(55, 21, '_menu_item_type', 'post_type'),
(56, 21, '_menu_item_menu_item_parent', '0'),
(57, 21, '_menu_item_object_id', '14'),
(58, 21, '_menu_item_object', 'page'),
(59, 21, '_menu_item_target', ''),
(60, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 21, '_menu_item_xfn', ''),
(62, 21, '_menu_item_url', ''),
(64, 22, '_menu_item_type', 'post_type'),
(65, 22, '_menu_item_menu_item_parent', '0'),
(66, 22, '_menu_item_object_id', '12'),
(67, 22, '_menu_item_object', 'page'),
(68, 22, '_menu_item_target', ''),
(69, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 22, '_menu_item_xfn', ''),
(71, 22, '_menu_item_url', ''),
(73, 23, '_menu_item_type', 'post_type'),
(74, 23, '_menu_item_menu_item_parent', '0'),
(75, 23, '_menu_item_object_id', '10'),
(76, 23, '_menu_item_object', 'page'),
(77, 23, '_menu_item_target', ''),
(78, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 23, '_menu_item_xfn', ''),
(80, 23, '_menu_item_url', ''),
(82, 24, '_menu_item_type', 'post_type'),
(83, 24, '_menu_item_menu_item_parent', '0'),
(84, 24, '_menu_item_object_id', '8'),
(85, 24, '_menu_item_object', 'page'),
(86, 24, '_menu_item_target', ''),
(87, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 24, '_menu_item_xfn', ''),
(89, 24, '_menu_item_url', ''),
(91, 25, '_menu_item_type', 'post_type'),
(92, 25, '_menu_item_menu_item_parent', '0'),
(93, 25, '_menu_item_object_id', '6'),
(94, 25, '_menu_item_object', 'page'),
(95, 25, '_menu_item_target', ''),
(96, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 25, '_menu_item_xfn', ''),
(98, 25, '_menu_item_url', ''),
(100, 26, '_menu_item_type', 'post_type'),
(101, 26, '_menu_item_menu_item_parent', '0'),
(102, 26, '_menu_item_object_id', '2'),
(103, 26, '_menu_item_object', 'page'),
(104, 26, '_menu_item_target', ''),
(105, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 26, '_menu_item_xfn', ''),
(107, 26, '_menu_item_url', ''),
(108, 28, '_wp_attached_file', '2019/02/destacada.jpg'),
(109, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1286;s:4:\"file\";s:21:\"2019/02/destacada.jpg\";s:5:\"sizes\";a:8:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:21:\"destacada-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"destacada-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"destacada-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"destacada-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"destacada-1024x686.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:686;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:21:\"destacada-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:21:\"destacada-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:21:\"destacada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 29, '_wp_attached_file', '2019/02/nosotros_01.jpg'),
(111, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1275;s:4:\"file\";s:23:\"2019/02/nosotros_01.jpg\";s:5:\"sizes\";a:8:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:23:\"nosotros_01-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"nosotros_01-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"nosotros_01-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"nosotros_01-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"nosotros_01-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:23:\"nosotros_01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:23:\"nosotros_01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:23:\"nosotros_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SLT-A55V\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"70\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 30, '_wp_attached_file', '2019/02/nosotros_02.jpg'),
(113, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1271;s:4:\"file\";s:23:\"2019/02/nosotros_02.jpg\";s:5:\"sizes\";a:8:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:23:\"nosotros_02-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"nosotros_02-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"nosotros_02-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"nosotros_02-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"nosotros_02-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:23:\"nosotros_02-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:23:\"nosotros_02-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:23:\"nosotros_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 31, '_wp_attached_file', '2019/02/nosotros_03.jpg'),
(115, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2019/02/nosotros_03.jpg\";s:5:\"sizes\";a:8:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:23:\"nosotros_03-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"nosotros_03-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"nosotros_03-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"nosotros_03-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"nosotros_03-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:23:\"nosotros_03-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:23:\"nosotros_03-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:23:\"nosotros_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 2, '_thumbnail_id', '28'),
(117, 2, '_edit_last', '1'),
(118, 35, '_edit_last', '1'),
(119, 35, '_edit_lock', '1550547812:1'),
(120, 2, 'Imagen_1', '29'),
(121, 2, '_Imagen_1', 'field_5c6b5dc1ca79d'),
(122, 2, 'descripcion1', '<h3>Recetas originales</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(123, 2, '_descripcion1', 'field_5c6b5f5aca7a0'),
(124, 2, 'Imagen_2', '30'),
(125, 2, '_Imagen_2', 'field_5c6b5f14ca79e'),
(126, 2, 'descripcion2', '<h3>Cerveza artesanal.</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(127, 2, '_descripcion2', 'field_5c6b5f95ca7a1'),
(128, 2, 'Imagen_3', '31'),
(129, 2, '_Imagen_3', 'field_5c6b5f1cca79f'),
(130, 2, 'descripcion3', '<h3>Horneadas a la leña.</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(131, 2, '_descripcion3', 'field_5c6b5fa1ca7a2'),
(132, 42, 'Imagen_1', '29'),
(133, 42, '_Imagen_1', 'field_5c6b5dc1ca79d'),
(134, 42, 'descripcion1', '<h3>Recetas originales</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(135, 42, '_descripcion1', 'field_5c6b5f5aca7a0'),
(136, 42, 'Imagen_2', '30'),
(137, 42, '_Imagen_2', 'field_5c6b5f14ca79e'),
(138, 42, 'descripcion2', '<h3>Cerveza artesanal.</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(139, 42, '_descripcion2', 'field_5c6b5f95ca7a1'),
(140, 42, 'Imagen_3', '31'),
(141, 42, '_Imagen_3', 'field_5c6b5f1cca79f'),
(142, 42, 'descripcion3', '<h3>Horneadas a la leña.</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(143, 42, '_descripcion3', 'field_5c6b5fa1ca7a2'),
(144, 43, 'Imagen_1', '29'),
(145, 43, '_Imagen_1', 'field_5c6b5dc1ca79d'),
(146, 43, 'descripcion1', '<h3>Recetas originales</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(147, 43, '_descripcion1', 'field_5c6b5f5aca7a0'),
(148, 43, 'Imagen_2', '30'),
(149, 43, '_Imagen_2', 'field_5c6b5f14ca79e'),
(150, 43, 'descripcion2', '<h3>Cerveza artesanal.</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(151, 43, '_descripcion2', 'field_5c6b5f95ca7a1'),
(152, 43, 'Imagen_3', '31'),
(153, 43, '_Imagen_3', 'field_5c6b5f1cca79f'),
(154, 43, 'descripcion3', '<h3>Horneadas a la leña.</h3>\r\n<p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco</p>'),
(155, 43, '_descripcion3', 'field_5c6b5fa1ca7a2'),
(156, 29, '_edit_lock', '1550546563:1'),
(157, 6, '_thumbnail_id', '28'),
(158, 47, '_edit_last', '1'),
(159, 47, '_edit_lock', '1550806585:1'),
(160, 49, '_edit_last', '1'),
(161, 49, 'precio', '20'),
(162, 49, '_precio', 'field_5c6f6e89c785b'),
(163, 49, '_edit_lock', '1550954018:1'),
(164, 50, '_wp_attached_file', '2019/02/pizza_01.jpg'),
(165, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2019/02/pizza_01.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"pizza_01-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pizza_01-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pizza_01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pizza_01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"pizza_01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"pizza_01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"pizza_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 49, '_thumbnail_id', '50'),
(167, 51, '_edit_last', '1'),
(168, 51, '_edit_lock', '1550954075:1'),
(169, 52, '_wp_attached_file', '2019/02/pizza_02.jpg'),
(170, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2019/02/pizza_02.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"pizza_02-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pizza_02-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pizza_02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pizza_02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"pizza_02-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"pizza_02-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"pizza_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 51, '_thumbnail_id', '52'),
(172, 51, 'precio', '15'),
(173, 51, '_precio', 'field_5c6f6e89c785b'),
(174, 53, '_edit_last', '1'),
(175, 53, '_edit_lock', '1550954537:1'),
(176, 54, '_wp_attached_file', '2019/02/pizza_03.jpg'),
(177, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:589;s:4:\"file\";s:20:\"2019/02/pizza_03.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"pizza_03-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pizza_03-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pizza_03-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pizza_03-768x452.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"pizza_03-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"pizza_03-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"pizza_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 53, '_thumbnail_id', '54'),
(179, 53, 'precio', '17'),
(180, 53, '_precio', 'field_5c6f6e89c785b'),
(181, 55, '_edit_last', '1'),
(182, 55, '_edit_lock', '1550954463:1'),
(183, 56, '_wp_attached_file', '2019/02/pizza_04.jpg'),
(184, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:670;s:4:\"file\";s:20:\"2019/02/pizza_04.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"pizza_04-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pizza_04-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pizza_04-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pizza_04-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"pizza_04-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"pizza_04-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"pizza_04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 55, '_thumbnail_id', '56'),
(186, 55, 'precio', '20'),
(187, 55, '_precio', 'field_5c6f6e89c785b'),
(188, 58, '_wp_attached_file', '2019/02/pizza_05.jpg'),
(189, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:20:\"2019/02/pizza_05.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"pizza_05-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pizza_05-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pizza_05-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pizza_05-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"pizza_05-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"pizza_05-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"pizza_05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 57, '_edit_last', '1'),
(191, 57, '_thumbnail_id', '58'),
(192, 57, 'precio', '17'),
(193, 57, '_precio', 'field_5c6f6e89c785b'),
(194, 57, '_edit_lock', '1550954225:1'),
(195, 59, '_edit_last', '1'),
(196, 59, '_edit_lock', '1550954451:1'),
(197, 60, '_wp_attached_file', '2019/02/pizza_06.jpg'),
(198, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:20:\"2019/02/pizza_06.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"pizza_06-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"pizza_06-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"pizza_06-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"pizza_06-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"pizza_06-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"pizza_06-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"pizza_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 59, '_thumbnail_id', '60'),
(200, 59, 'precio', '20'),
(201, 59, '_precio', 'field_5c6f6e89c785b'),
(202, 62, '_wp_attached_file', '2019/02/otros_01.jpg'),
(203, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:20:\"2019/02/otros_01.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"otros_01-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"otros_01-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"otros_01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"otros_01-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"otros_01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"otros_01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"otros_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 61, '_edit_last', '1'),
(205, 61, '_thumbnail_id', '62'),
(206, 61, 'precio', '10'),
(207, 61, '_precio', 'field_5c6f6e89c785b'),
(208, 61, '_edit_lock', '1550954605:1'),
(209, 63, '_edit_last', '1'),
(210, 63, '_edit_lock', '1550954658:1'),
(211, 64, '_wp_attached_file', '2019/02/otros_02.jpg'),
(212, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2019/02/otros_02.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"otros_02-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"otros_02-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"otros_02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"otros_02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"otros_02-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"otros_02-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"otros_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 63, '_thumbnail_id', '64'),
(214, 63, 'precio', '20'),
(215, 63, '_precio', 'field_5c6f6e89c785b'),
(216, 65, '_edit_last', '1'),
(217, 65, '_edit_lock', '1550954921:1'),
(218, 66, '_wp_attached_file', '2019/02/otros_03.jpg'),
(219, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:750;s:4:\"file\";s:20:\"2019/02/otros_03.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"otros_03-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"otros_03-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"otros_03-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"otros_03-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"otros_03-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"otros_03-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"otros_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 65, '_thumbnail_id', '66'),
(221, 65, 'precio', '15'),
(222, 65, '_precio', 'field_5c6f6e89c785b'),
(223, 67, '_edit_last', '1'),
(224, 67, '_edit_lock', '1550962187:1'),
(225, 68, '_wp_attached_file', '2019/02/otros_04.jpg'),
(226, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2019/02/otros_04.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:20:\"otros_04-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"otros_04-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"otros_04-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"otros_04-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:20:\"otros_04-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:20:\"otros_04-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:20:\"otros_04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 67, '_thumbnail_id', '68'),
(228, 67, 'precio', '15'),
(229, 67, '_precio', 'field_5c6f6e89c785b'),
(230, 6, '_wp_page_template', 'nuestras-especialidades.php'),
(235, 70, '_edit_lock', '1550979239:1'),
(236, 71, '_wp_attached_file', '2019/02/blog_01.jpg'),
(237, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:19:\"2019/02/blog_01.jpg\";s:5:\"sizes\";a:8:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:19:\"blog_01-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"blog_01-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"blog_01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"blog_01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"blog_01-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:19:\"blog_01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:19:\"blog_01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:19:\"blog_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 70, '_thumbnail_id', '71'),
(242, 74, '_edit_lock', '1550979280:1'),
(245, 74, '_thumbnail_id', '52'),
(246, 76, '_edit_lock', '1551150922:1'),
(249, 76, '_thumbnail_id', '31'),
(250, 8, '_edit_last', '1'),
(251, 8, '_thumbnail_id', '56'),
(253, 87, '_wp_attached_file', '2019/03/01.jpg'),
(254, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/03/01.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"01-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"01-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"01-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"01-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"01-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"01-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 88, '_wp_attached_file', '2019/03/02.jpg'),
(256, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:662;s:4:\"file\";s:14:\"2019/03/02.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"02-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"02-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"02-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"02-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"02-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"02-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 89, '_wp_attached_file', '2019/03/03.jpg'),
(258, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/03/03.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"03-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"03-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"03-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"03-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"03-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"03-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 90, '_wp_attached_file', '2019/03/04.jpg'),
(260, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/03/04.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"04-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"04-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"04-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"04-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"04-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"04-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 91, '_wp_attached_file', '2019/03/05.jpg'),
(262, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:637;s:4:\"file\";s:14:\"2019/03/05.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"05-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"05-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"05-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"05-768x489.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:489;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"05-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"05-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 92, '_wp_attached_file', '2019/03/06.jpg'),
(264, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/03/06.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"06-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"06-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"06-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"06-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"06-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"06-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 93, '_wp_attached_file', '2019/03/07.jpg'),
(266, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/03/07.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"07-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"07-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"07-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"07-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"07-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"07-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 94, '_wp_attached_file', '2019/03/08.jpg'),
(268, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/03/08.jpg\";s:5:\"sizes\";a:7:{s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:14:\"08-435x526.jpg\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"08-253x164.jpg\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"08-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"08-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:14:\"08-437x291.jpg\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:14:\"08-768x515.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"thumbnail_old_150x150\";a:4:{s:4:\"file\";s:14:\"08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(269, 10, '_thumbnail_id', '56'),
(270, 12, '_thumbnail_id', '56'),
(271, 99, '_edit_lock', '1551929742:1'),
(272, 99, '_thumbnail_id', '87'),
(273, 14, '_thumbnail_id', '56'),
(274, 103, '_edit_last', '1'),
(275, 103, '_edit_lock', '1552532821:1'),
(276, 106, '_wp_attached_file', '2019/03/pizza_transparente.gif'),
(277, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:574;s:6:\"height\";i:574;s:4:\"file\";s:30:\"2019/03/pizza_transparente.gif\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"pizza_transparente-253x164.gif\";s:5:\"width\";i:253;s:6:\"height\";i:164;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"pizza_transparente-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";}s:8:\"nosotros\";a:4:{s:4:\"file\";s:30:\"pizza_transparente-437x291.gif\";s:5:\"width\";i:437;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/gif\";}s:14:\"especialidades\";a:4:{s:4:\"file\";s:30:\"pizza_transparente-574x515.gif\";s:5:\"width\";i:574;s:6:\"height\";i:515;s:9:\"mime-type\";s:9:\"image/gif\";}s:23:\"especialidades_portrait\";a:4:{s:4:\"file\";s:30:\"pizza_transparente-435x526.gif\";s:5:\"width\";i:435;s:6:\"height\";i:526;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 14, '_edit_last', '1'),
(279, 14, 'contenido', '<h3>Ingredientes frescos en todas nuestras pizzas. </h3>\r\n<div class=\"hero\">\r\n<div class=\"contenido-hero\">\r\n<div class=\"texto-hero\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>\r\n</div>\r\n</div>\r\n</div>'),
(280, 14, '_contenido', 'field_5c89bb7a30be3'),
(281, 14, 'imagen', '106'),
(282, 14, '_imagen', 'field_5c89bbc030be4'),
(283, 107, 'contenido', '<h3>Ingredientes frescos en todas nuestras pizzas. </h3>\r\n<div class=\"hero\">\r\n<div class=\"contenido-hero\">\r\n<div class=\"texto-hero\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>\r\n</div>\r\n</div>\r\n</div>'),
(284, 107, '_contenido', 'field_5c89bb7a30be3'),
(285, 107, 'imagen', '106'),
(286, 107, '_imagen', 'field_5c89bbc030be4'),
(287, 14, 'contenidos', '<h3>la mejor pizza con ingredientes frescos</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>'),
(288, 14, '_contenidos', 'field_5c89bb7a30be3');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(289, 108, 'contenido', '<h3>Ingredientes frescos en todas nuestras pizzas. </h3>\r\n<div class=\"hero\">\r\n<div class=\"contenido-hero\">\r\n<div class=\"texto-hero\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>\r\n</div>\r\n</div>\r\n</div>'),
(290, 108, '_contenido', 'field_5c89bb7a30be3'),
(291, 108, 'imagen', '106'),
(292, 108, '_imagen', 'field_5c89bbc030be4'),
(293, 108, 'contenidos', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>'),
(294, 108, '_contenidos', 'field_5c89bb7a30be3'),
(295, 109, 'contenido', '<h3>Ingredientes frescos en todas nuestras pizzas. </h3>\r\n<div class=\"hero\">\r\n<div class=\"contenido-hero\">\r\n<div class=\"texto-hero\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>\r\n</div>\r\n</div>\r\n</div>'),
(296, 109, '_contenido', 'field_5c89bb7a30be3'),
(297, 109, 'imagen', '106'),
(298, 109, '_imagen', 'field_5c89bbc030be4'),
(299, 109, 'contenidos', '<h3>la mejor pizza con ingredientes frescos</h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. </p>'),
(300, 109, '_contenidos', 'field_5c89bb7a30be3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-01-27 00:59:35', '2019-01-27 00:59:35', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/lapizzeria/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'publish', 'closed', 'open', '', 'nosotros', '', '', '2019-02-19 03:10:34', '2019-02-19 03:10:34', '', 0, 'http://localhost/lapizzeria/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-27 00:59:35', '2019-01-27 00:59:35', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/lapizzeria.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-01-27 00:59:35', '2019-01-27 00:59:35', '', 0, 'http://localhost/lapizzeria/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-01-27 03:30:27', '2019-01-27 03:30:27', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/lapizzeria/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Nosotros', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-27 03:30:27', '2019-01-27 03:30:27', '', 2, 'http://localhost/lapizzeria/2019/01/27/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-01-27 03:30:57', '2019-01-27 03:30:57', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog  porque permanecerá en un solo lugar y aparecerá en la navegación de su  sitio (en la mayoría de los temas). </p>\n<!-- /wp:paragraph -->', 'menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2019-02-23 23:02:40', '2019-02-23 23:02:40', '', 0, 'http://localhost/lapizzeria/?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-01-27 03:30:57', '2019-01-27 03:30:57', '', 'menu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-27 03:30:57', '2019-01-27 03:30:57', '', 6, 'http://localhost/lapizzeria/2019/01/27/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-01-27 03:31:22', '2019-01-27 03:31:22', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-02-26 01:33:52', '2019-02-26 01:33:52', '', 0, 'http://localhost/lapizzeria/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-01-27 03:31:22', '2019-01-27 03:31:22', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-27 03:31:22', '2019-01-27 03:31:22', '', 8, 'http://localhost/lapizzeria/2019/01/27/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-01-27 03:32:26', '2019-01-27 03:32:26', '<!-- wp:gallery {\"ids\":[88,87,89,90,91,92,93,94],\"columns\":4,\"imageCrop\":false,\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-4\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg\" alt=\"\" data-id=\"88\" data-link=\"http://localhost/lapizzeria/galeria/attachment/02/\" class=\"wp-image-88\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg\" alt=\"\" data-id=\"87\" data-link=\"http://localhost/lapizzeria/galeria/attachment/01/\" class=\"wp-image-87\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg\" alt=\"\" data-id=\"89\" data-link=\"http://localhost/lapizzeria/galeria/attachment/03/\" class=\"wp-image-89\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg\" alt=\"\" data-id=\"90\" data-link=\"http://localhost/lapizzeria/galeria/attachment/04/\" class=\"wp-image-90\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg\" alt=\"\" data-id=\"91\" data-link=\"http://localhost/lapizzeria/galeria/attachment/05/\" class=\"wp-image-91\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg\" alt=\"\" data-id=\"92\" data-link=\"http://localhost/lapizzeria/galeria/attachment/06/\" class=\"wp-image-92\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg\" alt=\"\" data-id=\"93\" data-link=\"http://localhost/lapizzeria/galeria/attachment/07/\" class=\"wp-image-93\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg\" alt=\"\" data-id=\"94\" data-link=\"http://localhost/lapizzeria/galeria/attachment/08/\" class=\"wp-image-94\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Galeria', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2019-03-02 02:32:39', '2019-03-02 02:32:39', '', 0, 'http://localhost/lapizzeria/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-01-27 03:32:26', '2019-01-27 03:32:26', '', 'Galeria', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-01-27 03:32:26', '2019-01-27 03:32:26', '', 10, 'http://localhost/lapizzeria/2019/01/27/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-01-27 03:32:51', '2019-01-27 03:32:51', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2019-03-05 02:23:42', '2019-03-05 02:23:42', '', 0, 'http://localhost/lapizzeria/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-01-27 03:32:51', '2019-01-27 03:32:51', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-27 03:32:51', '2019-01-27 03:32:51', '', 12, 'http://localhost/lapizzeria/2019/01/27/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-01-27 03:33:29', '2019-01-27 03:33:29', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-03-14 03:10:44', '2019-03-14 03:10:44', '', 0, 'http://localhost/lapizzeria/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-01-27 03:33:29', '2019-01-27 03:33:29', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-01-27 03:33:29', '2019-01-27 03:33:29', '', 14, 'http://localhost/lapizzeria/2019/01/27/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 'facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 0, 'http://localhost/lapizzeria/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 'twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 0, 'http://localhost/lapizzeria/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 'pinteres', '', 'publish', 'closed', 'closed', '', 'pinteres', '', '', '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 0, 'http://localhost/lapizzeria/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 'youtube', '', 'publish', 'closed', 'closed', '', 'youtube', '', '', '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 0, 'http://localhost/lapizzeria/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 'instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2019-01-29 01:32:57', '2019-01-29 01:32:57', '', 0, 'http://localhost/lapizzeria/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2019-01-29 01:45:36', '2019-01-29 01:45:36', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-02-13 02:57:11', '2019-02-13 02:57:11', '', 0, 'http://localhost/lapizzeria/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-01-29 01:45:36', '2019-01-29 01:45:36', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-02-13 02:57:11', '2019-02-13 02:57:11', '', 0, 'http://localhost/lapizzeria/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2019-01-29 01:45:36', '2019-01-29 01:45:36', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-02-13 02:57:11', '2019-02-13 02:57:11', '', 0, 'http://localhost/lapizzeria/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2019-01-29 01:45:36', '2019-01-29 01:45:36', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-02-13 02:57:11', '2019-02-13 02:57:11', '', 0, 'http://localhost/lapizzeria/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2019-01-29 01:45:36', '2019-01-29 01:45:36', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-02-13 02:57:11', '2019-02-13 02:57:11', '', 0, 'http://localhost/lapizzeria/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2019-01-29 01:45:36', '2019-01-29 01:45:36', '', 'Nosotros', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-02-13 02:57:11', '2019-02-13 02:57:11', '', 0, 'http://localhost/lapizzeria/?p=26', 6, 'nav_menu_item', '', 0),
(28, 1, '2019-02-10 02:34:30', '2019-02-10 02:34:30', '', 'destacada', '', 'inherit', 'open', 'closed', '', 'destacada', '', '', '2019-02-10 02:34:30', '2019-02-10 02:34:30', '', 2, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/destacada.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-02-10 02:34:30', '2019-02-10 02:34:30', '', 'nosotros_01', '', 'inherit', 'open', 'closed', '', 'nosotros_01', '', '', '2019-02-10 02:34:30', '2019-02-10 02:34:30', '', 2, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/nosotros_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-02-10 02:34:30', '2019-02-10 02:34:30', '', 'nosotros_02', '', 'inherit', 'open', 'closed', '', 'nosotros_02', '', '', '2019-02-10 02:34:30', '2019-02-10 02:34:30', '', 2, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/nosotros_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-02-10 02:34:31', '2019-02-10 02:34:31', '', 'nosotros_03', '', 'inherit', 'open', 'closed', '', 'nosotros_03', '', '', '2019-02-10 02:34:31', '2019-02-10 02:34:31', '', 2, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/nosotros_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-02-10 03:19:43', '2019-02-10 03:19:43', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/lapizzeria/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-10 03:19:43', '2019-02-10 03:19:43', '', 2, 'http://localhost/lapizzeria/2019/02/10/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sobre Nosotros', 'sobre-nosotros', 'publish', 'closed', 'closed', '', 'group_5c6b5d82a6563', '', '', '2019-02-19 03:26:45', '2019-02-19 03:26:45', '', 0, 'http://localhost/lapizzeria/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:11:\"suba imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen1', 'Imagen_1', 'publish', 'closed', 'closed', '', 'field_5c6b5dc1ca79d', '', '', '2019-02-19 03:26:45', '2019-02-19 03:26:45', '', 35, 'http://localhost/lapizzeria/?post_type=acf-field&#038;p=36', 0, 'acf-field', '', 0),
(37, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:22:\"Agrega una descripcion\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion1', 'descripcion1', 'publish', 'closed', 'closed', '', 'field_5c6b5f5aca7a0', '', '', '2019-02-19 01:45:42', '2019-02-19 01:45:42', '', 35, 'http://localhost/lapizzeria/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:11:\"suba imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen2', 'Imagen_2', 'publish', 'closed', 'closed', '', 'field_5c6b5f14ca79e', '', '', '2019-02-19 03:26:45', '2019-02-19 03:26:45', '', 35, 'http://localhost/lapizzeria/?post_type=acf-field&#038;p=38', 2, 'acf-field', '', 0),
(39, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:22:\"Agrega una descripcion\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion2', 'descripcion2', 'publish', 'closed', 'closed', '', 'field_5c6b5f95ca7a1', '', '', '2019-02-19 01:45:42', '2019-02-19 01:45:42', '', 35, 'http://localhost/lapizzeria/?post_type=acf-field&p=39', 3, 'acf-field', '', 0),
(40, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:11:\"suba imagen\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen3', 'Imagen_3', 'publish', 'closed', 'closed', '', 'field_5c6b5f1cca79f', '', '', '2019-02-19 03:26:45', '2019-02-19 03:26:45', '', 35, 'http://localhost/lapizzeria/?post_type=acf-field&#038;p=40', 4, 'acf-field', '', 0),
(41, 1, '2019-02-19 01:45:42', '2019-02-19 01:45:42', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:22:\"Agrega una descripcion\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descripcion3', 'descripcion3', 'publish', 'closed', 'closed', '', 'field_5c6b5fa1ca7a2', '', '', '2019-02-19 01:45:42', '2019-02-19 01:45:42', '', 35, 'http://localhost/lapizzeria/?post_type=acf-field&p=41', 5, 'acf-field', '', 0),
(42, 1, '2019-02-19 02:52:27', '2019-02-19 02:52:27', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/lapizzeria/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-19 02:52:27', '2019-02-19 02:52:27', '', 2, 'http://localhost/lapizzeria/2019/02/19/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2019-02-19 03:10:34', '2019-02-19 03:10:34', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de su sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podría decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa Mariscos Recio fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/lapizzeria/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Sobre Nosotros', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-02-19 03:10:34', '2019-02-19 03:10:34', '', 2, 'http://localhost/lapizzeria/2019/02/19/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-02-22 03:13:43', '2019-02-22 03:13:43', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog  porque permanecerá en un solo lugar y aparecerá en la navegación de su  sitio (en la mayoría de los temas). </p>\n<!-- /wp:paragraph -->', 'menu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-22 03:13:43', '2019-02-22 03:13:43', '', 6, 'http://localhost/lapizzeria/2019/02/22/6-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-02-22 03:38:34', '2019-02-22 03:38:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"especialidades\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Especialidades', 'especialidades', 'publish', 'closed', 'closed', '', 'group_5c6f6e5040925', '', '', '2019-02-22 03:38:34', '2019-02-22 03:38:34', '', 0, 'http://localhost/lapizzeria/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2019-02-22 03:38:34', '2019-02-22 03:38:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Añada un precio del platillo\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'precio', 'precio', 'publish', 'closed', 'closed', '', 'field_5c6f6e89c785b', '', '', '2019-02-22 03:38:34', '2019-02-22 03:38:34', '', 47, 'http://localhost/lapizzeria/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2019-02-22 03:39:30', '2019-02-22 03:39:30', 'Con queso mozarella / romano / parmesano derretido y con queso chedar encima', 'Queso', '', 'publish', 'closed', 'closed', '', '49', '', '', '2019-02-23 20:36:01', '2019-02-23 20:36:01', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=49', 0, 'especialidades', '', 0),
(50, 1, '2019-02-23 20:32:45', '2019-02-23 20:32:45', '', 'pizza_01', '', 'inherit', 'open', 'closed', '', 'pizza_01', '', '', '2019-02-23 20:32:45', '2019-02-23 20:32:45', '', 49, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/pizza_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-02-23 20:36:57', '2019-02-23 20:36:57', 'Con una gran porción de tocino y carne de res, además de queso mozarella y chedar', 'Tocino', '', 'publish', 'closed', 'closed', '', 'tocino', '', '', '2019-02-23 20:36:57', '2019-02-23 20:36:57', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=51', 0, 'especialidades', '', 0),
(52, 1, '2019-02-23 20:36:47', '2019-02-23 20:36:47', '', 'pizza_02', '', 'inherit', 'open', 'closed', '', 'pizza_02', '', '', '2019-02-23 20:36:47', '2019-02-23 20:36:47', '', 51, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/pizza_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-02-23 20:37:48', '2019-02-23 20:37:48', 'Champiñones, aceitunas negras y verdes, cebolla y pimiento verde, además queso chedar', 'Vegetariana', '', 'publish', 'closed', 'closed', '', 'vegetariana', '', '', '2019-02-23 20:44:34', '2019-02-23 20:44:34', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=53', 0, 'especialidades', '', 0),
(54, 1, '2019-02-23 20:37:42', '2019-02-23 20:37:42', '', 'pizza_03', '', 'inherit', 'open', 'closed', '', 'pizza_03', '', '', '2019-02-23 20:37:42', '2019-02-23 20:37:42', '', 53, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/pizza_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-02-23 20:38:41', '2019-02-23 20:38:41', 'Peperoni, salsa italiana, carne de res, cebolla, pimiento verde, aceitunas negras y jalapeños', 'Especial', '', 'publish', 'closed', 'closed', '', 'especial', '', '', '2019-02-23 20:43:25', '2019-02-23 20:43:25', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=55', 0, 'especialidades', '', 0),
(56, 1, '2019-02-23 20:38:25', '2019-02-23 20:38:25', '', 'pizza_04', '', 'inherit', 'open', 'closed', '', 'pizza_04', '', '', '2019-02-23 20:38:25', '2019-02-23 20:38:25', '', 55, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/pizza_04.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-02-23 20:39:26', '2019-02-23 20:39:26', 'Espinacas, cebolla, jitomate, ajo fresco, queso derretido y con queso chedar encima', 'Espinacas', '', 'publish', 'closed', 'closed', '', 'espinacas', '', '', '2019-02-23 20:39:26', '2019-02-23 20:39:26', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=57', 0, 'especialidades', '', 0),
(58, 1, '2019-02-23 20:39:16', '2019-02-23 20:39:16', '', 'pizza_05', '', 'inherit', 'open', 'closed', '', 'pizza_05', '', '', '2019-02-23 20:39:16', '2019-02-23 20:39:16', '', 57, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/pizza_05.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2019-02-23 20:43:12', '2019-02-23 20:43:12', 'Mucho queso! además de jamón y peperoni, con salsa italiana, tocino, cebolla y pimientos verdes', 'Pizza Blanca', '', 'publish', 'closed', 'closed', '', 'pizza-blanca', '', '', '2019-02-23 20:43:12', '2019-02-23 20:43:12', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=59', 0, 'especialidades', '', 0),
(60, 1, '2019-02-23 20:41:07', '2019-02-23 20:41:07', '', 'pizza_06', '', 'inherit', 'open', 'closed', '', 'pizza_06', '', '', '2019-02-23 20:41:07', '2019-02-23 20:41:07', '', 59, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/pizza_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-02-23 20:45:46', '2019-02-23 20:45:46', 'Servido con ensalada y pan de ajo fresco, puede ser con spaguetti y pollo con carne de res', 'Pasta', '', 'publish', 'closed', 'closed', '', 'pasta', '', '', '2019-02-23 20:45:46', '2019-02-23 20:45:46', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=61', 0, 'especialidades', '', 0),
(62, 1, '2019-02-23 20:45:39', '2019-02-23 20:45:39', '', 'otros_01', '', 'inherit', 'open', 'closed', '', 'otros_01', '', '', '2019-02-23 20:45:39', '2019-02-23 20:45:39', '', 61, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/otros_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-02-23 20:46:36', '2019-02-23 20:46:36', 'Relleno generosamente, cuidadosamente cocinado y cubierto con nuestra salsa especial de ajo', 'Calzone', '', 'publish', 'closed', 'closed', '', 'calzone', '', '', '2019-02-23 20:46:36', '2019-02-23 20:46:36', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=63', 0, 'especialidades', '', 0),
(64, 1, '2019-02-23 20:46:30', '2019-02-23 20:46:30', '', 'otros_02', '', 'inherit', 'open', 'closed', '', 'otros_02', '', '', '2019-02-23 20:46:30', '2019-02-23 20:46:30', '', 63, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/otros_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-02-23 20:47:08', '2019-02-23 20:47:08', 'Capaz de salsa con carne de res y cuatro tipos de quesos, cocinado a la perfección', 'Lasaña', '', 'publish', 'closed', 'closed', '', 'lasana', '', '', '2019-02-23 20:47:08', '2019-02-23 20:47:08', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=65', 0, 'especialidades', '', 0),
(66, 1, '2019-02-23 20:47:02', '2019-02-23 20:47:02', '', 'otros_03', '', 'inherit', 'open', 'closed', '', 'otros_03', '', '', '2019-02-23 20:47:02', '2019-02-23 20:47:02', '', 65, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/otros_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-02-23 20:51:36', '2019-02-23 20:51:36', 'Lechuga, pollo asado, tomates pequeños, incluye queso parmesano y crutones', 'Ensaladas', '', 'publish', 'closed', 'closed', '', 'ensaladas', '', '', '2019-02-23 20:52:05', '2019-02-23 20:52:05', '', 0, 'http://localhost/lapizzeria/?post_type=especialidades&#038;p=67', 0, 'especialidades', '', 0),
(68, 1, '2019-02-23 20:51:29', '2019-02-23 20:51:29', '', 'otros_04', '', 'inherit', 'open', 'closed', '', 'otros_04', '', '', '2019-02-23 20:51:29', '2019-02-23 20:51:29', '', 67, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/otros_04.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-02-24 03:36:18', '2019-02-24 03:36:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'La especilidad del mes', '', 'publish', 'open', 'open', '', 'la-especilidad-del-mes', '', '', '2019-02-24 03:36:18', '2019-02-24 03:36:18', '', 0, 'http://localhost/lapizzeria/?p=70', 0, 'post', '', 0),
(71, 1, '2019-02-24 03:35:59', '2019-02-24 03:35:59', '', 'blog_01', '', 'inherit', 'open', 'closed', '', 'blog_01', '', '', '2019-02-24 03:35:59', '2019-02-24 03:35:59', '', 70, 'http://localhost/lapizzeria/wp-content/uploads/2019/02/blog_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-02-24 03:36:18', '2019-02-24 03:36:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'La especilidad del mes', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-02-24 03:36:18', '2019-02-24 03:36:18', '', 70, 'http://localhost/lapizzeria/2019/02/24/70-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-02-24 03:37:08', '2019-02-24 03:37:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'Top 3 Restaurante de pizza de mexico.', '', 'publish', 'open', 'open', '', 'top-3-restaurante-de-pizza-de-mexico', '', '', '2019-02-24 03:37:08', '2019-02-24 03:37:08', '', 0, 'http://localhost/lapizzeria/?p=74', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(75, 1, '2019-02-24 03:37:08', '2019-02-24 03:37:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'Top 3 Restaurante de pizza de mexico.', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2019-02-24 03:37:08', '2019-02-24 03:37:08', '', 74, 'http://localhost/lapizzeria/2019/02/24/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-02-24 03:38:13', '2019-02-24 03:38:13', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'Miercoles de 2 por 1', '', 'publish', 'open', 'open', '', 'miercoles-de-2-por-1', '', '', '2019-02-26 03:07:09', '2019-02-26 03:07:09', '', 0, 'http://localhost/lapizzeria/?p=76', 0, 'post', '', 3),
(77, 1, '2019-02-24 03:38:13', '2019-02-24 03:38:13', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'Miercoles de 2 por 1', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2019-02-24 03:38:13', '2019-02-24 03:38:13', '', 76, 'http://localhost/lapizzeria/2019/02/24/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-02-26 03:04:41', '2019-02-26 03:04:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus. Etiam tincidunt egestas ante ut dignissim. Donec malesuada a libero id faucibus. Sed eget semper lorem. Nunc tincidunt tempus malesuada. Nam tincidunt lobortis blandit. Sed posuere nisl ante, at placerat erat pulvinar ut. Sed ullamcorper nisl facilisis nisl consequat auctor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse ac quam velit. Donec scelerisque ligula in aliquam imperdiet. Integer scelerisque turpis justo, vitae pharetra ex maximus sit amet. Suspendisse ex neque, posuere eu augue non, suscipit accumsan magna. Vivamus condimentum nunc quis aliquam pretium. Fusce vel pharetra dolor. Phasellus ac hendrerit dolor, at ullamcorper lectus. Sed vitae lorem posuere, molestie nulla non, interdum lacus. Proin pulvinar pretium fermentum. Integer sagittis urna eget fermentum pellentesque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed a ullamcorper dolor. Vivamus ultrices magna non turpis fringilla, quis varius magna malesuada. Nunc consequat semper diam, ac placerat ante pretium nec. In eu malesuada diam, quis tempor ante. Nunc vulputate eleifend sodales. Phasellus sagittis, justo nec convallis placerat, tellus ante euismod quam, eu tincidunt mi neque vel nisi. Donec condimentum, ex eu tempus eleifend, nunc sapien semper risus, vitae ultrices velit orci ut lacus. In sit amet mauris convallis, venenatis nulla a, tincidunt nulla. Proin sollicitudin nisi quis blandit laoreet. Sed est tortor, fermentum non sagittis sit amet, fermentum ut orci. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut nisi lorem, rutrum eget dolor eu, aliquam tempor dui. Praesent pharetra magna ipsum, sed elementum leo scelerisque et. Donec arcu enim, fermentum quis scelerisque sit amet, volutpat quis nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis sit amet arcu odio. Pellentesque fringilla orci tincidunt libero finibus, id dapibus diam rhoncus. Sed vel ligula nec urna mattis auctor at ut ex. Duis efficitur nisi urna, vel ultricies turpis lobortis in. Phasellus malesuada blandit magna, in tempor diam elementum ut. Pellentesque pretium nibh lacus, at auctor urna tempus sed. Mauris fringilla justo a tristique volutpat. Nunc condimentum mi nec porta blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque risus metus, varius in placerat eget, convallis id libero. Suspendisse id mattis sapien. In hac habitasse platea dictumst. Nullam dignissim, purus vitae pretium finibus, neque mi scelerisque arcu, commodo ullamcorper mauris nisl et justo. Integer in dignissim odio. Integer augue orci, ultrices sit amet posuere vitae, porta a risus. Donec lobortis lobortis pretium. Nulla at lorem felis. Etiam magna risus, commodo vel eleifend ac, lacinia vitae justo. Nam faucibus metus quis elit vehicula, a ornare dolor dignissim. Nunc pulvinar pharetra neque, dictum ullamcorper lacus egestas nec. Sed ante ipsum, posuere eget nunc id, fringilla sagittis sapien. Duis arcu velit, elementum non luctus in, interdum porttitor dolor. Vestibulum congue placerat sollicitudin. Suspendisse varius arcu vitae volutpat feugiat. Nulla risus eros, feugiat sit amet egestas non, euismod in quam.</p>\n<!-- /wp:paragraph -->', 'Miercoles de 2 por 1', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2019-02-26 03:04:41', '2019-02-26 03:04:41', '', 76, 'http://localhost/lapizzeria/2019/02/26/76-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2019-03-01 03:34:08', '2019-03-01 03:34:08', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2019-03-01 03:34:08', '2019-03-01 03:34:08', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2019-03-01 03:34:08', '2019-03-01 03:34:08', '', '02', '', 'inherit', 'open', 'closed', '', '02', '', '', '2019-03-01 03:34:08', '2019-03-01 03:34:08', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2019-03-01 03:34:09', '2019-03-01 03:34:09', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2019-03-01 03:34:09', '2019-03-01 03:34:09', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-03-01 03:34:10', '2019-03-01 03:34:10', '', '04', '', 'inherit', 'open', 'closed', '', '04', '', '', '2019-03-01 03:34:10', '2019-03-01 03:34:10', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2019-03-01 03:34:11', '2019-03-01 03:34:11', '', '05', '', 'inherit', 'open', 'closed', '', '05', '', '', '2019-03-01 03:34:11', '2019-03-01 03:34:11', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2019-03-01 03:34:11', '2019-03-01 03:34:11', '', '06', '', 'inherit', 'open', 'closed', '', '06', '', '', '2019-03-01 03:34:11', '2019-03-01 03:34:11', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-03-01 03:34:12', '2019-03-01 03:34:12', '', '07', '', 'inherit', 'open', 'closed', '', '07', '', '', '2019-03-01 03:34:12', '2019-03-01 03:34:12', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-03-01 03:34:13', '2019-03-01 03:34:13', '', '08', '', 'inherit', 'open', 'closed', '', '08', '', '', '2019-03-01 03:34:13', '2019-03-01 03:34:13', '', 10, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2019-03-01 03:36:18', '2019-03-01 03:36:18', '<!-- wp:gallery {\"ids\":[88,87,89,90,91,92,93,94],\"columns\":4,\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-4 is-cropped\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg\" alt=\"\" data-id=\"88\" data-link=\"http://localhost/lapizzeria/galeria/attachment/02/\" class=\"wp-image-88\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg\" alt=\"\" data-id=\"87\" data-link=\"http://localhost/lapizzeria/galeria/attachment/01/\" class=\"wp-image-87\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg\" alt=\"\" data-id=\"89\" data-link=\"http://localhost/lapizzeria/galeria/attachment/03/\" class=\"wp-image-89\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg\" alt=\"\" data-id=\"90\" data-link=\"http://localhost/lapizzeria/galeria/attachment/04/\" class=\"wp-image-90\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg\" alt=\"\" data-id=\"91\" data-link=\"http://localhost/lapizzeria/galeria/attachment/05/\" class=\"wp-image-91\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg\" alt=\"\" data-id=\"92\" data-link=\"http://localhost/lapizzeria/galeria/attachment/06/\" class=\"wp-image-92\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg\" alt=\"\" data-id=\"93\" data-link=\"http://localhost/lapizzeria/galeria/attachment/07/\" class=\"wp-image-93\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg\" alt=\"\" data-id=\"94\" data-link=\"http://localhost/lapizzeria/galeria/attachment/08/\" class=\"wp-image-94\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Galeria', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-03-01 03:36:18', '2019-03-01 03:36:18', '', 10, 'http://localhost/lapizzeria/2019/03/01/10-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-03-02 02:32:39', '2019-03-02 02:32:39', '<!-- wp:gallery {\"ids\":[88,87,89,90,91,92,93,94],\"columns\":4,\"imageCrop\":false,\"linkTo\":\"media\"} -->\n<ul class=\"wp-block-gallery columns-4\"><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/02.jpg\" alt=\"\" data-id=\"88\" data-link=\"http://localhost/lapizzeria/galeria/attachment/02/\" class=\"wp-image-88\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/01.jpg\" alt=\"\" data-id=\"87\" data-link=\"http://localhost/lapizzeria/galeria/attachment/01/\" class=\"wp-image-87\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/03.jpg\" alt=\"\" data-id=\"89\" data-link=\"http://localhost/lapizzeria/galeria/attachment/03/\" class=\"wp-image-89\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/04.jpg\" alt=\"\" data-id=\"90\" data-link=\"http://localhost/lapizzeria/galeria/attachment/04/\" class=\"wp-image-90\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/05.jpg\" alt=\"\" data-id=\"91\" data-link=\"http://localhost/lapizzeria/galeria/attachment/05/\" class=\"wp-image-91\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/06.jpg\" alt=\"\" data-id=\"92\" data-link=\"http://localhost/lapizzeria/galeria/attachment/06/\" class=\"wp-image-92\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/07.jpg\" alt=\"\" data-id=\"93\" data-link=\"http://localhost/lapizzeria/galeria/attachment/07/\" class=\"wp-image-93\"/></a></figure></li><li class=\"blocks-gallery-item\"><figure><a href=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg\"><img src=\"http://localhost/lapizzeria/wp-content/uploads/2019/03/08.jpg\" alt=\"\" data-id=\"94\" data-link=\"http://localhost/lapizzeria/galeria/attachment/08/\" class=\"wp-image-94\"/></a></figure></li></ul>\n<!-- /wp:gallery -->', 'Galeria', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-03-02 02:32:39', '2019-03-02 02:32:39', '', 10, 'http://localhost/lapizzeria/2019/03/02/10-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-03-07 03:33:29', '2019-03-07 03:33:29', '<!-- wp:paragraph -->\n<p>Nos pondremos en contacto con usted a la brevedad.</p>\n<!-- /wp:paragraph -->', 'Gracias por su reserva', '', 'publish', 'closed', 'closed', '', 'gracias-por-su-reserva', '', '', '2019-03-07 03:33:29', '2019-03-07 03:33:29', '', 0, 'http://localhost/lapizzeria/?page_id=99', 0, 'page', '', 0),
(100, 1, '2019-03-07 03:33:29', '2019-03-07 03:33:29', '<!-- wp:paragraph -->\n<p>Nos pondremos en contacto con usted a la brevedad.</p>\n<!-- /wp:paragraph -->', 'Gracias por su reserva', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-03-07 03:33:29', '2019-03-07 03:33:29', '', 99, 'http://localhost/lapizzeria/2019/03/07/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-03-10 03:02:40', '2019-03-10 03:02:40', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-03-10 03:02:40', '2019-03-10 03:02:40', '', 14, 'http://localhost/lapizzeria/2019/03/10/14-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2019-03-14 02:27:06', '2019-03-14 02:27:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"14\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'inicio', 'inicio', 'publish', 'closed', 'closed', '', 'group_5c89bb4fd283d', '', '', '2019-03-14 03:08:04', '2019-03-14 03:08:04', '', 0, 'http://localhost/lapizzeria/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2019-03-14 02:27:06', '2019-03-14 02:27:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:24:\"Agregue la descripción.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'contenidos', 'contenidos', 'publish', 'closed', 'closed', '', 'field_5c89bb7a30be3', '', '', '2019-03-14 03:07:22', '2019-03-14 03:07:22', '', 103, 'http://localhost/lapizzeria/?post_type=acf-field&#038;p=104', 0, 'acf-field', '', 0),
(105, 1, '2019-03-14 02:27:06', '2019-03-14 02:27:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagen', 'imagen', 'publish', 'closed', 'closed', '', 'field_5c89bbc030be4', '', '', '2019-03-14 02:27:06', '2019-03-14 02:27:06', '', 103, 'http://localhost/lapizzeria/?post_type=acf-field&p=105', 1, 'acf-field', '', 0),
(106, 1, '2019-03-14 02:30:17', '2019-03-14 02:30:17', '', 'pizza_transparente', '', 'inherit', 'open', 'closed', '', 'pizza_transparente', '', '', '2019-03-14 02:30:47', '2019-03-14 02:30:47', '', 14, 'http://localhost/lapizzeria/wp-content/uploads/2019/03/pizza_transparente.gif', 0, 'attachment', 'image/gif', 0),
(107, 1, '2019-03-14 02:30:47', '2019-03-14 02:30:47', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-03-14 02:30:47', '2019-03-14 02:30:47', '', 14, 'http://localhost/lapizzeria/2019/03/14/14-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-03-14 03:09:41', '2019-03-14 03:09:41', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-03-14 03:09:41', '2019-03-14 03:09:41', '', 14, 'http://localhost/lapizzeria/2019/03/14/14-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-03-14 03:10:44', '2019-03-14 03:10:44', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo mi. Ut faucibus scelerisque efficitur. Donec gravida fringilla turpis, id iaculis augue hendrerit quis. Pellentesque pulvinar odio lectus, quis varius enim commodo vel. Suspendisse eget maximus mauris. Sed nec blandit purus.&nbsp;\n\n</p>\n<!-- /wp:paragraph -->', 'Inicio', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-03-14 03:10:44', '2019-03-14 03:10:44', '', 14, 'http://localhost/lapizzeria/2019/03/14/14-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_reservaciones`
--

CREATE TABLE `wp_reservaciones` (
  `id` mediumint(9) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telefono` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensaje` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_reservaciones`
--

INSERT INTO `wp_reservaciones` (`id`, `nombre`, `fecha`, `correo`, `telefono`, `mensaje`) VALUES
(1, 'alex', '2019-03-05 13:59:00', 'neftalex@gmail.com', '6873673687', 'sfjslf'),
(2, 'neftali', '2000-05-10 13:59:00', 'neftali_saints@hotmail.com', '1232313', 'asdgagasg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'social', 'social', 0),
(3, 'header', 'header', 0),
(4, 'Pizzas', 'pizzas', 0),
(7, 'Otros', 'otros', 0),
(8, 'Blog', 'blog', 0),
(9, 'Especiales', 'especiales', 0),
(10, 'promocionesespeciales', 'promocionesespeciales', 0),
(11, 'promocion', 'promocion', 0),
(12, 'especiales', 'especiales', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 3, 0),
(22, 3, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(49, 4, 0),
(51, 4, 0),
(53, 4, 0),
(55, 4, 0),
(57, 4, 0),
(59, 4, 0),
(61, 7, 0),
(63, 7, 0),
(65, 7, 0),
(67, 7, 0),
(70, 1, 0),
(74, 1, 0),
(76, 8, 0),
(76, 9, 0),
(76, 11, 0),
(76, 12, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 6),
(7, 7, 'category', '', 0, 4),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'post_tag', '', 0, 0),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"065d5d5de5930d130e4e5b4b354a1d247265e5be0bf6b67f24a5ecaceed1b224\";a:4:{s:10:\"expiration\";i:1554859311;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/73.0.3683.75 Chrome/73.0.3683.75 Safari/537.36\";s:5:\"login\";i:1554686511;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '112'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1552533040'),
(23, 1, 'enable_custom_fields', '1'),
(24, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}'),
(28, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:23:\"acf-group_5c89bb4fd283d\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B8FQMg7cctVscuEOYuDIjWgJ7SPVer.', 'admin', 'webmayansolutions@gmail.com', '', '2019-01-27 00:59:35', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_reservaciones`
--
ALTER TABLE `wp_reservaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `wp_reservaciones`
--
ALTER TABLE `wp_reservaciones`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
