// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:intl/intl.dart';

class Weather {
  //current weather values
  String? cityName;
  String? description;
  String? mainDesc;
  String? icon;
  String? icon1;
  String? icon2;
  String? icon3;
  String? icon4;
  String? icon5;
  String? icon6;
  String? icon7;
  String? icon8;
  String? dtt;
  String? date;
  int? cloud;
  int? humidity;
  int? dt;
  int? feelsLike;
  double? visibility;
  double? temp;
  double? wind;
  double? maxTemp;
  double? minTemp;
  //forecast
  double? temp1;
  double? temp2;
  double? temp3;
  double? temp4;
  double? temp5;
  double? temp6;
  double? temp7;
  double? temp8;
  int? humidity1;
  int? humidity2;
  int? humidity3;
  int? humidity4;
  int? humidity5;
  int? humidity6;
  int? humidity7;
  int? humidity8;
  String? date1;
  String? date2;
  String? date3;
  String? date4;
  String? date5;
  String? date6;
  String? date7;
  String? date8;
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
  var dateTime7;
  var dateFormated7;

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
    mainDesc = json["list"][0]["weather"][0]["main"];
    visibility = json["list"][0]["visibility"] / 1000;
    date = json["list"][0]["dt_txt"];
    //forecast
    date1 = json["list"][1]["dt_txt"];
    date2 = json["list"][2]["dt_txt"];
    date3 = json["list"][3]["dt_txt"];
    date4 = json["list"][4]["dt_txt"];
    date5 = json["list"][5]["dt_txt"];
    date6 = json["list"][6]["dt_txt"];
    date7 = json["list"][7]["dt_txt"];
    temp1 = json["list"][1]["main"]["temp"];
    temp2 = json["list"][2]["main"]["temp"];
    temp3 = json["list"][3]["main"]["temp"];
    temp4 = json["list"][4]["main"]["temp"];
    temp5 = json["list"][5]["main"]["temp"];
    temp6 = json["list"][6]["main"]["temp"];
    temp7 = json["list"][7]["main"]["temp"];
    temp8 = json["list"][8]["main"]["temp"];
    humidity1 = json["list"][1]["main"]["humidity"];
    humidity2 = json["list"][2]["main"]["humidity"];
    humidity3 = json["list"][3]["main"]["humidity"];
    humidity4 = json["list"][4]["main"]["humidity"];
    humidity5 = json["list"][5]["main"]["humidity"];
    humidity6 = json["list"][6]["main"]["humidity"];
    humidity7 = json["list"][7]["main"]["humidity"];
    humidity8 = json["list"][8]["main"]["humidity"];
    icon1 = json["list"][1]["weather"][0]["icon"];
    icon2 = json["list"][2]["weather"][0]["icon"];
    icon3 = json["list"][3]["weather"][0]["icon"];
    icon4 = json["list"][4]["weather"][0]["icon"];
    icon5 = json["list"][5]["weather"][0]["icon"];
    icon6 = json["list"][6]["weather"][0]["icon"];
    icon7 = json["list"][7]["weather"][0]["icon"];
    icon8 = json["list"][8]["weather"][0]["icon"];

    //DATEFORMATED
    //TODO: make with cicle "for"
    dateTime = DateTime.parse("$date");
    dateFormated = DateFormat("EEE d H:mm").format(dateTime);
    //
    dateTime1 = DateTime.parse("$date1");
    dateFormated1 = DateFormat("EEE d H:mm").format(dateTime1);
    //
    dateTime2 = DateTime.parse("$date2");
    dateFormated2 = DateFormat("EEE d H:mm").format(dateTime2);
    //
    dateTime3 = DateTime.parse("$date3");
    dateFormated3 = DateFormat("EEE d H:mm").format(dateTime3);
    //
    dateTime4 = DateTime.parse("$date4");
    dateFormated4 = DateFormat("EEE d H:mm").format(dateTime4);
    //
    dateTime5 = DateTime.parse("$date5");
    dateFormated5 = DateFormat("EEE H:mm").format(dateTime5);
    //
    dateTime6 = DateTime.parse("$date6");
    dateFormated6 = DateFormat("EEE d H:mm").format(dateTime6);
    //
    dateTime7 = DateTime.parse("$date7");
    dateFormated7 = DateFormat("EEE d H:mm").format(dateTime7);
  }
}
