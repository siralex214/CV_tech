<?php

/**
 * Template Name: profil user
 */
get_header();
?>
<br><br><br><br>
<?php
// if (empty($_SESSION)) {
$_SESSION['id'] = 2;
$_SESSION['nom'] = "Debureau";
$_SESSION['prenom'] = "Fabien";
$_SESSION['email'] = "fab@gmail.com";
$_SESSION['role'] = "role_USER";
$_SESSION['photo'] = "lien";
// }

global $wpdb;

$prepare = $wpdb->prepare("SELECT * FROM cv_wp_custom_cv WHERE id_user = %d", [$_SESSION['id']]);
$cvs = $wpdb->get_results($prepare, ARRAY_A);

$prepare2 = $wpdb->prepare("SELECT * FROM cv_wp_custom_formation WHERE id_user = %d ORDER BY date_debut DESC", [$_SESSION['id']]);
$formations = $wpdb->get_results($prepare2, ARRAY_A);
$i = 0;
while ($i < count($formations)) {
    $date_debut = new DateTime($formations[$i]['date_debut']);
    $date_debut = $date_debut->format("m-Y");
    $formations[$i]['date_debut'] = $date_debut;
    $date_fin = new DateTime($formations[$i]['date_fin']);
    $date_fin = $date_fin->format("m-Y");
    $formations[$i]['date_fin'] = $date_fin;
    $i++;
}

$prepare3 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_exp-pro` WHERE id_user = %d", [$_SESSION['id']]);
$exp_pros = $wpdb->get_results($prepare3, ARRAY_A);
$i = 0;
while ($i < count($exp_pros)) {
    $date_debut = new DateTime($exp_pros[$i]['date_debut']);
    $date_debut = $date_debut->format("m-Y");
    $exp_pros[$i]['date_debut'] = $date_debut;
    $date_fin = new DateTime($exp_pros[$i]['date_fin']);
    $date_fin = $date_fin->format("m-Y");
    $exp_pros[$i]['date_fin'] = $date_fin;
    $i++;
}

$prepare4 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_hobbies` WHERE id_user = %d", [$_SESSION['id']]);
$hobbies = $wpdb->get_results($prepare4, ARRAY_A);
$hobbies = $hobbies[0];
$hobbies['hobbies'] = explode("; ", $hobbies["hobbies"]);

$prepare5 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_info_perso` WHERE id_user = %d", [$_SESSION['id']]);
$info_persos = $wpdb->get_results($prepare5, ARRAY_A);
$info_persos = $info_persos[0];
$info_persos['permis'] = explode("; ", $info_persos['permis']);
$date = new DateTime($info_persos['date_de_naissance']);
$date = $date->format("d-m-Y");
$info_persos['date_de_naissance'] = $date;

$prepare6 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_langue` WHERE id_user = %d", [$_SESSION['id']]);
$langues = $wpdb->get_results($prepare6, ARRAY_A);
$langues = $langues[0];
$langues['langues'] = explode("; ", $langues["langues"]);

