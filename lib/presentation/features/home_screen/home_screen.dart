import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/API/weather_model.dart';
import 'package:weather_app/presentation/common/widget/captions.dart';
import 'package:weather_app/presentation/common/widget/days_list.dart';
import 'package:weather_app/presentation/common/widget/forecast_list_widget.dart';
import 'package:weather_app/presentation/common/widget/main_weather_info_widget.dart';
import 'package:weather_app/presentation/common/widget/more_info_wedget.dart';

Weather? data;

final dayInfo = DateTime.now();
final dayInfo1 = DateTime.now().add(const Duration(days: 1));
final dayInfo2 = DateTime.now().add(const Duration(days: 2));
final dayInfo3 = DateTime.now().add(const Duration(days: 3));
final dayInfo4 = DateTime.now().add(const Duration(days: 4));
final dayInfo5 = DateTime.now().add(const Duration(days: 5));
//
final dateFormat = DateFormat('EEEE, d MMM').format(dayInfo);
final dateFormat1 = DateFormat('EEEE, d MMM').format(dayInfo1);
final dateFormat2 = DateFormat('EEEE, d MMM').format(dayInfo2);
final dateFormat3 = DateFormat('EEEE, d MMM').format(dayInfo3);
final dateFormat4 = DateFormat('EEEE, d MMM').format(dayInfo4);
final dateFormat5 = DateFormat('EEEE, d MMM').format(dayInfo5);

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CaptionsWidget(
          title: "${data!.cityName}",
        ),
        const DaysList(),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: MainWeatherInfoWidget(data: data),
        ),
        MoreInfoWidget(
          data: data,
        ),
        ForecastListWidget(
          data: data,
        ),
      ],
    );
  }
}

//Captions Widgets

