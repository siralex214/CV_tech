<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'sql11480472' );

/** Database username */
define( 'DB_USER', 'sql11480472' );

/** Database password */
define( 'DB_PASSWORD', 'y5NCU6HQ1t' );

/** Database hostname */
define('DB_HOST', 'sql11.freesqldatabase.com');

/** Database charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The database collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', 'G{V(}EEViB.?$Az^k6+t& rmDDEhc^ZpzjGrvTOj_EQLielHcmh!!H]bi?n=vTi_');
define('SECURE_AUTH_KEY', '{*H(97V>,6Mx6{( _EV4Y,T4%n;~Iv75KFF~E[|KSgsXg56G<$DlGwIkVL{YXH2!');
define('LOGGED_IN_KEY', 'Ui)J7)C8wb=4/~.%hpb4wrU~3I0(J~4Y(ldXF%]61*R|4*EF|qH+:Kf{]Ui%q]Bh');
define('NONCE_KEY', '7dO`Pk-[:ad_p(xSQ<>8%i^k~$`4+11`FE}~GJi`Hm8B9 BC**Z>rBq2Fl;:}3CC');
define('AUTH_SALT', 'kGu|~!M$>}x?$-[hSqMBCVc)c24rY,.SzObf[Iut-[/q ?$%v9-lfJLyew/fVM5!');
define('SECURE_AUTH_SALT', '%zK&lkOQm4;pZUd$v:#yhg`JS~oeB-B +&&M~Mj:-rMI?n KCh|IGZV[/bIwsB@5');
define('LOGGED_IN_SALT', 'FK,pZo>1:}9gDT1DMk7+VD1Vn0i8:nxCy2RYaI[w;)I,baDt`u0ONTo)$7U]p4sL');
define('NONCE_SALT', 'A=[%MD|L{Z%2Z4T)/cOKxkkUe4`mfCp#&6~  Bt.!)_1f)V=DQYAHF0xKphRr^LB');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'cv_wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define('WP_DEBUG', false);

/* Add any custom values between this line and the "stop editing" line. */


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
