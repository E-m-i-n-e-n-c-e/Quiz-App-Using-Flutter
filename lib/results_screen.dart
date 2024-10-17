import 'package:flutter/material.dart';
import 'package:quiz_app/data/ques_list.dart';
import 'package:quiz_app/styled_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.retryQuiz, required this.answers});

  final void Function() retryQuiz;
  final List<String> answers;
  int computeScore() {
    int score = 0;
    for (int i = 0; i < answers.length; i++) {
      if (answers[i] == questions[i].getCorrectOption()) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(context) {
    var score = computeScore();
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const StyledText(
            'Quiz Completed',
            fontSize: 25,
          ),
          const SizedBox(height: 20),
          StyledText(
            'Your Score: $score/${questions.length}',
            fontSize: 20,
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: retryQuiz,
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
              Icons.refresh,
              color: Colors.white,
            ),
            label: const Text(
              'Retry Quiz',
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
