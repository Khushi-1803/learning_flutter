
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/widgets/weather.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController cityController =
      TextEditingController();

  String apiKey = '52c382aebb6c237fd2b6373e7502e06d';

  
Future<void> fetchWeather() async {
  String city = cityController.text.trim();

  final response = await http.get(
    Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=Meerut&appid=52c382aebb6c237fd2b6373e7502e06d&units=metric',
    ),
  );

  print('Status Code: ${response.statusCode}');
  print('Response Body: ${response.body}');

  if (response.statusCode == 200) {

  final data = jsonDecode(response.body);

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Weather(
        city: data['name'],
        temperature: (data['main']['temp'] as num).toDouble(),
        description: data['weather'][0]['description'],
        humidity: data['main']['humidity'],
        windSpeed: (data['wind']['speed'] as num).toDouble(),
        feelsLike: (data['main']['feels_like'] as num).toDouble(),
      ),
    ),
  );

}else {
    print('API Error: ${response.body}');
  }
}

  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: cityController,
            decoration: const InputDecoration(
              labelText: 'Enter city name',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 16),

          ElevatedButton(
            onPressed: () async {
              await fetchWeather();
            },
            child: const Text('Get Weather'),
          ),
        ],
      ),
    );
  }
}
