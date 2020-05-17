<?php

	include conn.php;

	$image=$_FILES['image']['name'];
	$imagePath= "assets/images/".$image;
	$scan_kartu=$POST['scan_kartu'];

	move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

	$connect->query("INSERT INTO kartu (scan_kartu,image) VALUES ('".$scan_kartu."','".$image."')");

?>