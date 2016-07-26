<?php
define('IP_ADD',$_SERVER['REMOTE_ADDR']);
require_once('conn.php');
    require_once('counter.php');
	
    updateCounter("Homepage"); // Updates page hits
    updateInfo(); // Updates hit info

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <?php
        // Include and instantiate the class.
        require_once 'Mobile-Detect/Mobile_Detect.php';
        $detect = new Mobile_Detect;
        if($detect->isMobile()){
            $isMOBILE = true;
        }
        ?>
        <meta name='viewport' content='width=device-width,initial-scale=1.0'>
        <link rel="stylesheet" href="themes/style.css">
        <link rel="stylesheet" href="themes/blog-style.css">
        <?php include "themes/includes.php"; ?>
    </head>
    <body>

        <div id="blog"></div>
        <div id='blogsearchbox'></div>
        <?php include "content.php"; ?>
    
        <!--DO NOT ADD ANY CODE AFTER THIS-->
       <script src="script.js"></script>
        <script>
            blog();
        </script>
        
    </body>
</html>
