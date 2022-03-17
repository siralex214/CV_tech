<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require './vendor/autoload.php';

$mail = new PHPMailer(true);

try {

    // Configuration
    $mail->SMTPDebug = SMTP::DEBUG_SERVER; // Infos de debug

    // Configuration SMTP
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = "";
    $mail->Password = "";
    $mail->SMTPSecure = 'ssl';

    // Charset
    $mail->CharSet = "utf-8";

    // Destinataire(s)
    $mail->addAddress("");

    // Expéditeur
    $mail->setFrom("no-reply@bertolucci.fr");

    // Contenu
    $mail->subject = "Cabinet Bertolucci - CV";
    $mail->Body = "Bonjour Maxime, votre CV a bien été enregistré. 
    Vous pouvez le retrouver sur votre espace personnel si vous vous êtes inscrit.";

    // Envoi
    $mail->send();
    echo "Message envoyé";

} catch(Exception $e) {
    echo "Message non envoyé. Erreur: {$mail->ErrorInfo}";
}
?>