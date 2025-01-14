import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summry.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswer, required this.restartQuiz});

  final List<String> chosenAnswer;
  final void Function() restartQuiz;

  List<Map<String, Object>> getDataSummery() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summery.add({
        'questions_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswer[i]
      });
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final dataSammry = getDataSummery();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = dataSammry.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
                style: GoogleFonts.lato(color: Colors.white, fontSize: 15)),
            SizedBox(
              height: 30,
            ),
            QuestionsSummery(summeryData: getDataSummery()),
            SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: Icon(
                Icons.restart_alt,
                color: Colors.white,
              ),
              onPressed: restartQuiz,
              label: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
