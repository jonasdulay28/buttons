<?php
if(isset($_POST['btn-upload']))
{
     $file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
     $folder="../files/";
     if(move_uploaded_file($file_loc,$folder.$file))
     {
        ?><script>alert('successfully uploaded');</script><?php
     }
     else
     {
        ?><script>alert('error while uploading file');</script><?php
     }
}

?>