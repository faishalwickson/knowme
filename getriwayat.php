<?php
include 'conn.php';

$queryResult = $connect->query("SELECT * FROM user INNER JOIN transaksi ON transaksi.penerima_id=user.id AND transaksi.pengirim_id=2");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}
echo json_encode($result);
?>