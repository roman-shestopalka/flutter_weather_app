import 'package:flutter/material.dart';

class WeatherIcons {
  static const sun = Image(
    image: AssetImage(
      'assets/images/sunny.png',
    ),
  );
  static const cloud = Icon(
    Icons.cloud_queue_outlined,
    size: 60,
    color: Colors.yellowAccent,
  );
}
