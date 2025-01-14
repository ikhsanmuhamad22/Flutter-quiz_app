import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  List<Map<String, Object>> getDataSummery() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summery.add({
        'questions_index': i,
        'question': questions[0].text,
        'correct_answer': questions[0].answer[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X of Y correctly'),
            SizedBox(
              height: 30,
            ),
            Text('This is the list of your answer'),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
