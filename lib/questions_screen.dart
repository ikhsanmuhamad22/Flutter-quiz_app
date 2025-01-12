import 'package:flutter/material.dart';
import 'package:quiz_app/button_answer.dart';
import 'package:quiz_app/data/questions.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  final questionText = questions[0];
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questionText.text,
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...questionText.getAnswerShuffle().map(
              (text) {
                return ButtonAnswer(
                  textAnswer: text,
                  onClick: () {},
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
