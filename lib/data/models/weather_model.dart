// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:intl/intl.dart';

class Weather {
  //current weather values
  String? cityName;
  String? description;
  String? icon;
  String? icon1;
  String? icon2;
  String? icon3;
  String? icon4;
  String? icon5;
  String? dtt;
  String? date;
  int? cloud;
  int? humidity;
  int? dt;
  double? visibility;
  double? temp;
  double? wind;
  double? feelsLike;
  double? maxTemp;
  double? minTemp;
  //forecast
  double? temp1;
  double? temp2;
  double? temp3;
  double? temp4;
  double? temp5;
  int? humidity1;
  int? humidity2;
  int? humidity3;
  int? humidity4;
  int? humidity5;
  String? date1;
  String? date2;
  String? date3;
  String? date4;
  String? date5;
  String? date6;
  var dateTime;
  var dateFormated;
  var dateTime1;
  var dateFormated1;
  var dateTime2;
  var dateFormated2;
  var dateTime3;
  var dateFormated3;
  var dateTime4;
  var dateFormated4;
  var dateTime5;
  var dateFormated5;
  var dateTime6;
  var dateFormated6;

  Weather({
    this.cityName,
    this.temp,
    this.feelsLike,
    this.maxTemp,
    this.minTemp,
    this.humidity,
    this.cloud,
    this.wind,
    this.description,
    this.visibility,
    this.date,
    this.dt,
    this.dateFormated,
    this.dateTime,
    this.date1,
    this.date2,
    this.date3,
    this.date4,
    this.date5,
    this.date6,
    //datetime

    this.dateTime1,
    this.dateFormated1,
    this.dateTime2,
    this.dateFormated2,
    this.dateTime3,
    this.dateFormated3,
    this.dateTime4,
    this.dateFormated4,
    this.dateTime5,
    this.dateFormated5,
    this.dateTime6,
    this.dateFormated6,
  });

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
    icon = json["list"][0]["weather"][0]["icon"];
    cloud = json["list"][0]["clouds"]["all"];
    wind = json["list"][0]["wind"]["speed"];
    description = json["list"][0]["weather"][0]["description"];
    visibility = json["list"][0]["visibility"] / 1000;
    date = json["list"][0]["dt_txt"];
    //forecast
    temp1 = json["list"][8]["main"]["temp"];
    temp2 = json["list"][16]["main"]["temp"];
    temp3 = json["list"][24]["main"]["temp"];
    temp4 = json["list"][32]["main"]["temp"];
    temp5 = json["list"][39]["main"]["temp"];
    humidity1 = json["list"][8]["main"]["humidity"];
    humidity2 = json["list"][16]["main"]["humidity"];
    humidity3 = json["list"][24]["main"]["humidity"];
    humidity4 = json["list"][32]["main"]["humidity"];
    humidity5 = json["list"][39]["main"]["humidity"];
    icon1 = json["list"][0]["weather"][0]["icon"];
    icon2 = json["list"][16]["weather"][0]["icon"];
    icon3 = json["list"][24]["weather"][0]["icon"];
    icon4 = json["list"][32]["weather"][0]["icon"];
    icon5 = json["list"][39]["weather"][0]["icon"];

    //DATEFORMATED
    //TODO: make with cicle "for"
    dateTime = DateTime.parse("$date").add(const Duration(days: 1));
    dateFormated = DateFormat("EEE d").format(dateTime);
    //
    dateTime1 = DateTime.parse("$date").add(const Duration(days: 2));
    dateFormated1 = DateFormat("EEE d").format(dateTime1);
    //
    dateTime2 = DateTime.parse("$date").add(const Duration(days: 3));
    dateFormated2 = DateFormat("EEE d").format(dateTime2);
    //
    dateTime3 = DateTime.parse("$date").add(const Duration(days: 4));
    dateFormated3 = DateFormat("EEE d").format(dateTime3);
    //
    dateTime4 = DateTime.parse("$date").add(const Duration(days: 5));
    dateFormated4 = DateFormat("EEE d").format(dateTime4);
    //
    dateTime5 = DateTime.parse("$date").add(const Duration(days: 6));
    dateFormated5 = DateFormat("EEE d").format(dateTime5);
    //
    dateTime6 = DateTime.parse("$date").add(const Duration(days: 7));
    dateFormated6 = DateFormat("EEE d").format(dateTime6);
  }
}
