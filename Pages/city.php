<!DOCTYPE html>
<?php
session_start();
include_once("../Classes/Cities.php");
include_once("../Classes/Database.php");
include_once("../Classes/Login.php");
include_once("../Classes/Images.php");

try {
    $db = new Database("localhost", "projetotour", "root", "");
} catch (PDOException $e) {
    echo "Failed to connect to Database";
}
if (!User::isLoggedIn()){
    header('Location: login.php');
    exit();
}
$id=$_GET['id'];
$execute=count($_POST);
$city= City::getCityById($db,$id);
$images= Image::getImageslByCity($db,$city);
?>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <title><?= $city->city_name ?></title>
    </head>
    <body>
    <?php include_once("../includes/navbar.php"); 
        if (!$execute) {?>
        <div class = 'cities'>
            <div class='textcontainer'>
                <h2><a href='city.php?id=<?= $city->city_id ?>'> <?= $city->city_name ?></a></h2>
                <div id= ratediv><h4>Review this city:<h4>
                    <form method='POST' Action=''>
                        <label for="review">1</label>
                        <input id="1star" name="review" type="radio" value=1> 
                        <label for="review">2</label>
                        <input id="2star" name="review" type="radio" value=2> 
                        <label for="review">3</label>
                        <input id="3star" name="review" type="radio" value=3> 
                        <label for="review">4</label>
                        <input id="4star" name="review" type="radio" value=4> 
                        <label for="review">5</label>
                        <input id="5star" name="review" type="radio" value=5>
                        <button type="submit">Send</button>
                    </form>
                </div>   
                <p><h3>Country:</h3> <?= City::getCountryName($db,$city) ?> </p>
                <p><h3>Latitude:</h3> <?= $city->latitude ?> </p>
                <p><h3>Longitude:</h3> <?= $city->longitude ?> </p>
                <p><h3 style='display:inline'>Rating:</h3> <span class="rating" style='display:inline'> <?= City::getRatingById($db,$city) ?> </span></p>
                <p><h3>About <?= $city->city_name ?>:</h3><br /> <?= $city->info ?> </p>
            </div>
            <br />
            <div class=imagelistdiv>
            <?php foreach ($images as $image){ ?>
            <img class="imagelist" src=<?= $image->url ?>  height="250"/> 
            <?php } ?>   
            </div> <br />
            </div>
            <?php } 
            else { 
                $rating=($_POST)['review'];
                City::insertRatingById($db,$city,$rating); ?>
                <div class = 'cities'>
                <div class='textcontainer'>
                    <h2><a href='city.php?id=<?= $city->city_id ?>'> <?= $city->city_name ?></a></h2>
                    <div id = ratediv><h3>Thank you for the review</h3></div>
                    <p><h3>Country:</h3> <?= City::getCountryName($db,$city) ?> </p>
                    <p><h3>Latitude:</h3> <?= $city->latitude ?> </p>
                    <p><h3>Longitude:</h3> <?= $city->longitude ?> </p>
                    <p><h3 style='display:inline'>Rating:</h3> <span class="rating" style='display:inline'> <?= City::getRatingById($db,$city) ?> </span></p>
                    <p><h3>About <?= $city->city_name ?>:</h3><br /> <?= $city->info ?> </p>
                </div>
                <br />
                <div class=imagelistdiv>
                <?php foreach ($images as $image){ ?>
                <img class="imagelist" src=<?= $image->url ?>  height="250"/> 
                <?php } ?>   
                </div> <br />
                </div>
                <?php } ?>
    </body>
</html>