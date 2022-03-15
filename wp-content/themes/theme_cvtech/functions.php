<?php
/**
 * theme_cvtech functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package theme_cvtech
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function theme_cvtech_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on theme_cvtech, use a find and replace
		* to change 'theme_cvtech' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'theme_cvtech', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'menu-1' => esc_html__( 'Primary', 'theme_cvtech' ),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'theme_cvtech_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'theme_cvtech_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function theme_cvtech_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'theme_cvtech_content_width', 640 );
}
add_action( 'after_setup_theme', 'theme_cvtech_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function theme_cvtech_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'theme_cvtech' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'theme_cvtech' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'theme_cvtech_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function theme_cvtech_scripts() {
	wp_enqueue_style( 'theme_cvtech-style', get_stylesheet_uri(), array(), _S_VERSION );
	wp_style_add_data( 'theme_cvtech-style', 'rtl', 'replace' );
	wp_enqueue_style( 'cvtech-custom-style_theo', get_stylesheet_directory_uri(). "/assets/css/style_theo.css",false,1.1,'all');
	wp_enqueue_style( 'cvtech-custom-style_alexis', get_stylesheet_directory_uri(). "/assets/css/style_alexis.css",false,1.1,'all');
	wp_enqueue_style( 'cvtech-custom-style_safia', get_stylesheet_directory_uri(). "/assets/css/style_safia.css",false,1.1,'all');
	wp_enqueue_style( 'cvtech-custom-style_maxime', get_stylesheet_directory_uri(). "/assets/css/style_maxime.css",false,1.1,'all');
	wp_enqueue_style( 'cvtech-custom-style_fabien', get_stylesheet_directory_uri(). "/assets/css/style_fabien.css",false,1.1,'all');

	wp_enqueue_script( 'theme_cvtech-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
	wp_register_script('main_théo', get_template_directory_uri() . '/assets/js/main_théo.js', array(), '1.0.0', true);
    wp_enqueue_script('main_théo');

	wp_register_script('main_alexis', get_template_directory_uri() . '/assets/js/main_alexis.js', array(), '1.0.0', true);
    wp_enqueue_script('main_alexis');

	wp_register_script('main_fabien', get_template_directory_uri() . '/assets/js/main_fabien.js', array(), '1.0.0', true);
    wp_enqueue_script('main_fabien');

	wp_register_script('main_maxime', get_template_directory_uri() . '/assets/js/main_maxime.js', array(), '1.0.0', true);
    wp_enqueue_script('main_maxime');

	wp_register_script('main_safia', get_template_directory_uri() . '/assets/js/main_safia.js', array(), '1.0.0', true);
    wp_enqueue_script('main_safia');
}
add_action( 'wp_enqueue_scripts', 'theme_cvtech_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

