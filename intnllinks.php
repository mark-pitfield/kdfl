<?php
session_start();
?>

<?php
$ohone = '01';
$ohtwo = '02';
$ohthree = '03';
$ohfour = '04';
$ohfive = '05';
$ohsix = '06';
$ohseven = '07';
$oheight = '08';
$ohnine = '09';
$oneoh = '10';
$oneone = '11';
$onetwo = '12';
$onethree = '13';
$onefour = '14';
$onefive = '15';
$onesix = '16';
$intlink = $_SESSION['linkno'];

if ($intlink==$ohone) {goto tagb;}
?>
<html>
<div class="cssbutton">
<a href="index.php"><img src="down.jpg" alt="Home Page" /><span>HOME PAGE</span></a>
</div>
</html>
<?php
tagb:
if ($intlink==$ohtwo) {goto tagc;}
?>
<html>
<div class="cssbutton">
<a href="kdfcommw.php"><img src="down.jpg" alt="League Committee" /><span>LEAGUE COMMITTEE</span></a>
</div>
</html>
<?php
tagc:
if ($intlink==$ohthree) {goto tagd;}
?>
<html>
<div class="cssbutton">
<a href="kdfhistw.php"><img src="down.jpg" alt="League History" /><span>LEAGUE HISTORY</span></a>
</div>
</html>
<?php
tagd:
if ($intlink==$ohfour) {goto tage;}
?>
<html>
<div class="cssbutton">
<a href="kdfformw.php"><img src="down.jpg" alt="Forms & Match cards" /><span>FORMS & MATCH CARDS</span></a>
</div>
</html>
<?php
tage:

if ($intlink==$ohfive) {goto tagf;}
?>
<html>
<div class="cssbutton">
<a href="kdfclubs05.php"><img src="down.jpg" alt="Find a club (A-D)" /><span>FIND A CLUB (A-D)</span></a>
</div>
</html>
<?php
tagf:

if ($intlink==$ohsix) {goto tagg;}
?>
<html>
<div class="cssbutton">
<a href="kdfclubs06.php"><img src="down.jpg" alt="Find a club (E-O)" /><span>FIND A CLUB (E-L)</span></a>
</div>
</html>
<?php
tagg:

if ($intlink==$oheight) {goto tagi;}
?>
<html>
<div class="cssbutton">
<a href="kdfclubs08.php"><img src="down.jpg" alt="Find a club (P-S)" /><span>FIND A CLUB (M-R)</span></a>
</div>
</html>
<?php
tagi:

if ($intlink==$ohnine) {goto tagj;}
?>
<html>
<div class="cssbutton">
<a href="kdfclubs09.php"><img src="down.jpg" alt="Find a club (T-Z)" /><span>FIND A CLUB (S-Z)</span></a>
</div>
</html>
<?php
tagj:

if ($intlink==$oneoh) {goto tagk;}
?>
<html>
<div class="cssbutton">
<a href="kdfrefswt.php"><img src="down.jpg" alt="Referees panel" /><span>REFEREES' PANEL</span></a>
</div>
</html>
<?php
tagk:

if ($intlink==$oneone) {goto tagl;}
?>
<html>
<div class="cssbutton">
<a href="kdfdatesw.php"><img src="down.jpg" alt="Dates to remember" /><span>DATES TO REMEMBER</span></a>
</div>
</html>
<?php
tagl:



/* if ($intlink==$onethree) {goto tagn;}
?>
<html>
<div class="cssbutton">
<a href="kdfhintsw.php"><img src="down.jpg" alt="Bank account details" /><span>BANK ACCOUNT DETAILS</span></a>
</div>
</html>
<?php
tagn: */

if ($intlink==$onefour) {goto tago;}
?>
<html>
<div class="cssbutton">
<a href="kdfrulesw.php"><img src="down.jpg" alt="League rules" /><span>LEAGUE RULES</span></a>
</div>
</html>
<?php
tago:

if ($intlink==$onefive) {goto tagp;}
?>
<html>
<div class="cssbutton">
<a href="kdffixesw.php"><img src="down.jpg" alt="Results & fixtures" /><span>RESULTS & FIXTURES</span></a>
</div>
</html>
<?php
tagp:

if ($intlink==$onesix) {goto tagq;}
?>
<html>
<div class="cssbutton">

<a href="kdffeesw.php"><img src="down.jpg"  alt="Summary of fees and fines"><span>Summary Of Fees and Fines</span></a>
</div>
</html>
<?php
tagq:


?>
