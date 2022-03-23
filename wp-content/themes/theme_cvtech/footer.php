<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package theme_cvtech
 */

?>

<footer>
	<section id="footer">
		<div class="footer-container">
			<div id="footer-title">Bertolucci</div>
			<div id="social_network">
				<a href="https://www.facebook.com/" target="_blank" class="social_logo">
					<i class="fa-brands fa-facebook-square fa-2x"></i>
				</a>
				<a href="https://twitter.com/" target="_blank" class="social_logo">
					<i class="fa-brands fa-twitter-square fa-2x"></i>
				</a>
				<a href="https://fr.linkedin.com/" target="_blank" class="social_logo">
					<i class="fa-brands fa-linkedin fa-2x"></i></i>
				</a>
			</div>
		</div>
		<div class="footer-container">
			<a  id="legals" class="footer-links" href="<?php the_permalink()?>mention"> Mentions légales</a>
			<div id="right">© 2022, Bertolucci, All rights reserved.</div>
		</div>
		<div class="footer-container">
			<a href="<?php the_permalink()?>contact" class="footer-links" >Nous contacter</a>
		</div>
	</section>
</footer>

<?php wp_footer(); ?>

</body>

</html>