<!DOCTYPE html>
<?php
include_once("../Classes/Database.php");
include_once("../Classes/Login.php");
include_once("../Classes/Cities.php");
include_once("../Classes/Countries.php");
try {
    $db = new Database("localhost", "projetotour", "root", "");
} catch (PDOException $e) {
    echo "Failed to connect to Database";
}
if (!User::isLoggedIn()){
    header('Location: login.php');
    exit();
}
$cities = City::getAllCities($db);
$countries = Country::getAllCountries($db);
$countyname = Cities::getCountryName();
//city_name
//latitude
//longitude
//country_id
//rating
?>
<html>
    <head>
        <title>Projeto Tour</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <div id="main-content">
            <div id="side-bar">
                <input type="text" name="filtro" id="filtro" placeholder= "Filtrar..." /> 
                <?php foreach ($countries as $country){ ?>
                    <ul><li><a href="main.php?id=<?= $country->country_id ?>"><?= $country->country_name ?></a></li></ul>
                    <?php } ?>
            </div>
            <div id="content">
                <?php foreach ($cities as $city){ ?>
                <div class = 'cities'>
                <h2> <a href='city.php?id=<?= $city->city_id ?>'> <?= $city->city_name ?> </a></h2>
                <p>Country: <?= $city->country_id ?> </p>
                <p>Latitude: <?= $city->latitude ?> </p>
                <p>Longitude: <?= $city->longitude ?> </p>
                <p>Rating: <span class="rating"> <?= $city->rating ?> </span></p>
                <button onclick='rateCity("<?= $city->city_id ?>upvote")'>Upvote</button>
                <button onclick='rateCity("<?= $city->city_id ?>downvote")'>Downvote</button>
                <hr/>
                </div>
                <?php } ?>
            </div>
        </div>
    </body>
</html>