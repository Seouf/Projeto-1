-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 12:00 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetotour`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `latitude` decimal(13,4) NOT NULL,
  `longitude` decimal(13,4) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `country_id`, `city_name`, `latitude`, `longitude`, `info`) VALUES
(2, 1, 'Rio de Janeiro', -22.9035, -43.2096, 'A city known for its stunning beaches, vibrant Carnival celebrations, and iconic landmarks like Christ the Redeemer statue.'),
(3, 1, 'Salvador', -12.9704, -38.5124, 'A city rich in Afro-Brazilian culture, offering historic sites, colorful colonial architecture, and lively festivals.'),
(4, 1, 'Florianopolis', -27.5969, -48.5495, 'A city famous for its breathtaking beaches, surfing spots, and nature trails, making it a popular destination for outdoor enthusiasts.'),
(5, 1, 'Manaus', -3.1072, -60.0261, 'A city situated in the heart of the Amazon rainforest, it offers unique opportunities to explore the Amazon River and the surrounding wildlife.'),
(6, 1, 'Sao Paulo', -23.5489, -46.6388, 'Brazil\'s largest city, renowned for its vibrant cultural scene, diverse cuisine, and bustling nightlife.'),
(7, 3, 'Sochi', 43.6000, 39.7167, 'A resort city on the Black Sea coast, known for its beautiful beaches, skiing opportunities in the nearby Caucasus Mountains, and the host city of the 2014 Winter Olympics.'),
(8, 3, 'St. Petersburg', 59.9339, 30.3061, 'A cultural gem with its magnificent palaces, world-class museums such as the Hermitage, and grandeur of the historic city center.'),
(9, 3, 'Yekaterinburg', 56.7858, 60.5841, 'A city which offers a mix of history and modernity, with attractions like the Church on the Blood and the vibrant city center.'),
(10, 3, 'Moscow', 55.7508, 37.6172, 'The capital city showcasing impressive landmarks like the Red Square, St. Basil\'s Cathedral, and the Kremlin, along with renowned museums and vibrant nightlife.'),
(11, 3, 'Nizhny Novgorod', 40.0000, 32.0000, 'A city known for its historic fortresses, charming old town, and stunning views from the Kremlin.'),
(12, 4, 'New York', 40.6643, -73.9385, 'A bustling metropolis with iconic sights such as Times Square, Central Park, Statue of Liberty, and world-class museums, theaters, and restaurants.'),
(13, 4, 'San Francisco', 37.7272, -123.0320, 'Famous for the Golden Gate Bridge, Alcatraz Island, diverse neighborhoods, and its bohemian culture.'),
(14, 4, 'Las Vegas', 36.2277, -115.2640, 'Known for its dazzling entertainment, luxurious resorts, vibrant nightlife, and casinos that line the iconic Las Vegas Strip.'),
(15, 4, 'Miami', 25.7751, -80.2105, 'A tropical paradise offering beautiful beaches, vibrant nightlife, trendy art districts like Wynwood, and a diverse culinary scene.'),
(16, 4, 'Orlando', 28.4159, -81.2988, 'Home to numerous theme parks, including Walt Disney World, Universal Orlando Resort, and SeaWorld, making it a favorite destination for families.'),
(17, 7, 'Cancun', 21.1743, -86.8466, 'Famous for its pristine white-sand beaches, crystal-clear turquoise waters, and vibrant nightlife.'),
(18, 7, 'Mexico City', 19.4978, -99.1269, 'A bustling capital with rich history, stunning architecture, vibrant markets, and world-class museums like the National Museum of Anthropology.'),
(19, 7, 'Oaxaca de Juarez', 17.0669, -96.7203, 'Known for its colonial architecture, colorful streets, traditional cuisine, and indigenous culture.'),
(20, 7, 'Veracruz', -6.0442, -35.4283, 'A port city offering beautiful beaches, historic landmarks, and a lively atmosphere with music and dance.'),
(21, 7, 'Taxco de Alarcon', 18.5564, -99.6050, 'A picturesque town renowned for its silver mining heritage, cobbled streets, and traditional Mexican charm.'),
(22, 8, 'Beijing', 39.9035, 116.3880, 'China\'s capital city, offering a blend of ancient history and modernity with attractions like the Great Wall, Forbidden City, Temple of Heaven, and vibrant street markets.'),
(23, 8, 'Shanghai', 31.2323, 121.4690, 'A global financial hub known for its futuristic skyline, bustling waterfront promenade (the Bund), vibrant shopping districts, and a blend of modern and traditional architecture.'),
(24, 8, 'Harbin', 45.6947, 126.6320, 'Famous for its spectacular ice sculptures and the annual Ice and Snow Festival, showcasing intricate ice carvings and winter-themed activities.'),
(25, 8, 'Xi\'an', 34.1845, 108.9470, 'Home to the Terracotta Army, an awe-inspiring collection of ancient statues, and other historical sites such as the City Wall and the Giant Wild Goose Pagoda.'),
(26, 8, 'Suzhou', 31.3041, 120.5954, 'Renowned for its classical Chinese gardens, serene canals, and historic architecture, offering a glimpse into traditional Chinese culture.'),
(27, 9, 'Tokyo', 35.6894, 139.6920, 'A vibrant metropolis offering a blend of traditional and futuristic attractions, including historic temples, bustling street markets, cutting-edge technology, and diverse culinary delights.'),
(28, 9, 'Kyoto', 35.0117, 135.7680, 'Known for its beautifully preserved traditional architecture, serene Zen gardens, historic temples, and the iconic Fushimi Inari Shrine.'),
(29, 9, 'Osaka', 34.6936, 135.5020, 'A lively city famed for its vibrant street food scene, modern architecture, Universal Studios Japan, and the majestic Osaka Castle.'),
(30, 9, 'Yokohama', 35.4333, 139.6330, 'Offers stunning waterfront views, a mix of modern and historic attractions like the Landmark Tower, Yokohama Chinatown, and vibrant shopping districts.'),
(31, 9, 'Hiroshima', 35.6894, 139.6920, 'A city with a profound historical significance, home to the Peace Memorial Park and Museum, as well as the iconic Itsukushima Shrine on Miyajima Island.'),
(32, 10, 'Ottawa', 45.4208, -75.6900, 'The capital city known for its impressive parliament buildings, cultural festivals, picturesque Rideau Canal, and numerous national museums.'),
(33, 10, 'Montreal', -22.9035, -43.2096, 'A vibrant and multicultural city offering a blend of European charm and North American energy, known for its historic architecture, vibrant festivals, and world-class cuisine.'),
(34, 10, 'Quebec', 46.8127, -71.2199, 'Rich in history and French heritage, with a stunning old town (Vieux-Québec), cobblestone streets, and iconic attractions like the Château Frontenac.'),
(35, 10, 'Vancouver', 49.3196, -123.0680, 'Surrounded by breathtaking natural beauty, this coastal city offers a vibrant downtown, Stanley Park, diverse neighborhoods, and easy access to outdoor activities.'),
(36, 10, 'Toronto', 43.7166, -79.3407, 'Canada\'s largest city, boasting iconic landmarks like the CN Tower, diverse neighborhoods, world-class museums, and a thriving arts and entertainment scene.'),
(37, 11, 'Biarritz', 43.4806, -1.5667, 'A popular seaside resort town known for its beautiful beaches, renowned surfing spots, elegant architecture, and thalassotherapy centers.'),
(38, 11, 'Lyon', 45.7589, 4.8414, 'Renowned for its gastronomy, historic old town (Vieux Lyon), and impressive Renaissance architecture, with the Basilica of Notre-Dame de Fourvière being a highlight.'),
(39, 11, 'Paris', 48.8032, 2.3511, 'The \"City of Lights\" captivates with its iconic landmarks like the Eiffel Tower, Louvre Museum, Notre-Dame Cathedral, charming neighborhoods, and artistic allure.'),
(40, 11, 'Carcassonne', 43.2119, 2.3532, 'A medieval fortress city with well-preserved ramparts, cobbled streets, and a fairytale-like atmosphere that transports visitors back in time.'),
(41, 11, 'Nantes', 47.2188, -1.5536, 'Offers a unique blend of history and modernity, with attractions like the medieval Château des Ducs de Bretagne, Les Machines de l\'île, and vibrant cultural scene.'),
(42, 12, 'Madrid', 40.4167, -3.7032, 'The vibrant capital known for its world-class museums like the Prado, stunning architecture, bustling markets, and lively nightlife.'),
(43, 12, 'Barcelona', 41.3902, 2.1540, 'Famed for its unique architecture, including the works of Antoni Gaudí like the Sagrada Família and Park Güell, along with beautiful beaches and a vibrant food scene.'),
(44, 12, 'Seville', 37.4195, -5.8945, 'A city of flamenco, bullfighting, and stunning Moorish architecture, featuring the grand Alcázar palace, Seville Cathedral, and the iconic Plaza de España.'),
(45, 12, 'Malaga', 36.7196, -4.4200, 'Known for its sunny Mediterranean beaches, rich history, vibrant cultural scene, and being the birthplace of Pablo Picasso.'),
(46, 12, 'Valencia', 39.4702, -0.3768, 'Combining modern architecture (City of Arts and Sciences) with a historic old town, beautiful beaches, and a famous culinary specialty, paella.'),
(47, 13, 'Rome', 41.8905, 12.4942, 'Rome, the eternal city, is a treasure trove of history, culture, and iconic landmarks. Visitors can explore ancient ruins like the Colosseum and Roman Forum, marvel at the magnificent Vatican City and St. Peter\'s Basilica, and toss a coin into the Trevi Fountain for good luck. The city\'s vibrant atmosphere, delicious cuisine, and charming streets make it an unforgettable destination.'),
(48, 13, 'Florence', 43.7687, 11.2569, 'Known as the birthplace of the Renaissance, Florence boasts stunning architecture, world-class art galleries, and a rich cultural heritage. Visitors can admire masterpieces at the Uffizi Gallery, marvel at the iconic Duomo and Brunelleschi\'s dome, and stroll along the picturesque Ponte Vecchio. Florence\'s charming streets, delectable cuisine, and welcoming locals create a truly enchanting experience.'),
(49, 13, 'Siena', 43.3187, 11.3305, 'Siena, a medieval gem in the heart of Tuscany, captivates visitors with its well-preserved historic center and vibrant traditions. The stunning Piazza del Campo, home to the thrilling Palio horse race, is a must-visit. Siena Cathedral, with its breathtaking facade and intricate interior, leaves visitors in awe. The city\'s warm atmosphere, delicious food, and impressive architecture make it a hidden treasure.'),
(50, 13, 'Venice', 45.4343, 12.3388, 'Venice, the romantic floating city, is famous for its picturesque canals, gondolas, and charming bridges. Visitors can explore St. Mark\'s Square, visit the awe-inspiring Doge\'s Palace, and take a gondola ride along the winding waterways. Getting lost in Venice\'s narrow streets and stumbling upon hidden gems is part of the enchanting experience. Its unique beauty and romantic ambiance make it a dream destination.'),
(51, 13, 'Naples', 40.8401, 14.2516, 'Naples, a vibrant city in southern Italy, offers a fascinating mix of history, culture, and mouthwatering cuisine. The city is renowned for its ancient ruins at Pompeii and Herculaneum, as well as its proximity to the breathtaking Amalfi Coast. Visitors can savor authentic Neapolitan pizza, explore the lively streets of Spaccanapoli, and soak in the city\'s lively atmosphere. Naples provides a lively and authentic Italian experience.'),
(52, 14, 'London', 51.5072, -0.1275, 'London, the dynamic capital of the United Kingdom, is a bustling metropolis that seamlessly blends tradition with modernity. Visitors can marvel at world-famous landmarks like the Tower of London, Buckingham Palace, and the British Museum. The city offers a vibrant theater scene in the West End, diverse culinary experiences, and excellent shopping opportunities. London\'s rich history, cosmopolitan atmosphere, and cultural diversity make it a top destination.'),
(53, 14, 'Edinburgh', 55.9494, -3.1602, 'Edinburgh, Scotland\'s historic capital, exudes charm and grandeur with its medieval Old Town and elegant Georgian New Town. Visitors can explore the iconic Edinburgh Castle, walk along the Royal Mile, and hike up Arthur\'s Seat for panoramic views. The city is renowned for its festivals, including the famous Edinburgh Festival Fringe. Edinburgh\'s captivating beauty, lively atmosphere, and rich cultural heritage make it a must-visit destination.'),
(54, 14, 'Belfast', 54.5939, -5.9294, 'Belfast, the vibrant capital of Northern Ireland, offers a captivating blend of history, culture, and natural beauty. Visitors can delve into the city\'s troubled past at the Titanic Belfast museum, admire the stunning murals in the Cathedral Quarter, and explore the picturesque Giant\'s Causeway along the stunning Causeway Coastal Route. Belfast\'s friendly locals, buzzing nightlife, and thriving arts scene make it a city full of surprises.'),
(55, 14, 'Liverpool', 53.4000, -2.9830, 'Liverpool, the hometown of The Beatles, is a city steeped in music history and cultural heritage. Visitors can visit The Beatles Story museum, explore the vibrant Albert Dock area, and soak in the lively atmosphere of the Cavern Club. Liverpool also offers impressive architecture, including the iconic Liver Building, and world-class museums and galleries. Its energetic vibe, musical legacy, and friendly locals make it a unique destination.'),
(56, 14, 'Manchester', 53.4839, -2.2446, 'Manchester, a vibrant city in northern England, combines industrial heritage with a thriving arts and music scene. Visitors can explore the revitalized Salford Quays, visit the interactive Museum of Science and Industry, and catch a football match at Old Trafford or Etihad Stadium. Manchester offers a diverse culinary scene, excellent shopping opportunities, and lively nightlife. Its cultural richness, sporting passion, and warm hospitality make it a city worth exploring.'),
(57, 15, 'Berlin', 52.5186, 13.4081, 'A dynamic and cosmopolitan city offering a mix of history, art, and vibrant nightlife, with landmarks like the Brandenburg Gate and the Berlin Wall.'),
(58, 15, 'Munich', 48.1369, 11.5753, 'Famous for its Oktoberfest celebration, Bavarian charm, historic architecture, including the Nymphenburg Palace, and world-class museums.'),
(59, 15, 'Heidelberg', 49.4122, 8.7100, 'A romantic city known for its picturesque castle ruins, the historic old town, and the oldest university in Germany.'),
(60, 15, 'Nuremberg', 49.4528, 11.0778, 'Rich in history, with attractions such as the Imperial Castle, the historic old town, and the Documentation Center Nazi Party Rally Grounds.'),
(61, 15, 'Hamburg', 53.5506, 9.9933, 'A vibrant port city with a maritime atmosphere, offering attractions like the Speicherstadt, HafenCity, and a lively entertainment scene.');

-- --------------------------------------------------------

--
-- Table structure for table `city_images`
--

CREATE TABLE `city_images` (
  `image_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_images`
--

INSERT INTO `city_images` (`image_id`, `city_id`, `url`) VALUES
(1, 2, 'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6f/5f/fa.jpg'),
(2, 2, 'https://a.cdn-hotels.com/gdcs/production187/d1216/5791a1f0-c31d-11e8-9739-0242ac110006.jpg?impolicy=fcrop&w=800&h=533&q=medium'),
(3, 2, 'https://www.maladeaventuras.com/wp-content/uploads/2018/10/melhores-praias-do-rio-de-janeiro-para-criancas.jpg'),
(4, 3, 'https://rodoviariaonline.com.br/wp-content/uploads/2018/11/deseja-um-pouco-de-axe-confira-as-8-principais-praias-em-salvador.jpg'),
(5, 3, 'https://www.mapadeviajante.com.br/wp-content/uploads/2022/01/2021-Salvador-Capa-1.jpg'),
(6, 3, 'https://a.cdn-hotels.com/gdcs/production42/d500/8f83cf87-3f2a-4c7b-8a26-766b94cc5c4e.jpg?impolicy=fcrop&w=800&h=533&q=medium'),
(7, 4, 'https://magazine.zarpo.com.br/wp-content/uploads/2023/01/capa-o-que-fazer-florianopolis.jpg'),
(8, 4, 'https://www.cnnbrasil.com.br/viagemegastronomia/wp-content/uploads/sites/5/2021/10/eduardo-zmievski-IhknpZPSKnw-unsplash.jpg?w=876&h=484&crop=1'),
(9, 4, 'https://a.cdn-hotels.com/gdcs/production44/d1828/ee91a609-4551-44b9-a561-7bdabd5e8416.jpg?impolicy=fcrop&w=800&h=533&q=medium'),
(10, 5, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Praia_da_Ponta_Negra_%28Manaus%29.jpg/1200px-Praia_da_Ponta_Negra_%28Manaus%29.jpg'),
(11, 5, 'https://forumreformaurbana.org.br/wp-content/uploads/2021/08/Teatro-Amazonas-vista-aerea-MIchael-Dantas-SEC-AM.jpeg'),
(12, 5, 'https://www.manaus.am.gov.br/wp-content/uploads/2023/02/New-York-Times-poe-Manaus-em-lista-mundial-dos-melhores-destinos-turisticos-de-2023.jpg'),
(13, 6, 'https://emcasa.com/blog/wp-content/uploads/2022/05/pexels-sergio-souza-5047706-scaled-1.jpg'),
(14, 6, 'https://images.adsttc.com/media/images/5564/90f1/e58e/ced2/2f00/00a0/large_jpg/8264606991_6b14307390_h.jpg?1432654060'),
(15, 6, 'https://www.lopes.com.br/blog/wp-content/uploads/2017/01/Slide1.jpg'),
(16, 7, 'https://a.cdn-hotels.com/gdcs/production157/d1322/9314a21f-94f5-4921-8b73-22b11c89bcb8.jpg'),
(17, 7, 'https://www.proximatrip.com.br/wp-content/uploads/2020/06/640pxsochi.jpg'),
(18, 7, 'https://content.r9cdn.net/rimg/dimg/bc/3f/b2ec6360-city-51653-164a4fcf920.jpg?crop=true&width=1020&height=498'),
(19, 8, 'https://cdn.britannica.com/11/125211-050-BC30D9C7/St-Petersburg.jpg'),
(20, 8, 'https://cdnp.flypgs.com/files/Sehirler-long-tail/St_Petersburg/st-petersburg-gezi-rehberi.jpg'),
(21, 8, 'https://toursinstpetersburg.com/u/2016/10/hermitage-4.jpg'),
(22, 9, 'https://upload.wikimedia.org/wikipedia/commons/3/39/E-burg_asv2019-05_img46_view_from_VysotSky.jpg'),
(23, 9, 'https://www.flydubai.com/en/media/Yekaterinburg-1920x720_tcm8-6373.jpg'),
(24, 9, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/53/7a/62/yekaterinburg-war-memorial.jpg?w=700&h=500&s=1'),
(25, 10, 'https://www.planete-energies.com/sites/default/files/styles/1200x630/public/migrated_files/images/thumbnails/image/moscow.jpg?itok=lPt9jNWR'),
(26, 10, 'https://bookaweb.s3.eu-central-1.amazonaws.com/media/30301/Moscow-%281%29.jpg'),
(27, 10, 'https://upload.wikimedia.org/wikipedia/commons/4/43/Moscow-City_%2836211143494%29_%28crop%29.jpg'),
(28, 11, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/NN_01-09-2021_06.jpg/1200px-NN_01-09-2021_06.jpg'),
(29, 11, 'https://cdn.budgetyourtrip.com/images/photos/headerphotos/large/russia_novgorod.jpg'),
(30, 11, 'https://cf.bstatic.com/xdata/images/city/375x225/688395.jpg?k=67835189ec7294a265588d2fcd9745090dbd86763d34a5747811510698856794&o='),
(31, 12, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg/1200px-View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_%28cropped%29.jpg'),
(32, 12, 'https://www.nationsonline.org/gallery/USA/Times-Square-New-York.jpg'),
(33, 12, 'https://media.cntraveler.com/photos/63483e15ef943eff59de603a/16:9/w_3000,h_1687,c_limit/New%20York%20City_GettyImages-1347979016.jpg'),
(34, 13, 'https://www.visiteosusa.com.br/sites/default/files/styles/hero_l/public/images/hero_media_image/2016-10/Getty_591648687_Brand_City_SanFrancisco_Hero_FinalCrop.jpg?h=dd3c63f2&itok=UyHVZ5xx'),
(35, 13, 'https://blog.descubraomundo.com/wp-content/uploads/2015/08/cidade-de-sao-francisco.jpg'),
(36, 13, 'https://www.visiteosusa.com.br/sites/default/files/styles/hero_l/public/images/hero_media_image/2019-03/6ed85006e82d4020f725614134a11439.jpeg?h=a98222f4&itok=TnG5PICO'),
(37, 14, 'https://www.dicasdeviagem.com/wp-content/uploads/2020/03/las-vegas-pagina-1500x1125.jpg'),
(38, 14, 'https://www.visiteosusa.com.br/sites/default/files/styles/hero_l/public/images/hero_media_image/2016-10/PM_Strip_2014_Cromwell_Pool_Day_158323E_Web72DPI.jpg?h=3fe7712f&itok=BoLmYgdS'),
(39, 14, 'https://res.cloudinary.com/hello-tickets/image/upload/c_limit,f_auto,q_auto,w_1300/v1659947586/gfsfmg6skx4s60h2yyfo.jpg'),
(40, 15, 'https://res.cloudinary.com/hello-tickets/image/upload/c_limit,f_auto,q_auto,w_1300/v1658201693/bvifyrrbhdrejqgu7p4b.jpg'),
(41, 15, 'https://a.cdn-hotels.com/gdcs/production48/d1488/5d46fe1d-5102-4ef3-8226-c8d864e05060.jpg'),
(42, 15, 'https://www.segueviagem.com.br/wp-content/uploads/2021/11/Miami-Estados-Unidos-shutterstock_464894006.jpg'),
(43, 16, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/09/e0/eb/universal-s-islands-of.jpg?w=600&h=400&s=1'),
(44, 16, 'https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/eola-lake-lights-orlando-florida.jpg?w=1600&h=900'),
(45, 16, 'https://s2.glbimg.com/Qu5DGWd1alpaDF6Q3asajV88PWY=/0x0:2560x1707/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2022/k/1/vPozIkTUmq3bbmlznaAw/98472901-bv-disney-beginning-oct-1-2021-mickey-mouse'),
(46, 17, 'https://blogmaladeviagem.com.br/wp-content/uploads/2016/11/Blog-Mala-de-Viagem-cancun.jpg'),
(47, 17, 'https://4.bp.blogspot.com/-TJDgRxmbXzw/VJKdiJsW_YI/AAAAAAABDIA/zOaxQKqa3JM/s1600/Cancun.jpg'),
(48, 17, 'https://www.essemundoenosso.com.br/wp-content/uploads/2020/03/quantos-dias-em-cancun-01.jpg'),
(49, 18, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Mexico_City_Reforma_Street.jpg/800px-Mexico_City_Reforma_Street.jpg'),
(50, 18, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/33/f3/96/caption.jpg?w=700&h=500&s=1'),
(51, 18, 'https://i.natgeofe.com/n/6c02ad5a-977b-4f12-b9c0-02ffb0736e07/metropolitan-cathedral-zocalo-mexico-city_3x2.JPG'),
(52, 19, 'https://images.musement.com/cover/0097/14/adobestock-234717466-oaxacacitycover-jpeg_header-9613305.jpeg'),
(53, 19, 'https://www.onde-e-quando.net/site/images/illustration/oualler/mexique-oaxaca_653.jpg'),
(54, 19, 'https://www.cityexpress.com/sites/default/files/2019-08/que-hacer-en-oaxaca-2.jpg'),
(55, 20, 'https://media.istockphoto.com/id/1219454438/pt/foto/veracruz.jpg?s=612x612&w=0&k=20&c=fW6lXs0iBeXiW5NuHAvnGlcUYpYdruiTFCkaEY2ZvkE='),
(56, 20, 'https://lp-cms-production.imgix.net/2019-06/130109217_full.jpg'),
(57, 20, 'https://conchaytoro.com/content/uploads/2019/01/Puerto-de-Veracruz-CC-Eduardo-Pavon.jpg'),
(58, 21, 'https://a.travel-assets.com/findyours-php/viewfinder/images/res70/228000/228042-Guerrero.jpg'),
(59, 21, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/View_from_the_Culture_House-Taxco_de_Alarc%C3%B3n-Guerrero-Mexico.jpg/1200px-View_from_the_Culture_House-Taxco_de_Alarc%C3%B3n-Guerrero-Mexico.jpg'),
(60, 21, 'https://www.revistabuenviaje.com/conocemexico/destinos/guerrero/taxco/taxco-de-alarcon.jpg'),
(61, 22, 'https://content.r9cdn.net/rimg/dimg/62/28/22c46ab3-city-3286-164709113b2.jpg?crop=true&width=1020&height=498'),
(62, 22, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Skyline_of_Beijing_CBD_from_the_southeast_%2820210907094201%29.jpg/1200px-Skyline_of_Beijing_CBD_from_the_southeast_%2820210907094201%29.jpg'),
(63, 22, 'https://res.cloudinary.com/enchanting/q_70,f_auto,c_lfill,g_auto/exodus-web/2021/12/34505.jpg'),
(64, 23, 'https://media.audleytravel.com/-/media/images/home/north-asia-and-russia/china/letterbox-images/new-istock/istock_000051966614_panoramic_skyline_of_shanghai.jpg?q=79&w=1920&h=640'),
(65, 23, 'https://www.civitatis.com/f/china/shanghai/guia/people-square-m.jpg'),
(66, 23, 'https://images.squarespace-cdn.com/content/v1/52c0b141e4b0b87925bacd01/1492211117152-W4BAGRG6MX65R2GPN3QV/shanghai+china+eduardo+e+monica?format=1000w'),
(67, 24, 'https://cdn.britannica.com/74/95674-050-B9540269/Ice-sculptures-display-ice-festival-province-Harbin.jpg'),
(68, 24, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/1f/76/0b/20190112-090204-largejpg.jpg?w=1200&h=-1&s=1'),
(69, 24, 'https://lp-cms-production.imgix.net/image_browser/st-sophia-church-harbin-china.jpg'),
(70, 25, 'https://cdn.britannica.com/28/123328-050-DFB4EBF2/Bell-Tower-province-Shaanxi-Xian-China.jpg'),
(71, 25, 'https://cdn.getyourguide.com/img/location/540dc8b1177e9-m1409921688.jpg/68.jpg'),
(72, 25, 'https://www.qualviagem.com.br/wp-content/uploads/2017/02/iStock-180448328.jpg'),
(73, 26, 'https://theplanetd.com/images/Things-to-do-in-Suzhou-China.jpg'),
(74, 26, 'https://media.istockphoto.com/id/926478284/pt/foto/ancient-buildings-in-suzhou-china.jpg?s=612x612&w=0&k=20&c=mViKeA34OI3NpJbboZvUMPzwmDdILuV_KGrq9EHZmTg='),
(75, 26, 'https://media.istockphoto.com/id/1266768150/photo/cbd-buildings-by-the-lake.jpg?s=612x612&w=0&k=20&c=HXnAUL9SGkeUUoNgmnyBeEr57O-TyyQxMilznEpUViY='),
(76, 27, 'https://coisasdojapao.com/wp-content/uploads/2017/03/Tokyo-Main-Image.jpg'),
(77, 27, 'https://www.gotokyo.org/en/plan/tokyo-outline/images/main.jpg'),
(78, 27, 'https://blog.japanwondertravel.com/wp-content/uploads/2022/03/manuel-velasquez-ssfp9okORYs-unsplash.jpg'),
(79, 28, 'https://imgmd.net/images/v1/guia/1684252/kyoto-japao-198-c.jpg'),
(80, 28, 'https://content.r9cdn.net/rimg/dimg/38/93/de70f3b4-city-20339-551a6f73.jpg?crop=true&width=1020&height=498'),
(81, 28, 'https://q5s9m2q9.rocketcdn.me/wp-content/uploads/kyoto-japao-1-1024x682.jpg'),
(82, 29, 'https://content.r9cdn.net/rimg/dimg/45/5f/5788029f-city-25901-16737226b47.jpg?width=1366&height=768&xhint=1747&yhint=789&crop=true'),
(83, 29, 'https://www.segurospromo.com.br/blog/wp-content/uploads/2020/11/osaka-japao-onde-fica.jpg'),
(84, 29, 'https://img.itinari.com/pages/images/original/0afe2310-ecf1-42ae-ba94-c6d9276d858b-istock-522473665.jpg?ch=DPR&dpr=2.625&w=1600&s=43a44f534ff621b768e852f9f2c8cf3e'),
(85, 30, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/12-4u1.jpg'),
(86, 30, 'https://4.bp.blogspot.com/-saUq5RaOJKo/UTYaFeS52PI/AAAAAAAAw80/_T0bgRXT5-Q/s1600/Yokohama-Japao.jpg'),
(87, 30, 'https://viagemegastronomia.cnnbrasil.com.br/wp-content/uploads/sites/5/2020/09/Monte-Fuji.jpg'),
(88, 31, 'https://a.cdn-hotels.com/gdcs/production45/d1600/90f3e82b-4a9c-495b-9a53-b6bcb90cdfd6.jpg?impolicy=fcrop&w=800&h=533&q=medium'),
(89, 31, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/gettyimages-483133222.jpeg?quality=90&strip=info&w=1024&resize=1200,800'),
(90, 31, 'https://www.japaoemfoco.com/wp-content/uploads/2017/10/Lugares-para-visitar-em-Hiroshima.jpg'),
(91, 32, 'https://p5m2q7z5.stackpathcdn.com/wp-content/uploads/2016/05/Ottawa.jpg'),
(92, 32, 'https://p5m2q7z5.stackpathcdn.com/wp-content/uploads/2016/06/Ottawa2-1.jpg'),
(93, 32, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/cf/57/e4/rideau-canal-skateway.jpg?w=700&h=500&s=1'),
(94, 33, 'https://blog.descubraomundo.com/wp-content/uploads/2017/07/montreal-canada.jpg'),
(95, 33, 'https://p5m2q7z5.stackpathcdn.com/wp-content/uploads/2017/03/Notre-Dame-Montreal.jpg'),
(96, 33, 'https://www.worldatlas.com/upload/06/df/e8/shutterstock-1839500569.jpg'),
(97, 34, 'https://a.travel-assets.com/findyours-php/viewfinder/images/res70/48000/48987-Quebec-City.jpg'),
(98, 34, 'https://gd-canada.sfo2.digitaloceanspaces.com/2016/04/old-quebec.jpg'),
(99, 34, 'https://vocenaneve.com.br/wp-content/uploads/2022/06/chateau-fontenac-quebec.jpg'),
(100, 35, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2011/10/35946362310_485e225e96_k.jpg'),
(101, 35, 'https://p5m2q7z5.stackpathcdn.com/wp-content/uploads/2019/09/Melhores-regioes-de-Vancouver.jpg'),
(102, 35, 'https://elquarto.com/blog/wp-content/uploads/2023/01/Vancouver.jpg'),
(103, 36, 'https://www.buenasdicas.com/wp-content/uploads/2019/01/pontos-turisticos-toronto-turismo-dicas-letreiro.jpg'),
(104, 36, 'https://www.viajanet.com.br/blog/wp-content/uploads/2017/11/Vista-da-cidade-de-Toronto.jpg'),
(105, 36, 'https://wp.growproexperience.com/wp-content/uploads/2022/07/Vivir-en-toronto.jpg'),
(106, 37, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/3b/f5/4c/photo0jpg.jpg?w=600&h=400&s=1'),
(107, 37, 'https://img.itinari.com/pages/images/original/7228368a-497c-4cf4-a0b1-b20e0b5b9979-a66ad8b9-b3ed-47b0-8dbe-6d9207446034-istock-1055764342-2.jpg?ch=DPR&dpr=2.625&w=1200&h=800&s=9468d071fa4ef1393ed9c9fa32bc7491'),
(108, 37, 'https://turismo.eurodicas.com.br/wp-content/uploads/2018/12/biarritz-1.jpg'),
(109, 38, 'https://f7j8i5n9.stackpathcdn.com/wp-content/uploads/2015/10/Vista-panor%C3%A2mica-de-Lyon-968x680.jpg'),
(110, 38, 'https://bloggiramundo.com/wp-content/uploads/2018/02/lyon-42.jpg'),
(111, 38, 'https://neve-api.neve.com.br/wp-content/uploads/2021/02/Group-0-_DSC0994__DSC1006-13-images.jpg'),
(112, 39, 'https://www.segueviagem.com.br/wp-content/uploads/2016/08/Paris-Franca-shutterstock_1829492048.jpg'),
(113, 39, 'https://blog.123milhas.com/wp-content/uploads/2019/10/97o-ROTEIRO-PARIS-1920x1077-1.jpg'),
(114, 39, 'https://wordpress-network.prod.aws.skyscnr.com/wp-content/uploads/2018/05/pari_158858223.jpg'),
(115, 40, 'https://f7j8i5n9.stackpathcdn.com/wp-content/uploads/2016/07/carcassonne-francCCA7a.jpg'),
(116, 40, 'https://gallasdisperati.com.br/wp-content/uploads/2020/11/carcassonne-2-1024x659.jpg'),
(117, 40, 'https://www.guiadasemana.com.br/contentFiles/image/opt_w840h0/anna-thereza/carcassonne-1.jpg'),
(118, 41, 'https://content.r9cdn.net/rimg/dimg/4d/94/b37a33af-city-27584-164dce7c2fd.jpg?crop=true&width=1020&height=498'),
(119, 41, 'https://turismo.eurodicas.com.br/wp-content/uploads/2019/06/nantes-na-franca.jpg'),
(120, 41, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/f7/3a/nantes.jpg?w=700&h=500&s=1'),
(121, 42, 'https://www.passagenspromo.com.br/blog/wp-content/uploads/2019/04/pontos-turisticos-em-madrid.jpg'),
(122, 42, 'https://viva-mundo.com/sites/default/files/inline-images/Puerta%20del%20Sol.jpg'),
(123, 42, 'https://viva-mundo.com/sites/default/files/inline-images/Plaza%20Mayor.jpg'),
(124, 43, 'https://www.segurospromo.com.br/blog/wp-content/uploads/2016/12/turismo-em-barcelona-veja-o-que-voce-precisa-conhecer-e1483095739197.jpeg'),
(125, 43, 'https://www.spain.info/.content/imagenes/cabeceras-grandes/cataluna/park-guell-barcelona-s-305364611.jpg'),
(126, 43, 'https://fotografias.larazon.es/clipping/cmsimages02/2022/04/29/61DBA253-2236-4B8A-BA70-B3ABB495819A/98.jpg?crop=1200,675,x0,y60&width=1900&height=1069&optimize=low&format=webply'),
(127, 44, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/sevilla-espanha.jpeg'),
(128, 44, 'https://vamosporai.com/wp-content/uploads/2021/01/Vista-de-Sevilha-da-Eurostar.jpg'),
(129, 44, 'https://i1.wp.com/blog.clubecandeias.com/wp-content/uploads/2018/07/melhor-roteiro-de-sevilha-na-espanha.jpg?w=680'),
(130, 45, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/thinkstockphotos-175623105.jpeg'),
(131, 45, 'https://m7g2b8q3.stackpathcdn.com/wp-content/uploads/2017/12/malaga-espanha-vista.jpg'),
(132, 45, 'https://dicasbarcelona.com.br/wp-content/uploads/2017/12/malaga-espanha.jpg'),
(133, 46, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/03-42.jpg'),
(134, 46, 'https://www.viajantecomum.com/wp-content/uploads/2016/04/valencia-espanha.jpg'),
(135, 46, 'https://m7g2b8q3.stackpathcdn.com/wp-content/uploads/2020/10/Valencia-Vista.jpeg'),
(136, 47, 'https://www.guiadasemana.com.br/contentFiles/image/opt_w1280h960/2019/05/FEA/63743_shutterstock-147643964-coliseu.jpg'),
(137, 47, 'https://h8f7z4t2.stackpathcdn.com/wp-content/uploads/2015/08/vista-panoramica-roma-italia.jpeg'),
(138, 47, 'https://italianismo.com.br/wp-content/uploads/2018/08/FONTANA.png'),
(139, 48, 'https://turismoetc.com.br/wp-content/uploads/2020/02/florence-cityscape-panorama-NXK2QS4.jpg'),
(140, 48, 'https://images.squarespace-cdn.com/content/v1/52c0b141e4b0b87925bacd01/1527197417968-TH4P418QFN1DM827CMN8/fazer+floren%C3%A7a+roteiro'),
(141, 48, 'https://passeioseroteiros.com.br/wp-content/uploads/2016/02/floren%C3%A7a02.jpg'),
(142, 49, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/siena-1024x632.jpeg'),
(143, 49, 'https://media.istockphoto.com/id/498403041/pt/foto/vista-a%C3%A9rea-de-siena.jpg?s=612x612&w=0&k=20&c=KbtYPA7AEEPWQ5zIeyGE-_0kbi-pWw7zYv_1gNIoGNU='),
(144, 49, 'https://www.maladeaventuras.com/wp-content/uploads/2020/03/siena-italia-destaque.jpg'),
(145, 50, 'https://www.passagenspromo.com.br/blog/wp-content/uploads/2020/05/o-que-fazer-em-veneza-capa.jpg'),
(146, 50, 'https://www.maladeaventuras.com/wp-content/uploads/2019/07/o-que-fazer-em-veneza-gondola-750x400.jpg'),
(147, 50, 'https://guiaviajarmelhor.com.br/wp-content/uploads/2021/09/catracas-em-veneza-1.jpg'),
(148, 51, 'https://d2y4c6g7.stackpathcdn.com/wp-content/uploads/2018/09/naples-florida-1024x685.jpg'),
(149, 51, 'https://c8y3s8d4.stackpathcdn.com/wp-content/uploads/2016/09/cidade-naples-florida.jpg'),
(150, 51, 'https://d2y4c6g7.stackpathcdn.com/wp-content/uploads/2018/09/compras-naples-florida.jpg'),
(151, 52, 'https://turismo.eurodicas.com.br/wp-content/uploads/2023/01/o-que-fazer-em-londres.jpg'),
(152, 52, 'https://turismo.eurodicas.com.br/wp-content/uploads/2022/11/pontos-turisticos-de-londres-1.jpeg'),
(153, 52, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/10/londres-big-ben.jpeg?quality=90&strip=info&w=925&w=636'),
(154, 53, 'https://turismo.eurodicas.com.br/wp-content/uploads/2019/10/edimburgo.jpg'),
(155, 53, 'https://guiaviajarmelhor.com.br/wp-content/uploads/2015/05/Dicas-de-lugares-para-conhecer-Edimburgo-1.jpg'),
(156, 53, 'https://www.viajali.com.br/wp-content/uploads/2019/05/edimburgo-01.jpg'),
(157, 54, 'https://inglaterrabrasil.com.br/wp-content/uploads/sites/8/2022/08/belfast-1.jpg'),
(158, 54, 'https://a.travel-assets.com/findyours-php/viewfinder/images/res70/146000/146111-Belfast.jpg'),
(159, 54, 'https://q5s9m2q9.rocketcdn.me/wp-content/uploads/centro-belfast.jpg'),
(160, 55, 'https://d4u4h6j8.stackpathcdn.com/wp-content/uploads/2015/09/1-5-1024x680.jpg'),
(161, 55, 'https://eurotrip.com.br/wp-content/uploads/2020/12/liverpool-cidade-inglaterra.jpg'),
(162, 55, 'https://www.segurospromo.com.br/blog/wp-content/uploads/2020/11/cidade-de-liverpool-estatua-dos-beatles.jpg'),
(163, 56, 'https://d4u4h6j8.stackpathcdn.com/wp-content/uploads/2015/11/1-6-1024x683.jpg'),
(164, 56, 'https://www.dicasdeviagem.com/wp-content/uploads/2020/03/manchester-cidade-scaled.jpg'),
(165, 56, 'https://d4u4h6j8.stackpathcdn.com/wp-content/uploads/2015/11/Shambles-Square-manchester.jpg'),
(166, 57, 'https://i0.wp.com/turismo.eurodicas.com.br/wp-content/uploads/2022/12/pontos-turisticos-de-berlim.jpg?fit=750%2C500&ssl=1'),
(167, 57, 'https://www.buenasdicas.com/wp-content/uploads/2018/09/onde-ficar-em-berlim-mitte.jpg'),
(168, 57, 'https://a.cdn-hotels.com/gdcs/production65/d1834/10cddc29-031d-41f5-93a9-e8642a008dfc.jpg'),
(169, 58, 'https://naturam.com.br/wp-content/uploads/2018/11/pontos-turisticos-munique.jpg'),
(170, 58, 'https://sweetway.com.br/wp-content/uploads/2018/12/inclua-munique-no-seu-roteiro-de-viagem.jpg'),
(171, 58, 'https://naturam.com.br/wp-content/uploads/2018/11/munique-porque-visitar-2.jpg'),
(172, 59, 'https://www.destinomunique.com.br/wp-content/uploads/2016/04/Heidelberg-Alemanha-Vista.jpg'),
(173, 59, 'https://content.r9cdn.net/rimg/dimg/20/c5/81797e72-city-10312-1675b272f6b.jpg?crop=true&width=1020&height=498'),
(174, 59, 'https://turistaprofissional.com/wp-content/uploads/2019/05/Heidelberg-dicas.jpg'),
(175, 60, 'https://www.proximatrip.com.br/wp-content/uploads/2015/07/IMG_8747.jpg'),
(176, 60, 'https://www.segurospromo.com.br/blog/wp-content/uploads/2021/06/Nuremberg-o-que-fazer-em-1-dia.jpg'),
(177, 60, 'https://viagemeturismo.abril.com.br/wp-content/uploads/2011/09/morning-3097488_1920.jpg?quality=70&strip=info'),
(178, 61, 'https://www.viagemhamburgo.com/wp-content/uploads/2020/05/hamburgo-guia-brasileiro-passeios-guiados-viagem-alemanha-turismo-1024x677.png'),
(179, 61, 'https://segredosdeviagem.com.br/wp-content/uploads/2018/11/Hafen-Hamburg-1024x681.jpg'),
(180, 61, 'https://eurotrip.com.br/wp-content/uploads/2020/07/cidade-hamburgo-entardecer.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(1, 'Brazil'),
(3, 'Russia'),
(4, 'United States'),
(7, 'Mexico'),
(8, 'China'),
(9, 'Japan'),
(10, 'Canada'),
(11, 'France'),
(12, 'Spain'),
(13, 'Italy'),
(14, 'United Kingdom'),
(15, 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `city_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`city_id`, `rating`) VALUES
(2, 4),
(3, 4),
(4, 4),
(5, 3),
(6, 4),
(7, 4),
(8, 5),
(9, 3),
(10, 5),
(11, 3),
(12, 5),
(13, 4),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 3),
(21, 3),
(22, 4),
(23, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 5),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 5),
(40, 4),
(41, 4),
(42, 4),
(43, 5),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 5),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password_digest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_digest`) VALUES
(1, 'user1', '$2y$12$msBsd1f2Lw6irkIhkMWGHeiXNwUsUvB65MU2n0WUebiJGEJCwsidy'),
(2, 'user2', '$2y$12$3ST3zaA//aeneVkL8.8pF.CMVluox.aEMa9dB3Q0GGyihtCWbwh3a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `city_images`
--
ALTER TABLE `city_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `city_images`
--
ALTER TABLE `city_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);

--
-- Constraints for table `city_images`
--
ALTER TABLE `city_images`
  ADD CONSTRAINT `city_images_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
