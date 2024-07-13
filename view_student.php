<?php
session_start();
include "database.php";


if(!isset($_SESSION["ID"])){
    header("location: alogin.php");
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
                    <h3 id="heading">View Student Details</h3>


                    <?php
                        $sql = "SELECT * FROM student";
                        $res = $db -> query($sql);
                        if($res ->num_rows>0){
                            echo "<table>
                                <tr>
                                    <th>SNO</th>
                                    <th>NAME</th>
                                    <th>EMAIL</th>
                                    <th>DEPARTMENT</th>
                                </tr>
                                
                            ";
                            $i = 0;
                            while ($row=$res -> fetch_assoc())
                            {
                                $i++;
                                echo "<tr>";
                                echo "<td>($i)</td>";
                                echo "<td>{$row["NAME"]}</td>";
                                echo "<td>{$row["EMAIL"]}</td>";
                                echo "<td>{$row["DEP"]}</td>";
                                
                            }

                            echo "</table>";

                        }
                        else
                        {
                            echo "<p class ='error'> No Student Record Found</p>";
                        }

                    ?>

                   
                        </div>
                <div id = "navi">
                    <?php 
                        include "adminBar.php"
                        ?>
                </div>
                <div id = "footer">
                    <p>Copyright &copy; Library Management 2023</p>
                </div>
            </div>
        </body>
    </head>
</html>