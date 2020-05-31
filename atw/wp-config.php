<?php
/**
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define( 'DB_NAME', 'atw' );

/** Tu nombre de usuario de MySQL */
define( 'DB_USER', 'root' );

/** Tu contraseña de MySQL */
define( 'DB_PASSWORD', '' );

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define( 'DB_HOST', 'localhost' );

/** Codificación de caracteres para la base de datos. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY', '16DF<~N+JutiO9nIg:7qNU99?9Y:7f9bntdMc$Wq%H3V?NHMj2#]cJs2}>,v*0$f' );
define( 'SECURE_AUTH_KEY', '6v0u*(`Y^G~ /Y5D[ ;[#73:9FPG}g4S-.U/^eG7pSJsEu.U8T}Ki,`oTcx^+JvE' );
define( 'LOGGED_IN_KEY', 'TI> !Hg67Qv1S>kAZck2t/;z/6:@I]&wc6ZjYn-ZhdElN:HPw-tn,:ahe}^vwAtD' );
define( 'NONCE_KEY', 'H(}CEG^dL-p$BJ&I/AQ#{RJ>pl>}4uso-R(8C4o|6nH54#-9w#W+}%-`d4>zU%SM' );
define( 'AUTH_SALT', '%@Nf4G#Ez;m1-,I6qp$&{R2`:*ZklE{3K;jyROfaPKA.w$1`y{R,j BMivYv@5R!' );
define( 'SECURE_AUTH_SALT', 'ZvVWU3GG~S|otA>$>` )eFl?W]a*b>RF#<f.h_H~`1TE(nej/y[ !`vp~5/q5Ils' );
define( 'LOGGED_IN_SALT', '[l(}_tJ(G]4d:1eL~iVKL9dSt0J*&rAhp5giQOV4rGy>]BOVjJOBR2Z2=QPASP:U' );
define( 'NONCE_SALT', 'eC]c@`L<RC~t@Blws,[?e9,w&J-VK(=_cXRW8T>8|K~EmHJPR9)iVCCC[k[J(eT9' );

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix = 'atw_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define('FS_METHOD', 'direct');


