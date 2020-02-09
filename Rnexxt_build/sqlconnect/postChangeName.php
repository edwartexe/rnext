<?php
require('config.php');	


$in_id = $_POST["id"];
$in_newname = $_POST["name"];

if(isset($in_id) && isset($in_newname)){

	$querry_update = "UPDATE principal SET nom='$in_newname' WHERE id=$in_id";
	$result_update = mysqli_query($conn, $querry_update) or die("update failed::: ".$querry_update."  ".mysqli_error ( $conn));
	if($result_update){
		echo "0";
	}
}else{
	echo "no inputs ".$in_id." ".$in_newname;
}


mysqli_close($conn);

?>