const test_ajax = document.querySelector("#test_ajax")

console.log(test_ajax)

test_ajax.addEventListener("click", () => {
    fetch("../wp-content/themes/theme_cvtech/ajax/modif_donnee_user.php")
        .then(data => data.json())
        .then(response => {
            console.log(response)
        })
})