// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/presentation/common/app_colors.dart';
import 'package:weather_app/presentation/features/home_screen/home_screen.dart';

class DaysList extends StatelessWidget {
  final Color btnClr =
      Colors.transparent; // add this values to constant file!!!
  const DaysList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: SizedBox(
        height: 30,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            DayBtn(
              text: "$dateFormat",
              paddingLeft: 15,
              borderColor: AppColors.oceanBlue,
            ),
            DayBtn(
              text: "$dateFormat1",
              paddingLeft: 0,
              borderColor: btnClr,
            ),
            DayBtn(
              text: "$dateFormat2",
              paddingLeft: 0,
              borderColor: btnClr,
            ),
            DayBtn(
              text: "$dateFormat3",
              paddingLeft: 0,
              borderColor: btnClr,
            ),
            DayBtn(
              text: "$dateFormat4",
              paddingLeft: 0,
              borderColor: btnClr,
            ),
            DayBtn(
              text: "$dateFormat5",
              paddingLeft: 0,
              borderColor: btnClr,
            ),
          ],
        ),
      ),
    );
  }
}

class DayBtn extends StatelessWidget {
  final String text;
  final double paddingLeft;
  final Color borderColor;
  const DayBtn({
    required this.text,
    required this.paddingLeft,
    required this.borderColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, left: paddingLeft),
      child: OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: borderColor, width: 1)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0))),
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          )),
    );
  }
}
