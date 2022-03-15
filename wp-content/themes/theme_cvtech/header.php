<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package theme_cvtech
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<header>
	<nav>
		<div class="logo">
			<a class="nav_title" href="#">Bertolucci</a>
		</div>
		<input type="checkbox" id="click">
		<label for="click" class="menu-btn">
			<i class="fas fa-bars"></i>
		</label>
		<ul>
			<li><a href="#aboutContainer">Accueil</a></li>
			<li><a href="#skillsContainer">Contact</a></li>
			<li><a href="#projectsContainer">Connexion</a></li>
		</ul>
	</nav>
</header>