<?php
/* Template Name: pdf */

?>
<?php
$_SESSION['photo'] = "lien";
// }

global $wpdb;


$prepare2 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_formation` WHERE id_user = %d", [$_SESSION['id']]);
$formations = $wpdb->get_results($prepare2, ARRAY_A);
$formations = $formations[0];



$prepare3 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_exp-pro` WHERE id_user = %d", [$_SESSION['id']]);
$exp_pros = $wpdb->get_results($prepare3, ARRAY_A);
$exp_pros = $exp_pros[0];
$exp_pros['description'] = explode("; ", $exp_pros['description']);


$prepare5 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_info_perso` WHERE id_user = %d", [$_SESSION['id']]);
$info_persos = $wpdb->get_results($prepare5, ARRAY_A);
$info_persos = $info_persos[0];
$info_persos['permis'] = explode("; ", $info_persos['permis']);




?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="_fabien.css">
    <link rel="stylesheet" href="<?= get_stylesheet_directory_uri() ?>/assets/css/style_fabien.css">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" defer></script>
    <script src="<?= get_stylesheet_directory_uri() ?>/assets/js/main_theo.js" defer></script>
</head>

<body>
    <div class="pagecv">
        <!-- <div class="sidebar">
            sidebar
        </div> -->
        <div class="bodypdf">
            <div class="cv-box">
                <div class="card" id="invoice">
                    <div class="left-column">
                        <h2>Informations Personnel</h2>
                        <div>
                            <p type="nom" name="nom"><?= $info_persos['prenom'] ?></p>
                        </div>
                        <div>
                            <p type="prenom" name="prenom"><?= $info_persos['nom'] ?></p>
                        </div>
                        <div>
                            <p type="email" name="email"><?= $info_persos['email'] ?></p>
                        </div>
                        <div>
                            <p type="date" name="date"><?= $info_persos['date_de_naissance'] ?></p>
                        </div>
                        <div>
                            <p type="num" name="num"><?= $info_persos['telephone'] ?></p>
                        </div>
                        <div>
                            <p type="adresse" name="adresse"><?= $info_persos['addresse_postale'] ?></p>
                        </div>
                        <div> <label for="permis"> permis:</label>
                            <?php foreach ($info_persos['permis'] as $permis) : ?>
                                <p> <?= $permis ?>,</p>
                            <?php endforeach; ?>
                        </div>
                        <div>
                            <h2>Mes Competences</h2>
                            <div>
                                <h5>Competences maitrisées</h5>
                                <p type="competence" name="competence"><?= $info_persos['competences'] ?></p>
                            </div>
                            <br>
                            <div>
                                <h5>Languages maitrisés</h5>
                                <p type="langues" name="langues"><?= $info_persos['langues'] ?></p>
                            </div>
                            <br>
                            <div>
                                <h5>Mes Activités</h5>
                                <p type="hobbies" name="hobbies"><?= $info_persos['hobbies'] ?></p>
                            </div>
                        </div>
                    </div>
                    <div class="right-column">
                        <div class="header">
                            <div>
                                <H2>Mes Experiences Profesionnels</H2>

                                j'ai travailler dans <?= $exp_pros['entreprise'] ?> pendant 3 ans à <?= $exp_pros['lieu'] ?> en tant que <?= $exp_pros['poste'] ?>
                                <br>
                                Mon travail dans cette entreprise etait de m'occuper de la:
                                <?php foreach ($exp_pros['description'] as $description) : ?>
                                    <p> <?= $description ?>,</p>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <div class=" contentpdf">
                            <div>
                                <H2>Mon Parcours Scolaire</H2>
                                J'ai passer mon <?= $formations['diplome'] ?>
                                dans l'école <?= $formations['etablissement'] ?>
                                qui ce situe à <?= $formations['lieu'] ?>
                                ce qui va me permettre de venir <?= $formations['titre'] ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <button class="btn btn-primary" id="download"> télécharger en pdf</button>
        </div>
    </div>
</body>