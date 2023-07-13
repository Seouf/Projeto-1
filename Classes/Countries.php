<?php
Class Country
{
   public $country_id;
   public $country_name;

   public function __construct($country_id,$country_name)
   {
        $this->country_id = $country_id;
        $this->country_name = $country_name;

   }

   public static function getAllCountries($db)
   {
       $result = $db->instance->query("SELECT * FROM `countries`")->fetchAll();
       return Country::array($result);
   }

   public static function parse($country)
   {
       return new Country(
           $country["country_id"]?? null,
           $country["country_name"]?? null,
       );
   }

   public static function array($countries)
   {
       $result = [];

       foreach ($countries as $country) {
           array_push($result, Country::parse($country));
       }
       return $result;
   }
}
?>
