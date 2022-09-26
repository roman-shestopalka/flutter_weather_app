import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/data/API/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/widget/container_card_widget.dart';

class ForecastListWidget extends StatelessWidget {
  const ForecastListWidget({Key? key, this.data}) : super(key: key);
  final Weather? data;
  final double paddingIos = 1;
  final double paddingAndr = 1;
  final double widthIos = 370;
  final double widthAndr = 380;
  final double heightIos = 230;
  final double heightAndr = 220;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xB9EBEBEB),
            borderRadius: BorderRadius.circular(30)),
        width: Platform.isIOS ? widthIos : widthAndr,
        height: Platform.isIOS ? heightIos : heightAndr,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ForecastContainerWidget(
              data: data,
              date: "${data?.dateFormated}",
              weather: "${data?.temp1?.toStringAsFixed(0)}°C",
              humidity: "${data?.humidity1?.toStringAsFixed(0)}%",
              paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
              avghumidity: data?.humidity1,
              icon: "${data?.icon1}",
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.dateFormated1}",
              weather: "${data?.temp2?.toStringAsFixed(0)}°C",
              humidity: "${data?.humidity2?.toStringAsFixed(0)}%",
              paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
              avghumidity: data?.humidity2,
              icon: "${data?.icon2}",
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.dateFormated2}",
              weather: "${data?.temp3?.toStringAsFixed(0)}°C",
              humidity: "${data?.humidity3?.toStringAsFixed(0)}%",
              paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
              avghumidity: data?.humidity3,
              icon: "${data?.icon3}",
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.dateFormated3}",
              weather: "${data?.temp4?.toStringAsFixed(0)}°C",
              humidity: "${data?.humidity4?.toStringAsFixed(0)}%",
              paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
              avghumidity: data?.humidity4,
              icon: "${data?.icon4}",
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.dateFormated4}",
              weather: "${data?.temp5?.toStringAsFixed(0)}°C",
              humidity: "${data?.humidity5?.toStringAsFixed(0)}%",
              paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
              avghumidity: data?.humidity5,
              icon: "${data?.icon2}",
            ),
          ],
        ),
      ),
    );
  }
}

class ForecastContainerWidget extends StatelessWidget {
  final Weather? data;
  final String date;
  final String weather;
  final String humidity;
  final double paddingLeft;
  final String icon;
  final int? avghumidity;

  const ForecastContainerWidget({
    Key? key,
    required this.paddingLeft,
    required this.data,
    required this.date,
    required this.weather,
    required this.humidity,
    this.avghumidity,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getColors() {
      if (avghumidity! < 65) {
        return Colors.green;
      } else if (avghumidity! < 85) {
        return Colors.orange;
      }
      return Colors.red;
    }

    return Padding(
      padding: EdgeInsets.only(right: 0, left: paddingLeft),
      child: ContainerWidget(
        width: 110,
        paddingIn: 25,
        widgetDecor: const BoxDecoration(color: Colors.transparent),
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: ForecastWidgetItem(
                data: data,
                widget: date,
                fontSize: 15,
                color: const Color(0xFF5F5F5F),
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.circular(30)),
              child: CachedNetworkImage(
                  imageUrl: "https://openweathermap.org/img/wn/$icon@4x.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: ForecastWidgetItem(
                data: data,
                widget: weather,
                fontSize: Platform.isIOS ? 18 : 22,
                color: const Color(0xFF5F5F5F),
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 2, right: 9, bottom: 2, left: 9),
              decoration: BoxDecoration(
                color: getColors(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ForecastWidgetItem(
                data: data,
                widget: humidity,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForecastWidgetItem extends StatelessWidget {
  final String widget;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  const ForecastWidgetItem(
      {Key? key,
      this.color,
      required this.fontWeight,
      required this.data,
      required this.widget,
      required this.fontSize})
      : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Text(widget,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: fontSize, fontWeight: fontWeight, color: color));
  }
}
