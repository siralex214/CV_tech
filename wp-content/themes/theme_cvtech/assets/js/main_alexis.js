const but_profil_user = document.querySelectorAll(".but_profil_user")
const all_block = document.querySelectorAll(".profil_user_block")
const profil_user_h1 = document.querySelector(".profil_user_h1")

console.log(but_profil_user)
console.log(all_block)
but_profil_user.forEach(oneButton => {
    oneButton.addEventListener("click", () => {
        console.log(oneButton.value)
        all_block.forEach(block => {
            block.classList.add("none_block_profil_user")
            block.classList.remove("show_block_profil_user")
        })
        all_block[oneButton.value].classList.add("show_block_profil_user")
        all_block[oneButton.value].classList.remove("none_block_profil_user")

    })
})

const app = document.getElementById('app');

let typewriter = new Typewriter(app, {
    loop: true,
    delay: 75,
});

typewriter
    .pauseFor(2500)
    .typeString('A simple yet powerful native javascript')
    .pauseFor(300)
    .deleteChars(10)
    .typeString('<strong>JS</strong> plugin for a cool typewriter effect and ')
    .typeString('<strong>only <span style="color: #27ae60;">5kb</span> Gzipped!</strong>')
    .pauseFor(1000)
    .start();