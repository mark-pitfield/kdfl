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
$_SESSION['linkno'] = '03'
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

	<div id="strip"><IMG src="IMG_0767x.jpg"><IMG src="DSCF0245xes.jpg"><IMG src="DSCF0200.jpg"><IMG src="DSCF0209x.jpg"><IMG src="kdflbadgex.jpg"><IMG src="bctrainc.jpg"><IMG src="DSCF0196c.jpg"><IMG src="DSCF0211x.jpg"><IMG src="wolves1.jpg">
</div>
	
	<div id="one">&nbsp</div>
	<div id="bar">&nbsp</div>
	<div id="two">&nbsp</div>

	<div id="inside"style="height: 1000px;">

	<div id="content2"><h2 class="deh"></h2>








<p class="subheadw">A potted history of our league</p>	


<!-- This is the picture of Alan Shaw -->  
<div align="left" style="width:209px; margin-left:15px;";>
<IMG src="alanshaw.jpg"    align="left">
</div>

<!-- and this is the text next to his picture -->  
<div align="left" style="width:356px; margin-left:210px;";>
<p class="two">Our league's beginnings go back to 1893, when Alan Shaw (pictured), journalist and cousin of George Bernard Shaw, moved from Edinburgh to London.</p>
<p class="two">He was a keen footballer and, shortly after his move south, he joined the football club at London (Regent Street) Polytechnic. One of his teammates was Lord Kinnaird, who later became president of the Football Association.</p>
<p class="two">Two years later Alan Shaw moved to Kingston and joined Kingston-on-Thames Town Association FC. The club later became Kingstonian FC. However, he noted there were numerous clubs in the area and looked at the possibility of a local league.</p>

</div>

<!-- and this is the text below his picture -->  
<div align="left" style="width:570px; margin-left:0px;";>
<p class="two">On the Easter Saturday of 1896 a match was played, at Fairfield Recreation Ground, between a representative XI of the newly formed league and the North Middlesex League. The result was a 3-0 win for the new league. Later that year the league kicked off with nine teams in its first division and eleven in its second division.</P>
<p class="two">At the end of the league's first season Alan Shaw moved once more; this time to Dublin but he still retained an interest in th league.</p>
<p class="two">It was recorded that the league expenditure for the 1910/11 season totalled £37 8s 6d (£37.43). There were three divisions and 22 teams. It was noted that a pair of football boots could be purchased for 8/11 (just under 45p). </p>
<p class="two">No matches were played during the four seasons which coincided with World War I, but the inter-war years saw the league increase in size to 7 divisions. These years also saw the formation of NPL FC and Kingston Albion FC.</p> 
<p class="two">It was the 1954/55 season which saw the league at its largest up to that time - 82 teams; but this was followed by the sad news of the death of the league's founder - Alan Shaw. 
<p class="two">Ten years later and Ken Tate, now one of our Life Vice-Presidents, joined the committee as our Registrations Secretary. Later that decade Frank Gardiner, now our League President, joined the league's referees' panel.</p>
<p class="two">The 1964/65 season saw the league with 91 teams competing in 9 divisions. This began a ten year period which saw the league at its largest in its history. Since then numerous clubs have joined and left our league; but two club secretaries who derserve a mention for the work they have done for both their players and the league are Malcolm Benham of Hook Venturers FC and Andy Holmden of Kingston Albion FC.</P>

<p class="two">We hope that we are still fulfilling the ambitions that Alan Shaw had over a hundred years earlier.</p> 


</div>
</table>





&nbsp



</div>

	<div id="menu" >
	 <P class="nine">OTHER PAGES</P>

<?php
include 'intnllinks.php'
?>


      <br/>

      <hr noshade align=center size=6 color="#ff6600" width=218>

<P class="nine">OTHER WEBSITES</P>

<?php
include 'extnllinks.php'
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