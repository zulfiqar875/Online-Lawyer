<?php

  $yourname=$_POST['yourname'];
  $username=$_POST['username'];
  $ages=$_POST['ages'];
  $genders=$_POST['genders'];
  $cont=$_POST['cont'];
  $cnic=$_POST['cnic'];
  $emails=$_POST['emails'];
  $addresses=$_POST['addresses'];
  $passwords=$_POST['passwords'];


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
        

        $sql = "INSERT INTO a_signin (yourname, username, ages, genders, cont, cnic, emails, addresses, passwords)
        VALUES ('$yourname', '$username', '$ages', '$genders', '$cont', '$cnic', '$emails', '$addresses', '$passwords')";
                
            if ($conn->query($sql))
            {
                echo "New record is inserted successfully";
                echo "<script> window.location.assign('Welcome.html'); </script>";
                
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