class Weather {
  //current weather values
  String? cityName;
  String? description;
  String? icon;
  String? windDir;
  int? cloud;
  int? humidity;
  int? localTime;
  int? visibility;
  double? temp;
  double? wind;
  double? uv;
  double? pressure;
  double? feelsLike;

  //forecast weather values
  String? cityName1;
  String? description1;
  String? date;
  String? icon1;
  String? windDir1;
  int? cloud1;
  double? avghumidity;
  double? temp1;
  double? visibility1;
  double? maxWind;
  double? uv1;
  double? pressure1;
  double? maxTemp;
  double? minTemp;
  double? feelsLike1;

  //forecast second day
  String? date1;
  double? maxWind1;
  double? maxTemp1;
  double? avghumidity1;

  String? date2;
  double? maxWind2;
  double? maxTemp2;
  double? avghumidity2;

  String? date3;
  double? maxWind3;
  double? maxTemp3;
  double? avghumidity3;

  double? resultWind;

  Weather(
      {this.cityName,
      this.description,
      this.icon,
      this.feelsLike,
      this.humidity,
      this.pressure,
      this.temp,
      this.cloud,
      this.wind,
      this.windDir,
      this.uv,
      this.visibility,
      this.localTime,

      ////forecast values init
      this.cityName1,
      this.cloud1,
      this.description1,
      this.feelsLike1,
      this.avghumidity,
      this.icon1,
      this.date,
      this.pressure1,
      this.temp1,
      this.maxTemp,
      this.minTemp,
      this.uv1,
      this.visibility1,
      this.maxWind,
      this.windDir1,

      //forecast for other days
      this.avghumidity1,
      this.date1,
      this.maxTemp1,
      this.maxWind1,
      //
      this.avghumidity2,
      this.date2,
      this.maxTemp2,
      this.maxWind2,
      //
      this.avghumidity3,
      this.date3,
      this.maxTemp3,
      this.maxWind3});

  //JSON convertor into model file
  Weather.fromJson(
    Map<String, dynamic> json,
  ) {
    //current weather
    cityName = json["city"]["name"];
    temp = json["list"][0]["main"]["temp"];
    feelsLike = json["list"][0]["main"]["feels_like"];
    maxTemp = json["list"][0]["main"]["temp_max"];
    minTemp = json["list"][0]["main"]["temp_min"];
    humidity = json["list"][0]["main"]["humidity"];
    cloud = json["list"][0]["clouds"]["all"];
    wind = json["list"][0]["wind"]["speed"] / 1000;
    description = json["list"][0]["weather"][0]["description"];
    visibility = json["list"][0]["visibility"];
  }
}
