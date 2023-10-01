import 'package:flutter/material.dart';
import 'package:quiz_app/ui/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: const HomeScreen(),
        ),
      ),
    ),
  );
}
