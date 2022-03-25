<?php
/*Template Name: Recruteur-Maxime*/

$requestUsers = $wpdb->prepare("SELECT *  FROM cv_wp_custom_cv");
$users = $wpdb->get_results($requestUsers, ARRAY_A);
// debug($users);

get_header();
if (empty($_SESSION)) {
    echo "<script> window.location.href = 'home' </script>";
    die();
} elseif ($_SESSION['role'] == "role_USER") {
    echo "<script> window.location.href = 'home' </script>";
    die();
}
?>

<body>

    <main id="main-recruteur">

        <?php
        if (!empty($users)) {
            foreach ($users as $user) {
                $id = $user['id_user'];
                $info_user = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE id = $id", ARRAY_A);
                $info_user = $info_user[0];
                $info_cv = $wpdb->get_results("SELECT * FROM cv_wp_custom_info_perso WHERE id_user = $id ", ARRAY_A);
                $info_cv = $info_cv[0];

                // debug($info_user);
                // debug($info_cv);
                $competences = $info_cv['competences'] = explode("; ", $info_cv['competences']); ?>
                <div class='candidat-profil-container'>
                    <div class='candidat-profil-infos-img'>
                        <img class='candidat-profil-img'
                             src='<?= wp_get_upload_dir()['baseurl'] . $info_user['photo'] ?>'>
                    </div>
                    <div class='candidat-profil-infos-text'>
                        <span class='candidat-profil-name'><?= $info_user['prenom'] . " " . $info_user['nom'] ?></span>
                        <span class='candidat-profil-location'><i
                                    class='fa-solid fa-location-dot'></i> <?= $info_cv['addresse_postale'] ?></span>
                    </div>
                    <div class='candidat-profil-skills'>
                        <ul>
                            <?php
                            $i = 0;
                            foreach ($competences as $competence) {
                                while ($i < 3) {
                                    if (!empty($competences[$i])) { ?>
                                        <li class='skills-container'><?= $competences[$i] ?></li>

                                    <?php } ?>
                                    <?php $i++;
                                }
                                ?>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class='candidat-profil-links'>
                        <a href='<?php the_permalink() ?>pdf?id=<?= $info_cv['id_user'] ?>'>
                            <button class='button-recruteur'>Voir le CV</button>
                            <a href='mailto:<?= $info_cv['email'] ?>"'>
                                <button class='button-recruteur button-contact'>Contacter</button>
                            </a>
                    </div>
                </div>

            <?php }
        } else {
            echo "<h2 style='text-align: center; margin-top: 140px'>Aucun utilisateur n'a enregistré de CV sur votre site.</h2>";
        }
        ?>

        <!-- <div class=" candidat-profil-container">
                            <div class="candidat-profil-infos-img">
                                <img class="candidat-profil-img" src="alexis.jpg">
                            </div>
                            <div class="candidat-profil-infos-text">
                                <span class="candidat-profil-name">Alexis Mouchon</span>
                                <span class="candidat-profil-title">Développeur React</span>
                                <span class="candidat-profil-location"><i class="fa-solid fa-location-dot"></i> Rouen, Normandie</span>
                            </div>
                            <div class="candidat-profil-skills">
                                <ul>
                                    <li class="skills-container">React</li>
                                    <li class="skills-container">CSS</li>
                                    <li class="skills-container">JavaScript</li>
                                    <li class="skills-container">PHP</li>
                                    <li class="skills-container">Wordpress</li>
                                </ul>
                            </div>
                            <div class="candidat-profil-links">
                                <button class="button-recruteur">Télécharger CV</button>
                                <button class="button-recruteur button-contact">Contacter</button>
                            </div>
                </div>

                <div class="candidat-profil-container">
                    <div class="candidat-profil-infos-img">
                        <img class="candidat-profil-img" src="marcus.jpg">
                    </div>
                    <div class="candidat-profil-infos-text">
                        <span class="candidat-profil-name">Marcus Mendy</span>
                        <span class="candidat-profil-title">Développeur Frontend</span>
                        <span class="candidat-profil-location"><i class="fa-solid fa-location-dot"></i> Rouen, Normandie</span>
                    </div>
                    <div class="candidat-profil-skills">
                        <ul>
                            <li class="skills-container">HTML</li>
                            <li class="skills-container">CSS</li>
                            <li class="skills-container">JavaScript</li>
                            <li class="skills-container">PHP</li>
                            <li class="skills-container">Wordpress</li>
                        </ul>
                    </div>
                    <div class="candidat-profil-links">
                        <button class="button-recruteur">Télécharger CV</button>
                        <button class="button-recruteur button-contact">Contacter</button>
                    </div>
                </div>

                <div class="candidat-profil-container">
                    <div class="candidat-profil-infos-img">
                        <img class="candidat-profil-img" src="dalecooper.jpg">
                    </div>
                    <div class="candidat-profil-infos-text">
                        <span class="candidat-profil-name">Maxime Hébert</span>
                        <span class="candidat-profil-title">Développeur Web</span>
                        <span class="candidat-profil-location"><i class="fa-solid fa-location-dot"></i> Rouen, Normandie</span>
                    </div>
                    <div class="candidat-profil-skills">
                        <ul>
                            <li class="skills-container">HTML</li>
                            <li class="skills-container">CSS</li>
                            <li class="skills-container">JavaScript</li>
                            <li class="skills-container">PHP</li>
                            <li class="skills-container">Wordpress</li>
                        </ul>
                    </div>
                    <div class="candidat-profil-links">
                        <button class="button-recruteur">Télécharger CV</button>
                        <button class="button-recruteur button-contact">Contacter</button>
                    </div>
                </div> -->

    </main>

</body>

<?php
get_footer();
?>