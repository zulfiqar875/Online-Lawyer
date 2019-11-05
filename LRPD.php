<?php
    $host ="localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "online lawyer";
        
    $conn = new mysqli($host,$dbusername,$dbpassword,$dbname);

    $ret = mysqli_query($conn,"SELECT * FROM lawyerreg");
    echo "<table border='1'>";
        echo "<tr>";
            echo "<th> Lawyer Name </th>";
            echo "<th> User Name </th>";
            echo "<th> User NIC </th>";
            echo "<th> Case Type </th>";
            echo "<th> case Detail </th>";
           

            while($row=mysqli_fetch_array($ret))
            {
                echo "<tr>";
                // echo "<td height: auto>";
                    echo "<td>" .$row ['FirstName']. "</td>";
                    echo "<td>" .$row ['Username']. "</td>";
                    echo "<td>" .$row ['CNICNO']. "</td>";
                    echo "<td>" .$row ['Email']. "</td>";
                    echo "<td>" .$row ['Organization']. "</td>";
                   
                // echo "</td>";
                echo "</tr>";
            }
        echo "</tr>";
    echo "</table>";
    $conn->close();
?>