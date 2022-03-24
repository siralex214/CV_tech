<?php
/**
 * Template Name: déconnexion
 */

session_destroy();

header("location: home");