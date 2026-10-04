import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/1.png';

  void rollDice() {
    var random = Random();
    setState(() {
      activeDiceImage = 'assets/images/${random.nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(activeDiceImage),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: rollDice, child: const Text('Roll Dice')),
        ],
      ),
    );
  }
}
