<?php
include 'conn.php';

$queryResult = $connect->query("SELECT * FROM user INNER JOIN transaksi ON transaksi.pengirim_id=user.id AND transaksi.penerima_id=2");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}
echo json_encode($result);
?>