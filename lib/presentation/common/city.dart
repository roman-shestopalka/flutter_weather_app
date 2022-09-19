class City {
  bool isSelected;
  final String cityName;
  final String country;
  late final bool isDefault;

  City(
      {required this.cityName,
      required this.country,
      required this.isDefault,
      required this.isSelected});

  //List of Cities info
  static List<City> citiesList = [
    City(
      isSelected: false,
      cityName: "Alchevsk",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Apostolove",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Bakhmut",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Berdiansk",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Bucha",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Buchach",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Ternopil",
      country: "Ukraine",
      isDefault: true,
    ),
    City(
      isSelected: false,
      cityName: "Lviv",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Kremenets",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Kiyv",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Lutsk",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Dnipro",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Rivne",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Kharkiv",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Luhansk",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Kherson",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Chortkiv",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Poltava",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Bucha",
      country: "Ukraine",
      isDefault: false,
    ),
    City(
      isSelected: false,
      cityName: "Irpin",
      country: "Ukraine",
      isDefault: false,
    ),
  ];

  //Get the selected cities
  static List<City> getSelectedCities() {
    List<City> selectedCities = City.citiesList;
    return selectedCities.where((city) => city.isSelected == true).toList();
  }

  // var cityList = {
  //   "Kiev": "Kyiv",
  //   "Kharkiv": "Kharkiv",
  //   "Dnipropetrovsk": "Dnipro",
  //   "Odesa": "Odesa"
  // };
}
/*

Dnipropetrovsk
Odesa
Donetsk
Zaporizhzhya
Lviv
Kryvyy Rih
Mykolayiv
Mariupol
Luhansk
Makiyivka
Vinnytsya
Simferopol
Sevastopol
Kherson
Poltava
Chernihiv
Cherkasy
Sumy
Horlivka
Zhytomyr
Dniprodzerzhynsk
Kirovohrad
Khmelnytskyy
Rivne
Chernivtsi
Kremenchuk
Ternopil
Ivano-Frankivsk
Lutsk
Bila Tserkva
Kramatorsk
Melitopol
Kerch
Nikopol
Slavyansk
Berdyansk
Syeverodonetsk
Alchevsk
Pavlohrad
Uzhhorod
Lysychansk
Yevpatoriya
Yenakiyive
Kamyanets-Podilsky
Kostyantynivka
Krasnyy Luch
Alexandria
Konotop
Stakhanov
Uman
Berdychiv
Shostka
Brovary
Izmayil
Artyomovsk
Mukacheve
Yalta
Drohobych
Nizhyn
Feodosiya
Sverdlovsk
Novomoskovsk
Torez
Chervonohrad
Pervomaysk
Smila
Krasnoarmeysk
Kalush
Korosten
Kovel
Rubizhne
Pryluky
Druzhkivka
Khartsyzk
Lozova
Antratsyt
Stryy
Kolomyya
Shakhtyorsk
Snizhne
Novohrad-Volynsky
Enerhodar
Izyum
Dymytrov
Bryanka
Illichivsk
Boryspil
Novovolynsk
Rovenky
ZhovtiVody
Lubny
NovaKakhovka
Fastiv
Bilhorod-Dnistrovskyy
Komsomolsk
Krasnodon
Romny
Okhtyrka
Svitlovodsk
Marhanets
Shepetivka
Ordzhonikidze
Dzerzhinsk
Dzhankoy
Pervomaysk
Myrhorod
Voznesensk
Kotovsk
Irpin
Vasylkiv
Dubno
Inhulets
Kuznetsovsk
Volodymyr-Volynskyy
Kakhovka
Yuzhnoukrayinsk
Boryslav
Yasynuvata
Zhmerynka
Avdiyivka
Chuhuyiv
Sambir
Tokmak
Boyarka
Hlukhiv
Dobropillya
Starokostyantyniv
Kirovsk
Vyshneve
Slavuta
Netishyn
Mohyliv-Podilskyy
Obukhiv
Pervomayskyy
Kupyansk
Balakliya
Synelnykove
Pereyaslav-Khmelnytskyy
Alushta
Truskavets
Krasnoperekopsk
Kirovske
Kostopil
Debaltseve
Perevalsk
Saky
Znamyanka
Ternivka
Pershotravensk
Khust
Chortkiv
Lebedyn
Zolotonosha
Bucha
Novyy Rozdil
Krasnyy Lyman
Sarny
Malyn
Khmilnyk
Bakhchysaray
Selidove
Berehove
Kaniv
Kozyatyn
Novoyavorivsk
Korostyshiv
Popasna
Vynohradiv
Haysyn
Molodohvardiysk
Krolevets
Merefa
Volnovakha
Zdolbuniv
Kreminna
Slavutych
Dokuchayivsk
Lyubotyn
Tsyurupynsk
Yuzhne
Armyansk
Vilnohirsk
Yahotyn
Sukhodilsk
Zolochiv
Bakhmach
Trostyanets
Brody
Polonne
Vyshhorod
Hadyach
Krasnohrad
Kiliya
Starobilsk
Ladyzhyn
Polohy
Amvrosiyivka
Kremenets
Henichesk
Sokal
Kurakhove
Dniprorudne
Volochysk
Nadvirna
Dolyna
Stebnyk
Volchansk
Krasyliv
Pyatykhatky
Kivsharivka
Reni
Dergachi
Vatutine
Kalynivka
Balta
Zvenyhorodka
Zuhres
Skadovsk
Svatove
Shpola
Novoukrayinka
Korsun-Shevchenkivskyy
Lutuhyne
Bilohirsk
Dolynska
Izyaslav
Bilopillya
Bohodukhiv
Pelahiyivka
Pisochyn
Skvyra
Karlivka
Orikhiv
Bilozerske
Zolote
Yunokomunarivsk
Pidhorodne
Rozdilna
Horodok
Chervonopartyzansk
Ilovaysk
Berezhany
Novohrodivka
Vuhledar
Berezan
Putyvl
Bolhrad
Bar
Svalyava
Bohuslav
Hulyaypole
Zmiyiv
Ovruch
Verkhnodniprovsk
Ochakiv
Krasnohorivka
Kivertsi
Pyryatyn
Mykolayivka
Chasiv Yar
Vilnyansk
Dunayivtsi
Apostolove
Talne
Artsyz
Novyy Buh
Tulchyn
Hayvoron
Horodok
Hola Prystan
Nosivka
Yuvileyne
Komsomolske
Zhashkiv
Taromske
Horodyshche
Vasylivka
Kamyanka-Dniprovska
Petrivske
Beryslav
Snihurivka
Radomyshl
Burshtyn
Rakhiv
Novhorod-Siverskyy
Kamyanka
Tetiyiv
Nyzhnya Krynka
Mykolayiv
Ostroh
Zelenodolsk
Vakhrusheve
Khorol
Storozhynets
Khrystynivka
Sudak
Stanychno-Luhanske
Siversk
Koryukivka
Bilyayivka
Ukrayinka
Prymorskyy
Nova Odesa
Horodnya
Kotsyubynske
Rakitnoye
Shchastya
Kaharlyk
Mykhaylivka
Zhdanivka
Berezne
Terebovlya
Vynnyky
Rozhyshche
Nova Vodolaha
Yavoriv
Zhovkva
Tarashcha
Myronivka
Bershad
Ukrayinsk
Zbarazh
Novomyrhorod
Uzyn
Svitlodarske
Soledar
Bashtanka
Mala Vyska
Teplohirsk
Barvinkove
Prymorsk
Antonivka
Mena
Hlobyne
Solonytsivka
Hnivan
Yakymivka
Komsomolskoye
Hvardiyske
Ichnya
Novoazovsk
Kotelva
Baranivka
Buchach
Borodyanka
Hostomel
Lokhvytsya
Shchors
Bobrynets
Perehinske
Rokytne
Vasylkivka
Nemyriv
Kobelyaky
Makariv
Rodynske
Kostyantynivka
Chyhyryn
Ovidiopol
Novhorodske
Bobrovytsya
Sosnivka
Novotroyitske
Zhydachiv
Yampil
Kirove
Mospyne
Chornomorske
Borzna
Pokrovske
Shcholkine
Buryn
Kamyanka-Buzka
Hrebinka
Velykodolynske
Zolochiv
Hirske
Tavriysk
Vysokyy
Borshchiv
Shyroke
Karlo-Marksove
Zymohirya
Khotyn
Illintsi
Baryshivka
Yuvileyne
Krasnohvardiyske
Oleksandrivka
Vesele
Kalanchak
Letychiv
Syeverne
Haspra
Sartana
Pomichna
Sovyetskyy
Oktyabrske
Olevsk
Kamin-Kashyrskyy
Tatarbunary
Pohrebyshche
Maryinka
Bolekhiv
Chaplynka
Zinkiv
Khodoriv
Ivankiv
Snyatyn
Chernyakhiv
Nyzhnohirskyy
Derazhnya
Lyuboml
Valky
Pokotylivka
Novodnistrovsk
Radyvyliv
Vuhlehirsk
Manevychi
Sokyryany
Novooleksiyivka
Verkhivtseve
Bilenke
Zalishchyky
Novopskov
Staryy Krym
Biletske
Velyka Dymerka
Pereshchepyne
Hresivske
Zymna Voda
Vradiyivka
Andrushivka
Velyka Lepetykha
Novyy Svit
Pustomyty
Horodenka
Lyubashivka
Tysmenytsya
Tyachiv
Uspenka
Bilozerka
Chervonyy Donets
Andriyivka
Chervona Sloboda
Kupyansk-Vuzlovyy
Hlevakha
Mezhgorye
Semenivka
Bezlyudivka
Dubrovytsya
Kodyma
Kryzhopil
Irshava
Beryozovka
Ananyiv
Monastyryshche
Reshetylivka
Smoline
Velykyy Bychkiv
Lypovets
Kozova
Pervomayskoye
Yasenivskyy
Chornobayivka
Hlyboka
Solotvyno
Vylkove
Petropavlivka
Dubove
Radekhiv
Hurzuf
Mostyska
Krasnoyilsk
Artemivsk
Novoaydar
Velyki Luchky
Novodruzhesk
Chervonozavodske
Horokhiv
Pryvillya
Velyka Znamyanka
Krasnopillya
Stryzhavka
Chop
Kozelets
Yarmolyntsi
Ilnytsya
Varva
Volodymyrets
Zastavna
Zorynsk
Tlumach
Teplodar
Volodarske
Myronivskyy
Vapnyarka
Bilovodsk
Dzerzhynskyy
Ratne
Lanivtsi
Busk
Korets
Mankivka
Lenine
Rohatyn
Kryve Ozero
Yasnohirka
Petrove
Bushtyno
Dachne
Mlyniv
Berehomet
Nerubayske
Pivdenne
Dykanka
Sakhnovshchyna
Bilozirya
Troitske
Dublyany
Manhush
Ilarionove
Rzhyshchiv
Nove
Slovyanoserbsk
Novoselytsya
Myrne
Vorozhba
Chornobay
Trostyanets
Sofiyivka
Novi Sanzhary
Kazanka
Tomakivka
Kosiv
Delyatyn
Dzerzhynsk
Lysyanka
Kirovske
Pochaiv
Ivanivka
Razdolnoye
Korolevo
Krasnokutsk
Vyshkovo
Kuybysheve
Sosnytsya
Kelmentsi
Mezhova
Russkaya Polyana
Bilky
Rava-Ruska
Klevan
Volodarsk-Volynskyy
Usatove
Hradyzk
Lanchyn
Bilokurakyne
Panteleymonivka
Ripky
Yasinya
Pidvolochysk
Molochansk
Oleksiyivo-Druzhkivka
Poninka
Tsarychanka
Stavyshche
Yaremche
Nova Praha
Bereznehuvate
Malynivka
Chernukhyne
Krasnopavlivka
Kripenskyy
Kushuhum
Holmovske
Novi Petrivtsi
Novotroyitske
Turka
Velykyy Dalnyk
Svesa
Vypasne
Novoarkhanhelsk
Volodarka
Bohorodchany
Kitsman
Borova
Chernihivka
Solone
Peremyshlyany
Semenivka
Velyka Oleksandrivka
Voronizh
Nova Zburyivka
Ulyanovka
Nova Mayachka
Vlasivka
Seredyna-Buda
Velyka Novosilka
Mala Danylivka
Kvasyliv
Teresva
Kirovske
Zboriv
Yemilchyne
Arbuzynka
Shevchenkove
Markivka
Pryazovske
Babayi
Lymanske
Panyutyne
Khorostkiv
Shyryayeve
Drabiv
Vilshany
Veselynove
Pionerske
Dibrova
Komyshany
Volodymyrivka
Komunist
Masandra
Oster
Starobesheve
Desna
Sharhorod
Teofipol
Peresichna
Piskivka
Shabo
Novovorontsovka
Perechyn
Lityn
Oleksandrivsk
Beloye
Dobryanka
Kopychyntsi
Ivanychi
Hornostayivka
Budy
Turbiv
Ladan
Vinkivtsi
Zuya
Zarichne
Viline
Savran
Teplyk
Borova
Hrebinky
Mahdalynivka
Chynadiyovo
Verkhniy Rohachyk
Voskhod
Velykyy Bereznyy
Bylbasivka
Slatyne
Dovhe
Domanivka
Holovanivsk
Vinnytski Khutory
Velyki Komyaty
Skole
Husyatyn
Artemove
Petrivka
Chervonohryhorivka
Dobrotvir
Rodakove
Sudova Vyshnya
Lozuvatka
Novhorodka
Kehychivka
Rozsoshentsi
Voronovytsya
Zhurivka
Kominternivske
Sofiyivska Borshchahivka
Chudniv
Koreyiz
Klishkivtsi
Halych
Krasne
Velyka Berezovytsya
Heorhiyivka
Morshyn
Karnaukhivka
Trebukhiv
Rozkishne
Katerynopil
Horodkivka
Chutove
Sutysky
Monastyryska
Irshansk
Nemishayeve
Nedryhayliv
Fontanka
Novodonetske
Partenit
Rudno
Kamyanka
Murovani Kurylivtsi
Tarutyne
Popilnya
Chervonoarmiyske
Staryy Krym
Lozivskyy
Molodizhne
Bratske
Vorzel
Petropavlivska Borshchahivka
Novoozerne
Opishnya
Vasyshcheve
Tomashpil
Velykyy Kuchuriv
Kosmach
Bratslav
Pechenihy
Miusynsk
Nyzhni Sirohozy
Krasnodon
Lyubymivka
Velyka Mykhaylivka
Stara Synyava
Vashkivtsi
Borivske
Hubynykha
Kulykivka
Chornomorske
Turiysk
Balky
Mala Bilozerka
Mayaky
Pobuzke
Velyki Mosty
Vodyane
Hrushovo
Velyka Bahachka
Bilohorodka
Dymer
Oleksandrivka
Kozacha Lopan
Ozerne
Ivano-Frankove
Kalyny
Bilyky
Dniprovske
Mamayivtsi
Znamyanka Druha
Bryukhovychi
Novomykolayivka
Sokilnyky
Tsuman
Broshniv-Osada
Kalynivka
Yalta
Druzhba
Vilshanka
Bilohirya
Shatsk
Nova Borova
Staryy Sambir
Pishchanka
Korop
Velyka Dobron
Serednye Vodyane
Zelenivka
Velyki Kopani
Krasni Okny
Balabyne
Chechelnyk
Lyubeshiv
Prosyana
Milove
Dymytrove
Novofedorivskyy
Shevchenkove
Rozhniv
Eskhar
Savyntsi
Hlybokyy Potik
Kyrnasivka
Fashchivka
Shchyrets
Rivne
Verkhovyna
Mishkovo-Pohorilove
Zorya
Brusyliv
Horodnytsya
Myropil
Velyka Pysarivka
Komyshuvakha
Chemerivtsi
Petrivka
Horenka
Otyniya
Lypova Dolyna
Chervonoarmiysk
Pishchanka
Krasnorichenske
Berezna
Shklo
Ozerne
Donske
Marshyntsi
Telmanove
Pechenizhyn
Staromykhaylivka
Tarasivtsi
Shyshaky
Mykolayivka
Starokozache
Stara Vyzhivka
Hoshcha
Stepanivka
Novohuyvynske
Stari Kuty
Sudylkiv
Chudey
Talalayivka
Kolinkivtsi
Plakhtiyivka
Ivanivka
Sarata
Verkhnye Vodyane
Iza
Knyazhychi
Zavallya
Frunzivka
Ruzhyn
Volovets
Troyitske
Oleksandrivka
Yampil
Zlynka
Shumsk
Brayiliv
Sokyrnytsya
Helmyaziv
Slovyanohirsk
Kompaniyivka
Toshkivka
Voznesenka
Rakhny Lisovi
Rozsypne
Serhiyivka
Horodnye
Tarasivka
Holyn
Petrykivka
Korotych
Zorya
Taranivka
Almazna
Romankivtsi
Zdovbytsya
Svarychiv
Novopokrovka
Kolochava
Rohan
Vyzhnytsya
Ruska Lozova
Blyznyuky
Velykyy Burluk
Bohdanivka
Bilenke
Kalyta
Dobromyl
Novyy Starodub
Rudky
Yarke Pole
Syvaske
Stanislav
Pishchane
Orlivshchyna
Olenivka
Pavlysh
Klavdiyevo-Tarasove
Zhovtneve
Terpinnya
Suvorove
Moshny
Synevyr
Donetskyy
Ozhenyn
Ukromne
Tyvriv
Khotiv
Luhyny
Dovbysh
Krynychky
Sofiyivskyy
Stepnohirsk
Nova Ushytsya
Rokosovo
Vysokopillya
Dnipryany
Dmytrivka
Petrivka
Krynychna
Pasichna
Hvardiyske
Luzhany
Kushnytsya
Bilyy Kolodyaz
Hradenytsi
Stizhkivske
Osypenko
Oleshnyk
Ivaniv
Pniv
Velykyy Lyubin
Khorosheve
Voskresenske
Hryshkivtsi
Klesiv
Vynohradove
Khyriv
Krasnosilka
Lebedyn
Zaozerne
Floryne
Krasna Polyana
Dubivskyy
Baherove
Velykyy Rakovets
Novodaryivka
Hoholiv
Balakliya
Bohdanivka
Shchotove
Bili Oslavy
Melioratyvne
Zasullya
Losynivka
Davydiv
Velyatyno
Matusiv
Dvorichna
Lysa Hora
Novooleksandrivka
Skala-Podilska
Brylivka
Kozelshchyna
Zhovtneve
Ispas
Drahovo
Boyany
Murovane
Toporivtsi
Viytivka
Kolchyno
Znamenivka
Voyinka
Zachepylivka
Torchyn
Pidvynohradiv
Rozivka
Shabelkivka
Zabolottya
Vendychany
Krynychne
Auly
Kuty
Azovske
Utkonosivka
Trybukhivtsi
Keretsky
Kolchuhyne
Tynne
Bytkiv
Komsomolske
Voykove
Sursko-Lytovske
Holoby
Chahor
Zolotarovo
Kosivska Polyana
Orzhiv
Zabolotiv
Hnizdychiv
Obroshyne
Ridkivtsi
Lazeshchyna
Rozhnyativ
Stepan
Lokachi
Skalat
Lyublynets
Alupka
Hirnyk
Inkerman
Svyatohirsk
*/
