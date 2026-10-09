import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.redirectScreen, {super.key});
  final void Function() redirectScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz.png',
            width: 250,
            color: const Color.fromARGB(153, 255, 255, 255)
          ),

          const SizedBox(height: 20),

          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: redirectScreen, // Call the redirectScreen function to switch to the next screen
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Start Quiz',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
