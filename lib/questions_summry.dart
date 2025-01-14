import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery({super.key, required this.summeryData});
  final List<Map<String, Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summeryData.map((data) {
          return Row(
            children: [
              Text(((data['questions_index'] as int) + 1).toString()),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(data['question'] as String),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
