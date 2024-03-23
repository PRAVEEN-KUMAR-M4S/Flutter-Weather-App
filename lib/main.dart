import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_weather_app/weather_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const WeatherScreen(),
    );
  }
}
