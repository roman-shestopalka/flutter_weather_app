import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_model.dart';

class WeatherApiService {
  Future<Weather>? getCurrentWeather(String? location) async {
    final currentWeather = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=ef39f1878dee0e4c8f79d4b92918f6b0&units=metric");
    final response = await http.get(currentWeather);
    final body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
