<?php
/* Template Name: pdf */

?>
<?php
$_SESSION['id'] = 2;
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
                        <div>
                            <p type="nom" name="nom"><?= $info_persos['prenom'] ?></p>
                        </div>
                        <br>
                        <div>
                            <p type="prenom" name="prenom"><?= $info_persos['nom'] ?></p>
                        </div>
                        <br>
                        <div>
                            <p type="email" name="email"><?= $info_persos['email'] ?></p>
                        </div>
                        <br>
                        <div>
                            <p type="date" name="date"><?= $info_persos['date_de_naissance'] ?></p>
                        </div>
                        <br>
                        <div>
                            <p type="num" name="num"><?= $info_persos['telephone'] ?></p>
                        </div>
                        <br>
                        <div>
                            <p type="adresse" name="adresse"><?= $info_persos['addresse_postale'] ?></p>
                        </div>
                        <br>
                        <div> <label for="permis"> permis:</label>
                            <?php foreach ($info_persos['permis'] as $permis) : ?>
                                <p> <?= $permis ?>,</p>
                            <?php endforeach; ?>
                        </div>
                        <div>
                            <div>
                                <p type="competence" name="competence"><?= $info_persos['competences'] ?></p>
                            </div>
                            <br>
                            <br>
                            <div>

                                <p type="langues" name="langues"><?= $info_persos['langues'] ?></p>
                            </div>
                            <br>
                            <br>
                            <div>
                                <label for="hobbies">les hobbies:</label>
                                <p type="hobbies" name="hobbies"><?= $info_persos['hobbies'] ?></p>
                            </div>
                        </div>
                    </div>
                    <div class="right-column">
                        <div class="header">
                            <div>
                                <label for="entreprise">l'entreprise:</label>
                                <p type="entreprise" name="entreprise"><?= $exp_pros['entreprise'] ?></p>
                            </div>
                            <br>
                            <div>
                                <label for="lieu">lieu:</label>
                                <p type="lieu" name="lieu"><?= $exp_pros['lieu'] ?></p>
                            </div>
                            <br>
                            <div>
                                <label for="poste">Poste:</label>
                                <p type="poste" name="poste"><?= $exp_pros['poste'] ?></p>
                            </div>
                            <br>
                            <div>

                                <label for="description">description:</label>
                                <?php foreach ($exp_pros['description'] as $description) : ?>
                                    <p> <?= $description ?>,</p>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <div class=" contentpdf">
                            <div>
                                <label for="etablissement">etablissement:</label>
                                <p type="etablissement" name="etablissement"><?= $formations['etablissement'] ?></p>
                            </div>
                            <br>
                            <div>
                                <label for="diplome">diplome:</label>
                                <p type="diplome" name="diplome"><?= $formations['diplome'] ?></p>
                            </div>
                            <br>
                            <div>
                                <label for="lieu">lieu:</label>
                                <p type="lieu" name="lieu"><?= $formations['lieu'] ?></p>
                            </div>
                            <br>
                            <div>
                                <label for="poste">titre:</label>
                                <p type="titre" name="titre"><?= $formations['titre'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <button class="btn btn-primary" id="download"> télécharger en pdf</button>
            </div>
        </div>
    </div>
</body>