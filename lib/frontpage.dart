import 'package:flutter/material.dart';

import 'package:quiz_app/styled_text.dart';
// import 'package:quiz_app/quizapp.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({this.startQuiz, super.key});

  final void Function()? startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 220,
            height: 220,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const StyledText(
            'Learn Flutter The Fun Way',
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              side: const BorderSide(
                color: Color.fromARGB(255, 127, 37, 157),
                width: 0.5,
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
