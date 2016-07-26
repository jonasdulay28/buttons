<?php

	require_once 'db.php';
	
	$posts = array();
	$query = "SELECT * FROM blog_posts ";
	
	$stmt = $db_con->prepare($query);
	$stmt->execute();
	
	while($row=$stmt->fetch(PDO::FETCH_ASSOC)) {
			
		$posts['posts'][] = $row;
	}
	
	echo json_encode($posts);
