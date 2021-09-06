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
$_SESSION['linkno'] = '08';
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

	<div id="strip"><IMG src="IMG_0767x.jpg"><IMG src="DSCF0200.jpg"><IMG src="DSCF0204x.jpg"><IMG src="DSCF0211x.jpg"><IMG src="kdflbadgex.jpg"><IMG src="DSCF0193c.jpg"><IMG src="DSCF0202x.jpg"><IMG src="ll1.jpg"><IMG src="pumakings.jpg">
</div>
	<!-- Below is the red bar and the black bars above and below it -->
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 890px;">
        <!-- 890px is distance between red and green bars -->
	<div id="content2" style="background-image: url(bluekings.jpg); "><h2 class="deh"></h2>
<p class="subhead">These are the contacts at the clubs in our league</p>

<p class="twoy">Magpie Recruitment  ( Surrey - Div. One. )<br>
Secretary:  William Dawson<br>
Mobile:  07305 784888  email:  william@magpierecruitment.com<br>
Ground:  Surbiton Town  Sports Centre,  River Hill Estate ,  Worcester Park Road,  KT4 7QB<br>
Colours: Yellow/Blue<br></p>

<p class="twoy">New Elm  ( Surrey - Div. One. )<br>
Secretary:  Oliver Relf<br>
Mobile:  07772 522245  email:  orelf12@gmail.com<br>
Ground:  Richard Challoner School, Manor Drive North, New Malden, KT3 5PE<br>
Colours: Blue<br></p>

<p class="twoy">Old Isleworthians     ( Amateur Football Alliance - Prem. Div. )<br>
Secretary:    Steve Smith<br>
Mobile:  07785 720353  email: stsmith1115@gmail.com  <br>
Ground:  Memorial Ground, 22A Wood Lane, Isleworth  TW7 5ED      <br>
Colours:  Red/Black<br></p>

<p class="twoy">Old Isleworthians Res. ( Amateur Football Alliance - Div. One. )<br>
Secretary:  Steve Smith<br>
Mobile:  07785 720353  email:  stsmith1115@gmail.com<br>
Ground:  Memorial Ground, 22A Wood Lane, Isleworth, TW7 5ED<br>
Colours: Red/Black      <br></p>

<p class="twoy">Parkside  ( Surrey -  )   <br>
Secretary:  Sophie Kelly<br>
Mobile:  07943 501701  email:  parksidefc@gmail.com<br>
Ground:  Decker Sports Ground, Kingston Road, Tolworth  KT5 9NT<br>
Colours:   Blue/White<br></p>

<p class="twoy">Petersham Pumas  ( Surrey - Prem. Div. )   <br>
Secretary:  Kevin Snares<br>
Mobile:  07552 420175  email:  kevinsnares524@gmail.com<br>
Ground:  Barn Elms Sports Centre, Elizabeth Walk, SW13 ODG<br>
Colours:   Claret/Blue<br></p>

<p class="twoy">RC Old Boys  ( Surrey - Prem. Div. )<br>
Secretary:   Joe Roche<br>
Mobile:   07739 062200  email:  joeadamroche@outlook.com<br>
Ground:  Richard Challoner School, Manor Drive North, New Malden, KT3 5PE<br>
Colours:  Green/White<br></p>

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