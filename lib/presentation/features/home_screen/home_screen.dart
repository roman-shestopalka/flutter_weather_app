import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/ui/main_weather_info_widget.dart';
import 'package:weather_app/presentation/common/ui/more_info_wedget.dart';
import 'package:weather_app/presentation/features/city_screen/city_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CaptionsWidget(
          title: "${data!.cityName}",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: MainWeatherInfoWidget(data: data),
        ),
        MoreInfoWidget(
          data: data,
        )
      ],
    );
  }
}

class WeatherInfo extends StatelessWidget {
  final String text;
  final double fontSize;
  final dynamic fontWeight;
  const WeatherInfo({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // here will be correct weather status
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Colors.white), // convert to constant comming soon!!!
    );
  }
}

//Captions Widgets
class CaptionsWidget extends StatelessWidget {
  final String title;
  const CaptionsWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const CityScreen())));
                },
                child: const Icon(
                  Icons.location_pin,
                  color: AppColors.mainColor,
                ))
          ],
        ));
  }
}
