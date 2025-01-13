import 'package:flutter/material.dart';
import 'package:quiz_app/button_answer.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.selectedAnswer});

  final void Function(String answer) selectedAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.selectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questionText = questions[currentQuestionIndex];
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
              style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...questionText.getAnswerShuffle().map(
              (text) {
                return ButtonAnswer(
                  textAnswer: text,
                  onClick: () {
                    answerQuestion(text);
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
