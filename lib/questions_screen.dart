import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/ques_list.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key, required this.endQuiz, required this.answers});

  final List<String> answers;
  final void Function() endQuiz;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  void answerQuestion(String answer) {
    setState(
      () {
        widget.answers.add(answer);
        questionIndex = (questionIndex + 1);

        if (questionIndex >= questions.length) {
          widget.endQuiz();
        }
      },
    );
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[questionIndex];
    return Container(
      margin: const EdgeInsets.all(30),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(
              currentQuestion.question,
              transparency: 220,
              fontSize: 21,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledOptions().map(
              (option) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AnswerButton(
                      text: option,
                      onTap: () {
                        answerQuestion(option);
                      },
                    ),
                    const SizedBox(height: 10), // Adjust the height as needed
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
