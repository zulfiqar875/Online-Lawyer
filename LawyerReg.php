<?php
  
    $first      = $_POST['first'];
    $last       = $_POST['last'];
    $gender     = $_POST['gender'];
    $cnic       = $_POST['cnic'];
    $ntn        = $_POST['ntn'];
    $username   = $_POST['username'];
    $password   = $_POST['password'];
    $cpassword  = $_POST['confirmpassword'];
    $organizer  = $_POST['org'];
    $email      = $_POST['email'];
    $cemail     = $_POST['confirmemail'];
    $mobile     = $_POST['mobile'];
    $landline   = $_POST['landline'];
    $country    = $_POST['country'];
    $province   = $_POST['province'];
    $city       = $_POST['city'];
    $question   = $_POST['squestion'];
    $answer     = $_POST['answer'];
    $address    = $_POST['address'];


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
        $sql = "INSERT INTO lawyerreg (FirstName, LastName, Gender, CNICNo, NTNNo, Username, Password, RetypePassword, Organization, Email, RetypeEmail, MobileNo, LandLineNo, Country, Province, City, SecurityQuestion, Answer, Address)
        VALUES ('$first','$last', '$gender', '$cnic', '$ntn', '$username', '$password', '$cpassword', '$organizer', '$email', '$cemail', '$mobile', '$landline', '$country', '$province', '$city', '$question', '$answer', '$address')";
        
        $sql = "INSERT INTO lawyerdet (LawyerName, LastName, Gender, CNIC, Area)
        VALUES ('$first','$last', '$gender', '$cnic', '$city')";

            if ($conn->query($sql))
            {   
                echo "<script> window.location.assign('Welcome.html'); </script>";                                    
            }
            else
            {
                
                echo "Error Inserting record Witch".mysqli_connect_error(); 
                
            }
        $conn->close();
    }

       
      
?>