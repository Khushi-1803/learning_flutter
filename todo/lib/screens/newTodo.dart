
import 'package:flutter/material.dart';

class Newtodo extends StatefulWidget {
  final Function(String, String) onSave;

  const Newtodo({super.key, required this.onSave});

  @override
  State<Newtodo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newtodo> {

  final snoController = TextEditingController();
  final titleController = TextEditingController();

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

            TextField(
              controller: snoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter S.No.',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Enter Title',
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                widget.onSave(
                  snoController.text,
                  titleController.text,
                );

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
