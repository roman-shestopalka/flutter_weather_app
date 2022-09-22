import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:weather_app/presentation/common/app_colors.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        globalBackgroundColor: AppColors.lightBlue,
        globalHeader: const Align(
          alignment: Alignment.topRight,
          child: SafeArea(
            child: Text(""),
          ),
        ));
  }
}
