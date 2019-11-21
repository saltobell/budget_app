<?php
//create connection to database
$con=mysql_connect("localhost","root","root","budget_app");


//check connection

if (mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: ".mysqli_connect_error();
}

$sql="SELECT * FROM Transactions";
$user = "SELECT * FROM Users";
$account = "SELECT * FROM Account";
$budget = "SELECT * FROM Budget";
$category = "SELECT * FROM Category";

if($result = mysqli_query($con,$sql,$user,$account,$budget,$category))
{
	$resultArray = array();
	$tempArray = array();
	while($row = $result->fetch_object())
	{
		tempArray = $row;
		array_push($resultArray,$tempArray);
	}
	
	echo json_encode($resultArray);
}
mysqli_close($con);
?>
