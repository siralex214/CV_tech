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
$cvs = $wpdb->get_results("SELECT * FROM cv_wp_custom_cv WHERE id_user = 2", ARRAY_A);
debug($cvs); ?>
<main id="profil_user">

    <div id="app"></div>
    <h1 class="profil_user_h1">Bonjour, <!-- PHP --> </h1>
    <section class="wrap_profil_user">
        <div class="menu_nav_profil_user">
            <button value="0" class="but_profil_user">Mes informations personelles</button>
            <button value="1" class="but_profil_user">Mes expériences profesionnel</button>
            <button value="2" class="but_profil_user">Mes formations</button>
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
