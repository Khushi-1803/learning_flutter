import 'package:flutter/material.dart';
import 'rolling_dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dice Roller'),
        ),
        body: const DiceRoller(),
      )
    );
  }
}
