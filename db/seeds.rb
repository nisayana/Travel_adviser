# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Sightseeing.destroy_all
Location.destroy_all
Review.destroy_all
Like.destroy_all
Traveler.destroy_all


Sightseeing.reset_pk_sequence
Location.reset_pk_sequence
Review.reset_pk_sequence
Like.reset_pk_sequence
Traveler.reset_pk_sequence


eric = Traveler.create(name: "Eric", age: 23)
sylwia = Traveler.create(name: "Sylwia", age: 24)

#locations 

bur = Location.create(name: "The Republic of Buryatia", address: "Russia, The Republic Of Buryatia", description: "The republic is located in the south-central region of Siberia along the eastern shore of Lake Baikal.", image_url: "https://avatars.mds.yandex.net/get-zen_doc/1064817/pub_5d11ad8c4b447200af838b17_5d11ae58b34feb00af5e0bc8/scale_2400")
irk = Location.create(name: "Irkutsk region", address: "Russia, Irkutsk region", description: "Irkutsk region is located in southeastern Siberia in the basins of the Angara, Lena, and Nizhnyaya Tunguska Rivers.", image_url: "https://i.redd.it/3ezntqllrz221.jpg")


#sightseeings

uu = Sightseeing.create(name: "Ulan-Ude", description: "Ulan-Ude is the capital of the Republic of Buryatia, a major cultural, scientific, industrial center of Eastern Siberia. Also it is one of the centers of Buddhism in Russia.", image_url: "https://russiatrek.org/blog/wp-content/uploads/2019/01/ulan-ude-russia-from-above-5.jpg", location: bur)
tunka = Sightseeing.create(name: "Tunkinsky National Park", description: "Tunkinsky National Park is a national park located in south central Siberia, covers a mountainous region centered on the Irkut River valley that continues from the rift valley of Lake Baikal southwest to the border of Mongolia. To the north and west of the valley is the eastern edge of the Sayan Mountains. To the east are the lower Khamar-Daban mountains.", image_url: "https://cs8.pikabu.ru/post_img/2017/01/29/4/1485665347118139495.jpg", location: bur)
baikalUU = Sightseeing.create(name: "Lake Baikal", description: "Lake Baikal is a rift lake located in southern Siberia, Russia, between Irkutsk Oblast to the northwest and the Buryat Republic to the southeast. Lake Baikal is the largest freshwater lake by volume in the world, containing 22–23% of the world's fresh surface water. With 23,615.39 km3 (5,670 cu mi) of fresh water, it contains more water than the North American Great Lakes combined. With a maximum depth of 1,642 m (5,387 ft), Baikal is the world's deepest lake. It is considered among the world's clearest lakes and is considered the world's oldest lake, at 25–30 million years. It is the seventh-largest lake in the world by surface area.", image_url: "https://bestmaps.ru/files/content_images/20131605144741.jpg", location: bur)
munku = Sightseeing.create(name: "Munku Sardyk", description: "is the highest peak of the Eastern Sayan Mountains. It is located at the border of Mongolia – Russia and overlooks both countries. From the top of the mountain one can see hundreds of miles away including the plains of Northern Mongolia with Lake Khovsgol and the mountain ranges of the Eastern Sayan. The Munku-Sardyk Mount ascent is of interest both to serious climbers and beginners.", image_url: "https://342031.selcdn.ru/rusplt/userfiles4/%D0%9C%D1%83%D0%BD%D0%BA%D1%834.jpg", location: bur)
shumak = Sightseeing.create(name: "Shumakskie istochniki", description: "Shumak is the “sacred” valley, located in Buryatia. Over one hundred natural mineral springs cure and purify people's health. Legend has it that Genghis Khan used to bring his army here to heal his warriors’ wounds.", image_url: "https://i1.vpoxod.ru/ckeditor/17/e2/ca/69383.jpg", location: bur)

irkCity = Sightseeing.create(name: "Irkutsk", description: "Irkutsk is the capital of Irkutsk region. Located in the south of the eponymous oblast, the city proper lies on the Angara River, a tributary of the Yenisei, about 850 kilometres (530 mi) to the south-east of Krasnoyarsk and about 520 kilometres (320 mi) north of Ulaanbaatar. The Trans-Siberian Highway and Trans-Siberian Railway connect Irkutsk to other regions in Russia and Mongolia.", image_url: "https://skyticket.com/guide/wp-content/uploads/2017/12/shutterstock_736031545-e1545355285690.jpg", location: irk)
olkhon = Sightseeing.create(name: "Olkhon Island", description: "Olkhon island is the third-largest lake island in the world. It is by far the largest island in Lake Baikal in eastern Siberia", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Olkhonsky_District_Shamanka_Rock.jpg/1920px-Olkhonsky_District_Shamanka_Rock.jpg", location: irk)
pik = Sightseeing.create(name: "Pik Cherskogo", description: "A popular destination for hiking, this meadow-covered peak offers dramatic views & water features.", image_url: "http://bgonki.ru/uploads/Blog/Baikal/vid_s_pika.jpg", location: irk)
ogoy = Sightseeing.create(name: "Ogoy Island", description: " is the largest island in the Maloe More strait of Lake Baikal. It has an elongated shape, 2.9 km (1.8 mi) in length and 0.6 km (0.37 mi) in width. It is located between the Cape Shara-Shulun on the west coast of the Olkhon Island and Kurminskiy Bay on the western shore of Lake Baikal. The island is uninhabited.", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Ogoy_island_in_winter.jpg/1920px-Ogoy_island_in_winter.jpg", location: irk)
park = Sightseeing.create(name: "Pribaykalskiy National Park", description: "Pribaikalsky National Park (also spelled Pribaykalski) covers the southwest coast of Lake Baikal in southeastern Siberia. The coastal strip includes some mountain ridges to the west as well as offshore islands such as Olkhon Island to the east. It is about 50 km southeast of the city of Irkutsk, Irkutsk Oblast. The park is managed with three other nature reserves, and is a major component of the UNESCO World Heritage Site 'Lake Baikal'. The Angara River, which is the outflow of Lake Baikal west into the Yenisei River basin, runs through the park. The park has very high levels of biodiversity and endemic species.", image_url: "https://image.freepik.com/free-photo/landscape-mountain-sunset-with-natural-breaking-ice-frozen-water-lake-baikal-siberia-russia_29505-756.jpg", location: irk)

reviewEric = Review.create(review: "Amazing place", sightseeing: olkhon, traveler: eric)
reviewSylwia = Review.create(review: "Breathtaking view", sightseeing: shumak, traveler: sylwia)

likeEric = Like.create(traveler: eric, sightseeing: olkhon)
likeSylwia = Like.create(traveler: sylwia, sightseeing: shumak)
