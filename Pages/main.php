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
$countries = Country::getAllCountries($db);
$execute = count($_GET);
?>
<html>
    <head>
        <title>Projeto Tour</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <div id="main-content">
            <div id="side-bar">
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
                if (!$execute) { $cities = City::getAllCities($db);
                 foreach ($cities as $city) { ?>
                <div class = 'cities'>
                <div class='textcontainer'>
                <h2> <a href='city.php?id=<?= $city->city_id ?>'> <?= $city->city_name ?> </a></h2>
                <p>Country: <?= City::getCountryName($db,$city) ?> </p>
                <p>Latitude: <?= $city->latitude ?> </p>
                <p>Longitude: <?= $city->longitude ?> </p>
                <p>Rating: <span class="rating"> <?= City::getRatingById($db,$city) ?> </span></p>
                </div>
                <div class=imagediv><img class="tumbnail" src=<?= City::getTumbnailById($db,$city) ?> width="600" height="300"/> </div> 
                <br />   
                </div>
                <br />
                <?php }} else { 
                $countryId = $_GET['id'];
                $cities = City::getFilterCities($db,$countryId);
                foreach ($cities as $city) { ?>
                <div class = 'cities'>
                <div class='textcontainer'>
                <h2> <a href='city.php?id=<?= $city->city_id ?>'> <?= $city->city_name ?> </a></h2>
                <p>Country: <?= City::getCountryName($db,$city) ?> </p>
                <p>Latitude: <?= $city->latitude ?> </p>
                <p>Longitude: <?= $city->longitude ?> </p> 
                <p>Rating: <span class="rating"> <?= City::getRatingById($db,$city) ?> </span></p> </div>
                <div class=imagediv><img class="tumbnail" src=<?= City::getTumbnailById($db,$city) ?> width="600" height="300"/> </div> 
                <br /> </div> <br />
                <?php }} ?>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"
        integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script type="text/javascript">
            
            var input = document.getElementById('filtro');
            var countryList = document.getElementById('country-list');


            input.addEventListener('input', function() { //eventlistener referência do primo
                var filterValue = input.value.toLowerCase();
                var countries = countryList.getElementsByTagName('li');


                for (var i = 0; i < countries.length; i++) {
                    var country = countries[i];
                    var countryName = country.textContent.toLowerCase();
                    if (countryName.includes(filterValue)) {
                        country.style.display = 'block'; //block e includes referência do primo
                    } else {
                        country.style.display = 'none';
                    }
                }
            });
            </script>
    </body>
</html>