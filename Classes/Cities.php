<?php
Class City
{
    public $city_id;
    public $country_id;
    public $city_name;
    public $latitude;
    public $longitude;
    public $rating;
    public $info;

    public function __construct($city_id,$country_id,$city_name,$latitude,$longitude,$rating,$info)
    {
        $this->city_id = $city_id;
        $this->country_id = $country_id;
        $this->city_name = $city_name;
        $this->latitude = $latitude;
        $this->longitude = $longitude;
        $this->rating =  $rating;
        $this->info = $info;
    }

    public static function getAllCities($db){
        $result = $db->instance->query("SELECT * FROM `cities`")->fetchAll();
        return City::array($result);
    }

    public static function parse($city)
    {
        return new City(
            $city["city_id"]?? null,
            $city["country_id"]?? null,
            $city["city_name"]?? null,
            $city["latitude"]?? null,
            $city["longitude"]?? null,
            $city["rating"]?? null,
            $city["info"]?? null
        );
    }

    public static function array($cities)
    {
        $result = [];

        foreach ($cities as $city) {
            array_push($result, City::parse($city));
        }
        return $result;
    }

    public static function getCountryName($db,$city)
    {
        $sql = "SELECT countries.country_name FROM cities JOIN countries ON cities.country_id = countries.country_id WHERE cities.city_id = :city_id;"; //primo deu uma força amem
        $query = $db->instance->prepare($sql);
        $query->bindParam(':city_id', $city->city_id, PDO::PARAM_INT);
        $query->execute();
        $cname = $query->fetch(PDO::FETCH_ASSOC);
        $cname = $cname['country_name'];
        return $cname;
    }

    public static function getFilterCities($db,$countryId) 
    {
        $sql = "SELECT * FROM cities WHERE country_id = :country_id";
        $query = $db->instance->prepare($sql);
        $query->bindParam(':country_id', $countryId, PDO::PARAM_INT);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        return City::array($result);
    }

    public static function getCityById($db,$id)
    {
        $query = $db->instance->query("SELECT * FROM `cities` WHERE `id`='$id'");
        $city = $query->fetch();
        $city=City::parse($city);
    }

    public static function getRatingById($db,$city)
    {
    $sql = "SELECT ROUND(AVG(rating),0) FROM ratings JOIN cities ON ratings.city_id = cities.city_id WHERE cities.city_id = :city_id;";
    $query = $db->instance->prepare($sql);
    $query->bindParam(':city_id', $city->city_id, PDO::PARAM_INT);
    $query->execute();
    $crate = $query->fetch(PDO::FETCH_ASSOC);
    $crate = $crate['ROUND(AVG(rating),0)'];
    return $crate;
    }

    public static function getTumbnailById($db,$city)
    {
        $sql = "SELECT city_images.url FROM city_images JOIN cities ON city_images.city_id = cities.city_id WHERE cities.city_id = :city_id LIMIT 1;";
        $query = $db->instance->prepare($sql);
        $query->bindParam(':city_id', $city->city_id, PDO::PARAM_INT);
        $query->execute();
        $cityimage = $query->fetch(PDO::FETCH_ASSOC);
        $cityimage = $cityimage['url'] ?? NULL;
        return $cityimage;
    }

    public static function getImagesById($db,$city)
    {
        $sql = "SELECT city_images.url FROM city_images JOIN cities ON city_images.city_id = cities.city_id WHERE cities.city_id = :city_id;";
        $query = $db->instance->prepare($sql);
        $query->bindParam(':city_id', $city->city_id, PDO::PARAM_INT);
        $query->execute();
        $cityimage = $query->fetch(PDO::FETCH_ASSOC);
        $cityimage = $cityimage['url'];
        return $cityimage;
    }
}
?>