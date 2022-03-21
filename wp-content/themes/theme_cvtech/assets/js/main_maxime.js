$(document).ready(function () {

    // FORMULAIRE CV

    $(document).on('click', '#add-permis', function () {
        // $("#input-permis").html("");
        $("#input-permis").append("<input class='input' name='permis[]' type='text' placeholder='Ex: Permis A'>");
    })

    $(document).on('click', '#add-competences', function () {
        // $("#input-competences").html("");
        $("#input-competences").append("<input class='input' name='competences[]' type='text' placeholder='Ex: HTML>");
    })
    $(document).on('click', '#add-langues', function () {
        // $("#input-langues").html("");
        $("#input-langues").append("<input class='input' name='langues[]' type='text' placeholder='Ex: Français'>");
    })
    $(document).on('click', '#add-hobbies', function () {
        // $("#input-hobbies").html("");
        $("#input-hobbies").append("<input class='input' name='hobbies[]' type='text' placeholder='Ex: Cinéma'>");
    })

    let i = 1
    $(document).on('click', '#add-experiences', function () {
        // $("#input-experiences").html("");
        $("#input-experiences").append("<div class=\"cv-subcontainer\">\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Intitulé de poste</label>\n" +
            "        <input id=\"poste\" class=\"input\" name=\"experience[form" + i + "][poste]\" type=\"text\" placeholder=\"Intitulé de poste\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Nom de l'entreprise</label>\n" +
            "        <input id=\"entreprise\" class=\"input\" name=\"experience[form" + i + "][entreprise]\" type=\"text\" placeholder=\"Nom de l'entreprise\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Lieu</label>\n" +
            "        <input id=\"lieu\" class=\"input\" name=\"experience[form" + i + "][lieu]\" type=\"text\" placeholder=\"Lieu de l'entreprise\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Date de début</label>\n" +
            "        <input class=\"input\" name=\"experience[form" + i + "][date_debut]\" type=\"date\" placeholder=\"Date de début\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Date de fin</label>\n" +
            "        <input class=\"input\" name=\"experience[form" + i + "][date_fin]\" type=\"date\" placeholder=\"Date de fin\">\n" +
            "    </div>\n" +
            "</div>\n" +
            "<div class=\"input-box\">\n" +
            "    <label class=\"label\">Description</label>\n" +
            "    <textarea id=\"description\" class=\"input\" name=\"experience[form" + i + "][description]\" placeholder=\"Description\"></textarea>\n" +
            "</div><hr>");
        i++
    })

    let n = 1
    $(document).on('click', '#add-formations', function () {
        // $("#input-formations").html("");
        $("#input-formations").append("<div class=\"cv-subcontainer\">\n" +
            "   <div class=\"input-box\">\n" +
            "       <label class=\"label\">Intitulé de la formations</label>\n" +
            "       <input id=\"formation\" class=\"input\" name=\"formation[form" + n + "][intitule]\" type=\"text\" placeholder=\"Intitulé de la formation\">\n" +
            "   </div>\n" +
            "   <div class=\"input-box\">\n" +
            "       <label class=\"label\">Diplome</label>\n" +
            "       <select id=\"diplome\" class=\"input\" name=\"formation[form" + n + "][diplome]\" placeholder=\"Veuillez séléctionner\">\n" +
            "           <option>BEP</option>\n" +
            "           <option>CAP</option>\n" +
            "           <option>BAC</option>\n" +
            "           <option>BTS</option>\n" +
            "       </select>\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Ecole</label>\n" +
            "        <input id=\"ecole\" class=\"input\" name=\"formation[form" + n + "][ecole]\" type=\"text\" placeholder=\"Nom de l'école\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Lieu</label>\n" +
            "        <input id=\"lieu\" class=\"input\" name=\"formation[form" + n + "][lieu]\" type=\"text\" placeholder=\"Lieu de l'entreprise\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Date de début</label>\n" +
            "        <input class=\"input\" name=\"formation[form" + n + "][date_debut]\" type=\"date\" placeholder=\"Date de début\">\n" +
            "    </div>\n" +
            "    <div class=\"input-box\">\n" +
            "        <label class=\"label\">Date de fin</label>\n" +
            "        <input class=\"input\" name=\"formation[form" + n + "][date_fin]\" type=\"date\" placeholder=\"Date de fin\">\n" +
            "    </div>\n" +
            "</div>\n" +
            "<div class=\"input-box\">\n" +
            "    <label class=\"label\">Description</label>\n" +
            "    <textarea id=\"description\" class=\"input\" name=\"formation[form" + n + "][description]\" placeholder=\"Description\"></textarea>\n" +
            "</div><hr>");
        n++
    })

})