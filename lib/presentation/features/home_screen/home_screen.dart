import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/widget/captions.dart';
import 'package:weather_app/presentation/common/widget/forecast_list_widget.dart';
import 'package:weather_app/presentation/common/widget/main_weather_info_widget.dart';
import 'package:weather_app/presentation/common/widget/more_info_wedget.dart';

Weather? data;

final dayInfo = DateTime.now();
final dateFormat = DateFormat('EEEE, d MMM').format(dayInfo);

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CaptionsWidget(
            title: "${data!.cityName}",
          ),
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
      ),
    );
  }
}

//Captions Widgets

