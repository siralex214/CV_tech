<?php
/**
 * Template Name: profil user
 */
get_header();
?>
<br><br><br><br>
<?php
if (empty($_SESSION)) {
    $_SESSION['id'] = 2;
    $_SESSION['nom'] = "Debureau";
    $_SESSION['prenom'] = "Fabien";
    $_SESSION['email'] = "fab@gmail.com";
    $_SESSION['role'] = "role_USER";
}

debug($_SESSION);

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

$prepare4 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_hobbies` WHERE id_user = %d", [$_SESSION['id']]);
$hobbies = $wpdb->get_results($prepare4, ARRAY_A);
$hobbies = $hobbies[0];
$hobbies['hobbies'] = explode("; ", $hobbies["hobbies"]);

$prepare5 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_info_perso` WHERE id_user = %d", [$_SESSION['id']]);
$info_persos = $wpdb->get_results($prepare5, ARRAY_A);
$info_persos = $info_persos[0];
$info_persos['permis'] = explode("; ", $info_persos['permis']);

$prepare6 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_langue` WHERE id_user = %d", [$_SESSION['id']]);
$langues = $wpdb->get_results($prepare6, ARRAY_A);
$langues = $langues[0];
$langues['langues'] = explode("; ", $langues["langues"]);


debug($cvs);
// debug($formations);
debug($exp_pros);
debug($hobbies);
debug($info_persos);
debug($langues);


?>
<main id="profil_user">

    <div id="app"></div>
    <h1 class="profil_user_h1">Bonjour, <!-- PHP --> </h1>
    <section class="wrap_profil_user">
        <div class="menu_nav_profil_user">
            <button value="0" class="but_profil_user active_userProfil">Mes informations personelles</button>
            <button value="1" class="but_profil_user">Mes formations</button>
            <button value="2" class="but_profil_user">Mes expériences profesionnel</button>
            <button value="3" class="but_profil_user">Mes compétences</button>
            <button value="4" class="but_profil_user">Mes CVs</button>
        </div>

        <div class="profil_user_block show_block_profil_user">
            <div>
                <p>Nom: <span class="info_perso_profil_user"><?= ucfirst($_SESSION['nom']) ?><i
                                class="fa-solid fa-pen"></i> </span></p>
                <p>Prénom: <?= ucfirst($_SESSION['prenom']) ?></p>
                <p>Email: <?= ucfirst($_SESSION['email']) ?></p>
                <p>Mot de passe: *******</p>
            </div>
            <div>

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
            block3
        </div>
        <div class="profil_user_block none_block_profil_user">
            block4
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
                        <td><p><?= $cv['nom'] ?></p></td>
                        <td><p><?= $date ?></p></td>
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
