<?php
    include 'conn.php';
    $id=$_POST['id'];
    $connect->query("DELETE FROM kartu WHERE id=" .$id);

?>