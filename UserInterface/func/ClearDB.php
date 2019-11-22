<?php

include('conn.php');
$sql=mysqli_query($conn, "DELETE FROM tblCrawl");
$sql=mysqli_query($conn, "ALTER TABLE tblCrawl AUTO_INCREMENT = 1");

$sql=mysqli_query($conn, "DELETE FROM tblcategory");
$sql=mysqli_query($conn, "ALTER TABLE tblcategory AUTO_INCREMENT = 1");

$sql=mysqli_query($conn, "DELETE FROM tblpage");
$sql=mysqli_query($conn, "ALTER TABLE tblpage AUTO_INCREMENT = 1");
?>