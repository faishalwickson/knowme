<?php

	include 'conn.php';

	$username = $_POST['username'];
	$tanggal= $_POST['tanggal'];
	$keterangan=$_POST['keterangan'];

	$connect->query("INSERT INTO transaksi (pengirim_id,penerima_id,tanggal,keterangan) VALUES('".$username."','2','".$tanggal."','".$keterangan."')")

?>