
import 'package:flutter/material.dart';

class Weather extends StatelessWidget {

  final String city;
  final double temperature;
  final String description;
  final int humidity;
  final double windSpeed;
  final double feelsLike;

  const Weather({
    super.key,
    required this.city,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
    required this.feelsLike,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              city,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Icon(
              Icons.wb_sunny,
              size: 100,
              color: Colors.orange,
            ),

            Text(
              '$temperature°C',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              description,
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 30),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [

                    Text('Humidity: $humidity%'),

                    const SizedBox(height: 15),

                    Text('Wind Speed: $windSpeed m/s'),

                    const SizedBox(height: 15),

                    Text('Feels Like: $feelsLike°C'),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
