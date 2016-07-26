<?php

// CHECK IF PAGE EXISTS IN PAGE HIT TABLE
function checkPageName($page_name){
	$sql = "SELECT * FROM ".$GLOBALS['hits_table_name']." WHERE page = :page";
	$query = $GLOBALS['db']->prepare($sql);
	$query->execute([':page' => $page_name]);
	if ($query->rowCount() == 0){
		$sql = "INSERT INTO ".$GLOBALS['hits_table_name']." (page, count) VALUES (:page, 0)";
		$query = $GLOBALS['db']->prepare($sql);
		$query->execute([':page' => $page_name]);
	}
}

// UPDATE PAGE HIT COUNT
function updateCounter($page_name){
	checkPageName($page_name);
	$sql = "UPDATE ".$GLOBALS['hits_table_name']." SET count = count+1 WHERE page = :page";
	$query = $GLOBALS['db']->prepare($sql);
	$query->execute([':page' => $page_name]);
}

// UPDATE VISITOR INFO
function updateInfo(){
	$ch = curl_init();
$cvar ="http://ipinfo.io/".$_SERVER['REMOTE_ADDR']."/";
// set url
curl_setopt($ch, CURLOPT_URL,$cvar);

//return the transfer as a string
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

// $output contains the output string
$output = curl_exec($ch);

// close curl resource to free up system resources
curl_close($ch);

$val= json_decode($output,true);

	$sql = "INSERT INTO ".$GLOBALS['info_table_name']." (ip_address, user_agent, country) VALUES(:ip_address, :user_agent, :country)";
	$query = $GLOBALS['db']->prepare($sql);
	$query->execute([':ip_address' => $_SERVER["REMOTE_ADDR"], ':user_agent' => $_SERVER["HTTP_USER_AGENT"],':country'=> $val['country']]);
}

?>