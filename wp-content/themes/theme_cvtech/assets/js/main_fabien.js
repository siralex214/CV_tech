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

