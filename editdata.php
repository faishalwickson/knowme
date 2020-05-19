<?php

    include 'conn.php';

    $id = $_POST['id'];
    $itemnama = $_POST['itemnama'];
	$itemmasa= $_POST['itemmasa'];
	$info1=$_POST['info1'];
	$info2=$_POST['info2'];
	$info3=$_POST['info3'];
	//$scankartu=$_POST['scankartu'];
	$ditambahkan=$_POST['ditambahkan'];
    
    $connect->query("UPDATE kartu SET nama_kartu='".$itemnama."', masa_berlaku='".$itemmasa."', informasi1='".$info1."', informasi2='".$info2."', informasi3='".$info3."' WHERE id=" .$id)

?>