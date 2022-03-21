<?php
/* Template Name: Formulaire CV */

if (!empty($_POST)) {

    $id_user = $_SESSION['id'];

    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $date_naissance = $_POST['date'];
    $telephone = $_POST['telephone'];
    $adresse = $_POST['adresse_1'] . $_POST['adresse_2'];
    $permis = implode("; ", $_POST['permis']);
    $competences = implode("; ", $_POST['competences']);
    $langues = implode("; ", $_POST['langues']);
    $hobbies = implode("; ", $_POST['hobbies']);

    global $wpdb;
    $wpdb->insert("cv_wp_custom_info_perso", array(
        "id_user" => $id_user,
        "nom" => $nom,
        "prenom" => $prenom,
        "email" => $email,
        "date_de_naissance" => "$date_naissance",
        "telephone" => $telephone,
        "adresse_postale" => $adresse,
        "permis" => $permis,
        "competences" => $competences,
        "langues" => $langues,
        "hobbies" => $hobbies,
    ));

    foreach ($_POST['experience'] as $one_exp) {
        foreach ($one_exp as $value) {
            $date_debut_exp = $_POST['date_debut'];
            $date_fin_exp = $value['date_fin'];
            $entreprise = $value['entreprise'];
            $lieu = $value['lieu'];
            $poste = $value['poste'];
            $description = $value['description'];

            global $wpdb;
            $wpdb->insert("cv_wp_custom_exp-pro", array(
                "id_user" => $id_user,
                "date_debut" => $date_debut_exp,
                "date_fin" => $date_fin_exp,
                "entreprise" => $entreprise,
                "lieu" => $lieu,
                "poste" => $poste,
                "description" => $description,
            ));
        }
    }

    foreach ($_POST['formation'] as $one_exp) {
        foreach ($one_exp as $value) {
            $date_debut_formation = $_POST['date_debut'];
            $date_fin_formation = $value['date_fin'];
            $etablissement = $value['etablissement'];
            $lieu = $value['lieu'];
            $diplome = $value['diplome'];
            $titre = $value['titre'];

            global $wpdb;
            $wpdb->insert("cv_wp_custom_formation", array(
                "id_user" => $id_user,
                "date_debut" => $date_debut_formation,
                "date_fin" => $date_fin_formation,
                "etablissement" => $etablissement,
                "lieu" => $lieu,
                "diplome" => $diplome,
                "titre" => $titre,
            ));
        }
    }
}

get_header();
?>

<main id="main-cv">

    <h1>Créer votre profil</h1>

    <form method="post">

        <div class="cv-container">
            <h2 class="cv-container-title">
                Vos informations personnelles
            </h2>
            <div class="cv-subcontainer">
                <div class="input-box">
                    <label class="label">Nom</label>
                    <input id="nom" class="input" name="nom" type="text" placeholder="Entrez votre nom">
                </div>
                <div class="input-box">
                    <label class="label">Prénom</label>
                    <input id="prenom" class="input" name="prenom" type="text" placeholder="Entrez votre Prénom">
                </div>
                <div class="input-box">
                    <label class="label">Email</label>
                    <input id="email" class="input" name="email" type="email" placeholder="Entrez votre Email">
                </div>
                <div class="input-box">
                    <label class="label">Date de Naissance</label>
                    <input class="input" name="date" type="date" placeholder="Entrez votre Date de Naissance">
                </div>
                <div class="input-box">
                    <label class="label">Téléphone</label>
                    <input id="telephone" class="input" name="telephone" type="tel" placeholder="Entrez votre Téléphone">
                </div>
                <div class="input-box">
                    <label class="label">Adresse 1</label>
                    <input id="adresse_1" class="input" name="adresse_1" type="text" placeholder="n°, rue, résidence, bâtiment">
                </div>
                <div class="input-box">
                    <label class="label">Adresse 2</label>
                    <input id="adresse_2" class="input" name="adresse_2" type="text" placeholder="code postal, ville">
                </div>
            </div>
            <div id="permis">
                <label class="label">Permis</label>
                <div id="input-permis"></div>
                <label id="add-permis" class="add-label">+ ajouter un permis</label>
            </div>
        </div>

        <div class="cv-container">
            <h2 class="cv-container-title">
                Experiences
            </h2>
            <div id="input-experiences"></div>
            <label id="add-experiences" class="add-label">+ ajouter une expérience</label>
        </div>

        <div class="cv-container">
            <h2 class="cv-container-title">
                Formations
            </h2>
            <div id="input-formations"></div>
            <label id="add-formations" class="add-label">+ ajouter une formation</label>
        </div>

        <div class="cv-container">
            <h2 class="cv-container-title">
                Compétences
            </h2>
            <div class="cv-subcontainer">
                <div id="input-competences"></div>
                <label id="add-competences" class="add-label">+ ajouter une compétence</label>
            </div>
        </div>

        <div class="cv-container">
            <h2 class="cv-container-title">
                Langues
            </h2>
            <div class="cv-subcontainer">
                <div id="input-langues"></div>
                <label id="add-langues" class="add-label">+ ajouter une langue</label>
            </div>
        </div>

        <div class="cv-container">
            <h2 class="cv-container-title">
                Centres d'intérêts
            </h2>
            <div class="cv-subcontainer">
                <div id="input-hobbies"></div>
                <label id="add-hobbies" class="add-label">+ ajouter un centre d'intérêt</label>
            </div>
        </div>
        <input type="submit" value="envoyer" name="submitted">
        <form>

</main>

<?php get_footer(); ?>