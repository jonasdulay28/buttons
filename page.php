<?php
//load the class
require_once 'conf.php';
$db = new BTTNS;
//get the database details
$conn_host = $db->host;
$conn_database = $db->database;
$conn_domain = $db->domain;
$conn_username = $db->username;
$conn_password = $db->password;
//connect to db
$conn = new PDO("mysql:host=$conn_host;dbname=$conn_database;charset=utf8mb4", $conn_username, $conn_password);

if(isset($_GET['id']) && is_numeric($_GET['id'])){
	//get the page id
$pageid = $_GET['id'];
$q = $conn->query("SELECT * FROM btns_Pages WHERE ID = '$pageid'");
$result = $q->fetch(PDO::FETCH_ASSOC);
    if(empty($result)){
    	header("Location: themes/404.html");
    }else{
    	echo "<!DOCTYPE html>";
    	echo "<html>";
    	echo "<head>";
    	echo "<title>";
    	echo $result['Title'];
    	echo "</title>";
    	echo "<body>";
    	include 'themes/header.php';
    	echo eval("?>".$result['Content']."<?");
    	include 'footer.php';
    	echo "</body>";
    	echo "</html>";
    }
	
}else{
	header("Location: themes/malformed_request.html");
}
