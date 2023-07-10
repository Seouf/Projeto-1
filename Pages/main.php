<!DOCTYPE html>
<?php
include_once("../Classes/Database.php");
include_once("../Classes/Login.php");
if (!User::isLoggedIn()){
    header('Location: login.php');
    exit();
}
?>
<html>
    <head>
        <title>Projeto Tour</title>
    </head>
    <body>
        <div id="main-content">
            <div id="navbar">
            </div>
            <div id="side-bar">
            </div>
            <div id="content">
            </div>
        </div>
    </body>
</html>