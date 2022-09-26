import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:weather_app/data/API/weather_model.dart';
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
    return ContainerWidget(
        width: Platform.isIOS ? widthIos : widthAndr,
        height: 190,
        paddingIn: 15,
        widgetDecor: const BoxDecoration(
            color: Color(0xB9EBEBEB),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            )),
        widget: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsItem(
                      icon: const Icon(
                        Icons.arrow_upward_outlined,
                        color: Colors.red,
                      ),
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
                    details: "${data?.cloud} %          "),
              ],
            ),
            const DraggableBtn()
          ],
        ));
  }
}

class DraggableBtn extends StatelessWidget {
  const DraggableBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9),
      child: Container(
        width: 40,
        height: 6,
        decoration: BoxDecoration(
            color: AppColors.lightBlue,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
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
