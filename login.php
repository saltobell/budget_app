<?php

require("databaseconnection.php");
require("DbOperations.php");
$email = htmlentities($_POST["email"]);
$password = htmlentities($_POST["password"]);

$finalarray = array();

if(empty($email) || empty($password) || empty($FirstName) || empty($LastName)
{
	$finalarray["status"] = "error";
	$finalarray["message"] = "Missing Required Field";
	echo json_encode($finalarray);
	return;
}

$sql = new DbOperations();
$sql->con();
$info = $sql->forgotPassword($email);

if(!empty($info))
{
	$finalarray["status"] = "error";
	$finalarray["message"] = "user already exists";
	echo json_encode($finalarray);
	return;
}
else
{
	finalarray["status"] = "error";
	finalarray["message"] = "user does not exist";
	echo json_encode($finalarray);
}

$return = $sql->createUser($email,$password,$FirstName,$LastName);


$mysqli_close($con);

?>
