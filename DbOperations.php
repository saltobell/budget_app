<?php

class DbOperations
{
	private $conn
	function _construct()
	{
		$db = new DbConnect();
		$this->conn = $db->connect();
	}
	
	
	public function createUser($FirstName,$LastName,$email,$password)
	{
		$stmt = $this->conn->prepare("INSERT INTO user(First Name,Last Name,email,password) values(?,?,?)");
		//$stmt->bind_param()
		$result=$stmt->execute();
		$stmt->close();
		if($result)
		{
			return true;
		}
		else{
		return false;
		}
	}
	public function forgotPassword($email)
	{
		$return = array();
		$sql = "SELECT * FROM user WHERE email = "".$email."'";
		$stmt = $this->conn->query($sql);
		if($stmt != null && (mysqli_num_rows($result)>=1))
		{
			$row = $stmt->fetch_array(MYSQLI_ASSOC);
			if(!empty($row))
			{
				$return = $row;
			}
		}
		return $return;
	}
	public function DeleteTranscation($transactionID,$amount,$date,$type_,$mehtod,$description)
	{
		$input = $this->conn->prepare("DELETE transactionID,amount,date,type_,method,description FROM Transaction WHERE transactionID = transactionIDID");
		$sql = "UPDATE ACCOUNT SET numOfAccts = numOfAccts-1 WHERE user_id = user_id";
		if($conn->query($sql) == TRUE){
			echo "Record updated successfully";
		}
		else{
			echo "error".$conn->error;
		}
		//$input->bind_param()//missing something
		$result=$input->execute();
		$input->close();
		if($result)
		{
			return true;
		}
		else{
			return false;
		}
	}
		
	public function createTransaction($amount,$day,$type_,$method,$description)
	{
		$input = $this->conn->prepare("INSERT INTO Transaction(amount,day,type_,method,description) values(?,?,?,?,?)");
		//$input->bind_param()//missing something
		$result=$input->execute();
		$input->close();
		if($result)
		{
			return true;
		}
		else{
			return false;
		}
	}
	public function createBudget($month,$amountSaved,$amountSpent)
	{
		$input = $this->conn->prepare("INSERT INTO Budget(month,amountSaved,amountSpent) values(?,?,?)");
		//$input->bind_param()//missing something
		$result=$input->execute();
		$input->close();
		if($result)
		{
			return true;
		}
		else{
			return false;
		}
	}
	public function UpdateCategory($food,$housing,$utilities,$transportation,$entertainment,$school,$other)
	{
		$input = $this->conn->prepare("INSERT INTO Category(food,housing ,utilities,transportation,entertainment,school,other) values(?,?,?)");
		//$input->bind_param()//missing something
		$result=$input->execute();
		$input->close();
		if($result)
		{
			return true;
		}
		else{
			return false;
		}
	}
	$conn->close();
	}
	?>

	
