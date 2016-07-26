<?php
session_start();
require_once 'class.user.php';

$reg_user = new USER();

if($reg_user->is_logged_in()!="")
{
	$reg_user->redirect('home.php');
}


if(isset($_POST['btn-signup']))
{
	$uname = trim(strip_tags($_POST['txtuname']));
	$email = trim(strip_tags($_POST['txtemail']));
	$upass = trim(strip_tags($_POST['txtpass']));
	$code = md5(uniqid(rand()));
	$phone=trim($_POST['phone']);
    $first_name=trim(strip_tags($_POST['first_name']));
    $last_name=trim(strip_tags($_POST['last_name']));
    $gender=$_POST['gender'];
    
	$stmt = $reg_user->runQuery("SELECT * FROM tbl_users WHERE userEmail=:email_id");
	$stmt->execute(array(":email_id"=>$email));
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	
	if($stmt->rowCount() > 0)
	{
		$msg = "
		      <div class='alert alert-error'>
					<strong>Sorry !</strong>  email allready exists , Please Try another one
			  </div>
			  ";
	}
	else
	{
		if($reg_user->register($uname,$email,$upass,$code,$phone,$first_name,$last_name,$gender))
		{			
			$id = $reg_user->lasdID();		
			$key = base64_encode($id);
			$id = $key;
			
            
			$message = "					
						Hello $uname,
						<br /><br />
						To complete your registration  please , just click following link<br/>
						<br /><br />
						<a href='http://$site_url/core/verify.php?id=$id&code=$code'>Click HERE to Activate :)</a>
						<br /><br />
						Thanks,";
						
			$subject = "Confirm Registration";
						
			$reg_user->send_mail($email,$message,$subject);	
			$msg = "
					<div class='alert alert-success'>
						<strong>Success!</strong>  We've sent an email to $email.
                    Please click on the confirmation link in the email to create your account. 
			  		</div>
					";
		}
		else
		{
			echo "Internal server error!";
		}		
	}
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Signup </title>
    <!-- Bootstrap -->
     <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <link href="select2.min.css" rel="stylesheet" />
<script src="select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
     <style type="text/css">
      @import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
select{
	height: 40px;
	width: 260px;
	-webkit-appearance: none;
  -webkit-border-radius: 0px;
  -moz-appearance: none;
  -moz-border-radius: 0px;
  padding: 0px;
  /*background: #76b852;*/
  outline: none;
  border: 0px;
}
option{
	height: 20px;
	width: 260px;
	-webkit-appearance: none;
  -webkit-border-radius: 0px;
  -moz-appearance: none;
  -moz-border-radius: 0px;
  padding: 0px;
  background: white;
  outline: none;
  border: 0px;
}
    </style>

  </head>
  <body>
    <div class="login-page">
  <div class="form">
				<?php if(isset($msg)) echo $msg;  ?>
      <form class="login-form" method="post">
        
        <input type="text"  placeholder="Username" name="txtuname" required />
          <input type="text"  placeholder="First name" name="first_name" required />
          <input type="text" placeholder="Last name" name="last_name" required="">
        <input type="email"  placeholder="Email address" name="txtemail" required />
        <input type="password"  placeholder="Password" name="txtpass" required />
          <input type="text"  placeholder="phone number" name="phone" required />
 <!--gender-->
        <select name="gender">
           <option>Gender</option>
        	<option value="M">Male</option>
        	<option value="F">Female</option>
        </select>
     	<hr />
        <button  type="submit" name="btn-signup">Sign Up</button>
        <br/>
        <p class="message">already Registered?
        <a href="login.php" >Log In</a>
        </p>
      </form>
       <script type="text/javascript">
  $('select').select2();
</script>
	  </div>
	  </div>

  </body>
</html>