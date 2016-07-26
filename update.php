<?php

                $hostname =  'localhost';
                $database =  'fuckOFF';
                $username =  'root';
                $password =  'ranjan12345';
                #connect to database
                $connect =  new mysqli($hostname,$username,$password,$database) or die("could not connect to database!".mysqli_error($con));
                

            
                if(isset($_POST['btn-post'])){
                    #get the title
                    $post =$_POST['post-title'];
                    #get the post
            try{
                 $connect->query("UPDATE tbl_FUCKoff SET text='$post' WHERE ID='1'");
              
            }
                catch(Exception $e) {
                echo 'Message: ' .$e->getMessage();
}    #if query went successfull then show alert Edited successfully.
                }
                 else{
                     echo "button not pressed!";
                 }
                          
    
                ?>
<!DOCTYPE html>
<html>
    <body>
 <form method="POST">
                  
                <div class="textbox"><input type="text" placeholder="Title" name="post-title"/>
     </div>
                <br/>
                    <input type='submit' class="success hollow button" name="btn-post" value="UPDATE"/>
     
                </form>
     </body>
</html>