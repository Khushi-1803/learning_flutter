import 'package:flutter/material.dart';
import 'package:quiz_app/strat_screen.dart';
import 'package:quiz_app/questiions.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedOptions = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String option) {
    selectedOptions.add(option);

    if (selectedOptions.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Widget screenWidget;
    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(choosenOptions: selectedOptions);
    } else {
      screenWidget = QuestionScreen(onSelectOption: chooseAnswer);
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
