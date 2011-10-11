<?php

include "config/config.php";
include "functions/database.fn.php";
$link = database_connect($db);



$sql = 'SELECT * FROM poney WHERE id='.$_GET['id']; 
$result = mysql_query($sql);
if(!$result){
	die('erreur dans la requete : ' . mysql_error());
}

while($row = mysql_fetch_array($result, MYSQL_ASSOC)){


 include "templates/html-opening.php"; 

			
				$rate = $row["rate"];
				
				echo '<img src="images/'.$row["image"].'" alt="poney" class="imgprofile" /><br />';
				
				if($rate == 1){
				echo '<img src="images/1star.gif" alt="stars" class="starsprofile" />';
				}
				elseif($rate == 2) {
				echo '<img src="images/2stars.gif" alt="stars" class="starsprofile" />';
				}
				elseif($rate == 3) {
				echo '<img src="images/3stars.gif" alt="stars" class="starsprofile" />';
				}
				elseif($rate == 4) {
				echo '<img src="images/4stars.gif" alt="stars" class="starsprofile" />';
				}
				elseif($rate == 5) {
				echo '<img src="images/5stars.gif" alt="stars" class="starsprofile" />';
				}
				
				echo '<div id="details">';
				echo '<h3>'.$row["nom"].'</h3>';
				echo '<ul>';
				echo '<li>Age: '.$row["age"].'</li>';
				echo '<li>Sex: '.$row["sex"].'</li>';
				echo '<li>Color: '.$row["color"].'</li>';
				echo '<li>Height: '.$row["height"].'</li>';
				echo '<li>Robe: '.$row["robe"].'</li>';
				echo '<li>Type: '.$row["type"].'</li>';
				echo '</ul>';
				}	

			?>	
				</div> <!-- closing details -->
				
<?php include "templates/html-closing.php"; ?>