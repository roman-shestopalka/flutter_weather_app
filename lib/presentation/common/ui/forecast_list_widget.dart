import 'package:flutter/material.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/ui/container_card_widget.dart';

class ForecastListWidget extends StatelessWidget {
  ForecastListWidget({Key? key, this.data}) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 200,
        width: 500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ForecastContainerWidget(
              data: data,
              date: "${data?.date?.substring(5)}",
              weather: "${data?.maxTemp?.toStringAsFixed(0)}°",
              humidity: "${data?.avghumidity?.toStringAsFixed(0)}%",
              paddingLeft: 25,
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.date1?.substring(5)}",
              weather: "${data?.maxTemp1?.toStringAsFixed(0)}°",
              humidity: "${data?.avghumidity1?.toStringAsFixed(0)}%",
              paddingLeft: 0,
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.date2?.substring(5)}",
              weather: "${data?.maxTemp2?.toStringAsFixed(0)}°",
              humidity: "${data?.avghumidity2?.toStringAsFixed(0)}%",
              paddingLeft: 0,
            ),
            ForecastContainerWidget(
              data: data,
              date: "${data?.date3?.substring(5)}",
              weather: "${data?.maxTemp3?.toStringAsFixed(0)}°",
              humidity: "${data?.avghumidity3?.toStringAsFixed(0)}%",
              paddingLeft: 0,
            )
          ],
        ),
      ),
    );
  }
}

class ForecastContainerWidget extends StatelessWidget {
  final String date;
  final String weather;
  final String humidity;
  final double paddingLeft;

  const ForecastContainerWidget({
    Key? key,
    required this.paddingLeft,
    required this.data,
    required this.date,
    required this.weather,
    required this.humidity,
  }) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15, left: paddingLeft),
      child: ContainerCardWidget(
        width: 100,
        height: 0,
        paddingIn: 20,
        widgetDecor: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(50)),
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ForecastWidgetItem(
              data: data,
              interWidget: date,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            const Icon(
              //TODO: change local icon into API Json-Link icon everywheare
              Icons.sunny,
              color: Colors.yellow,
              size: 58,
            ),
            ForecastWidgetItem(
              data: data,
              interWidget: weather,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
            Container(
              padding:
                  const EdgeInsets.only(top: 2, right: 9, bottom: 2, left: 9),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ForecastWidgetItem(
                data: data,
                interWidget: humidity,
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
  final String interWidget;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  ForecastWidgetItem(
      {Key? key,
      this.color,
      required this.fontWeight,
      required this.data,
      required this.interWidget,
      required this.fontSize})
      : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Text(interWidget,
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: color)),
    );
  }
}
