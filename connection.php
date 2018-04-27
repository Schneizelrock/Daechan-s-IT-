<?php

$host='localhost';

$user='root';
$password='tiger';
$username='Voting';

$dbh=mysqli_connect($host,$user,$password,$username) or die("error connecting to the database".mysqli_connect_error($dbh));

?>

