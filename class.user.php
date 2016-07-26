
<?php
/* 
auther :Pradeep kodhke
website : www.codingcage.com
*/
require_once 'config.php';

class USER
{	

	private $conn;
	
	public function __construct()
	{
		$database = new Database();
		$db = $database->dbConnection();
		$this->conn = $db;
    }
	
	public function runQuery($sql)
	{
		$stmt = $this->conn->prepare($sql);
		return $stmt;
	}
	
	public function lasdID()
	{
		$stmt = $this->conn->lastInsertId();
		return $stmt;
	}
	
	public function register($uname,$email,$upass,$code,$phone,$first_name,$last_name,$gender)
	{
		try
		{							
			$password = md5($upass);
			$stmt = $this->conn->prepare("INSERT INTO tbl_users(userName,userEmail,userPass,tokenCode,phone,first_name,last_name,gender) 
			                                             VALUES(:user_name, :user_mail, :user_pass, :active_code,:phone,:first_name,:last_name,:gender)");
			$stmt->bindparam(":user_name",$uname);
			$stmt->bindparam(":user_mail",$email);
			$stmt->bindparam(":user_pass",$password);
			$stmt->bindparam(":active_code",$code);
            $stmt->bindparam(":phone",$phone);
            $stmt->bindparam(":first_name",$first_name);
            $stmt->bindparam(":last_name",$last_name);
            $stmt->bindparam(":gender",$gender);
			$stmt->execute();	
			return $stmt;
		}
		catch(PDOException $ex)
		{
			echo $ex->getMessage();
		}
	}
	
	public function login($email,$upass)
	{
		try
		{
			$stmt = $this->conn->prepare("SELECT * FROM tbl_users WHERE userEmail=:email_id");
			$stmt->execute(array(":email_id"=>$email));
			$userRow=$stmt->fetch(PDO::FETCH_ASSOC);
			
			if($stmt->rowCount() == 1)
			{
				if($userRow['userStatus']=="Y")
				{
					if($userRow['userPass']==md5($upass))
					{
						$_SESSION['userSession'] = $userRow['userID'];
						return true;
					   
					}
					else
					{
						header("Location: login.php?error");
						exit;
					}
				}
				else
				{
					header("Location: login.php?inactive");
					exit;
				}	
			}
			else
			{
				header("Location: login.php?error");
				exit;
			}		
		}
		catch(PDOException $ex)
		{
			echo $ex->getMessage();
		}
	}
	
	
	public function is_logged_in()
	{
		if(isset($_SESSION['userSession']))
		{
			return true;
		}
	}
	

	public function redirect($url)
	{
		header("Location: $url");
	}
	
	public function logout()
	{
		session_destroy();
		$_SESSION['userSession'] = false;
	}
	
	function send_mail($email,$message,$subject)
	{						
		require_once('PHP mailer/class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->IsSMTP(); 
		$mail->SMTPDebug  = 0;                     
		$mail->SMTPAuth   = true;                  
		$mail->SMTPSecure = "ssl";                 
		$mail->Host       = "smtp.gmail.com";      
		$mail->Port       = 465;             
		$mail->AddAddress($email);
		$mail->Username="your_gmail_id_here@gmail.com";  
		$mail->Password="your_gmail_password_here";            
		$mail->SetFrom('your_gmail_id_here@gmail.com','Coding Cage');
		$mail->AddReplyTo("your_gmail_id_here@gmail.com","Coding Cage");
		$mail->Subject    = $subject;
		$mail->MsgHTML($message);
		$mail->Send();
	}	
	public function isAdmin()
	{
		try
		{
		//load the class
require_once '../conf.php';
$db = new BTTNS;
//get the database details
$conn_host = $db->host;
$conn_database = $db->database;
$conn_domain = $db->domain;
$conn_username = $db->username;
$conn_password = $db->password;
//connect to db
$conn = new PDO("mysql:host=$conn_host;dbname=$conn_database;charset=utf8mb4", $conn_username, $conn_password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = $conn->query("SELECT isAdmin FROM tbl_users WHERE userID='1'");
$userRow =  $sql->fetch();

				if($userRow['isAdmin']=="Y")
				{
					return true;
				}	
				else
				{
					return false;
				}
		}
		catch(PDOException $ex)
		{
			echo $ex->getMessage();
		}
	}
	

public function reg_user_count()
{
	$db = new BTTNS;
//get the database details
$conn_host = $db->host;
$conn_database = $db->database;
$conn_domain = $db->domain;
$conn_username = $db->username;
$conn_password = $db->password;
//connect to db
$conn = new PDO("mysql:host=$conn_host;dbname=$conn_database;charset=utf8mb4", $conn_username, $conn_password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = $conn->query("SELECT COUNT(userID) AS total_users FROM tbl_users");
$userRow =  $sql->fetch();
return $userRow['total_users'];
}
public function new_message_count()
{
	$db = new BTTNS;
//get the database details
$conn_host = $db->host;
$conn_database = $db->database;
$conn_domain = $db->domain;
$conn_username = $db->username;
$conn_password = $db->password;
//connect to db
$conn = new PDO("mysql:host=$conn_host;dbname=$conn_database;charset=utf8mb4", $conn_username, $conn_password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = $conn->query("SELECT COUNT(msg_id) AS total_msg FROM tbl_messages");
$userRow =  $sql->fetch();
return $userRow['total_msg'];
}
}
?>