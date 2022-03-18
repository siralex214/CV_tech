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

<div class='modal'>
	<div id="popupInscription" class="modal">
		<div class="popup">
			<div>
				<button id="btn_co" class=" btn_log active_btn_log">connexion</button>
				<button id="btn_ins" class="btn_log"> inscription</button>
			</div>
			<p id="close_modal" class='close' href='#'>&times;</p>
			<div class='content_connexion' id="inscriptionform">
				<form method="post" action="insert_users.php">
					<div class="input-box">
						<label class="label title_popup"></label>
					</div>
					<div class="input-box">
						<label class="label">Nom</label>
						<input class="input" type="text" name="nom" id="nom" id="focus_nom_inscription">
					</div>
					<div class="errors">
						<span id="nomError">Entre 2 et 20 caractères</span>
						<span class="error" id="erreur_nom_inscription">&nbsp;</span>
					</div>
					<div class="input-box">
						<label class="label">Prenom</label>
						<input class="input" id="prenom_inscription" class="effect-2" type="text" placeholder="Prénom">
						<span class="focus-border" id="focus_prenom_inscription"></span>
					</div>
					<div class="errors">
						<span id="prenomError">Entre 2 et 20 caractères</span>
						<span class="error" id="erreur_prenom_inscription">&nbsp;</span>
					</div>
					<div class="input-box">
						<label class="label">Email</label>
						<input class="input" type="email" name="email_inscription" id="email_inscription" id="focus_email_inscription">
					</div>
					<div class="errors">
						<span id="emailError">Email valide</span>
						<span class="error" id="erreur_mail_inscription">&nbsp;</span>
					</div>
					<div class="input-box">
						<label class="label">Mot de passe</label>
						<input class="input" type="password" name="password_inscription" id="password" id="focus_password_inscription">
					</div>
					<div class="errors">
						<span id="passwordErrorMajuscule">1 majuscule</span>
						<span id="passwordErrorMinuscule">1 minuscule</span>
						<span id="passwordErrorNombre">1 chiffre</span>
						<span id="passwordErrorSpecial">1 caractère special</span>
						<span id="passwordErrorSize">8 caractères minimum</span>
						<span class="error" id="erreur_password_inscription">&nbsp;</span>
					</div>
					<div class="input-box">
						<label class="label">Vérification de mot de passe</label>
					</div>
					<div class="input-box">
						<input class="input" type="password" name="password2" id="passwordVerif">
					</div>
					<div class="errors">
						<span id="passwordVerifError">Mot de passe identique</span>
					</div>
					<div class="input-box">
						<button class="button" type="submit" value="S'inscrire" id="Connexion">S'inscrire</button>
					</div>
				</form>
			</div>
			<div class='content' id="connexionform">
				<form class="form-login" action="" method="post">
					<div class="input-box">
						<label class="label title_popup"></label>
					</div>
					<div class="input-box">
						<label class="label">Email</label>
						<input class="input" type="email" name="email_connexion" placeholder="email" id="focus_connexion_email">
					</div>
					<p class="error" id="erreur_mail_co">&nbsp;</p>
					<div class="input-box">
						<label class="label">Mot de passe</label>
						<input class="input" type="password" name="password_connexion" placeholder="Mot de passe" id="focus_connexion_password">
					</div>
					<p class="error" id="erreur_password_co">&nbsp;</p>
					<div class="input-box">
						<button class="button" type="submit" value="Connexion" id="Connexion">Se connecter</button>
					</div>
				</form>
			</div>

		</div>
	</div>

	<!-- formulaire popup de connexion -->




</div>
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
			<li id="btn_connexion">Connexion</li>
		</ul>

		<!-- <div id="nav-menu">

			<?php
			wp_nav_menu(array(
				'theme_location' => 'my-custom-menu',
				'container_class' => 'custom-menu-class'
			));
			?>
		</div> -->
	</nav>
</header>