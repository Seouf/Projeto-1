<!DOCTYPE html>
<?php
session_start();
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

$sortOrder = 'ASC';
if (isset($_POST['sort_order'])) {
    $sortOrder = $_POST['sort_order'];

    setcookie('sort_order', $sortOrder, [
        'expires' => time() +(86400),
        'path' => '/',
        'SameSite' => 'Lax',
    ]);

} elseif (isset($_COOKIE['sort_order'])) {
    $sortOrder = $_COOKIE['sort_order'];
}

$countries = Country::getAllCountries($db);
$execute = count($_GET);
?>
<html>
    <head>
        <title>Projeto Tour</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <?php include_once("../includes/navbar.php"); ?>
        <div id="main-content">
            <div id="side-bar">
                <div id="order-selectdiv">
                    <form method="POST" action="">
                        <label for="sort_order">Sort Order:</label>
                        <select name="sort_order" id="sort_order" onchange="this.form.submit()"> <!-- https://stackoverflow.com/a/7231215 !-->
                            <option value="ASC" <?php if ($sortOrder === 'ASC') echo 'selected'; ?>>Ascending</option>
                            <option value="DESC" <?php if ($sortOrder === 'DESC') echo 'selected'; ?>>Descending</option>
                        </select>
                        <noscript><input type="submit" value="Submit"></noscript> <!-- https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/noscript !-->
                    </form>
                </div>
                <?php 
                if ($execute){ ?>
                <a href = "main.php">Remove Filter </a>
                <?php } ?>
                <div id=countrylistdiv>
                    <input type="text" name="filtro" id="filtro" placeholder= "Filter..." />
                    <ul id="country-list">
                    <?php foreach ($countries as $country){ ?>
                    <li><a href="main.php?id=<?= $country->country_id ?>"><?= $country->country_name ?></a></li>
                    <?php } ?>
                    </ul>
                </div>
            </div>
            <div id="content">
                <?php

                if ($execute && isset($_GET['id'])) {
                    $countryId = $_GET['id'];
                    $cities = City::getFilterCities($db, $countryId,$sortOrder);
                } else {
                    $cities = City::getAllCities($db,$sortOrder);
                }

                foreach ($cities as $city) { ?>
                    <div class = 'cities'>
                        <div class='textcontainer'>
                            <h2> <a href='city.php?id=<?= $city->city_id ?>'> <?= $city->city_name ?> </a></h2>
                            <p>Country: <?= City::getCountryName($db,$city) ?> </p>
                            <p>Latitude: <?= $city->latitude ?> </p>
                            <p>Longitude: <?= $city->longitude ?> </p>
                            <p>Rating: <span class="rating"> <?= City::getRatingById($db,$city) ?> </span></p>
                        </div>
                        <div class=imagediv><img class="thumbnail" src=<?= City::getThumbnailById($db,$city) ?> width="600" height="300"/> 
                        </div> <br />   
                    </div>
                    <br />
                <?php } ?>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
</html>


