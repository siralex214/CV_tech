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

    $error = validText($error, $prenom, "prenom", 2, 20);
    $error = validText($error, $nom, "nom", 2, 20);
    $double_mail = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE email = '$email'", ARRAY_A);
    if (!empty($double_mail)) {
        $error['double_mail'] = "Cette email est déjà utilisé";
    }

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

    if ($_FILES['profil_picture']['size'] === 0 && $_FILES['profil_picture']['error'] > 0) {
        $error['profil_picture'] = "problème de chargement image";
    } else {
        $photoArray = explode("/", $_FILES['profil_picture']['type']);
        if ($photoArray[0] !== "image") {
            $error['profil_picture'] = "Veuillez vérifier le format de l'image";
        } else {
            if ($photoArray[1] !== "jpg" && $photoArray[1] !== "jpeg" && $photoArray[1] !== "png") {
                $error['profil_picture'] = "Le fichier n\'est pas de type jpg, jpeg ou png";
            }
        }
    }

    if ($_FILES['profil_picture']['size'] >= 4000000) {
        $error['profil_picture'] = "Le fichier fait plus de 4Mo";
    }

    $nom_image = basename($_FILES['profil_picture']['name']);

    $chemin_destination = '../wp-content/uploads/profil_pic' . $nom_image;

    // $link = move_uploaded_file($_FILES['profil_picture']['tmp_name'], $chemin_destination);
    if (count($error) == 0) {
        $mdp_hash = password_hash($mdp, PASSWORD_ARGON2I);

        if (!file_exists("wp-content/uploads/profil_pic")) {
            mkdir("wp-content/uploads/profil_pic", 0777, true);
        }


        $profil_picture = "";
        $result = $wpdb->get_results("INSERT INTO `cv_wp_custom_users`(`nom`, `prenom`, `email`, `password`, `role`) VALUES('$nom','$prenom','$email','$mdp_hash','$role')");
        $id = $wpdb->insert_id;
        $link = "/profil_pic/avatar_" . $id . "." . $photoArray[1];

        $wpdb->update("cv_wp_custom_users", array(
            "photo" => $link
        ), array(
            "id" => $id
        ));
        move_uploaded_file($_FILES['profil_picture']['tmp_name'], wp_get_upload_dir()["basedir"] . $link);
        $user = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE id = $id", ARRAY_A);
        $user = $user[0];
        $connected = "true";
        $_SESSION["connected"] = "true";
        $_SESSION["id"] = $user["id"];
        $_SESSION["email"] = $user["email"];
        $_SESSION["nom"] = $user["nom"];
        $_SESSION["prenom"] = $user["prenom"];
        $_SESSION["role"] = $user["role"];
        $_SESSION["photo"] = $user["photo"];
        if ($_SESSION['role'] == "role_USER") {
            header('location: mon-profil-utilisateur');
        } else {
            header('location: recruteur');

        }
    }
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
        $error["email_connexion"] = 'veuillez entrer un email correct';
    }
    $requestCheck = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE email = '$email'", ARRAY_A);
    $user = $requestCheck[0];

    if (count($error) === 0) {
        if (!empty($user)) {
            if (password_verify($mdp, $user["password"])) {
                $_SESSION["connected"] = "true";
                $_SESSION["id"] = $user["id"];
                $_SESSION["email"] = $user["email"];
                $_SESSION["nom"] = $user["nom"];
                $_SESSION["prenom"] = $user["prenom"];
                $_SESSION["role"] = $user["role"];
                $_SESSION["photo"] = $user["photo"];
                if ($_SESSION['role'] == "role_USER") {
                    header('location: mon-profil-utilisateur');
                } else {
                    header('location: recruteur');
                }
            } else {
                $messageError = "mauvaise combinaison email / mot de passe";
            }
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
                <button id="btn_co" class="btn_log active_btn_log">connexion</button>
                <button id="btn_ins" class="btn_log"> inscription</button>
            </div>
            <div>
                <p style="color: red"><?php viewError($error, "double_mail"); ?></p>
            </div>
            <p id="close_modal" class='close' href='#'>&times;</p>
            <div class='content' id="inscriptionform">
                <form method="post" action="" enctype="multipart/form-data">
                    <div class="input-box">
                        <label class="label">Nom</label>
                        <input class="input" type="text" name="nom_inscription" id="nom_inscription"
                               value="<?php if (!empty($_POST['nom_inscription'])) {
                                   echo $_POST['nom_inscription'];
                               } ?>">
                    </div>
                    <div class="errors">
                        <span id="nomError">Entre 2 et 20 caractères</span>
                    </div>
                    <div class="input-box">
                        <label class="label">Prénom</label>
                        <input class="input" type="text" name="prenom_inscription" id="prenom_inscription"
                               value="<?php if (!empty($_POST['prenom_inscription'])) {
                                   echo $_POST['prenom_inscription'];
                               } ?>">
                    </div>
                    <div class="errors">
                        <span id="prenomError">Entre 2 et 20 caractères</span>
                    </div>
                    <div class="input-box">
                        <label class="label">Email</label>
                        <input class="input" type="text" name="email_inscription" id="email_inscription"
                               value="<?php if (!empty($_POST['email_inscription'])) {
                                   echo $_POST['email_inscription'];
                               } ?>">
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
                        <input class="input" type="password" name="password_check" id="password_check">
                    </div>
                    <div class="errors">
                        <span id="passwordVerifError">Mot de passe identique</span>
                    </div>
                    <div class="input-box">
                        <label class="label">Ajouter une photo de profil</label>
                        <input class="input_file" type="file" name="profil_picture">
                    </div>
                    <div class="input-box">
                        <button name="inscription" class="popup_submit" type="submit" value="S'inscrire"
                                id="inscription">S'inscrire
                        </button>
                    </div>
                </form>
            </div>
            <div class='content' id="connexionform">
                <form class="form-login" action="" method="post">
                    <div class="input-box">
                        <label class="label">Email</label>
                        <input class="input" type="text" name="email_connexion" placeholder="email"
                               id="email_connection">
                    </div>
                    <div class="input-box">
                        <label class="label">Mot de passe</label>
                        <input class="input" type="password" name="password_connexion" placeholder="Mot de passe"">
                    </div>
                    <?= "<div id='messageError'>" . $messageError . "</div>" ?>
                    <div class=" input-box">
                        <button name='connexion' class="popup_submit" type="submit" value="Connexion">Se connecter
                        </button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<header>
    <nav>
        <div class="logo">
            <a class="nav_title" href="<?php the_permalink() ?>home">Bertolucci</a>
        </div>
        <input type="checkbox" id="click">
        <label for="click" class="menu-btn">
            <i class="fas fa-bars"></i>
        </label>
        <ul>
            <li><a href="<?php the_permalink() ?>home">Accueil</a></li>
            <li><a href="<?php the_permalink() ?>contact">Contact</a></li>
            <?php if (!empty($_SESSION['connected'])) {
                if ($_SESSION['connected'] == "true") { ?>
                    <a id="btn_deconnexion" href="<?php the_permalink() ?>deconnexion">Déconnexion</a>

                <?php }
            } else { ?>
                <li id="btn_connexion" href="<?php the_permalink() ?>connexion">Connexion</li>
            <?php }

            ?>
        </ul>

    </nav>
</header>