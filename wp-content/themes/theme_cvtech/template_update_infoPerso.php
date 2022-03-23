<?php

/**
 * Template Name: update info
 */
get_header();
debug($_SESSION);
global $wpdb;
$errors_modifCv = [];
// requêtes
$id_user = $_SESSION['id'];
$password = $wpdb->get_results("SELECT password FROM cv_wp_custom_users WHERE id = $id_user", ARRAY_A);
$password = $password[0]['password'];


if (!empty($_POST['update_cv'])) {
//    $_POST['date'] = explode("-", $_POST['date']);
    // gestions des erreurs

    $errors_modifCv = validText($errors_modifCv, $_POST['nom'], "nom", 2, 50);
    $errors_modifCv = validText($errors_modifCv, $_POST['prenom'], "prenom", 2, 50);
    $errors_modifCv = validEmail($errors_modifCv, $_POST['email'], "email");
    $errors_modifCv = validTelephone($errors_modifCv, "telephone", $_POST['telephone']);
    $errors_modifCv = validText($errors_modifCv, $_POST['adresse'], "adresse", 2, 255);
    if (!valideDate($_POST['date'], 'Y-m-d')) {
        $errors_modifCv['date'] = "Veuillez renseigner une date valide";
    }
//    function deleteArrayWithKey($value)
//    {
//        foreach ($value as $key => $x) {
//            if ($x == "") {
//                unset($value[$key]);
//            }
//        }
//    }

    if (count($errors_modifCv) === 0) {
//        deleteArrayWithKey($_POST['permis']);
        foreach ($_POST['permis'] as $key => $permis) {
            if ($permis == "") {
                unset($_POST['permis'][$key]);
            }
        }
        foreach ($_POST['competences'] as $key => $competence) {
            if ($competence == "") {
                unset($_POST['competences'][$key]);
            }
        }
        foreach ($_POST['langues'] as $key => $langue) {
            if ($langue == "") {
                unset($_POST['langues'][$key]);
            }
        }
        foreach ($_POST['hobbies'] as $key => $hobby) {
            if ($hobby == "") {
                unset($_POST['hobbies'][$key]);
            }
        }
        $_POST['permis'] = implode("; ", $_POST['permis']);
        $_POST['competences'] = implode("; ", $_POST['competences']);
        $_POST['langues'] = implode("; ", $_POST['langues']);
        $_POST['hobbies'] = implode("; ", $_POST['hobbies']);

        // UPDATE

        $wpdb->update("cv_wp_custom_info_perso", array(
            "nom" => $_POST['nom'],
            "prenom" => $_POST['prenom'],
            "email" => $_POST['email'],
            "date_de_naissance" => $_POST['date'],
            "telephone" => $_POST['telephone'],
            "permis" => $_POST['permis'],
            "addresse_postale" => $_POST['adresse'],
            "competences" => $_POST['competences'],
            "langues" => $_POST['langues'],
            "hobbies" => $_POST['hobbies'],
        ), array(
            "id_user" => $_SESSION['id']
        ));

    } else {
    }
} elseif (!empty($_POST['update_info'])) {
    $errors_modifInfo = [];
    $changeMDP = false;
    $errors_modifInfo = validText($errors_modifInfo, $_POST['nom'], "nom", 2, 50);
    $errors_modifInfo = validText($errors_modifInfo, $_POST['prenom'], "prenom", 2, 50);
    $errors_modifInfo = validEmail($errors_modifInfo, $_POST['email'], "email");
    if ($_POST['mdp1'] != "" && $_POST['mdp2'] != "") {
        $errors_modifInfo = validText($errors_modifInfo, $_POST["mdp1"], "mdp1", 8, 20);
        $errors_modifInfo = validText($errors_modifInfo, $_POST["mdp2"], "mdp2", 8, 20);
        if (empty($errors_modifInfo['mdp1']) && empty($errors_modifInfo['mdp2'])) {
            if ($_POST['mdp1'] != $_POST['mdp2']) {
                $errors_modifInfo["mdp2"] = "Veuillez renseigner le même mot de passe.";
            } else {
                $changeMDP = true;
            }
        }
    } elseif ($_POST['mdp1'] == "" && $_POST['mdp2'] != "") {
        $errors_modifInfo = validText($errors_modifInfo, $_POST["mdp1"], "mdp1", 8, 20);
    } elseif ($_POST['mdp1'] != "" && $_POST['mdp2'] == "") {
        $errors_modifInfo = validText($errors_modifInfo, $_POST["mdp2"], "mdp2", 8, 20);
    }

    //gestion des images
    $changePhoto = false;
    if ($_FILES['avatar']['size'] === 0 && $_FILES['avatar']['error'] > 0) {
    } else {
        $changePhoto = true;
        //verif du type d'image
        $photoArray = explode("/", $_FILES['avatar']['type']);
        if ($photoArray[0] !== "image") {
            $errors_modifInfo['avatar'] = "Veuillez vérifier le format de l'image";
        } else {
            //l'image ne peut etre que jpg ou jpeg ou png
            if ($photoArray[1] !== "jpg" && $photoArray[1] !== "jpeg" && $photoArray[1] !== "png") {
                $errors_modifInfo['avatar'] = "Le fichier n\'est pas de type jpg, jpeg ou png";
            }
        }
    }
    //l'image ne peut faire plus de 4Mo
    if ($_FILES['avatar']['size'] >= 4000000) {
        $errors_modifInfo['avatar'] = "Le fichier fait plus de 4Mo";
    }
    if (!password_verify($_POST['last_mdp'], $password)) {
        $errors_modifInfo['invalid'] = "Votre email ou votre pwd sont incorrects!";
    }
    if (count($errors_modifInfo) === 0) {

        $change = array(
            "nom" => $_POST['nom'],
            "prenom" => $_POST['prenom'],
            "email" => $_POST['email']);
        if ($changeMDP == true) {
            $newPdw = password_hash($_POST["mdp2"], PASSWORD_ARGON2I);
            $change["password"] = $newPdw;
        }
        if ($changePhoto == true) {
            if (file_exists("wp-content/uploads/profil_pic")) {
            } else {
                mkdir("wp-content/uploads/profil_pic", 0777, true);
                echo "existe passsss";
            }
            $link = "/profil_pic/avatar_" . $id_user . "." . $photoArray[1];
            move_uploaded_file($_FILES['avatar']['tmp_name'], wp_get_upload_dir()["basedir"] . $link);
            $change['photo'] = $link;
            $_SESSION["photo"] = $link;

        }
        $wpdb->update("cv_wp_custom_users", $change, array(
            "id" => $_SESSION['id']
        ));
        $_SESSION["email"] = $_POST["email"];
        $_SESSION["nom"] = $_POST["nom"];
        $_SESSION["prenom"] = $_POST["prenom"];
    } else {
    }
}
echo "<main>
    <a href='http://localhost/WP/CV_tech/mon-profil-utilisateur/'>retour</a>";
