import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, {super.key});

  final String text;

  @override
Widget build(BuildContext context) {
  return Container(
    color: Colors.white,
    alignment: Alignment.center,
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.deepOrangeAccent,
        fontSize: 28,
      ),
    ),
  );
}

}
