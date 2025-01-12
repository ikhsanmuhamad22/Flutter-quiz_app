import 'package:flutter/material.dart';
import 'package:quiz_app/button_answer.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('the question...',
              style: TextStyle(color: Colors.white, fontSize: 15)),
          SizedBox(
            height: 20,
          ),
          ButtonAnswer(
            textAnswer: 'answer a',
            onClick: () {},
          ),
          ButtonAnswer(
            textAnswer: 'answer b',
            onClick: () {},
          ),
          ButtonAnswer(
            textAnswer: 'answer c',
            onClick: () {},
          ),
          ButtonAnswer(
            textAnswer: 'answer d',
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
