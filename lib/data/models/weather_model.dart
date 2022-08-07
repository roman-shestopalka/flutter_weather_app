class Weather {
  String? cityName;
  String? description;
  String? icon;
  double? temp;
  double? minTemp;
  double? maxTemp;
  double? wind;
  int? humidity;
  int? pressure;
  double? feelsLike;

  Weather(
      {this.cityName,
      this.description,
      this.icon,
      this.feelsLike,
      this.humidity,
      this.pressure,
      this.temp,
      this.minTemp,
      this.maxTemp,
      this.wind});

  //JSON convertor into model file
  Weather.fromJson(
    Map<String, dynamic> json,
  ) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    minTemp = json["main"]["temp_min"];
    maxTemp = json["main"]["temp_max"];
    description = json["weather"][0]["main"];
    icon = json["weather"][0]["icon"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feelsLike = json["main"]["feels_like"];
  }
}
