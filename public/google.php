<?php 

$name =  $_POST['name'] ;
$email = $_POST['email'] ;
$phone = $_POST['phone'] ;
$arrival = $_POST['arrival'] ;
$nights = $_POST['nights'] ;
$room = $_POST['room'] ;

$comment = $_POST['comment'] ;

function voiko () {
  if (!isset($_POST['email'])) {
    return 0;
  }
  if (( (empty($email) || !preg_match('/@/', $email))) || empty($name) || (empty($phone) ) {
    return 0;
  }
  if (( empty($comment) || empty($arrival) || empty($nights)) {
    return 0;
  }
  if ( preg_match( "/[\r\n]/", $name ) || preg_match( "/[\r\n]/", $email ) || preg_match( "/[\;\:]/", $email ) ) {
    return 0;
  }
  return 1;
}

function teesen () {
  $mailto = 'info@villataika.fi' ;
  $content_nl =  "\n"  ;
  $content_type =  'Content-Type: text/plain; charset="utf-8"'  ;
  $http_referrer = getenv( "HTTP_REFERER" );

  if (function_exists( 'get_magic_quotes_gpc' ) && get_magic_quotes_gpc()) {
    $comment = stripslashes( $comment );
  }

  $messageproper =
    "This booking was sent from:" . $content_nl .
    "$http_referrer" . $content_nl .
    "------------------------------------------------------------" . $content_nl .
    "Name : $name" . $content_nl .
    "Phone: $phone" . $content_nl .
    "Email: $email" . $content_nl .
    "Arrival: $arrival" . $content_nl .
    "Nights: $nights" . $content_nl .
    "Room: $room" . $content_nl .
    "------------------------- comment -------------------------" . $content_nl . $content_nl .
    wordwrap( $comment, 100, $content_nl, true ) . $content_nl . $content_nl .
    "------------------------------------------------------------" . $content_nl ;

  $headers =
    "From: \"$name\" <$mailto>" . $content_nl . "Reply-To: \"$name\" <$email>" . $content_nl . "X-Mailer: chfeedback.php 2.16.2" .
    $content_nl . 'MIME-Version: 1.0' . $content_nl . $content_type ;

    mail($mailto, $subject, $messageproper, $headers );

} ;

?>
