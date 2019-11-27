<?php

class DbOperations
{
	private $conn
	function _construct()
	{
		$db = new DbConnect();
		$this->conn = $db->connect();
	}
	
	
	public function createUser($name,$email,$password)
	{
		$stmt = $this->conn->prepare("INSERT INTO user(name,email,password) values(?,?,?)");
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
	public function createAccount($acc_name,$acc_type,$balance,$numOfAccts)
	{
		//is numofaccts user input?
		$input = $this->conn->prepare("INSERT INTO Account(acc_name,acc_type,balance,numOfAccts_) values(?,?,?,?)");
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
	/*public function DeleteAccount($acc_name,$acc_type,$balance,$numOfAccts)
	{
		$input = $this->conn->prepare("DELETE acc_name,acc_type,balance FROM Account WHERE acc_ID = ?");//how do i know which account it is?
		//also need to modify num of accounts
	}*/
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
		
	public function createTransaction($amount,$date,$_type,$method,$description)
	{
		$input = $this->conn->prepare("INSERT INTO Transaction(amount,date,type_,method,description) values(?,?,?,?,?)");
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
	?>

	