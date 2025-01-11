import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 42, 10, 118),
              Color.fromARGB(255, 72, 9, 101)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: StartScreen())
    ),
  ));
}
