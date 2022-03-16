// système de rotation dans le pop-up
const vers_inscription = document.querySelectorAll(".vers_inscription");
const container = document.querySelector(".container_modal");
let etatReturnCard = false;

if (vers_inscription != null) {
  vers_inscription.forEach((element) => {
    element.addEventListener("click", () => {
      if (etatReturnCard == false) {
        container.style = "transform: rotateY(180deg);";
        etatReturnCard = true;
      } else {
        container.style = "transform: rotateY(0deg);";
        etatReturnCard = false;
      }
    });
  });
}