if (!empty($_GET)) {
    if ($_GET['update'] == "modif_cv") {
        $query = $wpdb->get_results("SELECT * FROM cv_wp_custom_info_perso WHERE id_user = $id_user ", ARRAY_A);
        $info_cv = $query[0];
        $info_cv['date_de_naissance'] = explode(" ", $info_cv['date_de_naissance']);
        $info_cv['date_de_naissance'] = $info_cv['date_de_naissance'][0];
        $info_cv['permis'] = explode("; ", $info_cv['permis']);
        $info_cv['langues'] = explode("; ", $info_cv['langues']);
        $info_cv['hobbies'] = explode("; ", $info_cv['hobbies']);
        ?>
        <form method="post">
            <div class="cv-container">
                <h2 class="cv-container-title">
                    Vos informations personnelles
                </h2>
                <div class="cv-subcontainer">
                    <div class="input-box">
                        <label class="label">Nom</label>
                        <input id="nom" value="<?= $info_cv['nom'] ?>" class="input" name="nom" type="text"
                               placeholder="Entrez votre nom">
                    </div>
                    <div class="input-box">
                        <label class="label">Prénom</label>
                        <input id="prenom" class="input" name="prenom" type="text"
                               placeholder="Entrez votre Prénom" value="<?= $info_cv['prenom'] ?>">
                    </div>
                    <div class="input-box">
                        <label class="label">Email</label>
                        <input id="email" class="input" name="email" type="text"
                               value="<?= $info_cv['email'] ?>"
                               placeholder="Entrez votre Email">
                    </div>
                    <div class="input-box">
                        <label class="label">Date de Naissance</label>
                        <input class="input" name="date" type="date"
                               value="<?= $info_cv['date_de_naissance'] ?>"
                               placeholder="Entrez votre Date de Naissance">
                    </div>
                    <div class="input-box">
                        <label class="label">Téléphone</label>
                        <input id="telephone" class="input" name="telephone" type="tel"
                               value="<?= $info_cv['telephone'] ?>"
                               placeholder="Entrez votre Téléphone">
                    </div>
                    <div class="input-box">
                        <label class="label">Adresse</label>
                        <input id="adresse_1" class="input" name="adresse" type="text"
                               value="<?= $info_cv['addresse_postale'] ?>"
                               placeholder="n°, rue, résidence, bâtiment">
                    </div>
                </div>
                <div id="permis">
                    <label class="label">Permis</label>
                    <div id="input-permis">
                        <?php foreach ($info_cv['permis'] as $permis): ?>
                            <input class="input" name="permis[]" type="text" placeholder="Ex: Permis A"
                                   value="<?= $permis ?>">
                            <!--                                    <i class="fa-solid fa-xmark"></i>-->
                        <?php endforeach; ?>
                    </div>
                    <label id="add-permis" class="add-label">+ ajouter un permis</label>
                </div>
            </div>
            <div class="cv-container">
                <h2 class="cv-container-title">
                    Compétences
                </h2>
                <div class="cv-subcontainer">
                    <div id="input-competences">
                        <?php
                        if ($info_cv['competences'] == "aucune") {
                            echo "pas de compétence.";
                        } else {
                            $info_cv['competences'] = explode("; ", $info_cv['competences']);
                            foreach ($info_cv['competences'] as $competence) { ?>
                                <input class='input' name='competences[]' type='text' value="<?= $competence ?>"
                                       placeholder='Ex: HTML'>
                            <?php }
                        } ?>
                    </div>
                    <label id="add-competences" class="add-label">+ ajouter une compétence</label>
                </div>
            </div>
            <div class="cv-container">
                <h2 class="cv-container-title">
                    Langues
                </h2>
                <div class="cv-subcontainer">
                    <div id="input-langues">
                        <?php foreach ($info_cv['langues'] as $langue): ?>
                            <input class='input' name='langues[]' type='text' placeholder='Ex: Français'
                                   value="<?= $langue ?>">
                            <!--                                    <i class="fa-solid fa-xmark"></i>-->
                        <?php endforeach; ?>

                    </div>
                    <label id="add-langues" class="add-label">+ ajouter une langue</label>
                </div>
            </div>
            <div class="cv-container">
                <h2 class="cv-container-title">
                    Centres d'intérêts
                </h2>
                <div class="cv-subcontainer">
                    <div id="input-hobbies">
                        <?php foreach ($info_cv['hobbies'] as $hobby): ?>
                            <input class='input' name='hobbies[]' type='text' placeholder='Ex: Cinéma'
                                   value="<?= $hobby ?>">
                            <!-- <i class="fa-solid fa-xmark"></i> -->
                        <?php endforeach; ?>
                    </div>
                    <label id="add-hobbies" class="add-label">+ ajouter un centre d'intérêt</label>
                </div>
            </div>
            <input type="submit" value="envoyer" name="update_cv">
        </form>

    <?php } elseif ($_GET['update'] == "modif_user") {
        $info_perso = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE id = $id_user", ARRAY_A);
        $info_perso = $info_perso[0];
        ?>
        <div class="cv-container">
            <h2 class="cv-container-title">
                Vos informations personnelles
            </h2>
            <form method="post" enctype="multipart/form-data">

                <div class="cv-subcontainer">
                    <div class="input-box">
                        <label class="label">Nom</label>
                        <input id="nom" value="<?= $info_perso['nom'] ?>" class="input" name="nom" type="text"
                               placeholder="Entrez votre nom">
                    </div>
                    <div class="input-box">
                        <label class="label">Prénom</label>
                        <input id="prenom" class="input" name="prenom" type="text" placeholder="Entrez votre Prénom"
                               value="<?= $info_perso['prenom'] ?>">
                    </div>
                    <div class="input-box">
                        <label class="label">Email</label>
                        <input id="email" class="input" name="email" type="text"
                               value="<?= $info_perso['email'] ?>"
                               placeholder="Entrez votre Email">
                    </div>
                    <div style="visibility: hidden" class="input-box">
                        <label class="label">Email</label>
                        <input class="input" name="" type="text">
                    </div>
                    <div class="input-box">
                        <label class="label">nouveau mot de passe</label>
                        <input class="input" name="mdp1" type="password"
                               placeholder="Entrez nouveau mot de passe">
                    </div>
                    <div class="input-box">
                        <label class="label">Confirmer nouveau mot de passe</label>
                        <input class="input" name="mdp2" type="password"
                               placeholder="Confirmer mot de passe">
                    </div>
                    <div class="input-box">
                        <label class="label">Votre photo de profil</label>
                        <div class="input-box">
                            <input id="" class="input" name="avatar" type="file">
                            <img class="img_profil_modif"
                                 src="<?= wp_get_upload_dir()['baseurl'] . $info_perso['photo'] ?>"
                                 alt="chien">
                        </div>
                        <div class="input-box">
                            <label class="label">Entrer votre mot de passe actuel</label>
                            <input class="input" name="last_mdp" type="password"
                                   placeholder="Entrer votre mot de passe actuel">
                        </div>
                    </div>
                </div>
        </div>
        <input type="submit" value="envoyer" name="update_info">
        </form>


    <?php }
} else {
    echo "<h1>Erreur 404</h1>
<script> window.location.href = './mon-profil-utilisateur' </script>";
}
?>

    </main>

<?php
get_footer();
