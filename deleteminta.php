<?php

	include 'conn.php';
	$id=$_POST['id'];
	$connect->query("DELETE FROM transaksi WHERE id=".$id);

?>