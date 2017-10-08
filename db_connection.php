<?php
 
function OpenConnection()
 {
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "MovieDB"; 
 $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
 return $conn;
 }
 
function CloseConnection($conn)
 {
 $conn -> close();
 }
   
?>