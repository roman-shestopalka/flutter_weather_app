import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/icons.dart';
import 'package:weather_app/presentation/common/widget/container_card_widget.dart';

class ForecastListWidget extends StatelessWidget {
  const ForecastListWidget({Key? key, this.data}) : super(key: key);

  final Weather? data;
  final double paddingIos = 10;
  final double paddingAndr = 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Expanded(
        child: SizedBox(
          width: 500,
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ForecastContainerWidget(
                data: data,
                date: "${data?.dateFormated}",
                weather: "${data?.temp1?.toStringAsFixed(0)}°",
                humidity: "${data?.humidity1?.toStringAsFixed(0)}%",
                paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
                avghumidity: data?.humidity1,
                icon: "${data?.icon1}",
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.dateFormated1}",
                weather: "${data?.temp2?.toStringAsFixed(0)}°",
                humidity: "${data?.humidity2?.toStringAsFixed(0)}%",
                paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
                avghumidity: data?.humidity2,
                icon: "${data?.icon2}",
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.dateFormated2}",
                weather: "${data?.temp3?.toStringAsFixed(0)}°",
                humidity: "${data?.humidity3?.toStringAsFixed(0)}%",
                paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
                avghumidity: data?.humidity3,
                icon: "${data?.icon3}",
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.dateFormated3}",
                weather: "${data?.temp4?.toStringAsFixed(0)}°",
                humidity: "${data?.humidity4?.toStringAsFixed(0)}%",
                paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
                avghumidity: data?.humidity4,
                icon: "${data?.icon4}",
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.dateFormated4}",
                weather: "${data?.temp5?.toStringAsFixed(0)}°",
                humidity: "${data?.humidity5?.toStringAsFixed(0)}%",
                paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
                avghumidity: data?.humidity5,
                icon: "${data?.icon2}",
              ),
            ],
          ),
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
      padding: EdgeInsets.only(right: 5, left: paddingLeft),
      child: ContainerWidget(
        width: 100,
        paddingIn: 15,
        widgetDecor: BoxDecoration(
            color: AppColors.oceanBlueLight,
            borderRadius: BorderRadius.circular(30)),
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ForecastWidgetItem(
              data: data,
              widget: date,
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            CachedNetworkImage(
                imageUrl: "https://openweathermap.org/img/wn/$icon@2x.png"),
            ForecastWidgetItem(
              data: data,
              widget: weather,
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
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
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Text(widget,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: color)),
    );
  }
}
