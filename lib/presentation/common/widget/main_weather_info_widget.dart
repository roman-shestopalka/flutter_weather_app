import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/widget/container_card_widget.dart';

class MainWeatherInfoWidget extends StatelessWidget {
  const MainWeatherInfoWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Weather? data;
  final double widthIos = 370;
  final double widthAndr = 380;
  final double paddingIos = 0;
  final double paddingAndr = 30;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ContainerWidget(
        height: 210,
        width: Platform.isIOS ? widthIos : widthAndr,
        paddingIn: 0,
        widgetDecor: BoxDecoration(
            color: AppColors.oceanBlueLight,
            borderRadius: BorderRadius.circular(30)),
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedNetworkImage(
                imageUrl:
                    "https://openweathermap.org/img/wn/${data?.icon}@4x.png"),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: Platform.isIOS ? paddingIos : paddingAndr),
                    child: WeatherInfo(
                      text: '${data?.temp?.toStringAsFixed(0)}°C',
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ), // gradus text
                  WeatherInfo(
                    text:
                        "Feels Like:  ${data!.feelsLike?.toStringAsFixed(0)}°C",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  WeatherInfo(
                      text:
                          "${data?.description?[0].toUpperCase()}${data?.description?.substring(1)}",
                      fontSize: 14,
                      fontWeight: FontWeight.w600)
                ],
              ),
            )
          ],
        ),
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
