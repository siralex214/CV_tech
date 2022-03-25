<?php
/* Template Name: pdf */


global $wpdb;


$prepare2 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_formation` WHERE id_user = %d LIMIT 3", [$_GET['id']]);
$formations = $wpdb->get_results($prepare2, ARRAY_A);

$prepare3 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_exp-pro` WHERE id_user = %d LIMIT 2", [$_GET['id']]);
$exp_pros = $wpdb->get_results($prepare3, ARRAY_A);


$prepare5 = $wpdb->prepare("SELECT * FROM `cv_wp_custom_info_perso` WHERE id_user = %d", [$_GET['id']]);
$info_persos = $wpdb->get_results($prepare5, ARRAY_A);
$info_persos = $info_persos[0];
$info_persos['date_de_naissance'] = explode(" ", $info_persos['date_de_naissance']);
$info_persos['permis'] = explode("; ", $info_persos['permis']);
$info_persos['date_de_naissance'] = $info_persos['date_de_naissance'][0];
$info_persos['date_de_naissance'] = date("d-m-Y", strtotime($info_persos['date_de_naissance']));

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
                    <div><label for="permis"> permis:</label>
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

                        <div class="titlecv">
                            <H4 class="title_title">Mon Parcours Scolaire</H4>
                            <hr>
                        </div>
                        <?php
                        foreach ($formations as $formation) : ?>
                            <div class="one_formation">
                                <div class="etabl">
                                    Etablissement: <?= $formation['etablissement'] ?>
                                </div>
                                <div class="dipl">
                                    Diplome: <?= $formation['diplome'] ?>
                                </div>
                                <div class="lieu">
                                    Lieu: <?= $formation['lieu'] ?>
                                </div>
                                <div class="titre">
                                    Diplome: <?= $formation['titre'] ?>
                                </div>
                                <br>
                                <hr>
                            </div>
                        <?php endforeach; ?>
                    </div>

                    <div class=" contentpdf">
                        <div>
                            <div class="titlecv">
                                <H4 class="title_titledeux">Mon Parcours Professionel</H4>
                                <hr>
                            </div>
                            <?php
                            foreach ($exp_pros

                            as $exp_pro) : ?>
                            <div class="one_exp">
                                <div>
                                    <div>
                                        Entreprise <?= $exp_pro['entreprise'] ?>
                                    </div>
                                    <div>
                                        Lieu: <?= $exp_pro['lieu'] ?>
                                    </div>
                                    <div>
                                        Poste: <?= $exp_pro['poste'] ?>
                                    </div>
                                    <div>
                                        Type de travail: <?= $exp_pro['description'] ?>
                                    </div>
                                </div>
                                <hr>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <button class="btn btn-primary" id="download">Télécharger en pdf</button>
        </div>
    </div>
</body>