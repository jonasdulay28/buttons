<?php
require_once("config.php");
$db = new Database;
$host =  $db->host;
$database =  $db->db_name;
$username =  $db->username;
$password =  $db->password;

$connect = new mysqli($host,$username,$password,$database);
if($connect->connect_error)
{
    die("connection error!");
}
if(isset($_POST['submit-btn'])){
    $searchkey = $_POST['search'];
 $sql = "SELECT title FROM blog_posts WHERE `title` LIKE '%$searchkey%' OR `post` LIKE '%$searchkey%'";
 $searchresult = $connect->query($sql) or die('could not search!');
     if($searchresult==TRUE){
         foreach($searchresult as $result){
             if($searchresult->num_rows > 0){
            while($row = $searchresult->fetch_assoc()){
             echo $row['title'];
            }}
         }
     }
else{
    echo "hells NO!";
}
}
?>
<!DOCTYPE html>
<html>
<head>
    
    </head>
    <body>
        <form method="post">
    <input type="text" name='search'/>
        <input type='submit' name='submit-btn'/>
        </form>
    </body>

</html>