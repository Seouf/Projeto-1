<?php
include_once("../Classes/Cities.php");
include_once("../Classes/Database.php");
include_once("../Classes/Login.php");

try {
    $db = new Database("localhost", "projetotour", "root", "");
} catch (PDOException $e) {
    echo "Failed to connect to Database";
}
if (!User::isLoggedIn()){
    header('Location: login.php');
    exit();
}
$id=$_GET['id]'];
$execute=count($_GET);
$city= City::getCityById($db,$id);
?>