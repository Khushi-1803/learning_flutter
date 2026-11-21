
import 'package:flutter/material.dart';
import 'package:weather_app/widgets/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
       
        '/home': (context) => const Home(),
      },
    ),
  );
}
