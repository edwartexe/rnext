<?php
require('config.php');	


$sentencia="SELECT id, username FROM usuarios";
$result = mysqli_query($conn,$sentencia) or die("check query failed::: ".mysqli_error ( $conn));
echo "<table>";
$i=0;
while($rowmsql = mysqli_fetch_assoc($result)){

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


echo "<br><br><br>";



$sentencia="SELECT * FROM principal";
$result = mysqli_query($conn,$sentencia) or die("check query failed::: ".mysqli_error ( $conn));
echo "<table>";
$i=0;
while($rowmsql = mysqli_fetch_assoc($result)){

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

echo "<style>
table, th, td {
  border: 1px solid black;
}
</style>";
mysqli_close($conn);

?>