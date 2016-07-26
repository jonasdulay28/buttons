<?php
    require_once 'conf.php';
    $db = new BTTNS;
    //get the database details
	$db_hostname = $db->host;;
	$db_user = $db->username;
	$db_password = $db->password;;
	$db_name = $db->database;
	
	try{
		
		$db_con = new PDO("mysql:host={$db_hostname};dbname={$db_name}",$db_user,$db_password);
		
	}catch(PDOException $x){
		
		die($x->getMessage());
	}
