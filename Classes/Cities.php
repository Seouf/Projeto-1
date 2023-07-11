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
}
?>