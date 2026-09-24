import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String expression = '';

  void onButtonPressed(String value) {
  setState(() {
    if (value == 'C') {
      expression = '';
    } else if (value == '❌') {
      if (expression.isNotEmpty) {
        expression = expression.substring(0, expression.length - 1);
      }
    } else if (value == '=') {
      try {
        ShuntingYardParser p = ShuntingYardParser();
        Expression exp = p.parse(expression);

        double result =
            exp.evaluate(EvaluationType.REAL, ContextModel());

        expression = result.toString();
      } catch (e) {
        expression = 'Error';
      }
    } else {
      expression += value;
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Screen
              Container(
                width: 300,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    expression,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button('('),
                  button(')'),
                  button('C'),
                  button('❌'),
                ],
              ),

              // Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button('1'),
                  button('2'),
                  button('3'),
                  button('/'),
                ],
              ),

              // Row 3
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button('4'),
                  button('5'),
                  button('6'),
                  button('*'),
                ],
              ),

              // Row 4
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button('7'),
                  button('8'),
                  button('9'),
                  button('-'),
                ],
              ),

              // Row 5
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button('0'),
                  button('.'),
                  button('='),
                  button('+'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String value) {
    return GestureDetector(
      onTap: () {
        onButtonPressed(value);
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFE0E0E0),
        ),
        child: Center(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}