class City {
  bool isSelected;
  final String cityName;
  final String country;
  final bool isDefault;

  City(
      {required this.cityName,
      required this.country,
      required this.isDefault,
      required this.isSelected});

  //List of Cities info
  static List<City> citiesList = [
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
  ];

  //Get the selected cities
  static List<City> getSelectedCities() {
    List<City> selectedCities = City.citiesList;
    return selectedCities.where((city) => city.isSelected == true).toList();
  }
}
