<?php

	include 'conn.php';

	$itemnama = $_POST['itemnama'];
	$itemmasa= $_POST['itemmasa'];
	$info1=$_POST['info1'];
	$info2=$_POST['info2'];
	$info3=$_POST['info3'];
	//$scankartu=$_POST['scankartu'];
	$ditambahkan=$_POST['ditambahkan'];
	$image=$_FILES['image']['name'];
	move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

	$connect->query("INSERT INTO kartu (nama_kartu,Ditambahkanpada,masa_berlaku,informasi1,informasi2,informasi3,scan_kartu,user_id) VALUES('".$itemnama."','".$ditambahkan."','".$itemmasa."','".$info1."','".$info2."','".$info3."','".$image."','2')")

?>