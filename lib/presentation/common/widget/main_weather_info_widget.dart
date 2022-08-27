import 'dart:io';
import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/icons.dart';
import 'package:weather_app/presentation/common/widget/container_card_widget.dart';

class MainWeatherInfoWidget extends StatelessWidget {
  const MainWeatherInfoWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Weather? data;
  final double widthIos = 370;
  final double widthAndr = 380;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      height: 200,
      width: Platform.isIOS ? widthIos : widthAndr,
      paddingIn: 15,
      widgetDecor: BoxDecoration(
          color: AppColors.oceanBlueLight,
          borderRadius: BorderRadius.circular(30)),
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: AppIcons.sunMain,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WeatherInfo(
                text: '${data?.temp?.toStringAsFixed(0)}°',
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ), // gradus text
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: WeatherInfo(
                  text: "Feels Like: ${data!.feelsLike?.toStringAsFixed(1)}°",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              WeatherInfo(
                  text: "${data?.description}",
                  fontSize: 14,
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
