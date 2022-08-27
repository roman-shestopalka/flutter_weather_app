import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
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
    return ContainerCardWidget(
        width: Platform.isIOS ? widthIos : widthAndr,
        height: 150,
        paddingIn: 15,
        widgetDecor: BoxDecoration(
            color: AppColors.oceanBlueLight,
            borderRadius: BorderRadius.circular(30)),
        widget: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsItem(
                    icon: AppIcons.uvIndex,
                    title: "UV       ",
                    details: "${data?.uv?.toStringAsFixed(1)}",
                  ),
                  DetailsItem(
                      icon: AppIcons.humidity,
                      title: "Humidity",
                      details: '${data?.humidity}%'),
                  DetailsItem(
                      icon: AppIcons.windSpeed,
                      title: "Wind Speed",
                      details: "${data?.wind?.toStringAsFixed(0)} km/h")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsItem(
                    icon: AppIcons.cloud,
                    title: "Cloud",
                    details: "${data?.cloud} %"),
                DetailsItem(
                    icon: const Icon(
                      Icons.visibility,
                    ),
                    title: "Visibility",
                    details: "${data?.visibility} km"),
                DetailsItem(
                    icon: AppIcons.windDirection,
                    title: "Wind Direct",
                    details: "${data?.windDir}"),
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
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            Text(
              details,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}
