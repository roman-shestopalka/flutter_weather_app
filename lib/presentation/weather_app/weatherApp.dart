// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:weather_app/presentation/features/main_screen/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const HomeScreenPage(),
    );
  }
}
