<?php
  
  $username=$_POST['username'];
  $useremail=$_POST['useremail'];
  $userpassword=$_POST['userpassword'];
  $messages=$_POST['messages'];


    $host ="localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "online lawyer";
   
    $conn = new mysqli($host,$dbusername,$dbpassword,$dbname);
   
    
    if (mysqli_connect_error())
    {
  		echo "Failed to connect to MySQL:".mysqli_connect_error();
    }
    else{

        $sql = "INSERT INTO contact (username, useremail, userpassword, messages)
        VALUES ('$username', '$useremail', '$userpassword', '$messages')";
                
            if ($conn->query($sql))
            {
                echo "New record is inserted successfully";
                // echo "<script> window.location.assign('dataretrive.php'); </script>";
                
            }
            else 
            {
                {
                    echo "Error Inserting record".mysqli_connect_error(); 
                }
            }
        $conn->close();
    }
?>