import 'package:flutter/material.dart';

class ButtonAnswer extends StatelessWidget {
  const ButtonAnswer(
      {super.key, required this.textAnswer, required this.onClick});

  final String textAnswer;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 30, 8, 82),
      ),
      onPressed: onClick,
      child: Text(
        textAnswer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
