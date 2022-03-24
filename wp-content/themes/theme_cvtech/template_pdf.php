<?php
/* Template Name: pdf */
get_header();

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
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js">
    </script>
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
                            <label for="nom">Nom:</label>
                            <input type="nom" name="nom" value="<?= $info_persos['prenom'] ?>">
                        </div>
                        <br>
                        <div>
                            <label for="prenom">Prénom:</label>
                            <input type="prenom" name="prenom" value="<?= $info_persos['nom'] ?>">
                        </div>
                        <br>
                        <div> <label for="email">Adresse E-mail:</label>
                            <input type="email" name="email" value="<?= $info_persos['email'] ?>">
                        </div>
                        <br>
                        <div> <label for="date">date de naissance:</label>
                            <input type="date" name="date" value="<?= $info_persos['date_de_naissance'] ?>">
                        </div>
                        <br>
                        <div> <label for="num"> numéro de telephone:</label>
                            <input type="num" name="num" value="<?= $info_persos['telephone'] ?>">
                        </div>
                        <br>
                        <div> <label for="adresse">adresse postale:</label>
                            <input type="adresse" name="adresse" value="<?= $info_persos['addresse_postale'] ?>">
                        </div>
                        <br>
                        <div> <label for="permis"> permis:</label>
                            <?php foreach ($info_persos['permis'] as $permis) : ?>
                                <p> <?= $permis ?>,</p>
                            <?php endforeach; ?>
                        </div>
                        <div>
                            <div>
                                <label for="competence">les competences:</label>
                                <input type="competence" name="competence" value="<?= $info_persos['competences'] ?>">
                            </div>
                            <br>
                            <br>
                            <div>
                                <label for="langues">les langues:</label>
                                <input type="langues" name="langues" value="<?= $info_persos['langues'] ?>">
                            </div>
                            <br>
                            <br>
                            <div>
                                <label for="hobbies">les hobbies:</label>
                                <input type="hobbies" name="hobbies" value="<?= $info_persos['hobbies'] ?>">
                            </div>
                        </div>
                    </div>
                    <div class="right-column">
                        <div class="header">
                            <div>
                                <label for="entreprise">l'entreprise:</label>
                                <input type="entreprise" name="entreprise" value="<?= $exp_pros['entreprise'] ?>">
                            </div>
                            <br>
                            <div>
                                <label for="lieu">lieu:</label>
                                <input type="lieu" name="lieu" value="<?= $exp_pros['lieu'] ?>">
                            </div>
                            <br>
                            <div>
                                <label for="poste">Poste:</label>
                                <input type="poste" name="poste" value="<?= $exp_pros['poste'] ?>">
                            </div>
                            <br>
                            <div>

                                <label for="description">description:</label>
                                <?php foreach ($exp_pros['description'] as $description) : ?>
                                    <p> <?= $description ?>,</p>
                                <?php endforeach; ?>
                            </div>
                        </div>
                        <div class=" content">
                            <div>
                                <label for="etablissement">etablissement:</label>
                                <input type="etablissement" name="etablissement" value="<?= $formations['etablissement'] ?>">
                            </div>
                            <br>
                            <div>
                                <label for="diplome">diplome:</label>
                                <input type="diplome" name="diplome" value="<?= $formations['diplome'] ?>">
                            </div>
                            <br>
                            <div>
                                <label for="lieu">lieu:</label>
                                <input type="lieu" name="lieu" value="<?= $formations['lieu'] ?>">
                            </div>
                            <br>
                            <div>
                                <label for="poste">titre:</label>
                                <input type="titre" name="titre" value="<?= $formations['titre'] ?>">
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