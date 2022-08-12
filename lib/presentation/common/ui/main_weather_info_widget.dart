import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/ui/container_card_widget.dart';
import 'package:weather_app/presentation/features/home_screen/home_screen.dart';

class MainWeatherInfoWidget extends StatelessWidget {
  const MainWeatherInfoWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      height: 280,
      width: 380,
      paddingIn: 15,
      widgetDecor: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xffab2bc1), Color(0xff0a6cba)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey, blurRadius: 50, blurStyle: BlurStyle.normal)
          ],
          borderRadius: BorderRadius.circular(30)),
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.sunny,
            size: 190,
            color: Colors.yellow,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WeatherInfo(
                text: '${data!.temp?.toStringAsFixed(0)}°',
                fontSize: 78,
                fontWeight: FontWeight.bold,
              ), // gradus text
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: WeatherInfo(
                  text: "Feels Like: ${data!.feelsLike?.toStringAsFixed(1)}°",
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              WeatherInfo(
                  text: "${data?.date}",
                  fontSize: 20,
                  fontWeight: FontWeight.w300)
            ],
          )
        ],
      ),
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
