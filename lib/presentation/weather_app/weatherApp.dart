// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/presentation/features/main_screen/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pogodka',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.black,
                  statusBarIconBrightness: Brightness.dark,
                  statusBarBrightness: Brightness.light))),
      home: const HomeScreenPage(),
    );
  }
}
