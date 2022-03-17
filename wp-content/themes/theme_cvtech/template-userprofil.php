<?php
/**
 * Template Name: profil user
 */
get_header();
global $wpdb;
$user = $wpdb->get_results("SELECT * FROM cv_wp_custom_users WHERE id = 1");
$user = $user[0]; ?>
<main>

    <div id="app"></div>
    <h1 class="profil_user_h1">Bonjour, <?= $user->nom . " " . $user->prenom ?></h1>
    <section class="wrap_profil_user">
        <div class="menu_nav_profil_user">
            <button value="0" class="but_profil_user">Mes informations personelles</button>
            <button value="1" class="but_profil_user">Mes CVs</button>
            <button value="2" class="but_profil_user">Mes CVs</button>
            <button value="3" class="but_profil_user">Mes CVs</button>
        </div>

        <div class="profil_user_block show_block_profil_user">
            block1
        </div>
        <div class="profil_user_block none_block_profil_user">
            block2
        </div>
        <div class="profil_user_block none_block_profil_user">
            block3
        </div><div class="profil_user_block none_block_profil_user">
            block4
        </div>
    </section>
</main>

<?php get_footer(); ?>
