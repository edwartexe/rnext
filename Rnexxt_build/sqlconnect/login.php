<?php
require('config.php');	

$in_user = $_POST["name"];
$in_pass = $_POST["pass"];

if(isset($in_user) && isset($in_pass)){
	$sentencia="SELECT * FROM usuarios WHERE username = '".$in_user."'";
	$result = mysqli_query($conn,$sentencia) or die("check query failed::: ".mysqli_error ( $conn));
	if(mysqli_num_rows($result)<=0){
		die("username not found");	
	}
	$rowmsql = mysqli_fetch_assoc($result);

	$salt = $rowmsql["salt"];
	$hash = $rowmsql["hash"];

	$loginhash = crypt($in_pass, $salt);
	if($loginhash != $hash){
		die("wrong password loginhash=$loginhash ... salt=$salt ... hash=$hash");
	}

	echo "0\t";

}else{
	echo "no inputs ".$in_user." ".$in_pass;
}

mysqli_close($conn);

?>