<?php
Class Image {
    public $image_id;
    public $city_id;
    public $url;

    public function __construct($image_id,$city_id,$url)
    {
         $this->image_id = $image_id;
         $this->city_id = $city_id;
         $this->url = $url;
 
    }

    public static function getImageslByCity($db,$city)
    {
        $sql = "SELECT * FROM city_images JOIN cities ON city_images.city_id = cities.city_id WHERE cities.city_id = :city_id";
        $query = $db->instance->prepare($sql);
        $query->bindParam(':city_id', $city->city_id, PDO::PARAM_INT);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        return Image::Array($result);
    }

    public static function parse($image)
    {
        return new Image(
            $image["image_id"]?? null,
            $image["city_id"]?? null,
            $image["url"]?? null,
        );
    }

    public static function array($images)
    {
        $result = [];

        foreach ($images as $image) {
            array_push($result, Image::parse($image));
        }
        return $result;
    }
}