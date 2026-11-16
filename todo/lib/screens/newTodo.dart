
import 'package:flutter/material.dart';

class Newtodo extends StatefulWidget {
  const Newtodo({super.key});

  @override
  State<Newtodo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newtodo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'New Todo',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter S.No.',
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter Title',
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
