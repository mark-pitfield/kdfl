<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<meta name="format-detection" content="telephone=no">
<head>
<title>Kingston & District Football League.....</title>
<link rel="stylesheet" type="text/css"href="kdfl.css" />

<style type="text/css">
<?php
$_SESSION['linkno'] = '05';
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
<!-- <IMG STYLE="position:absolute; TOP:135px; LEFT:170px; WIDTH:350px; HEIGHT:350px" SRC="bluekings.jpg"> -->
<div id="all">

	<div id="header"><h1 class="top">Kingston & District Football League</h1></div>

	<div id="one">&nbsp</div>

	<div id="strip"><IMG src="DSCF0200.jpg"><IMG src="DSCF0196c.jpg"><IMG src="DSCF0194c.jpg"><IMG src="DSCF0105.jpg"><IMG src="kdflbadgex.jpg"><IMG src="DSCF0202x.jpg"><IMG src="DSCF0245xes"><IMG src="bctrainc.jpg"><IMG src="wolves1.jpg">
</div>
	<!-- Below is the red bar and the black bars above and below it -->
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 890px;">
        <!-- 890px is distance between red and green bars -->
	<div id="content2" style="background-image: url(bluekings.jpg); "><h2 class="deh"></h2>

<p class="subhead">These are the contacts at the clubs in our league</p>


<p class="twoy">Barnes FC  ( Surrey - Prem. Div. )<br>
Secretary:  Julie Burgess<br>
Mobile:  07897 506524  email:  secretary@barnesfootballclub.co.uk<br>
Ground:    Barn Elm Sports Centre, Queen Elizabeth Walk, SW13 0DG<br>
Colours:  Royal Blue/ White<br></p>



<p class="twoy">Barnslake  ( Surrey - Prem. Div. )<br>
Secretary:  Mike Ashton<br>
Mobile:  07971 291225  email:  mashton93@outlook.com<br>
Ground:    King George’s Field, Ham Street, Richmond, TW10 7RS<br>
Colours:  Red/White<br></p>




<!-- 
<p class="twoy">Dynamo Kingston  ( Surrey - Prem. Div. )<br>
Secretary:  Alex Flinders<br>
Mobile:   07837  798042  email:  flex_alinders@yahoo.co.uk<br>
Ground:  Long Ditton Rec.  Windmill Lane, Long Ditton,  KT6 5JT<br>
Colours:  Green/Black<br></p>
 -->




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
</div>
	<!-- Below is the green bar and the black above and below it -->
	<div id="one1">&nbsp</div>
	<div id="bar1">&nbsp</div>
	<div id="two1">&nbsp</div>



</div>

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
