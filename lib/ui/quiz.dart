import 'package:flutter/material.dart';
import 'package:quiz_app/ui/home_screen.dart';
import 'package:quiz_app/ui/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  var activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: activeScreen == 'start-screen'
              ? HomeScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}