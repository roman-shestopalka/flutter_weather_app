import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/ui/forecast_list_widget.dart';
import 'package:weather_app/presentation/common/ui/main_weather_info_widget.dart';
import 'package:weather_app/presentation/common/ui/more_info_wedget.dart';
import 'package:weather_app/presentation/features/city_screen/city_screen.dart';

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
    return Column(
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
        )
      ],
    );
  }
}

//Captions Widgets
class CaptionsWidget extends StatelessWidget {
  final String title;
  const CaptionsWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              dateFormat,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            IconButton(
              icon: const Icon(
                Icons.tune_outlined,
                color: AppColors.mainColor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const CityScreen())));
              },
            )
          ],
        ));
  }
}
