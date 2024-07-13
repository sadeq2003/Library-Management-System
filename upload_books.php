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
                    <h3 id="heading">Upload Books</Details></h3>
                        
                        <div id ="center">

                        <?php
                            if(isset($_POST["submit"]))
                            {
                                if(isset($_FILES["efile"]) && $_FILES["efile"]["error"] == UPLOAD_ERR_OK) {
                                $target_dir = "upload/";
                                $target_file = $target_dir.basename($_FILES["efile"]["name"]);
                                if(move_uploaded_file($_FILES["efile"]["tmp_name"], $target_file))
                                {
                                    $sql = "insert into book (BTITLE,KEYWORDS,FILE) values ('{$_POST["bname"]}','{$_POST["keys"]}','{$target_file}')";
                                    $db->query($sql);
                                    echo "<p class = 'success'>Book Uploaded Success</p>";
                                }
                                else
                                {
                                    echo "<p class = 'error'>Error In Uplaod</p>";
                                }
                            }
                        }


                        ?>
                            <form action ="<?php echo $_SERVER["PHP_SELF"];?>" method="post" enctype="multipart/form-data">
                                <lable>Book Title</lable>
                                <input type ="text" name="bname"required>
                                <label>Keyword</label>
                                <textarea name ="keys" required></textarea>
                                <lable>Upload File</lable>
                                <input type = "file" name ="efile" required>
                                <button type ="submit" name ="submit">Upload Book</button>
                        </form>
                        </div>
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