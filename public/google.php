<?php 


function voiko () {
  if (!isset($_POST['email']) ) return "Email" ;
  if (!isset($_POST['name']) ) return "Name" ;
  if (!isset($_POST['phone']) ) return "Phone";
  if (!isset($_POST['arrival'])) return "Arrival" ; 
  if (!isset($_POST['nights'])) return "Nights" ;
  if (!isset($_POST['room'])) return "Room" ;

  $name =  $_POST['name'] ;
  $email = $_POST['email'] ;
  $phone = $_POST['phone'] ;
  $arrival = $_POST['arrival'] ;
  $nights = $_POST['nights'] ;
  $room = $_POST['room'] ;
  $comment = $_POST['comment'] ;
  if ( (empty($email) || (!preg_match('/@/', $email))) || preg_match( "/[\r\n]/", $email ) || preg_match( "/:/", $email ) ) {
    return "Email";
  };
  if( empty($name)) return "Name" ;
  if( empty($phone)) return "Phone" ;
  if( empty($nights)) return "Nights" ;
  if( empty($room)) return "Room" ;
  if( empty($arrival)) return "Arrival" ;
  if ( preg_match( "/[\r\n]/", $name )  ) return "Nights" ;
  return "";
}

function teesen () {
  $name =  $_POST['name'] ;
  $email = $_POST['email'] ;
  $phone = $_POST['phone'] ;
  $arrival = $_POST['arrival'] ;
  $nights = $_POST['nights'] ;
  $room = $_POST['room'] ;

  $comment = $_POST['comment'] ;
  $mailto = 'info@villataika.fi' ;
  $content_nl =  "\n"  ;
  $content_type =  'Content-Type: text/plain; charset="utf-8"'  ;

  if (function_exists( 'get_magic_quotes_gpc' ) && get_magic_quotes_gpc()) {
    $comment = stripslashes( $comment );
  }

  $messageproper =
    ($_POST['lang'] == "en" ? "Name" : "Nimi") . ": $name" . $content_nl .
    ($_POST['lang'] == "en" ? "Phone" : "Puh") . ": $phone" . $content_nl .
    ($_POST['lang'] == "en" ? "Email" : "S-posti") . ": $email" . $content_nl .
    ($_POST['lang'] == "en" ? "Arrival" : "Pvm.") . ": $arrival" . $content_nl .
    ($_POST['lang'] == "en" ? "Nights" : "Öitä") . ": $nights" . $content_nl .
    ($_POST['lang'] == "en" ? "Room" : "Huone") . ": $room" . $content_nl .
    "--------------------------------------------------" . $content_nl . $content_nl .
    wordwrap( $comment, 100, $content_nl, true ) . $content_nl . $content_nl .
    "------------------------------------------------------------" . $content_nl ;

  $headers =
    "From: \"$name\" <$mailto>" . $content_nl . "Reply-To: \"$name\" <$email>" . $content_nl . "X-Mailer: chfeedback.php 2.16.2" .
    $content_nl . 'MIME-Version: 1.0' . $content_nl . $content_type ;

    mail($mailto, ($_POST['lang'] == "en" ? "Booking " : "Varaus ") . $arrival , $messageproper, $headers );

} ;

?>
