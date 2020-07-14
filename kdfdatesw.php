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
	
  
<p class="subheadw">Please Note - The dates listed below were those originally planned but because of Coronavirus are now all subject
to change or cancellation.</p>

<p class="twoy">2 April 2020<span style="color:#ffffff"> - Teck Junior Cup Final.</p>
<p class="twoy">10 April 2020 (Good Friday) <span style="color:#ffffff"> - Teck Senior Cup Final. (see below)</p>
<p class="twoy">14 April 2020<span style="color:#ffffff"> - General Meeting. Imber Court at 20.30.</p>
<p class="twoy">16 April 2020<span style="color:#ffffff"> - League Junior Cup Final. (see below)</p>
<p class="twoy">23 April 2020<span style="color:#ffffff"> - League Senior Cup Final. (see below)</p>
<p class="twoy">30 April 2020<span style="color:#ffffff"> - Joe Hankin Shield final. (see below)</p>
<p class="twoy">12 May 2020<span style="color:#ffffff"> - General Meeting. Imber Court at 20.30. This is also the date by which completed application forms for the 2020/21 season must be submitted to the General Secretary.</p>

<p class="twoy">30 May 2020<span style="color:#ffffff"> - Presentation Night. (see below)</p>

<p class="twoy">9 June 2020<span style="color:#ffffff"> - Annual General Meeting. Imber Court at 20.00. Note - This is an earlier time than for other General Meetings.</p>
<p class="two">Cup/Shield finals are held at Molesey FC's ground, Walton Road, Walton KT8 2JG. If travelling by train/bus then go by train to either Kingston or Hampton Court stations. Then by TfL bus route 411, in direction of West Molesey, to Spreighton Road stop - a short walk away. Weather and pitch conditions may mean changes. sometimes at short notice, to the dates of the Cup/shield Finals listed above.</p>

<p class="two">Presentation Night to be held at Surbiton Golf Club, Woodstock Lane, Chessington KT9 1UG. This year it will be held on a Saturday starting at 19:30. If travelling by train/bus this will involve a walk of about 25 minutes from the Hook Parade stop on TfL bus route 71 or 465. These bus routes serve Surbiton station. Check TfL website for details of walking route from Hook Parade to venue. If you're getting a Taxi/Uber/Car hire then Chessington North is the nearest station.</p>


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