<?php
$error = [];
$prenom = "";
$nom = "";
$email = "";
$mdp = "";
$role = "role_USER";
if (!empty($_POST)) {
	$prenom = $_POST['prenom'];
	$nom = $_POST['nom'];
	$email = $_POST['email_inscription'];
	$mdp = $_POST['password_inscription'];


	if (empty($_POST['password_inscription'])) {
		$error["mdp"] = "champs vide";
	} else {
		if ($_POST['password_inscription'] != $_POST['password2']) {
			$error["mdp"] = 'mauvais mot de passe';
		}
	}

	if (!is_email($_POST['email_inscription'])) {
		$error["email_inscription"] = 'veuillez entrer un email correct';
	}

	var_dump($error);
	if (count($error) == 0) {
		$result = $wpdb->get_results("INSERT INTO `cv_wp_custom_users`(`nom`, `prenom`, `email`, `password`, `role`) VALUES ('$nom','$prenom','$email','$mdp','$role')");
		var_dump($result);
	}
	header('location:index.php');
}
?>
<?php
if (!empty($_POST)) {
	$email = $_POST['email_connexion'];
	$mdp = $_POST['password_connexion'];


	if (empty($_POST['password_connexion'])) {
		$error["mdp"] = "champs vide";
	}

	if (!is_email($_POST['email_connexion'])) {
		$error["email_inscription"] = 'veuillez entrer un email correct';
	}

	var_dump($error);
	if (count($error) == 0) {
		$result = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE user_email = '$email' AND user_pass = '$mdp'");
		var_dump($result);
	}
	header('location:index.php');
}
?>

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

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>
	<div id="page" class="site">
		<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e('Skip to content', 'theme_cvtech'); ?></a>

		<header id="masthead" class="site-header">
			<div class="site-branding">
				<?php
				the_custom_logo();
				if (is_front_page() && is_home()) :
				?>
					<h1 class="site-title"><a href="<?php echo esc_url(home_url('/')); ?>" rel="home"><?php bloginfo('name'); ?></a></h1>
				<?php
				else :
				?>
					<p class="site-title"><a href="<?php echo esc_url(home_url('/')); ?>" rel="home"><?php bloginfo('name'); ?></a></p>
				<?php
				endif;
				$theme_cvtech_description = get_bloginfo('description', 'display');
				if ($theme_cvtech_description || is_customize_preview()) :
				?>
					<p class="site-description"><?php echo $theme_cvtech_description; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped 
												?></p>
				<?php endif; ?>
			</div><!-- .site-branding -->

			<nav id="site-navigation" class="main-navigation">
				<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e('Primary Menu', 'theme_cvtech'); ?></button>
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'menu-1',
						'menu_id'        => 'primary-menu',
					)
				);
				?>
			</nav><!-- #site-navigation -->
		</header><!-- #masthead -->

		<div class='modal'>
			<div>
				<i id="fermeture_connexion" class="fas fa-times"></i>
				<div class="container_modal">
					<div class="front side">
						<div class="content">
							<h1>Connexion</h1>
							<div id="content_connexion">
								<form name="connexion" class="form_connexion" action="" method="POST">
									<div class="col-3">
										<input id="email_connexion" name="email_connexion" class="effect-2" type="text" placeholder="E-mail">
										<span class="focus-border" id="focus_connexion_email"></span>
									</div>

									<p class="error" id="erreur_mail_co">&nbsp;</p>

									<div class="col-3">
										<input id="password_connexion" class="effect-2" type="password" name="password_connexion" placeholder="Mot de passe">
										<span class="focus-border" id="focus_connexion_password"></span>
									</div>
									<p class="error" id="erreur_password_co">&nbsp;</p>
									<div class="col-3 submit_div">
										<input id="submit_connexion" class="submit_button" type="submit" value="connexion" name="submitted">
										<span id="error_connexion" class="error">
									</div>
							</div>
							<div class="col-3 last_button">
								<div class="vers_inscription">Pas encore de compte ? <span style="color: #FBA43B; text-decoration: underline;"> Inscrivez-vous</span>
								</div>
							</div>
							</form>
						</div>

					</div>
					<!-- INSCRIPTION -->
					<div class="back side">
						<div class="content">
							<div class="inscription">
								<h1>Inscription</h1>
								<form name="inscription" action="" method="post">
									<div style="display: flex; flex-direction: column">
										<div style="display: flex; justify-content: space-evenly">
											<div style="display: flex;flex-direction: column">
												<div class="col-3">
													<input id="prenom_inscription" class="effect-2" type="text" name="prenom" placeholder="Prénom">
													<span class="focus-border" id="focus_prenom_inscription"></span>
												</div>
												<span class="error" id="erreur_prenom_inscription">&nbsp;</span>
											</div>
											<div class="col-3">
												<input id="nom_inscription" class="effect-2" type="text" name="nom" placeholder="nom">
												<span class="focus-border" id="focus_nom_inscription"></span>
											</div>
											<span class="error" id="erreur_prenom_inscription">&nbsp;</span>
										</div>
										<div style="display: flex;flex-direction: column">
											<span class="error" id="erreur_nom_inscription">&nbsp;</span>
										</div>
									</div>
							</div>
							<div style="display: flex; flex-direction: column; align-items: center;">
								<div style="display: flex;flex-direction: column">
									<div class="col-3" style="width: 500px; margin: 24px auto 0;">
										<input id="email_inscription" name="email_inscription" class="effect-2" type="text" placeholder="Email">
										<span class="focus-border" id="focus_email_inscription"></span>
									</div>
									<span class="error" id="erreur_mail_inscription">&nbsp;</span>
								</div>
								<div style="display: flex;flex-direction: column">
									<div class="col-3" style="width: 500px; margin: 24px auto 0;">
										<input id="password_inscription" class="effect-2" name="password_inscription" type="password" placeholder="Mot de passe">
										<span class="focus-border" id="focus_password_inscription"></span>
									</div>
									<span style="color: black"> Caractère min:8; Caractère spécial obligatoire; 1 majuscule et 1 minuscule</span>
									<span class="error" id="erreur_password_inscription">&nbsp;</span>
								</div>
								<div style="display: flex;flex-direction: column">
									<div class="col-3" style="width: 500px; margin: 24px auto 0;">
										<input id="password_inscription2" class="effect-2" name="password2" type="password" placeholder="Mot de passe">
										<span class="focus-border" id="focus_password_inscription2"></span>
									</div>
									<span style="color: black"> Caractère min:8; Caractère spécial obligatoire; 1 majuscule et 1 minuscule</span>
									<span class="error" id="erreur_password_inscription">&nbsp;</span>
								</div>
								<div style="display: flex;flex-direction: column">
									<div class="col-3" style="width: 500px; margin: 24px auto 0;">
										<input id="cgu_inscription" class="effect-2" type="checkbox">
										<label id="label_cgu" for="cgu_inscription">Veuillez accepter les conditions générales d'utilisations</label>
									</div>
								</div>
								<div class="col-3 submit_div">
									<input id="submit_inscription" class="submit_button" type="submit" value="inscription" name="submitted">
									<span id="error_inscription" class="error"> &nbsp;</span>
								</div>
							</div>
							</form>
							<br>
							<div class="vers_inscription">Vous avez déjà un compte? <span style="color: #FBA43B; text-decoration: underline;">Connectez-vous</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>