import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_model.dart';

class WeatherApiService {
  Future<Weather>? getCurrentWeather(String? location) async {
    const key = "b88944defd8f8c1e575f322a1515c453";
    final currentWeather = Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?q=$location&exclude=daily&appid=$key&units=metric");
    final response = await http.get(currentWeather);
    final body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
