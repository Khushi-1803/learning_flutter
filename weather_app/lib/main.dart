
import 'dart:convert';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    home: MyWidget(),
  ));
}

typedef MyApp = MyWidget;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String city = '';
  String cityName = '';
  String country = '';
  double temperature = 0;
  int humidity = 0;
  String condition = '';
  double wind = 0;

  Future<void> fetchWeather() async {
    try {
      const apiKey = "cc18f11a37bb2c110d892d62546a2bff";

      final response = await http.get(
        Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric",
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch weather');
      }

      final data = jsonDecode(response.body);

      print(data);

      final cityName = data['name'];
      final country = data['sys']['country'];
      final temperature = data['main']['temp'];
      final humidity = data['main']['humidity'];
      final condition = data['weather'][0]['description'];
      final wind = data['wind']['speed'];

      setState(() {
        this.cityName = cityName;
        this.country = country;
        this.temperature = temperature;
        this.humidity = humidity;
        this.condition = condition;
        this.wind = wind;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter City Name',
                ),
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text('City: $cityName'),
                  Text('Country: $country'),
                  Text('Temperature: $temperature°C'),
                  Text('Humidity: $humidity%'),
                  Text('Condition: $condition'),
                  Text('Wind: $wind'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                fetchWeather();
                // Button action
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
