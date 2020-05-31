<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'lapizzeria');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');
/**para que no pida ftp */
define('FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'n. o}^J]ved2w!g7>=RSce:1Gu3/ ?>VZ!c-`YxTFA(cRKu>-<LZ.+UKa=}-Jw1u');
define('SECURE_AUTH_KEY',  ':6~.OdIJ&>h`B|2J>$IglT4K<7$:g&MwhWDUCzKdF_>ndpW/}4nX8F wF__G^`<+');
define('LOGGED_IN_KEY',    '3Iil~nvv,=zoyZ(nQMmLnjQ)lt^D|N.{z!3k,ovV-tL=U3=a5}8k%CYk|&r+^$/7');
define('NONCE_KEY',        '$PtCR$7_Hb$<)`B?Za%G>JYQNPM&CvNd[uN^?`bx)`P@=FknvJNK#lzxYJty:{tI');
define('AUTH_SALT',        'Rw|SrlB^IxwJ(gNTpLL{l5Db=v`vADG9GVe~f3[;[YBEI.P}W)`g+SjHoA=V=P%z');
define('SECURE_AUTH_SALT', '03Vv `;Wul]$-=]D@SEjd>vspnM]0cAd;S6XX? 9oCZMhPq/F(BcoyuO-{=i@KNy');
define('LOGGED_IN_SALT',   '[yIfiBR2TP=TP9L>n!=gUVpFj2ybR?0UnpRk $1uGbiIBd=8b]ULw$`Z;X9%3+W:');
define('NONCE_SALT',       'vqTPl}v?j{)rEnL1H|ZI-BJJe3 +76[|G?aP?9M).BLC7Fim,RB:U&[*VlaKd{pH');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

