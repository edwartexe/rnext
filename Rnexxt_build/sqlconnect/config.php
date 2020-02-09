<?php
header('Access-Control-Allow-Origin: *');
//$conn = mysqli_connect('127.0.0.1:3308','root','','rnext');
//$constring="mysql://rk3rnin2xeonzt0n:tugb70vsntv7h4s6@m7wltxurw8d2n21q.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/aareyzkysghpxs2h";
$conn = mysqli_connect('m7wltxurw8d2n21q.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306','rk3rnin2xeonzt0n','tugb70vsntv7h4s6','aareyzkysghpxs2h');
if (mysqli_connect_errno() ) {
	die("Connection failed::: ".mysqli_error ( $conn) );			
} 		


?>