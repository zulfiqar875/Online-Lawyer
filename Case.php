<?php
  
    $CID      = $_POST['CID'];

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
        $sql = "INSERT INTO casedet (UserID, UserName, UserNIC, CaseType, CaseDetail)
                SELECT CID, username, usernic, casetype , app FROM user_portal
                WHERE CID = $CID ; ";
          

            if ($conn->query($sql))
            {   
                echo "Case Will be Accepted";
                echo "<script> window.location.assign('casedet.php'); </script>";                                    
            }
            else
            {
                
                echo "Error Accepting Record Witch".mysqli_connect_error(); 
                
            }
        $conn->close();
    }

       
      
?>