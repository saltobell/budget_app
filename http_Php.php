<?php
$input = array(); //is one array enough?

if($_SERVER['REQUEST_METHOD'] == 'POST')
{
	$user_ID = $_POST['userID'];
	$user_firstname = $_POST['First Name'];
	$user_lastname = $_POST['Last Name'];
	$user_email = $_POST['email'];
	$user_password = $_POST['password'];
	
	$account_id = $_POST['acc_ID'];
	$account_name = $_POST['acc_name'];
	$account_type = $_POST['acc_type'];
	$account_balance = $_POST['balance'];
	$account_numOFAcc = $_POST['numOfAccts'];
	$account_primkey = $_POST['acc_ID,userID]';
	
	$transaction_ID = $_POST['transactionID'];
	$transaction_amount = $_POST['amount'];
	$transaction_day = $_POST['day'];
	$transaction_type = $_POST['type_'];
	$transaction_method = $_POST['method'];
	$transaction_description = $_POST['description'];
	$transaction_primarykey = $_POST['transactionID,userID'];
	
	$budget_budgetid = $_POST['budgetID'];
	$budget_month = $_POST['month']
	$budget_amountsaved = $_POST['amountSaved'];
	$budget_amountspent = $_POST['amountSpent'];
	$budget_primkey = $_POST['budgetID,userID'];
	
	$cate_food = $_POST['food'];
	$cate_housing = $_POST['housing'];
	$cate_utilities = $_POST['utilities']
	$cate_transportation = $_POST['transportation'];
	$cate_entertainment = $_POST['entertainment'];
	$cate_school = $_POST['school'];
	$cate_other = $_POST['other'];
	$cate_primarykey = $_POST['userID,budgetID'];
	
	require_once '../includes/DbOperation.php'; //operation file
	$db = new DbOperation();
	
	if($db->createUser($user_ID,$user_firstname,$user_lastname,$user_email,$user_password)))
	{
		$input['error']=false;
		$input['message']='User Created';
		
	}
	else
	{
		$input['error']=true;
		$input['message']='Could not add user';
	}
	if($db->createAccount($account_id,$account_name,$account_balance,$account_numOFAcc,$account_primkey,$account_type)
	{
		$input['error']=false;
		$input['message']='Account Created';
		
	}
	else
	{
		$input['error']=true;
		$input['message']='Could not create account';
	}
	if($db->createTransaction($transaction_ID,$transaction_amount,$transaction_day,$transaction_description,$transaction_method,$transaction_type,$transaction_primarykey)
	{
		$input['error']=false;
		$input['message']='Transaction Created';
		
	}
	else
	{
		$input['error']=true;
		$input['message']='Could not create transaction';
	}
	if($db->createBudget($,budget_amountsaved,$budget_amountspent,$budget_budgetid,$budget_month,$budget_primkey)
	{
		$input['error']=false;
		$input['message']='Budget Created';
		
	}
	else
	{
		$input['error']=true;
		$input['message']='Could not create budget';
	}
	if($db->createCategories($cate_entertainment,$cate_food,$cate_housing,$cate_school,$cate_transportation,$cate_utilities,$cate_other,$cate_primarykey)
	{
		$input['error']=false;
		$input['message']='Category Created';
		
	}
	else
	{
		$input['error']=true;
		$input['message']='Could not create Category';
	}
}
else 
{
	$input['error']=true;
	$input['message']='You are not authorized';
}

echo json_encode($input);
?>
	
