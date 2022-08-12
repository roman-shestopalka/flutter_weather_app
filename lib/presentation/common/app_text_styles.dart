import 'package:flutter/material.dart';
import 'package:weather_app/presentation/common/app_colors.dart';

class AppTextStyle {
  static const light = TextStyle(
      color: AppColors.textColor, fontWeight: FontWeight.w400, fontSize: 18);
  static const regular =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black);
  static const bold =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black);
}
