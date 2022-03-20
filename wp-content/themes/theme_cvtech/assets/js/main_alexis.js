const profil_user = document.querySelector("#profil_user")
const but_profil_user = document.querySelectorAll(".but_profil_user")
const all_block = document.querySelectorAll(".profil_user_block")
console.log(but_profil_user)
console.log(all_block)

if (profil_user != null) {
    // navigation entre les différentes rubriques
    but_profil_user.forEach(oneButton => {

        oneButton.addEventListener("click", () => {
            let i = 0
            while (i < but_profil_user.length) {
                if (but_profil_user[i].value != oneButton.value) {
                    but_profil_user[i].classList.remove("active_userProfil")
                } else {
                    but_profil_user[i].classList.add("active_userProfil")
                }
                i++
            }
            console.log(oneButton.value)
            all_block.forEach(block => {
                block.classList.add("none_block_profil_user")
                // block.classList.remove("show_block_profil_user")
            })
            all_block[oneButton.value].classList.add("show_block_profil_user")
            all_block[oneButton.value].classList.remove("none_block_profil_user")
        })
    })
}

const more_permis = document.querySelector("#more_permis")
const permis = document.querySelector(".permis")
let etat = false
more_permis.addEventListener("click", () => {
    if (etat == false) {
        etat = true
        permis.classList.add("permis_show")
    } else {
        etat = false
        permis.classList.remove("permis_show")
    }
})

const btn_edit_info_perso = document.querySelectorAll(".btn_edit_info_perso")
const info_perso_profil_user = document.querySelectorAll(".info_perso_profil_user")

// console.log(btn_edit_info_perso)
// console.log(info_perso_profil_user)
let donnee = ["perso_nom", "perso_prenom", "perso_email", "perso_password", "cv_nom", "cv_prenom", "cv_email", "cv_prenom_date_de_naissance", "cv_permis", "cv_telephone", "cv_adresse"];
let a = 0
console.log(donnee)

btn_edit_info_perso.forEach(onebutton => {
    onebutton.addEventListener("click", (event) => {
        event.preventDefault()
        let element = onebutton.parentNode
        console.log(element)
        element.innerHTML = "<form class='form_edit_userProfil' method='post'>" +
            "<input type='text' name='' class='input_edit_userProfil' value='" + element.textContent + "'>" +
            "<input class='submit_edit_userProfil' type='submit' value='modifier'>" +
            "</form>"
        const submit_edit_userProfil = document.querySelectorAll(".submit_edit_userProfil")
        submit_edit_userProfil.forEach(element => {
            element.addEventListener("click", (event) => {
                event.preventDefault()
                element.setAttribute("name", donnee[a])
                a++
            })
        })
        console.log(submit_edit_userProfil)
    })
})

