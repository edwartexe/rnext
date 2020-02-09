<?php
require('config.php');	


//usuarios: id, username, hash, salt
//principal: id, foto_src, nom, text, parentUserId
$in_user = $_POST["name"];
$in_pass = $_POST["pass"];
//$in_user= "test";
//$in_pass= "test";

if(isset($in_user) && isset($in_pass)){
	$sentencia="SELECT * FROM usuarios WHERE username = '".$in_user."'";
	$result = mysqli_query($conn,$sentencia) or die("check query failed::: ".mysqli_error ( $conn));
	if(mysqli_num_rows($result)>0){
		die("username exists");	
	}

	$salt = "\$5\$rounds=5000\$" ."battlebeast" . $in_user . "\$";
	$hash= crypt($in_pass,$salt);

	$querry_insert = "INSERT INTO usuarios (username, hash, salt) VALUES ('".$in_user."','".$hash."', '".$salt."' )";
	$result_insert = mysqli_query($conn, $querry_insert) or die("insert failed::: ".$querry_insert."  ".mysqli_error ( $conn));
	if($result_insert){
		echo "0";
	}
}else{
	echo "no inputs ".$in_user." ".$in_pass;
}
/*
echo "<table>";
$i=0;
while($rowmsql = mysqli_fetch_array($result)){
    //ID LOGINUSER rol

    if($i===0){
        echo "<tr>";
        foreach($rowmsql as $cell => $value){
            echo "<th>".$cell."</th>";
        }
        echo "</tr>";
    }

    echo "<tr>";
    foreach($rowmsql as $cell => $value){
        echo "<td>".$value."</td>";
    }
    $i++;
    echo "</tr>";
} 
echo "</table>";
*/

mysqli_close($conn);

?>