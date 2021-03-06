<?php 
require_once 'conf.php';
$db = new BTTNS;
### EDIT HERE ###

// DB CONNECT INFO
$db_host = $db->host;
$db_name = $db->database;
$db_user = $db->username;
$db_pw = $db->password;

// DB TABLE INFO
$GLOBALS['hits_table_name'] = "tbl_hits";
$GLOBALS['info_table_name'] = "tbl_hits_info";

### STOP EDITING HERE ###

// CONNECT TO DB
try {   
	$GLOBALS['db'] = new PDO("mysql:host=".$db_host.";dbname=".$db_name, $db_user, $db_pw, array(PDO::ATTR_PERSISTENT => false, PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, PDO::ATTR_EMULATE_PREPARES => false));  
}  
catch(PDOException $e) {  
    echo $e->getMessage();
}

?>
