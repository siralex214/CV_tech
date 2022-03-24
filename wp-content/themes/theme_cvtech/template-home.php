<?php
/*Template Name: Home*/
get_header();
?>

<main id="main-home">
    <div id="wrapper">
        <div id="wrapper-left">
            <h1 class="wrapper-title">Créateur d'affinités professionnelles</h1>
            <p class="wrapper-text">spécialiste du recrutement dans l'informatique et le numérique</p>
            <a class="button" id="btn_inscription" href="#">Candidater</a>
        </div>
        <div id="wrapper-right">
            <img id="wrapper-img" src="<?= get_template_directory_uri() ?>/assets/img/business-3d-flying-black-businessman.png" alt="">
        </div>
    </div>
    <div id="companies">
        <h1 id="companies-title">Les entreprises du moment</h1>
        <div id="company-card">
            <div class="card-box">
                <img class="card-img" src="<?= get_template_directory_uri() ?>/assets/img/logo_NFS.png" alt="">
                <h2>Need For School</h2>
                <p class="card-text"><i class="fa-solid fa-location-dot"></i> Rouen, Normandie</p>
            </div>
            <div class="card-box">
                <img class="card-img" src="<?= get_template_directory_uri() ?>/assets/img/logo_bubble.png" alt="">
                <h2>Bubble</h2>
                <p class="card-text"><i class="fa-solid fa-location-dot"></i> Paris, Ile-de-France
            </div>
            <div class="card-box">
                <img class="card-img" src="<?= get_template_directory_uri() ?>/assets/img/logo_kazaden.png" alt="">
                <h2>Kazaden</h2>
                <p class="card-text"><i class="fa-solid fa-location-dot"></i> Lyon, Auvergne-Rhône-Alpes</p>
            </div>
            <div class="card-box">
                <img class="card-img" src="<?= get_template_directory_uri() ?>/assets/img/qwant_logo.png" alt="">
                <h2>Qwant</h2>
                <p class="card-text"><i class="fa-solid fa-location-dot"></i> Rouen, Normandie</p>
            </div>
        </div>
    </div>
    <div id="about-us">
        <h1 id="about-title">Hello World !</h1>
        <div id="about-container">
            <div id="about-left">
                <img id="about-img" src="<?= get_template_directory_uri() ?>/assets/img/business-3d-colleagues-standing.png" alt="">
            </div>
            <div id="about-right">
                <h2>Bertolucci, cabinet spécialisé dans le recrutement de techniciens
                    qualifiés dans le domaine de l’informatique et du numérique, vous accompagne
                    dans vos besoins en recrutement CDD/CDI/Intérim.
                </h2>
                <p id="about-text">Le saviez-vous ? Bertolucci c'est :</p>
                <ul>
                    <li>30 bureaux en France</li>
                    <li>Plus de 280 collaborateurs permanents</li>
                    <li>Près de 3000 clients</li>
                    <li>2600 candidats</li>
                </ul>
            </div>
        </div>
    </div>
    <div id="contact">
        <h1 id="contact-title">Vous avez une question ?</h1>
        <p id="contact-text">Nous avons la réponse !</p>
        <a class="button" href="<?php the_permalink()?>contact">Nous contacter</a>
    </div>
</main>

<?php
get_footer();
?>