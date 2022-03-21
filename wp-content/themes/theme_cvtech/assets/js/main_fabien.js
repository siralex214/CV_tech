const close_modal = document.querySelector("#close_modal");
const btn_connexion = document.querySelector("#btn_connexion");
const inscription = document.querySelector("#btn_ins");
const connexion = document.querySelector("#btn_co");
const formInscription = document.querySelector("#inscriptionform");
const formConnexion = document.querySelector("#connexionform");
const modal = document.querySelector(".modal");

let etatmodal = true;
modal.style = "display:none";
close_modal.addEventListener("click", () => {
  if (etatmodal == false) {
    modal.style = "display:none";
    etatmodal = true;
  }
});

btn_connexion.addEventListener("click", () => {
  if (etatmodal == true) {
    modal.style = "display: block";
    etatmodal = false;
  }
});

connexion.addEventListener("click", () => {
  formConnexion.style = "display: block";
  formInscription.style = "display: none";
  connexion.style = "";
  inscription.classList.remove("active_btn_log");
  connexion.classList.add("active_btn_log");
});

inscription.addEventListener("click", () => {
  formInscription.style = "display: block";
  formConnexion.style = "display: none";
  connexion.classList.remove("active_btn_log");
  inscription.classList.add("active_btn_log");
});

// Gestion des formulaires

//    Connexion

const email_connexion = document.querySelector("#email_connexion");
const focus_connexion_email = document.querySelector("#focus_connexion_email");
const focus_connexion_password = document.querySelector(
  "#focus_connexion_password"
);
const password_connexion = document.querySelector("#password_connexion");
const erreur_mail_co = document.querySelector("#erreur_mail_co");
const erreur_password_co = document.querySelector("#erreur_password_co");
const submit_connexion = document.querySelector("#submit_connexion");
const error_connexion = document.querySelector("#error_connexion");
let erreur = true;

if (email_connexion != null && password_connexion != null) {
  email_connexion.addEventListener("input", async () => {
    if (
      !email_connexion.value.match(/[a-z0-9_\-\.]+@[a-z0-9_\-\.]+\.[a-z]+/i)
    ) {
      erreur_mail_co.innerHTML = "l'email n'est pas une adresse valide";
      focus_connexion_email.style = "background-color: red";
      erreur = true;
    } else {
      submit_connexion.style = "cursor: pointer";
      erreur_mail_co.innerHTML = "&nbsp;";
      focus_connexion_email.style = "background-color: green";
      erreur = false;
    }
  });
  password_connexion.addEventListener("input", async () => {
    if (password_connexion.value.length < 8) {
      erreur_password_co.innerHTML = "mot de passe non réglementaire";
      focus_connexion_password.style = "background-color: red";
      erreur = true;
    } else {
      focus_connexion_password.style = "background-color: green";
      erreur_password_co.innerHTML = "&nbsp;";
      submit_connexion.style = "cursor: pointer";
      erreur = false;
    }
  });
  submit_connexion.addEventListener("click", async (event) => {
    if (erreur == true) {
      event.preventDefault();
      error_connexion.style = "color: red";
      error_connexion.innerHTML = "Mot de passe ou email incorrect";
    }
  });
}

const prenom_inscription = document.querySelector("#prenom_inscription");
const focus_prenom_inscription = document.querySelector(
  "#focus_prenom_inscription"
);
const erreur_prenom_insc = document.querySelector("#erreur_prenom_inscription");

const submit_inscription = document.querySelector("#submit_inscription");
const error_inscription = document.querySelector("#error_inscription");

const email_inscription = document.querySelector("#email_inscription");
const focus_email_inscription = document.querySelector(
  "#focus_email_inscription"
);
const erreur_mail_insc = document.querySelector("#erreur_mail_inscription");

const password_inscription = document.querySelector("#password_inscription");
const erreur_password_insc = document.querySelector(
  "#erreur_password_inscription"
);
const focus_password_inscription = document.querySelector(
  "#focus_password_inscription"
);

const nom_inscription = document.querySelector("#nom_inscription");
const erreur_nom_insc = document.querySelector("#erreur_nom_inscription");
const focus_nom_inscription = document.querySelector("#focus_nom_inscription");

const cgu_inscription = document.querySelector("#cgu_inscription");
const label_cgu = document.querySelector("#label_cgu");

let erreur_insc = true;
let verifPrenomInsc = () => {
  if (prenom_inscription.value == "") {
    erreur_prenom_insc.innerHTML = "Veuillez remplir ce champ";
    focus_prenom_inscription.style = "background-color: red";
    erreur_insc = true;
  } else {
    prenom_inscription.style = "outline: none";
    erreur_prenom_insc.innerHTML = "&nbsp;";
    focus_prenom_inscription.style = "background-color: green";
    erreur_insc = false;
  }
  return erreur_insc;
};
let verifNomInsc = () => {
  if (nom_inscription.value == "") {
    erreur_nom_insc.innerHTML = "Veuillez remplir ce champ";
    focus_nom_inscription.style = "background-color: red";
    erreur_insc = true;
  } else {
    erreur_nom_insc.innerHTML = "&nbsp; ";
    nom_inscription.style = "outline: none";
    focus_nom_inscription.style = "background-color: green";
    erreur_insc = false;
    submit_inscription.style = "cursor: pointer";
  }
  return erreur_insc;
};
let verifEmailInsc = () => {
  if (
    !email_inscription.value.match(/[a-z0-9_\-\.]+@[a-z0-9_\-\.]+\.[a-z]+/i)
  ) {
    erreur_mail_insc.innerHTML = "l'email n'est pas une adresse valide";
    focus_email_inscription.style = "background-color: red";
    erreur_insc = true;
  } else {
    erreur_mail_insc.innerHTML = "&nbsp;";
    email_inscription.style = "outline: none";
    focus_email_inscription.style = "background-color: green";
    erreur_insc = false;
    submit_inscription.style = "cursor: pointer";
  }
  return erreur_insc;
};
let verifPasswordInsc = () => {
  if (password_inscription.value.length < 8) {
    erreur_password_insc.innerHTML = "Mot de passe non réglementaire";
    focus_password_inscription.style = "background-color: red";
    erreur_insc = true;
  } else {
    focus_password_inscription.style = "background-color: green";
    erreur_password_insc.innerHTML = "&nbsp;";
    submit_inscription.style = "cursor: pointer";
    erreur_insc = false;
  }
  return erreur_insc;
};
if (submit_inscription != null) {
  prenom_inscription.addEventListener("input", verifPrenomInsc);
  nom_inscription.addEventListener("input", verifNomInsc);
  email_inscription.addEventListener("input", verifEmailInsc);
  password_inscription.addEventListener("input", verifPasswordInsc);
  cgu_inscription.addEventListener("change", verifCgu);
  submit_inscription.addEventListener("click", (event) => {
    verifPrenomInsc();
    verifNomInsc();
    verifEmailInsc();
    verifPasswordInsc();
    verifCgu();
    if (
      verifPrenomInsc() == true ||
      verifNomInsc() == true ||
      verifEmailInsc() == true ||
      verifPasswordInsc() == true ||
      verifCgu() == true
    ) {
      erreur_insc = true;
    } else {
      erreur_insc = false;
    }
  });
}
