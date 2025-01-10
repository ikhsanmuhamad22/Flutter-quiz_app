import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(
            255,
            35,
            4,
            107,
          ),
          Color.fromARGB(255, 72, 9, 101)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 200,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Color.fromARGB(
                  255,
                  35,
                  4,
                  107,
                ))),
                child: Text(
                  'Start Quiz',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
