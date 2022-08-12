import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_model.dart';

class WeatherApiService {
  Future<Weather>? getCurrentWeather(String? location) async {
    final currentWeather = Uri.parse(
        "http://api.weatherapi.com/v1/forecast.json?key=bb72f15419f54dd3b22124106220708&q=$location&days=5&aqi=yes&alerts=no");
    final response = await http.get(currentWeather);
    final body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
