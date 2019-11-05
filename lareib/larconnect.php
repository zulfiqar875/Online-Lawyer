<?php
  
    $username      = $_POST['username'];
    $password      = $_POST['passwords'];

    $username      = stripslashes($username);
    $password      = stripslashes($password);
    // $username      = mysql_real_escape_string($username);
    // $password      = mysql_real_escape_string($password);


    $host ="localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "online lawyer";
   
    $conn = new mysqli($host,$dbusername,$dbpassword,$dbname);
   
    
    if (mysqli_connect_error())
    {
  		echo "Failed to connect to MySQL:".mysqli_connect_error();
    }
    else
    { 
       $qurey = mysqli_query($conn, "SELECT * FROM a_signin where username = '$username' and passwords = '$password'");

       $row = mysqli_fetch_array($qurey);

       if($row['username'] == $username && $row['password'] == $passwords)
       {
           echo "Authentication Done";
           echo "<script> window.location.assign('laruserportal.html'); </script>";
       }
       else
       {
            echo "Authentication Invalid";
       }
        $conn->close();
    }

       
      
?>