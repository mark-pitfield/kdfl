<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">


<html>

<head>
<title>Kingston & District Football League.....</title>

<link rel="stylesheet" type="text/css"href="kdfl.css" />


<style type="text/css">
<?php
$_SESSION['linkno'] = '04';
?>
table.place
{margin-left: 42px;
font-family: Verdana, Geneva, Arial, Helvetica, sans-serif ;
font-weight: normal;
font-size: 12px;
color: #ffffff;
width: 500px;
background-color: #606060;
border: 0px;
border-collapse: collapse;
border-spacing: 0px;}

table.place td
{background-color: #C0C0C0;
color: #000000;
font-size: 20px;
padding: 4px;
text-align: center;
border: 1px #fff solid;}

table.place td.hed
{background-color: #333333;
color: #ffffff;
padding: 4px;
text-align: center;
border-bottom: 2px #fff solid;
font-size: 20px;
font-weight: bold;} 


table.bt
{margin-left: 42px;
font-family: Verdana, Geneva, Arial, Helvetica, sans-serif ;
font-weight: normal;
color: #ffffff;
width: 500px;
background-color: #cococo;
border: 0px;
border-collapse: collapse;
border-spacing: 0px;}

table.bt td
{background-color: #ee0000;
color:#eeee00;
font-size:36px;
font-weight:700;
padding: 4px;
text-align: center;
border: 1px #fff solid;}

table.bt td.hed
{background-color: #333333;
color: #ffffff;
padding: 4px;
font-size: 12px;
text-align: center;
border-bottom: 2px #fff solid;
font-size: 20px;
font-weight: bold;
}
 
 td#box a:link {color:#eeee00;background:#ee0000;}
 td#box a:visited {color:#eeee00;background:#ee0000;}
 td#box a:hover {color:#eeee00;background:#ee0000;}
 td#box a:active {color:#eeee00;background:#ee0000;}
 


</style>

</head>


<body>

<div id="all">

	<div id="header"><h1 class="top">Kingston & District Football League</h1></div>

	<div id="one">&nbsp</div>

	<div id="strip"><IMG src="IMG_0767x.jpg"><IMG src="DSCF0196c.jpg"><IMG src="DSCF0194c.jpg"><IMG src="DSCF0193c.jpg"><IMG src="kdflbadgex.jpg"><IMG src="pumakings.jpg"><IMG src="DSCF0200.jpg"><IMG src="bctrainc.jpg"><IMG src="DSCF0202x.jpg">
</div>
	
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 750px;">

	<div id="content"><h2 class="deh"></h2>






	
  
<p class="two">Click one of the links below to print off the required form.</p>
<p class="two">New and Existing KDFL clubs need to complete and return the Application Form. New clubs need to complete and return New Club Details.</p>

<div class="cssbutton">
<a href="applform.pdf"><img src="down2.jpg" alt="APPLICATION FORM" /><span>APPLICATION FORM</span></a>
</div>

<div class="cssbutton">
<a href="newclubqa.pdf"><img src="down2.jpg" alt="NEW CLUB DETAILS" /><span>NEW CLUB DETAILS</span></a>
</div>

<div class="cssbutton">
<a href="playregform.pdf"><img src="down2.jpg" alt="PLAYER REG. FORM" /><span>PLAYER REG. FORM</span></a>
</div>

<div class="cssbutton">
<a href="rescard.pdf"><img src="down2.jpg" alt="RESULT CARD" /><span>RESULT CARD</span></a>
</div>

<div class="cssbutton">
<a href="Newcupform.pdf"><img src="down2.jpg" alt="CUP MATCH FORM" /><span>CUP MATCH CARD</span></a>
</div>

<p class="two">The Agreement Form, below, must be completed by all clubs each season and returned to the League Secretary.</p>

<div class="cssbutton">
<a href="agreement.pdf"><img src="down2.jpg" alt="AGREEMENT FORM" /><span>AGREEMENT FORM</span></a>
</div>

<p class="two">A guide to the Whole Game System Player Registration</p>
<div class="cssbutton">
<a href="WGS-Guide to Player Registration.pdf"><img src="down2.jpg" alt="WGS Guide to Player Registration" /><span>WGS - Guide Player Reg.</span></a>
</div>

</table>


&nbsp



</div>

	<div id="menu" >
	 <P class="nine">OTHER PAGES</P>

<?php
include 'intnllinks.php';
?>

      <br/>

      <hr noshade align=center size=6 color="#ff6600" width=218>

	 <P class="nine">OTHER WEBSITES</P>

<?php
include 'extnllinks.php';
?>


</body>

</html>
<script>
var repeat=1
var title=document.title
var leng=title.length
var start=1
function titlemove() {
  titl=title.substring(start, leng) + title.substring(0, start)
  document.title=titl
  start++
  if (start==leng+1) {
    start=0
    if (repeat==0)
    return
  }
  setTimeout("titlemove()",200)
}
if (document.title)
titlemove()
</script>
