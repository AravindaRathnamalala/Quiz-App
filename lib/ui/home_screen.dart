import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300.0,
          ),
          const SizedBox(height: 50.0),
          const Text(
            'Learn Flutter in fun way',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 50.0),
          OutlinedButton(
            onPressed: () => {}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text('Start Quiz')
            ),
        ],
      ),
    );
  }
}
