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
$_SESSION['linkno'] = '11'
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

	<div id="strip"><IMG src="IMG_0767x.jpg"><IMG src="DSCF0245xes.jpg"><IMG src="DSCF0200.jpg"><IMG src="DSCF0209x.jpg"><IMG src="kdflbadgex.jpg"><IMG src="bctrainc.jpg"><IMG src="DSCF0196c.jpg"><IMG src="DSCF0211x.jpg"><IMG src="wolves2.jpg">
</div>

	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 770px;">




<div id="content2" style="background-image: url(redkeeper.jpg); "><h2 class="deh"></h2>



<!-- <p class="twoy">Friday 7th April 2023 <span style="color:#ffffff">Teck Senior Cup Final KO at 11:00<p>

<p class="twoy">Thursday 13th April 2023 <span style="color:#ffffff">Teck Junior Cup Final KO at 19:30<p>

<p class="twoy">Tuesday 18th April 2023 <span style="color:#ffffff">General Meeting for all clubs at Imber Court at 20:30<p>

<p class="twoy">Thursday 20th April 2023 <span style="color:#ffffff">League Junior Cup Final KO at 19:30<p>

<p class="twoy">Thursday 27th April 2023 <span style="color:#ffffff">League Senior Cup Final KO at 19:30<p>

<p class="twoy">Tuesday 16th May 2023 <span style="color:#ffffff">General Meeting for all clubs at Imber Court at 20:30<p>

<p class="twoy">Saturday 20th May 2023 <span style="color:#ffffff">KDFL Presentation Night - Coombe Wood Golf Club - time 19:30<p>
-->


<p class="twoy">Good Friday 29th March 2024 <span style="color:#ffffff">Teck Senior Cup Final KO at 11:00 at Cobham FC<p>
<p class="twoy">Tuesday 9th April 2024 <span style="color:#ffffff">League Senior Cup KO at 19:30 at Cobham<p>
<p class="twoy">Tuesday 16th April 2024 <span style="color:#ffffff">General Meeting for all clubs at Imber Court at 20:30<p>
<p class="twoy">Tuesday 23rd April 2024 <span style="color:#ffffff">League Junior Cup KO at 19:30 at Cobham<p>
<p class="twoy">Tuesday 30th April 2024 <span style="color:#ffffff">Teck Junior Cup KO at 19:30 at Cobham<p>
<p class="twoy">Friday 24th May 2024 <span style="color:#ffffff">KDFL Presentation Night - Coombe Wood Golf Club - time 19:30<p>
<p class="twoy">Tuesday 18th June 2024 <span style="color:#ffffff">AGM at Imber Court at 20:00<p>

</br>
</br>
<p class="twoy">It is mandatory for all clubs to be represented for General meetings <span style="color:#ffffff"><p>

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
