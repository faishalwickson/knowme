<?php
include 'conn.php';

$queryResult = $connect->query("SELECT * FROM kartu where user_id=2");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}
echo json_encode($result);
?>