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
$_SESSION['linkno'] = '10';
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

	<div id="strip"><IMG src="ll1.jpg"><IMG src="DSCF0200.jpg"><IMG src="DSCF0196c.jpg"><IMG src="DSCF0209x.jpg"><IMG src="kdflbadgex.jpg"><IMG src="DSCF0204x.jpg"><IMG src="bctraincx.jpg"><IMG src="DSCF0211x.jpg"><IMG src="pumakings.jpg">
</div>
	
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 870px;">

	<div id="content2"><h2 class="deh"></h2>

<p class="subhead">At our matches, these are the men in the middle</p>	

<p class="twoy">Tony Best<span style="color:#ffffff"> - Mobile: 07947 512415</span></br>
Chris Blackie<span style="color:#ffffff"> - Tel: 020 8391 4376 Mobile: 07748 877704</span></br>
Brian Clark<span style="color:#ffffff"> - Tel: 020 8337 5532 Mobile: 07786 032907</span></br>
Michael Corcoran<span style="color:#ffffff"> - Tel: 01932 244380 Mobile: 07958 397122</span></br>
Martin Coughlan<span style="color:#ffffff"> - Mobile: 07984 155941</span></br>
Glenn Crowe<span style="color:#ffffff"> - Mobile: 07877 358953</span></br>
Daniel Crump<span style="color:#ffffff"> - Mobile: 07546 721006</span></br>
Robert Giacche<span style="color:#ffffff"> - Tel: 01372 743020 Mobile: 07904 212278</span></br>
Paul Legg<span style="color:#ffffff"> - Mobile: 07379 272957</span></br>
Michael Malin<span style="color:#ffffff"> - Tel: 020 8641 9928 Mobile: 07912 858870</span></br>
John McGinty<span style="color:#ffffff"> - Mobile: 07969 348407</span></br>
Patrick Mulpeter<span style="color:#ffffff"> - Mobile: 07802 811123</span></br>
Paul Paciencia<span style="color:#ffffff"> - Tel: 020 8241 6201 Mobile: 07899 087303</span></br>
John Parker<span style="color:#ffffff"> - Tel: 020 8661 7351 Mobile: 07827 569282</span></br>
David Johnson Paul<span style="color:#ffffff"> - Mobile: 07976 097039</span></br>
Dave Rowland<span style="color:#ffffff"> - Tel: 01372 275013 Mobile: 07588 624195</span></br>
Paul Smith<span style="color:#ffffff"> - Contact details are shown on "League Committee" page.</span></br>
Les Stevens<span style="color:#ffffff"> - Tel: 020 8979 3689</span></br>
Derek Tansill<span style="color:#ffffff"> - Tel: 020 8770 1687</span></br>
Barry Tribe<span style="color:#ffffff"> - Tel: 020 8941 4747 Mobile: 07986 596723</span></br>
Mike Trussell<span style="color:#ffffff"> - Tel: 020 8788 1793 Mobile: 07956 454693</span></br>
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