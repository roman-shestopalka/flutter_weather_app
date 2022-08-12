class Weather {
  //current weather values
  String? cityName;
  String? description;
  String? icon;
  String? windDir;
  int? cloud;
  int? humidity;
  double? temp;
  double? visibility;
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
    cityName = json["location"]["name"];
    temp = json["current"]["temp_c"];
    cloud = json["current"]["cloud"];
    description = json["current"]["condition"]["text"];
    visibility = json["current"]["vis_km"];
    icon = json["current"]["condition"]["icon"];
    wind = json["current"]["wind_kph"];
    windDir = json["current"]["wind_dir"];
    pressure = json["current"]["pressure_mb"];
    humidity = json["current"]["humidity"];
    uv = json["current"]["uv"];
    feelsLike = json["current"]["feelslike_c"];

    //forecast weather first
    date = json["forecast"]["forecastday"][1]["date"];
    maxTemp = json["forecast"]["forecastday"][1]["day"]["maxtemp_c"];
    maxWind = json["forecast"]["forecastday"][1]["day"]["maxwind_kph"];
    avghumidity = json["forecast"]["forecastday"][1]["day"]["avghumidity"];

    //forecast weather other days
    date1 = json["forecast"]["forecastday"][2]["date"];
    maxTemp1 = json["forecast"]["forecastday"][2]["day"]["maxtemp_c"];
    maxWind1 = json["forecast"]["forecastday"][2]["day"]["maxwind_kph"];
    avghumidity1 = json["forecast"]["forecastday"][2]["day"]["avghumidity"];

    date2 = json["forecast"]["forecastday"][3]["date"];
    maxTemp2 = json["forecast"]["forecastday"][3]["day"]["maxtemp_c"];
    maxWind2 = json["forecast"]["forecastday"][3]["day"]["maxwind_kph"];
    avghumidity2 = json["forecast"]["forecastday"][3]["day"]["avghumidity"];

    date3 = json["forecast"]["forecastday"][4]["date"];
    maxTemp3 = json["forecast"]["forecastday"][4]["day"]["maxtemp_c"];
    maxWind3 = json["forecast"]["forecastday"][4]["day"]["maxwind_kph"];
    avghumidity3 = json["forecast"]["forecastday"][4]["day"]["avghumidity"];
  }
}
