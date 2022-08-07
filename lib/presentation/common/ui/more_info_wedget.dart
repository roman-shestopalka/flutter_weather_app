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
        height: 200,
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
                SizedBox(
                    width: 45,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.refresh,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DetailsItem(
                    icon: const Icon(Icons.arrow_upward_outlined),
                    title: "Max Temp",
                    details: "${data?.maxTemp?.toStringAsFixed(1)}°",
                  ),
                  DetailsItem(
                      icon: const Icon(
                        Icons.water_drop_outlined,
                      ),
                      title: "Humidity",
                      details: '${data?.humidity}%'),
                  DetailsItem(
                      icon: const Icon(Icons.air_outlined),
                      title: "Wind Speed",
                      details: "${data?.wind} m/s")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsItem(
                  icon: const Icon(Icons.arrow_downward_outlined),
                  title: "Min Temp",
                  details: "${data?.minTemp?.toStringAsFixed(1)}°",
                ),
                DetailsItem(
                    icon: const Icon(
                      Icons.water_drop_outlined,
                    ),
                    title: "Pressure",
                    details: "${data?.pressure}hPa"),
                DetailsItem(
                    icon: const Icon(Icons.air_outlined),
                    title: "Wind Speed",
                    details: "${data?.wind} m/s"),
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
