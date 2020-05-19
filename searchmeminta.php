<?php
include 'conn.php';

$search= $_GET['search'];

$queryResult = $connect->query("SELECT * FROM datadiri where user_id like '%".$search."%'");

$result=array();

while($fetchData=$queryResult->fetch_assoc()){
	$result[]=$fetchData;
}
echo json_encode($result);
?>