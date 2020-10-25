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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'SBXAb!>1E1D?8}tWZi53l[~$dMY+)Dei6JY|r1V&:9@oMm2G3zFIdK$Z$;%Juz(r' );
define( 'SECURE_AUTH_KEY',  '-_rh<Ypd=U,HO6|=G;ii,fa3QP:,V0EGjJu~.|T!{(/( bvg3KsJQ)ymYQ2F6z>q' );
define( 'LOGGED_IN_KEY',    'H`h#U)=9_hkSS4{cuylNbhBJ_u;TPA!`7uoh%KYQYj t;_Vi|V-}$RgFJSz[ i]1' );
define( 'NONCE_KEY',        ';/?Cr+!ZucGP `20=6,[x-* ;s0~)mz5-iaSQF5wiMp:J]}*ydXy~S|0oQ#G`mEu' );
define( 'AUTH_SALT',        '3s(b^H#`bC7+HS^9e<Z2.C|oNzZ0SbcW5;tK#cRPt;(d%qDCxcmFoIh<#@bK7[B[' );
define( 'SECURE_AUTH_SALT', 'OqV%<fh8Srm<7Qd}j#Vq?AX&DaS a=9a/e~aE yZ #.~!I-R5}9`Bh7jbR/PI`Ua' );
define( 'LOGGED_IN_SALT',   'X/=5z7l4NG^Q~?TVDHW vng`pB+Y8C4fo~8pF4_+VgK!JlP<DE#fe-#9_<MzcZV,' );
define( 'NONCE_SALT',       ':,S7<q_*[@U}m;?6x>;G39g)A5=;}FHC1MHI[^F?c7U%j!?zY)D^<EqCAc!ZQH@3' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';