$prepare7 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_competence` WHERE id_user = %d", [$_SESSION['id']]);
$competences = $wpdb->get_results($prepare7, ARRAY_A);
$competences = $competences[0];
$competences['competences'] = explode("; ", $competences["competences"]);

// debug($info_persos);
// debug($_SESSION);
?>

<main id="profil_user">

    <div id="app"></div>


    <section>
        <div class="candidat-card-profil-container">
            <div class="candidat-card-profil-infos-img">
                <img class="candidat-card-profil-img" src="<?= get_template_directory_uri() . "/" . $_SESSION['photo'] ?>">
            </div>
            <div class="candidat-card-profil-infos-text">
                <span class="candidat-card-profil-name">Bonjour <?= ucfirst($_SESSION['prenom']) ?> <?= ucfirst($_SESSION['nom']) ?></span>
                <span class="candidat-card-profil-title">Développeur Web</span>
                <span class="candidat-card-profil-location"><i class="fa-solid fa-location-dot"></i>
                    <?= $info_persos['addresse_postale'] ?></span>
            </div>
        </div>
    </section>


    <section class="wrap_profil_user">
        <div class="menu_nav_profil_user">
            <button value="0" class="but_profil_user active_userProfil">Mes informations personelles</button>
            <button value="1" class="but_profil_user">Mes formations</button>
            <button value="2" class="but_profil_user">Mes expériences profesionnel</button>
            <button value="3" class="but_profil_user">Mes compétences</button>
            <button value="4" class="but_profil_user">Mes CVs</button>
        </div>

        <div class="profil_user_block show_block_profil_user">
            <div class="infos-personnel">
                <div>
                    <h2>Mes infos personnel: </h2>
                    <p>Nom: <span class="info_perso_profil_user"><?= ucfirst($_SESSION['nom']) ?></span></p>
                    <p>Prénom: <span class="info_perso_profil_user"><?= ucfirst($_SESSION['prenom']) ?></a></span></p>
                    <p>Email: <span class="info_perso_profil_user"> <?= ucfirst($_SESSION['email']) ?></a></span></p>
                    <p>Mot de passe: <span class="info_perso_profil_user">******* </a></span></p>
                    </p>
                    <p><a href="update-info-user">Modifier mes informations</a></p>
                </div>
                <div>
                    <h2>Informations sur le CV: </h2>
                    <p>Nom: <span class="info_perso_profil_user"><?= $info_persos['nom'] ?></span></p>
                    <p>Prénom: <span class="info_perso_profil_user"><?= $info_persos['prenom'] ?></span></p>
                    <p>Email: <span class="info_perso_profil_user"><?= $info_persos['email'] ?></span></p>
                    <p>Date de naissance: <span class="info_perso_profil_user"><?= $info_persos['date_de_naissance'] ?></span></p>
                    <p>Permis: <span id="more_permis">Voir les permis</span><span class="info_perso_profil_user"></span>
                    </p>

                    <div class="permis">
                        <?php foreach ($info_persos['permis'] as $permis) : ?>
                            <p> <?= $permis ?>,</p>
                        <?php endforeach; ?>
                    </div>
                    <p>Téléphone: <span class="info_perso_profil_user"><?= $info_persos['telephone'] ?></span></p>
                    <p>Adresse: <span class="info_perso_profil_user"><?= $info_persos['addresse_postale'] ?></span></p>
                    <p><a href="">Modifier mes informations</a></p>
                </div>
            </div>
        </div>
        <div class="profil_user_block none_block_profil_user">
            <?php foreach ($formations as $formation) : ?>
                <div class="one_box_userProfil_forma">
                    <div>
                        <p>
                            <i class="fa-solid fa-graduation-cap log_formation"></i>
                            &nbsp; <?= $formation['diplome'] . " " . $formation['titre'] ?>
                            | <?= $formation['etablissement'] ?>, <?= ucfirst($formation['lieu']) ?>
                        </p>
                        <p class="date_userProfil">
                            <?= $formation['date_debut'] . " > " . $formation['date_fin'] ?>
                        </p>
                    </div>
                    <div class="btn_userProfil">
                        <a href="">
                            <button class="one_btn_userProfil"><i class="fa-solid fa-pen"></i>
                            </button>
                        </a>
                        <a href="">
                            <button class="one_btn_userProfil"><i class="fa-solid fa-trash"></i>
                            </button>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="profil_user_block none_block_profil_user">
            <?php foreach ($exp_pros as $exp_pro) : ?>
                <div class="one_box_userProfil_forma">
                    <div>
                        <p>
                            <i class="fa-solid fa-graduation-cap log_formation"></i>
                            &nbsp; <?= $exp_pro['poste'] ?>
                            | <?= $exp_pro['entreprise'] ?>, <?= ucfirst($exp_pro['lieu']) ?>
                        </p>
                        <p class="date_userProfil">
                            <?= $exp_pro['date_debut'] . " > " . $exp_pro['date_fin'] ?>
                        </p>
                    </div>
                    <div class="btn_userProfil">
                        <a href="">
                            <button class="one_btn_userProfil"><i style="font-size: 20px" class="fa-solid fa-pen"></i>
                            </button>
                        </a>
                        <a href="">
                            <button class="one_btn_userProfil"><i style="font-size: 20px" class="fa-solid fa-trash"></i>
                            </button>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>

        </div>
        <div class="profil_user_block none_block_profil_user">
            <?php foreach ($competences['competences'] as $competence) : ?>
                <span class="one_competence_userprofil">
                    <?= $competence ?>
                </span>
            <?php endforeach; ?>
            <a style="color: black" href=""><span class="one_competence_userprofil add_competence"><i class="fa-solid fa-plus"></i></span></a>

        </div>
        <div class="profil_user_block none_block_profil_user">
            <table class="minimalistBlack">
                <thead>
                    <tr>
                        <th>Nom du fichier</th>
                        <th>date de création</th>
                        <th>Vu</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($cvs as $cv) :
                        $date = new DateTime($cv['date']);
                        $date = $date->format("d-m-Y")
                    ?>
                        <tr>
                            <td>
                                <p><?= $cv['nom'] ?></p>
                            </td>
                            <td>
                                <p><?= $date ?></p>
                            </td>
                            <?php if ($cv['verif'] == "pas_vu") {
                                echo "<td><i style='color: red' class='fa-solid fa-xmark'></i></td>";
                            } elseif ($cv['verif'] == "vu") {
                                echo "<td><i style='color: green' class='fa-solid fa-check'></i></td>";
                            } ?>
                            <td><a href=""><i class="fa-solid fa-pen"></i></a></td>
                            <td><a href=""><i class="fa-regular fa-eye"></i></a></td>
                            <td><a href=""><i class="fa-solid fa-trash"></i></a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </section>
</main>

<?php get_footer(); ?>