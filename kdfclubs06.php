
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
$_SESSION['linkno'] = '06';
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
f
ont-size: 20px;
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

	<div id="strip"><IMG src="DSCF0200.jpg"alt="Throw in"><IMG src="DSCF0204x.jpg"><IMG src="DSCF0211x.jpg"><IMG src="wolves1.jpg"><IMG src="kdflbadgex.jpg"><IMG src="DSCF0245xes.jpg"><IMG src="DSCF0202x.jpg"><IMG src="pumakings.jpg"><IMG src="DSCF0196c.jpg">
</div>
	<!-- Below is the red bar and the black bars above and below it -->
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 890px;">
        <!-- 890px is distance between red and green bars -->
	<div id="content2" style="background-image: url(bluekings.jpg); "><h2 class="deh"></h2>

<p class="subhead">These are the contacts at the clubs in our league</p>

<!-- 
<p class="twoy">FC Porto  ( London - Div. One. )                          <br>
Secretary:  Joshua  Lino-da Costa<br>
Mobile:  07734 050261  email: enquiryfcpld@hotmail.com<br>
Ground:  Barn Elms Sports Centre,  Elizabeth Walk,  SW13 0DG         <br>
Colours:  Royal Blue/White<br></p>
 -->





<!-- 
<p class="twoy">Hook Venturers  ( Surrey - Div. One. )             <br>
Secretary:  Malcolm Hall<br>
Mobile:  07885 593795  email:  malcolm985@btinternet.com<br>
Ground:  King Edward Rec.  226 Hook Road,  Chessington, Surrey KT9 1PL       <br>
Colours:  Maroon<br></p>
 -->

<p class="twoy">GTL United  ( Surrey - Div. One. )             <br>
Secretary:  Jamal Joseph<br>
Mobile:  07460 448744  email:  jjoseph1990@outlook.com     <br>
Ground:  Royal Holloway Sports Centre, Prune Hill, Egham, TW20 9TR <br>
Colours:  Black<br></p>
 
<p class="twoy">Junction Elite  ( Amateur Football Alliance  Premier  Div. )             <br>
Secretary:  Jasmine Turley<br>
Mobile:  07557 100870  email:  secretary@junctionelite.org <br>
Ground:  Prince George's Playing Fields,  Raynes Park,  SW20 9DY <br>
Colours:  Royal Blue<br></p>

<p class="twoy">Kingston University ( Surrey - Div. One. )  <br>
Secretary:  Luca Bailey<br>
Mobile: 07752 700695  email:  luca.bailey@icloud.com <br>
Ground:  Tolworth Court, Old Kingston Road, Tolworth  KT4 7QH<br>
Colours:  Navy Blue<br></p>

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
