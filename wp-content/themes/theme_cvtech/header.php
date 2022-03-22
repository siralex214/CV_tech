<?php
$error = [];
$prenom = "";
$nom = "";
$email = "";
$mdp = "";
$messageError = "";
$role = "role_USER";
if (!empty($_POST['inscription'])) {
	$prenom = $_POST['prenom_inscription'];
	$nom = $_POST['nom_inscription'];
	$email = $_POST['email_inscription'];
	$mdp = $_POST['password_inscription'];

	$mdp_hash = password_hash($mdp, PASSWORD_DEFAULT);


	if (empty($_POST['password_inscription'])) {
		$error["mdp"] = "champs vide";
	} else {
		if ($_POST['password_inscription'] != $_POST['password_check']) {
			$error["mdp"] = 'mauvais mot de passe';
		}
	}

	if (!is_email($_POST['email_inscription'])) {
		$error["email_inscription"] = 'veuillez entrer un email correct';
	}

	var_dump($error);
	if (count($error) == 0) {
		$result = $wpdb->get_results("INSERT INTO `cv_wp_custom_users`(`nom`, `prenom`, `email`, `password`, `role`) VALUES ('$nom','$prenom','$email','$mdp_hash','$role')");
		var_dump($result);
	}
	header('location:index.php');
}
?>
<?php
if (!empty($_POST['connexion'])) {
	$email = $_POST['email_connexion'];
	$mdp = $_POST['password_connexion'];


	if (empty($_POST['password_connexion'])) {
		$error["mdp"] = "champs vide";
	}

	if (!is_email($_POST['email_connexion'])) {
		$error["email_inscription"] = 'veuillez entrer un email correct';
	}
	// debug($mdp);
	$requestCheck = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE email = '$email'", ARRAY_A);
	$user = $requestCheck[0];
	debug($user);
	if (!empty($user)) {
		if (password_verify($mdp, $user["password"])) {
			$connected = true;
			$_SESSION["connected"] = true;
			$_SESSION["id"] = $user["id"];
			$_SESSION["nom"] = $user["nom"];
			$_SESSION["prenom"] = $user["prenom"];
			$_SESSION["role"] = $user["role"];
			$_SESSION["photo"] = $user["photo"];
			header('location: mon-profil-utilisateur');
			$connexionError = false;
		} else {
			$connexionError = false;
			$messageError = "mauvaise combinaison email / mot de passe";
		}
	}
}

?>

<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<?php wp_head(); ?>
</head>

<div class='affichage_modal modal'>
	<div id="popupInscription" class="modal">
		<div class="popup">
			<div>
				<button id="btn_co" class=" btn_log active_btn_log">connexion</button>
				<button id="btn_ins" class="btn_log"> inscription</button>
			</div>
			<p id="close_modal" class='close' href='#'>&times;</p>
			<div class='content_connexion' id="inscriptionform">
				<form method="post" action="" enctype="multipart/form-data">
					<div class="input-box">
						<label class="label">Nom</label>
						<input class="input" type="text" name="nom_inscription" id="nom_inscription">
					</div>
					<div class="errors">
						<span id="nomError">Entre 2 et 20 caractères</span>
					</div>
					<div class="input-box">
						<label class="label">Prénom</label>
						<input class="input" type="text" name="prenom_inscription" id="prenom_inscription">
					</div>
					<div class="errors">
						<span id="prenomError">Entre 2 et 20 caractères</span>
					</div>
					<div class="input-box">
						<label class="label">Email</label>
						<input class="input" type="email" name="email_inscription" id="email_inscription">
					</div>
					<div class="errors">
						<span id="emailError">Email valide</span>
					</div>
					<div class="input-box">
						<label class="label">Mot de passe</label>
						<input class="input" type="password" name="password_inscription" id="password_inscription">
					</div>
					<div class="errors">
						<span id="passwordErrorMajuscule">1 majuscule</span>
						<span id="passwordErrorMinuscule">1 minuscule</span>
						<span id="passwordErrorNombre">1 chiffre</span>
						<span id="passwordErrorSpecial">1 caractère special</span>
						<span id="passwordErrorSize">8 caractères minimum</span>
					</div>
					<div class="input-box">
						<label class="label">Vérification de mot de passe</label>
					</div>
					<div class="input-box">
						<input class="input" type="password" name="password_check" id="password_check">
					</div>
					<div class="errors">
						<span id="passwordVerifError">Mot de passe identique</span>
					</div>
					<div class="input-box">
						<button name="inscription" class="inscription" type="submit" value="S'inscrire" id="inscription">S'inscrire</button>
					</div>
				</form>
			</div>
			<div class='content' id="connexionform">
				<form class="form-login" action="" method="post">
					<div class="input-box">
						<label class="label">Email</label>
						<input class="input" type="email" name="email_connexion" placeholder="email" id="email_connection">
					</div>
					<div class="input-box">
						<label class="label">Mot de passe</label>
						<input class="input" type="password" name="password_connexion" placeholder="Mot de passe"">
					</div>
					<?= "<div id='messageError'>" . $messageError . "</div>" ?>
					<div class=" input-box">
						<button name='connexion' class="connection" type="submit" value="Connexion">Se connecter</button>
					</div>
				</form>
			</div>

		</div>
	</div>
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