import 'package:flutter/material.dart';
import 'package:weather_app/data/API/wheater_api_services.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/features/city_screen/city_screen.dart';
import 'package:weather_app/presentation/features/home_screen/home_screen.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  WeatherApiService client = WeatherApiService();
  Weather? data;
  late final CityScreen? getCurrentCity;

  Future<void> getData() async {
    data = await client.getCurrentWeather("Ternopil");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return HomeScreen(data: data);
            }
            return Container(); //TODO: Make a internet connection check
          },
        ));
  }
}
