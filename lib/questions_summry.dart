import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: data['user_answer'] == data['correct_answer']
                          ? Color.fromARGB(255, 50, 135, 204)
                          : Color.fromARGB(255, 216, 33, 183)),
                  child: Text(
                    ((data['questions_index'] as int) + 1).toString(),
                  ),
                ),
              SizedBox(
                  width: 20,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                      Text(data['user_answer'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 50, 135, 204))),
                      Text(data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 216, 33, 183))),
                  ],
                ),
                ),
            ],
          );
          }).toList(),
        ),
      ),
    );
  }
}
