import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/ui/container_card_widget.dart';

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({Key? key, this.data}) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
        width: 380,
        height: 230,
        paddingIn: 15,
        widgetDecor: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Colors.grey, blurRadius: 15, blurStyle: BlurStyle.normal)
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        widget: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See more",
                      style: TextStyle(fontSize: 17),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsItem(
                    icon: const Icon(Icons.speed_outlined),
                    title: "UV     ",
                    details: "${data?.uv?.toStringAsFixed(1)}",
                  ),
                  DetailsItem(
                      icon: const Icon(
                        Icons.water_drop_outlined,
                      ),
                      title: "Humidity",
                      details: '${data?.humidity}%'),
                  DetailsItem(
                      icon: const Icon(Icons.wind_power_outlined),
                      title: "Wind Speed",
                      details: "${data?.wind} km/h")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsItem(
                    icon: const Icon(Icons.cloud_outlined),
                    title: "Cloud",
                    details: "${data?.cloud} %"),
                DetailsItem(
                    icon: const Icon(
                      Icons.visibility,
                    ),
                    title: "Visibility",
                    details: "${data?.visibility} km"),
                DetailsItem(
                    icon: const Icon(Icons.air_outlined),
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
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              details,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
