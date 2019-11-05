<!DOCTYPE html>
<html lang="en">
<head>
    <title>Lawyer Registration</title>
</head>
<stYle>
    body{
        background-color: #002366;

    }
    /* --------------------------------------------------------- */

    .sidepanel{
        z-index: 1;
        left: 10px;
        top: 8px;
        border-right:  solid white;
        overflow: hidden;
        position: fixed;
        background-color: rgba(151, 148, 144, 0.8);
        width: 150px;
        padding-top: 20px;;
    }
    .sidepanel > a{
        padding: 10px;
        text-decoration:none;
        display: block;
        margin-left: 10px;
        color: goldenrod;
        font-size: 20px;

    }
    a:hover
    {
        color: rgb(246, 250, 247);
    }
    /* ---------------------------------------------------------- */
    .header{
        border: solid rgb(212, 158, 7);
        border-radius: 200px;
        background-color: rgb(128, 128, 128, .3);
        margin-left: 160px;
        height: 50px;
        padding-bottom: 30px;
        
    }
    .header > h1{
        text-align: center;
        margin-bottom: 20px;
        color: goldenrod; 
        background-color: rgb(128, 128, 128, .3);
        
    }
    /* ----------------------------------------------------------------- */
    .main{
        background-color: rgb(128, 128, 128, .3);
        margin-top: 10px;
        margin-left: 160px;
        height: auto;
        padding: 10px;
        text-align: center;
    }
    .main a
    {
        display: inline-block;
        color: orange;
        text-decoration: none;
        background-color: rgb(128, 128, 128, .3);
        padding: 10px;
        height: 20px;
        width: auto;
        text-align: center;
        font-size: 15px;
    }
    .main a:hover{
        color: white;
        background-color: rgba(255, 166, 0, 0.534);
    }
    .main a ul
    {
        list-style: none;
    }
    ul{
        display: none;
    }
    a:hover > ul{
        display: block;
    }
    main a ul li {
        color: orange;
    }
    /* ----------------------------------------------------------------------------- */

    .detail
    {
        background-color: rgb(128, 128, 128, .3);
        margin-top: 10px;
        margin-left: 160px;
        height: auto;
        padding: 10px;
        text-align: center;
    }
    .detail h2
    {
        color: orange;

    }


    /* --------------------------------------------------------------------------- */
    .Approve
    {

        margin-bottom: 20px;
    }

    /* --------------------------------------------------------------------------- */

    table
    {
        margin-left: 300px;
    }
    th
    {
        color: orange;
        font-family: geneva;
        font-size: 20px;
    }
    td
    {
        color: white;
        font-family: geneva;
        font-size: 20px;   
    }

    

</stYle>
<body>

    <div class="sidepanel">
        <a href="demo.html">Home</a>
        <a href="index.html">Practice Area</a>
        <a href="Woncase.html">Won case</a>
        <a href="Blog.html">Blog</a>
        <a href="About.html">About</a>
        <a href="Contact.html">Contact</a>
    </div>
    <!-- ----------------------------------------------------------->
    <div class="header">
        <h1>  Lawayer Name  </h1>
    </div>
    <!-- ----------------------------------------------------------->
    <div class="main">
        <a href="LRP.php">LAWYER REQUEST</a>
        <a href="casedet.php">VIEW CASES</a>
        <a href="viewuser.php">VIEW USER</a>
        <a href="finialcase.php">FINAL CASE</a>
        <a href="">USER FEEDBACK</a>
        <a href="">LAWYER FEEDBACK</a>
        <a href="LawyerLogin.html">LOGOUT</a>
    </div>
    <!------------------------------------------------------------->
    <div class="detail">
        <h2>Current Cases</h2> <br>
            <!-- <div class="Approve">
                <label for="">Enter Case ID</label>
                <input type="text" name="" id="">
                <input type="submit" value="Accept">
            </div> -->
        
        <?php
            $host ="localhost";
            $dbusername = "root";
            $dbpassword = "";
            $dbname = "online lawyer";
                
            $conn = new mysqli($host,$dbusername,$dbpassword,$dbname);

            $ret = mysqli_query($conn,"SELECT * FROM casedet");
            echo "<table border='1' margin-left: 160px>";
                echo "<tr>";
                    echo "<th> Case ID </th>";
                    echo "<th> User ID </th>";
                    echo "<th> User Name </th>";
                    echo "<th> User NIC </th>";
                    echo "<th> Case Type </th>";
                    echo "<th> Case Detail </th>";
                

                    while($row=mysqli_fetch_array($ret))
                    {
                        echo "<tr>";
                        // echo "<td height: auto>";
                            echo "<td>" .$row ['CID']. "</td>";
                            echo "<td>" .$row ['UserID']. "</td>";
                            echo "<td>" .$row ['UserName']. "</td>";
                            echo "<td>" .$row ['UserNIC']. "</td>";
                            echo "<td>" .$row ['CaseType']. "</td>";
                            echo "<td>" .$row ['CaseDetail']. "</td>";
  
                        
                        // echo "</td>";
                        echo "</tr>";
                    }
                echo "</tr>";
            echo "</table>";
            $conn->close();
        ?>
    </div>

</body>
</html>
