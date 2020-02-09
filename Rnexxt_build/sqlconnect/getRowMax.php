<?php
require('config.php');	

$sentencia="SELECT COUNT(*) FROM principal";
$result = mysqli_query($conn,$sentencia) or die("check query failed::: ".mysqli_error ( $conn));

if($rowmsql = mysqli_fetch_array($result)){
	echo $rowmsql[0];
} else{

echo "error";
}


mysqli_close($conn);

?>