<?php
require('config.php');	

$in_page = $_POST["page"];
$in_limit = $_POST["limit"];

$startfrom = 1+( ($in_page-1)*$in_limit);
$endat = ($in_page)*$in_limit;

$sentencia="SELECT * FROM principal WHERE id BETWEEN $startfrom AND $endat";
$result = mysqli_query($conn,$sentencia) or die("check query failed::: ".mysqli_error ( $conn));

$response = array();
$resp_string="";
$iteration=0;
while($rowmsql = mysqli_fetch_assoc($result)){
	if($iteration>0){
		$resp_string .="<<<endrow>>>";
	}
	$resp_string .= $rowmsql['id']."<<coma>>".$rowmsql['foto_src']."<<coma>>".$rowmsql['nom']."<<coma>>".$rowmsql['text']."<<coma>>".$rowmsql['parentUserId'];
	$iteration++;
	//$response = array($rowmsql['id'],$rowmsql['nom'],$rowmsql['text'],$rowmsql['parentUserId'], );
	//array_push($response, $rowmsql);
} 

//echo json_encode($response);
echo $resp_string;

mysqli_close($conn);

?>