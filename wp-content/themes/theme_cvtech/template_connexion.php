<?php
/*Template Name:Connexion*/
$error = false;
if (!empty($_POST)) {
    $user = wp_signon($_POST);
    if (is_wp_error($user)) {
        $error = $user->get_error_message();
    } else {
        header('location:Connection.php');
    }
}
// } else {
//     $user = wp_get_current_user();
//     if ($user->ID != 0) {
//         header('location:http://localhost/wordpress-exo');
//     }
// }

?>
<?php
get_header(); ?>

<h1>Se Connecter</h1>

<?php if ($error); ?>
<div class="error">
    <?php echo $error; ?>
</div>

<form action="<?php ?>" method="post">
    <label for="user_login">Nom d'utilisateur</label>
    <input type="text" name="user_login" id="user_login">

    <label for="user_password"> Votre mot de passe </label>
    <input type="text" name="user_password" id="user_password">
    <input type="checkbox" name="remember" id="remember" value="1">
    <label for="remember"> Se Souvenir de moi</label>

    <input type="submit" value="se Connecter">

</form>
<?php get_footer(); ?>