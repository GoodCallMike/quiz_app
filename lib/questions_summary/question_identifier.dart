import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrectAnswer, required this.questionIndex});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrectAnswer
              ? Color.fromARGB(255, 121, 206, 124)
              : const Color.fromARGB(255, 208, 89, 89),
          borderRadius: BorderRadius.circular(100),
        ),
        child: isCorrectAnswer
            ? const Icon(
                Icons.check,
                color: Colors.white,
              )
            : Icon(
                Icons.close,
                color: Colors.white,
              ),
      ),
    );
  }
}
