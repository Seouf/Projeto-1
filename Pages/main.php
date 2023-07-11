<!DOCTYPE html>
<?php
include_once("../Classes/Database.php");
include_once("../Classes/Login.php");
include_once("../Classes/Cities.php");
if (!User::isLoggedIn()){
    header('Location: login.php');
    exit();
}
$cities = City::getAllCities($db);
//city_name
//latitude
//longitude
//country_id
//rating
?>
<html>
    <head>
        <title>Projeto Tour</title>
    </head>
    <body>
        <div id="main-content">
            <div id="side-bar">
            </div>
            <div id="content">
                <?php foreach ($cities as $city){ ?>
                <div class = "cities">
                <h2> <a href='city.php?id=<?= $city->city_id ?>'> <?= $this->city_name ?> </a></h2>
                <p>Country: <?= $this->country_id ?> </p>
                <p>Latitude: <?= $this->latitude ?> </p>
                <p>Longitude: <?= $this->longitude ?> </p>
                <p>Rating: <span class="rating"> <?= $this->rating ?> </span></p>
                <button onclick='rateCity("<?= $this->city_id ?>upvote")'>Upvote</button>
                <button onclick='rateCity("<?= $this->city_id ?>downvote")'>Downvote</button>
                <hr/>
                </div>
                <?php } ?>
            </div>
        </div>
    </body>
</html>