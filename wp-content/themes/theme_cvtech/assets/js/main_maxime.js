jQuery(document).ready(function () {

    // VERIFICATION FORMULAIRE INSCRIPTION

    jQuery(document).on('input', '#nom_inscription', function () {
        nomChange();
    })

    jQuery(document).on('input', '#prenom_inscription', function () {
        prenomChange();
    })

    jQuery(document).on('input', '#email_inscription', function () {
        emailChange();
    })

    jQuery(document).on('input', '#password_inscription', function () {
        passwordChange();
    })

    jQuery(document).on('input', '#password_check', function () {
        passwordVerifChange();
    })

    // FORMULAIRE CV

    jQuery(document).on('click', '#add-permis', function () {
        // jQuery("#input-permis").html("");
        jQuery("#input-permis").append("<input class='input' name='permis[]' type='text' placeholder='Ex: Permis A'>");
    })

    jQuery(document).on('click', '#add-competences', function () {
        // jQuery("#input-competences").html("");
        jQuery("#input-competences").append("<input class='input' name='competences[]' type='text' placeholder='Ex: HTML'>");
    })
    jQuery(document).on('click', '#add-langues', function () {
        // jQuery("#input-langues").html("");
        jQuery("#input-langues").append("<input class='input' name='langues[]' type='text' placeholder='Ex: Français'>");
    })
    jQuery(document).on('click', '#add-hobbies', function () {
        // jQuery("#input-hobbies").html("");
        jQuery("#input-hobbies").append("<input class='input' name='hobbies[]' type='text' placeholder='Ex: Cinéma'>");
    })

    let i = 1
    jQuery(document).on('click', '#add-experiences', function () {
        // jQuery("#input-experiences").html("");
        jQuery("#input-experiences").append("<div class=\"cv-subcontainer\">\n" +
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
    jQuery(document).on('click', '#add-formations', function () {
        // jQuery("#input-formations").html("");
        jQuery("#input-formations").append("<div class=\"cv-subcontainer\">\n" +
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

function colorValide(str) {
    console.log('green')
    str.css('color', 'green');
}

function colorError(str) {
    console.log('red')
    str.css('color', 'red');
}

function nomChange() {

    if (jQuery('#nom_inscription').val().length >= 2 && jQuery('#nom_inscription').val().length <= 20) {
        colorValide(jQuery('#nomError'));
    } else {
        colorError(jQuery('#nomError'));
    }
}

function prenomChange() {

    if (jQuery('#prenom_inscription').val().length >= 2 && jQuery('#prenom_inscription').val().length <= 20) {
        colorValide(jQuery('#prenomError'));
    } else {
        colorError(jQuery('#prenomError'));
    }
}

function emailChange() {
    if (hasEmailValid(jQuery('#email_inscription').val())) {
        colorValide(jQuery('#emailError'));
    } else {
        colorError(jQuery('#emailError'));
    }
}

function passwordChange() {
    passwordVerifChange();
    //Vérification Taille >=8
    if (jQuery('#password_inscription').val().length >= 8) {
        colorValide(jQuery('#passwordErrorSize'));
    } else {
        colorError(jQuery('#passwordErrorSize'));
    }

    //Vérification présence d'une minuscule
    if (hasLowerCase(jQuery('#password_inscription').val()) == true) {
        colorValide(jQuery('#passwordErrorMinuscule'));
    } else {
        colorError(jQuery('#passwordErrorMinuscule'));
    }

    //Vérification présence d'une majuscule
    if (hasUpperCase(jQuery('#password_inscription').val())) {
        colorValide(jQuery('#passwordErrorMajuscule'));
    } else {
        colorError(jQuery('#passwordErrorMajuscule'));
    }

    //Vérification présence d'un nombre
    if (hasNumber(jQuery('#password_inscription').val())) {
        colorValide(jQuery('#passwordErrorNombre'));
    } else {
        colorError(jQuery('#passwordErrorNombre'));
    }

    //Vérification présence d'un char special
    if (hasSpecial(jQuery('#password_inscription').val())) {
        colorValide(jQuery('#passwordErrorSpecial'));
    } else {
        colorError(jQuery('#passwordErrorSpecial'));
    }
}

function passwordVerifChange() {
    if (jQuery('#password_inscription').val().length > 0) {
        if (jQuery('#password_inscription').val() == jQuery('#password_check').val()) {
            colorValide(jQuery('#passwordVerifError'));
        } else {
            colorError(jQuery('#passwordVerifError'));
        }
    }
}

// REGEX

function hasEmailValid(str) {
    return (/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(str));
}

function hasLowerCase(str) {
    return (/[a-z]/.test(str));
}

function hasUpperCase(str) {
    return (/[A-Z]/.test(str));
}

function hasNumber(str) {
    return (/[0-9]/.test(str));
}

function hasSpecial(str) {
    return (/[!-/]|[:-@]|[[-`]|[{-~]/.test(str));
}