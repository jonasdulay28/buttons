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

#get the name ,email ,message from contact form
if(isset($_POST['submit-btn']))
{
    $name = mysql_real_escape_string($_POST['name']);
    $email = mysql_real_escape_string($_POST['email']);
    $message = mysql_real_escape_string($_POST['message']);
#insert into database
    
        $send = "INSERT INTO contact(name,email,message,ReadOrNot) VALUES('$name','$email','$message','N')";
         if($connect->query($send)==TRUE)
          {
             echo "your message has been sent successfully!";
          } 
          else
          {
             echo "error sending message!";
          }
}
else{}
?>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="themes/contact-form.css"/>
    <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' ,plugins: "autolink,codesample",plugins: "code",toolbar: "code,bold,italic,underline,strikethrough,superscript,subscript,codesample" });</script>
    </head>
    <body>
        <form action="" method="post">
        <input type="text" name="name" placeholder="Name" required/><br/>
        <input type="text" name="email" placeholder="E-mail" required/><br/>
        <textarea name="message" placeholder="Message" required></textarea><br/>
        <input type="submit" name="submit-btn"/>
        </form>
    </body>
</html>