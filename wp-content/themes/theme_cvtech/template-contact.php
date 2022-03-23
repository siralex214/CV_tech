<?php
/* Template Name: contact */
get_header();
?>

<main class=contact-all>

    <br>
    <h1>veuillez nous contacter ici</h1>
    <form>
        <label for="email">Entrez votre email:</label>
        <input type="email" name="email" class="contact-input contact-email">
        <br>
        <br>
        <label for="text">Entrez votre nom:</label>
        <input type="text" class="contact-input contact-name" name="lname">
        <br>
        <br>
        <label for="text"></label>
        <textarea class=contact-textarea placeholder="Veuillez mettre votre message ici"></textarea>
        <br>
        <input class=contact-button1 type="submit" value="Envoyer">
        <input class=contact-button2 type="reset" value="Annuler" />

    </form>

</main>
<?php
get_footer();
?>