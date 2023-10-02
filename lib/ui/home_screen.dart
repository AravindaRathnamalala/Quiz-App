import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen( this.startQuiz, {super.key} );

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300.0,
              color: const Color.fromARGB(59, 255, 255, 255),
            ),
          const SizedBox(height: 50.0),
          const Text(
            'Learn Flutter in fun way',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 50.0),
          OutlinedButton.icon(
            onPressed: () => {startQuiz()}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz')
            ),
        ],
      ),
    );
  }
}
