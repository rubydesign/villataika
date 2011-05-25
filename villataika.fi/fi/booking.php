<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <link href="../stylesheets/lightbox.css" media="screen" rel="stylesheet" type="text/css" />

  <script src="../javascripts/prototype.js" type="text/javascript"></script>
  <script src="../javascripts/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
  <script src="../javascripts/lightbox.js" type="text/javascript"></script>

  <link href="../stylesheets/styles.css" media="screen" rel="stylesheet" type="text/css" />

  <link href="/favicon.ico" rel="shortcut icon" type="image/vnd.microsoft.icon" /> 
  
  <meta name="keywords" content="Bed and breakfast majoitus hotel Fiskars häät  Suite" />
  <meta name="description" content="Bed and Breakfast Villa Taika : taianomaista tyylikkyyttä &lt;span class=&quot;translation_missing&quot;&gt;fi, booking, short&lt;/span&gt;" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="fi"/>  
  <title>Bed &amp; Breakfast Villa Taika : <span class="translation_missing">fi, booking, short</span></title>
  
</head>

<body>

<div id="main">

  <div id="header">
      <div class="centre">
        <img src="/images/logo_iso.png" alt="Villa Taika logo"/>
      </div>
      <div id="slogan">taianomaista tyylikkyyttä</div>
  </div>

  <div id="lcol">
    <div id="menu">
      <ul>
          <li >
            <a href="/fi/index.html">Kotisivu</a><span>&nbsp;</span>
          </li>
          <li >
            <a href="/fi/bed.html">Bed &amp; Breakfast</a><span>&nbsp;</span>
          </li>
          <li >
            <a href="/fi/groups.html">Ryhmille</a><span>&nbsp;</span>
          </li>
          <li >
            <a href="/fi/map.html">Kartta</a><span>&nbsp;</span>
          </li>
          <li >
            <a href="/fi/photos.html">Kuvat</a><span>&nbsp;</span>
          </li>
          <li >
            <a href="/fi/activities.html">Tekemistä</a><span>&nbsp;</span>
          </li>
      </ul>
    </div>
    <div id="menuend"></div>
    <div id="lcontent">
      <h3 class="first"> 
          <span>Huoneet</span>
      </h3>
      <ul class="divided">
        <li><a href="/fi/suites.html">Sviitit (suihkulla)</a></li>
        <li><a href="/fi/deluxe.html">Deluxe (wc:llä)</a></li>
        <li><a href="/fi/standard.html">Standard (jaettu)</a></li>
      </ul>

      <div class="divider"></div>
    
        <a href="/fi/booking.html" class='selected'>  
          <img src="/images/fi.gif" alt="fi"/> </a>
        <a href="/en/booking.html" >  
          <img src="/images/en.gif" alt="en"/> </a>

      <h3>
        <a href="/fi/news.html">  <span>Uutiset</span> </a>
      </h3>
      <div id="news"> 
        <a href="/fi/news.html"> 
          Edullinen majoitus kauniissa ulko aitassamme. 
        </a>
      </div>
      <div class="divider"></div>
    </div>

  </div>

  <div id="rcol">
    <div id="rcontent">
      <?php 
  require_once( 'feedback.php' );

if ($_POST["email"]<>'') { 
	$ToEmail = 'youremail@site.com'; 
	$EmailSubject = 'Site contact form '; 
	$mailheader = "From: ".$_POST["email"]."\r\n"; 
	$mailheader .= "Reply-To: ".$_POST["email"]."\r\n"; 
	$mailheader .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
	$MESSAGE_BODY = "Name: ".$_POST["name"]."<br>"; 
	$MESSAGE_BODY .= "Email: ".$_POST["email"]."<br>"; 
	$MESSAGE_BODY .= "Comment: ".nl2br($_POST["comment"])."<br>"; 
	mail($ToEmail, $EmailSubject, $MESSAGE_BODY, $mailheader) or die ("Failure"); 
?> 
Your message was sent
<?php 
} else { 
?>
<br/>
You can book by phone , +358407046699 between 10:00 and 19:00, or send us mail, or use the form below. <br/ ><br/ >
Please fill out all fields. If you do do not want to book a certain room, you may use Suite/Deluxe/standard for the room field. <br/>
Also remember that all rooms have a double bed. So if there is more than 2 of you, please add to the comment. <br/>
 
<form action="/feedback.php" method="post">
  <table border="0" cellpadding="8" cellspacing="8">
    <tr>
      <td><label for="tswname">Name</label>:</td>
      <input type="hidden" name="language" value="fi" />
      <td><input type="text" name="fullname" id="tswname" size="35" /></td>
      <td><label for="tswemail">Email address</label>:</td>
      <td><input type="text" id="tswemail" name="email" size="35" /></td>
    </tr>
    <tr>
      <td><label for="tswdate">Date of arrival</label>:</td>
      <td><input type="text" id="tsdate" name="date" size="35" /></td>
      <td><label for="tswroom">Phone</label>:</td>
      <td><input type="text" id="tswphone" name="phone" size="35" /></td>
    </tr>
    <tr>
      <td><label for="tswroom">Nights</label>:</td>
      <td><select name="tswroom"> <option>1</option> <option>2</option><option>3</option> </select></td>
      <td><label for="tswroom">Room</label>:</td>
      <td><input type="text" id="tswroom" name="email" size="35" /></td>
    </tr>
    <tr>
      <td> <label for="tswcomments">Comments</label><br /> </td>
      <td> <textarea rows="2" cols="35" name="comments" id="tswcomments"></textarea> </td>
      <td colspan="2"><input type="submit" name="mysubmit" value="Send booking" /></td>
    </tr>
  </table>
</form>
 
<?php 
}; 
?>

Booking request are subject to confirmation. <br/> <br/>

If you wish to pay upon confirmation, our bank account is  <br/>

Alternatively you can use Payson with our email. <br/>

Otherwise the charge is due upon arrival and must be paid in cash.

    </div>
    <div class="divider"></div>
  </div>
</div>

<div id="footer">
  <div class="kolmas">
    <b>Villa Taika</b>, Fiskarsintie 513, Antskog
    <br/>
    www.villataika.fi&nbsp;&nbsp;&nbsp;info@villataika.fi
  </div>
  <div class="kolmas">
    Raisa Kaipainen &amp; Torsten Rüger
    <br/>
    puh 040 704 6689
  </div>
  <div class="kolmas">
    <a href="/fi/index.html">
    	<img alt="" src="/images/logo_pien.gif" border="0" height="33" width="198"/>
    </a>
  </div>
</div>
<div class="divider"></div>
<br/>
<br/>
<br/>
<script type='text/javascript'>
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

</script>
<script type='text/javascript'>
try {
var pageTracker = _gat._getTracker("UA-12603339-2");
pageTracker._trackPageview();
} catch(err) {}
</script>

</body>
</html>
