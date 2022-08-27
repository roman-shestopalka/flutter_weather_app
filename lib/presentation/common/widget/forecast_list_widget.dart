import 'dart:io';

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
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ForecastContainerWidget(
                data: data,
                date: "${data?.date?.substring(5)}",
                weather: "${data?.maxTemp?.toStringAsFixed(0)}°",
                humidity: "${data?.avghumidity?.toStringAsFixed(0)}%",
                paddingLeft: Platform.isIOS ? paddingIos : paddingAndr,
                avghumidity: data?.avghumidity,
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.date1?.substring(5)}",
                weather: "${data?.maxTemp1?.toStringAsFixed(0)}°",
                humidity: "${data?.avghumidity1?.toStringAsFixed(0)}%",
                paddingLeft: 0,
                avghumidity: data?.avghumidity1,
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.date2?.substring(5)}",
                weather: "${data?.maxTemp2?.toStringAsFixed(0)}°",
                humidity: "${data?.avghumidity2?.toStringAsFixed(0)}%",
                paddingLeft: 0,
                avghumidity: data?.avghumidity2,
              ),
              ForecastContainerWidget(
                data: data,
                date: "${data?.date3?.substring(5)}",
                weather: "${data?.maxTemp3?.toStringAsFixed(0)}°",
                humidity: "${data?.avghumidity3?.toStringAsFixed(0)}%",
                paddingLeft: 0,
                avghumidity: data?.avghumidity3,
              )
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
  final double? avghumidity;

  const ForecastContainerWidget({
    Key? key,
    required this.paddingLeft,
    required this.data,
    required this.date,
    required this.weather,
    required this.humidity,
    this.avghumidity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Color getColors() {
    //   if (avghumidity! < 60) {
    //     return Colors.green;
    //   } else if (avghumidity! < 80) {
    //     return Colors.orange;
    //   }
    //   return Colors.red;
    // }

    return Padding(
      padding: EdgeInsets.only(right: 15, left: paddingLeft),
      child: ContainerCardWidget(
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
            AppIcons.sun,
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
                  // color: getColors(),
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
