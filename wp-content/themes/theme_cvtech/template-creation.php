<?php

/**
 * Template Name: Creation 
 */
get_header();
?>
<div class="wrap-form">


  <form action="" method="post">
    <div class="flex-form">
      <h2 id="title-form">Créer votre CV</h2>
      <!-- <h2>Profil</h2> -->


      <div class="form-group">
        <div class="top-form-group">
          <input type="text" name="nom" placeholder="Votre Nom" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="text" name="prenom" placeholder="Votre Prenom" class="form-name input-form">
        </div>

      </div>

      <div class="form-group">
        <div class="top-form-group">

          <input type="email" name="email" placeholder="Votre Email" class="form-name input-form">
        </div>
        <div class="top-form-group">
        <input type="date" name="datenaissane" class="form-name input-form">
        </div>
      </div>

      <div class="form-group">
        <div class="top-form-group">
          <input type="tel" name="tel" placeholder="Téléphone" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="text" name="title" placeholder="Votre Titre" class="form-name input-form">
        </div>
      </div>

      <div class="form-group">
        <div class="top-form-group">
          <input type="text" name="adresse1" placeholder="Adresse n°1" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="text" name="adresse2" placeholder="Adresse n°2" class="form-name input-form">
        </div>
      </div>

      <!-- <input type="date" name="datenaissane" placeholder="Votre Date de Naissance" class="form-name input-form"> -->

      <!-- <div class="form-group"> -->
      <div class="form-group">

        <select name="permis" id="permis" class="form-group">
          <option value="permis_obtenu">Permis Obtenu</option>
          <option value="permis_A">A</option>
          <option value="permis_A1">A1</option>
          <option value="permis_A2">A2</option>
          <option value="permis_B">B</option>
          <option value="permis_B1">B1</option>
          <option value="permis_BE">BE</option>
          <option value="permis_C">C</option>
          <option value="permis_C1">C1</option>
          <option value="permis_C1E">C1E</option>
          <option value="permis_D">D</option>
          <option value="permis_D1">D1</option>
          <option value="permis_D1E">D1E</option>
          <option value="permis_DE">DE</option>
        </select>

      </div>
      <!-- </div> -->






      <!-- <h2>Formation</h2> -->


      <div class="form-group">
        <div class="top-form-group">
          <input type="text" name="ecole" placeholder="Votre Etablissement" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="text" name="ville1" placeholder="Ville d'étude" class="form-name input-form">
        </div>
      </div>

      <div class="form-group">
        <div class="top-form-group">
          <input type="date" name="date_debut" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="date" name="date_fin" class="form-name input-form">
        </div>
      </div>


      <div class="form-group">

        <select name="diplome" id="diplome" class="select-form-cv" multiple>
          <option value="diplome_obtenu">Diplome Obtenu</option>
          <option value="cap">CAP</option>
          <option value="diplome">BEP</option>
          <option value="diplome">BAC</option>
          <option value="diplome">DEUG</option>
          <option value="diplome">BTS</option>
          <option value="diplome">DUT</option>
          <option value="diplome">DEUST</option>
          <option value="diplome">LICENCE</option>
          <option value="diplome">LICENCE PROFESSIONNELLE</option>
          <option value="diplome">BUT</option>
          <option value="diplome">MAITRISE</option>
          <option value="diplome">MASTER 1</option>
          <option value="diplome">MASTER</option>
          <option value="diplome">DIPLOME D'ETUDES APPRONFONDIES</option>
          <option value="diplome">DIPLOME D'ETUDES SUPERIEURES SPECIALISEES</option>
          <option value="diplome">DIPLOME D'INGENIEUR</option>
          <option value="diplome">DOCTORAT</option>
          <!-- <option value="diplome">HABILITATIONS A DIRIGER ES</option> -->

        </select>
        <!-- <br> -->
      </div>

      <div class="form-group">

        <textarea name="des_formation" class="des" id="des" placeholder="Ajouter description"></textarea>
        
      </div>

      <!-- <h2>Expérience Professionnelle</h2> -->

      <div class="form-group">
        <div class="top-form-group">
          <input type="text" name="ent" placeholder="Votre Entreprise" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="text" name="ville2" placeholder="Ville de Travail" class="form-name input-form">
        </div>
      </div>

      <div class="form-group">
        <div class="top-form-group">
          <input type="date" name="date_debut2" class="form-name input-form">
        </div>
        <div class="top-form-group">
          <input type="date" name="date_fin2" class="form-name input-form">
        </div>
      </div>

      <div class="form-group">

        <input type="text" name="poste" placeholder="Poste occupé" class="form-poste input-form">

      </div>

      <div class="form-group">

        <textarea name="des_poste" class="des" id="des_poste" placeholder="Ajouter description"></textarea>
        
      </div>

      <!-- <h2>Autres</h2> -->
      <div class="form-group">

        <select name="competences" id="competences" class="select-form-cv" multiple>
          <option value="diplome_obtenu">Vos Compétences</option>
          <option value="cap">CAP</option>
          <option value="diplome">BEP</option>
          <option value="diplome">BAC</option>
          <option value="diplome">DEUG</option>
          <option value="diplome">BTS</option>
          <option value="diplome">DUT</option>
          <option value="diplome">DEUST</option>
          <option value="diplome">LICENCE</option>
          <option value="diplome">LICENCE PROFESSIONNELLE</option>
          <option value="diplome">BUT</option>
          <option value="diplome">MAITRISE</option>
          <option value="diplome">MASTER 1</option>
          <option value="diplome">MASTER</option>
          <option value="diplome">DIPLOME D'ETUDES APPRONFONDIES</option>
          <option value="diplome">DIPLOME D'ETUDES SUPERIEURES SPECIALISEES</option>
          <option value="diplome">DIPLOME D'INGENIEUR</option>
          <option value="diplome">DOCTORAT</option>
        </select>

      </div>


      <div class="form-group">

        <select name="langues" id="langues" class="select-form-cv" multiple>
          <option value="diplome_obtenu">Langues</option>
          <option value="cap">CAP</option>
          <option value="diplome">BEP</option>
          <option value="diplome">BAC</option>
          <option value="diplome">DEUG</option>
          <option value="diplome">BTS</option>
          <option value="diplome">DUT</option>
          <option value="diplome">DEUST</option>
          <option value="diplome">LICENCE</option>
          <option value="diplome">LICENCE PROFESSIONNELLE</option>
          <option value="diplome">BUT</option>
          <option value="diplome">MAITRISE</option>
          <option value="diplome">MASTER 1</option>
          <option value="diplome">MASTER</option>
          <option value="diplome">DIPLOME D'ETUDES APPRONFONDIES</option>
          <option value="diplome">DIPLOME D'ETUDES SUPERIEURES SPECIALISEES</option>
          <option value="diplome">DIPLOME D'INGENIEUR</option>
          <option value="diplome">DOCTORAT</option>
        </select>

      </div>

      <div class="form-group">

        <select name="hobbies" id="hobbies" class="select-form-cv" multiple>
          <option value="diplome_obtenu">Vos Hobbies</option>
          <option value="cap">CAP</option>
          <option value="diplome">BEP</option>
          <option value="diplome">BAC</option>
          <option value="diplome">DEUG</option>
          <option value="diplome">BTS</option>
          <option value="diplome">DUT</option>
          <option value="diplome">DEUST</option>
          <option value="diplome">LICENCE</option>
          <option value="diplome">LICENCE PROFESSIONNELLE</option>
          <option value="diplome">BUT</option>
          <option value="diplome">MAITRISE</option>
          <option value="diplome">MASTER 1</option>
          <option value="diplome">MASTER</option>
          <option value="diplome">DIPLOME D'ETUDES APPRONFONDIES</option>
          <option value="diplome">DIPLOME D'ETUDES SUPERIEURES SPECIALISEES</option>
          <option value="diplome">DIPLOME D'INGENIEUR</option>
          <option value="diplome">DOCTORAT</option>
        </select>

      </div>
      <div class="form-group">

        <input type="submit" name="save_cv" class="submit_cv">
      </div>

    </div>
  </form>


</div>



<?php
get_footer();
