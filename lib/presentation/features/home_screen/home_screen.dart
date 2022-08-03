import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/common/app_text_styles.dart';
import 'package:weather_app/presentation/common/weather_icons.dart';
import 'package:weather_app/presentation/features/city_screen/city_screen.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                const CaptionsWidget(
                  title: 'City Name',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 380,
                    height: 240,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffab2bc1), Color(0xff0a6cba)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 50,
                              blurStyle: BlurStyle.normal)
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: WeatherIcons.cloud,
                  ),
                )
              ],
            )
          ],
        ),
      ),
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
        title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
            style: const ButtonStyle(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const CityScreen())));
            },
            child: const Icon(
              Icons.location_pin,
              color: AppColors.mainColor,
            ))
      ],
    ));
  }
}
