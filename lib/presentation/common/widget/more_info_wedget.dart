import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:weather_app/data/API/weather_model.dart';
import 'package:weather_app/presentation/common/icons.dart';
import 'package:weather_app/presentation/common/widget/container_card_widget.dart';

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  final Weather? data;
  final double widthIos = 370;
  final double widthAndr = 380;

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
        width: Platform.isIOS ? widthIos : widthAndr,
        height: 150,
        paddingIn: 15,
        widgetDecor: BoxDecoration(
            color: const Color(0xB9EBEBEB),
            borderRadius: BorderRadius.circular(30)),
        widget: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsItem(
                      icon: const Icon(
                        Icons.arrow_upward_outlined,
                        color: Colors.red,
                      ), //TODO: Change google icon to const image from file
                      title: "Max Temp",
                      details: "${data?.maxTemp?.toStringAsFixed(0)}°C"),
                  DetailsItem(
                      icon: AppIcons.humidity,
                      title: "Humidity",
                      details: "${data?.humidity}%"),
                  DetailsItem(
                      icon: AppIcons.windSpeed,
                      title: "Wind Speed",
                      details: "${data?.wind?.toStringAsFixed(1)} km/h")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsItem(
                    icon: const Icon(
                      Icons.arrow_downward_outlined,
                      color: Colors.green,
                    ),
                    title: "Min Temp",
                    details: "${data?.minTemp?.toStringAsFixed(0)}°C"),
                DetailsItem(
                    icon: const Icon(
                      Icons.visibility,
                      color: Color(0xFF5F5F5F),
                    ),
                    title: "Visibility",
                    details: "${data?.visibility} km"),
                DetailsItem(
                    icon: AppIcons.cloud,
                    title: "Cloud",
                    details: "${data?.cloud} %           ")
              ],
            )
          ],
        ));
  }
}

class DetailsItem extends StatelessWidget {
  final Widget icon;
  final String title;
  final String details;
  const DetailsItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.only(right: 10), child: icon),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF5F5F5F),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              details,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF5F5F5F)),
            )
          ],
        )
      ],
    );
  }
}
