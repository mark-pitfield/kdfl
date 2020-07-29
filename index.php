<?php
 session_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">

<html>

<head>
<title>Kingston & District Football League.....</title>

<link rel="stylesheet" type="text/css"href="kdfl.css" />


<style type="text/css">
</html>

<?php
$_SESSION['linkno'] = '01';
?>

<html>

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

	<div id="strip"><IMG src="IMG_0767x.jpg"><IMG src="DSCF0196c.jpg"><IMG src="DSCF0202x.jpg"><IMG src="DSCF0193c.jpg"><IMG src="kdflbadgex.jpg"><IMG src="pumakings.jpg"><IMG src="DSCF0200.jpg"><IMG src="DSCF0209x.jpg"><IMG src="bctrainc.jpg">
</div>
	
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 830px;">

	<div id="content2"><h2 class="deh"></h2>

<p class="two">&nbsp</p>
<p class="two">
<script language="javascript">
            <!--
            now = new Date();
	    t =  now.getHours();
	    if (t<12)
               document.write("Good morning");
	    else if (t<18) 
               document.write("Good afternoon");
	         else 
                    document.write("Good evening");
	//  --></script> ladies and gentlemen and welcome to our website.</p>

	
      <P class="two">This is the official site of the Kingston & District Football League, which is affiliated to the Surrey County Football Association. Our clubs come from, and matches are played in, an area which covers much of South West London and Surrey. The league consists of three divisions, each with upto ten teams in each. There are also four cup competitions - two for the teams in the top half of the league and two for the teams in the lower half. Added to this will be a cup competition provided by your affiliated County.</br></p> 

<P class="two">Clubs wishing to join the league should print off and complete the application form and then forward it to the General Secretary. Details are available in the links on the right hand side of this page. </br></p>

<p class="two">You may have found this site because you entered "players wanted" or "players needed" into a search engine. So, if you're looking for a club to join then contact a club directly. Use the relevant links on the right hand side of the page. Although our league is men's football played on Saturdays, a few of our clubs also have youth teams, veterans teams and Sunday teams. The clubs' home grounds are also included with the contact details, so you can find a club near you.</br></p>


<p class="two">The Match Cards for league and cup matches are online, so you can download and print them off. They are on the "Forms and Match Cards" page. There are links on the right hand side of each page where you'll find the league's rules and bank account details. The "Results and Fixtures" link will give a full picture of the league's football programme.</p>

<p class="two">The other website links on our Home page will take you to the external websites operated by the main Football authorities
in our immediate area who have a direct connection with the KDFL. KDFL are not responsible for the content on the external sites.</p>

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