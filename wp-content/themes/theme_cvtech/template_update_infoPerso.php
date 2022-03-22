<?php

/**
 * Template Name: update info
 */
get_header();
global $wpdb;
$errors_modifCv = [];
// requêtes
$id_user = $_SESSION['id'];
echo "<br><br><br><br><br>";

if (!empty($_POST['update_info'])) {
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

    echo '$_POST';
    debug($_POST);

    if (count($errors_modifCv) === 0) {
        // UPDATE
    } else {
        debug($errors_modifCv);
    }
}

if (!empty($_GET)) {
    if ($_GET['update'] == "modif_cv") {
        $query = $wpdb->get_results("SELECT * FROM cv_wp_custom_info_perso WHERE id_user = $id_user ", ARRAY_A);
        $info_cv = $query[0];
        $info_cv['date_de_naissance'] = explode(" ", $info_cv['date_de_naissance']);
        $info_cv['date_de_naissance'] = $info_cv['date_de_naissance'][0];
        $info_cv['permis'] = explode("; ", $info_cv['permis']);
        debug($info_cv);
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
            <input type="submit" value="envoyer" name="update_info">
        </form>

    <?php } elseif ($_GET['update'] == "modif_user") {
        echo "page user modif";
    }
} else {
    echo "<h1>Erreur 404</h1>
<script> window.location.href = './mon-profil-utilisateur' </script>";
}
?>
    <main>
        <a href="http://localhost/WP/CV_tech/mon-profil-utilisateur/">retour</a>

    </main>

<?php
get_footer();