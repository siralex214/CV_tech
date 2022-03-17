const profil_user = document.querySelector("#profil_user")
const but_profil_user = document.querySelectorAll(".but_profil_user")
const all_block = document.querySelectorAll(".profil_user_block")
const profil_user_h1 = document.querySelector(".profil_user_h1")
console.log(but_profil_user)
console.log(all_block)
if (profil_user != null) {
    // navigation entre les différentes rubriques
    but_profil_user.forEach(oneButton => {
        oneButton.addEventListener("click", () => {
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