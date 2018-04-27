<?php
session_start();
include 'connection.php';
$name = $_GET['q'];

$query = "update Candidate set vote_count=vote_count+1 where id=\"$name\"";
mysqli_query($dbh,$query) or die("Error updating the vote");
$i=$_SESSION['id'];
$query="update Login set voted=1 where id=\"$i\"";
mysqli_query($dbh,$query) or die("Error query");

?>
