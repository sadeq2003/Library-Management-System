<?php
session_start();
include "database.php";


if(!isset($_SESSION["ID"])){
    header("location: ulogin.php");
}
?>


<!DOCTYPE html>
<html>
    <head>
        <title>Library Management</title>
        <link rel ="stylesheet" type="text/css" href="css/style.css">
        <body>
            <div id = "container">
                <div id = "header">
                    <h1>E-Library Management System</h1>
                </div>
                <div id = "wrapper">
                    <h3 id="heading">Welcome <?php echo $_SESSION["NAME"];?> </h3>
                    
                   
                        </div>
                <div id = "navi">
                    <?php 
                        include "usersideBar.php"
                        ?>
                </div>
                <div id = "footer">
                    <p>Copyright &copy; Library Management 2023</p>
                </div>
            </div>
        </body>
    </head>
</html>