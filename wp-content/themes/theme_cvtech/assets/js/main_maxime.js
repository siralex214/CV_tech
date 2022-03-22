jQuery(document).ready(function () {

    // FORMULAIRE CV

    jQuery(document).on('click', '#add-permis', function () {
        // jQuery("#input-permis").html("");
        jQuery("#input-permis").append("<input class='input' name='permis[]' type='text' placeholder='Ex: Permis A'>");
    })

    jQuery(document).on('click', '#add-competences', function () {
        // jQuery("#input-competences").html("");
        jQuery("#input-competence").append("<input class='input' name='competences[]' type='text' placeholder='Ex: HTML'>");
    })
    jQuery(document).on('click', '#add-langues', function () {
        // jQuery("#input-langues").html("");
        jQuery("#input-langue").append("<input class='input' name='langues[]' type='text' placeholder='Ex: Français'>");
    })
    jQuery(document).on('click', '#add-hobbies', function () {
        // jQuery("#input-hobbies").html("");
        jQuery("#input-hobbie").append("<input class='input' name='hobbies[]' type='text' placeholder='Ex: Cinéma'>");
    })

    showTemplateExperience();
    showTemplateFormation();

})

// FORMULAIRES D'AJOUT EXPERIENCE ET FORMATION

let i = 1
function showTemplateExperience() {
    jQuery(document).on('click', '#add-experience', function () {
        var content = getTemplateExperience(i);
        jQuery("#input-experiences").append(content);
        i++;
    });
}

let n = 1
function showTemplateFormation() {
    jQuery(document).on('click', '#add-formation', function () {
        var content = getTemplateFormation(n);
        jQuery("#input-formations").append(content);
        n++;
    });
}

function getTemplateExperience(i) {
    return "<div class=\"cv-subcontainer\">\n" +
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
        "</div><hr>"
}

function getTemplateFormation(n) {
    return "<div class=\"cv-subcontainer\">\n" +
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
        "</div><hr>"
}