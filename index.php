<?php include "templates/html-opening.php"; ?>
		
<?php


include "config/config.php";
include "functions/database.fn.php";
$link = database_connect($db);



$sql = 'SELECT * FROM poney WHERE 1 ORDER BY rate DESC';
$result = mysql_query($sql);
if(!$result){
	die('erreur dans la requete : ' . mysql_error());
}




	echo '<div id="lesponeys">';
while($row = mysql_fetch_array($result, MYSQL_ASSOC)){
	echo '<div id="unponey">';
	 echo '<a href="poneys.php?id='.$row["id"].'"><img src="images/'.$row["image"].'" alt="poneys" class="thumbnails"/></a>';
			$rate = $row["rate"];		
				if($rate == 1){
				echo '<img src="images/1star.gif" alt="stars" class="indexstars" />';
				}
				elseif($rate == 2) {
				echo '<img src="images/2stars.gif" alt="stars" class="indexstars" />';
				}
				elseif($rate == 3) {
				echo '<img src="images/3stars.gif" alt="stars" class="indexstars" />';
				}
				elseif($rate == 4) {
				echo '<img src="images/4stars.gif" alt="stars" class="indexstars" />';
				}
				elseif($rate == 5) {
				echo '<img src="images/5stars.gif" alt="stars" class="indexstars" />';
				}
					echo '</div> <!-- closing unponey -->';
}

	echo '</div> <!-- closing lesponeys -->';
	
?>
<?php include "templates/html-closing.php"; ?>