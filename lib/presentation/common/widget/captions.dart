import 'package:flutter/material.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/features/city_screen/city_screen.dart';
import 'package:weather_app/presentation/features/home_screen/home_screen.dart';

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
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: CityButton(title: title)),
            Text(
              dateFormat,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
          ],
        ));
  }
}

class CityButton extends StatelessWidget {
  const CityButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              const BorderSide(color: AppColors.textColor, width: 2)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CityScreen()));
        },
        child: Row(
          children: [
            const Icon(
              Icons.location_pin,
              size: 18,
              color: AppColors.textColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
          ],
        ));
  }
}
