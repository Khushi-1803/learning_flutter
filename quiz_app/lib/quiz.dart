import 'package:flutter/material.dart';
import 'package:quiz_app/strat_screen.dart';
import 'package:quiz_app/questiions.dart';
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget activeScreen = StartScreen(switchScreen); erroe is coming Class = नक्शा, और Instance/Object = उस नक्शे से बना असली object।

// activeScreen और switchScreen() उसी object के instance members हैं।
// यहाँ Dart पहले activeScreen को बनाने की कोशिश कर रहा है: और आप उसी समय कह रहे हो: "इस object का switchScreen function ले लो।"
// इसलिए switchScreen को activeScreen बनाते समय use करने के बजाय initState() में use करते हैं, क्योंकि तब object पूरी तरह बन चुका होता है।

// Widget? activeScreen;

// @override
// void initState() {
//     super.initState();
//     activeScreen = StartScreen(switchScreen);
//   }
var activeScreen = 'start-screen';

void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
      // activeScreen = const QuestionScreen();
    });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 169, 111, 236),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
