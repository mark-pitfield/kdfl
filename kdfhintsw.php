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
$_SESSION['linkno'] = '13';
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

	<div id="strip"><IMG src="DSCF0204x.jpg"><IMG src="ll1.jpg"><IMG src="wolves1.jpg"><IMG src="DSCF0196c.jpg"><IMG src="kdflbadgex.jpg"><IMG src="bctraincx.jpg"><IMG src="DSCF0211x.jpg"><IMG src="pumakings.jpg"><IMG src="DSCF0209x.jpg">
</div>

	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 750px;">

	<div id="content2"><h2 class="deh"></h2>


<p class="subhead">When you need to pay money to the league</p>

<p class="two">The league's bank account name is: "Kingston & District Football League" and is held at Barclays Bank.
</p>
<p class="two">Use your club's name as a reference.
</p>

<p class="two">When you have made a payment send the League Treasurer an e-mail, remembering to use your club's name as the Subject. His contact details are on the LEAGUE COMMITTEE page. Explain what the purpose of the payment was.
</p>

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
