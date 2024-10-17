import 'package:flutter/material.dart';
import 'package:quiz_app/frontpage.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

// Quiz class
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

// State class
class _QuizState extends State<Quiz> {
  String page = "FrontPage";
  final List<String> answers = [];

  void startQuiz() {
    setState(() {
      page = "Questions";
    });
  }

  void endQuiz() {
    setState(() {
      page = "EndPage";
    });
  }

  void retryQuiz() {
    setState(() {
      page = "FrontPage";
      answers.clear();
    });
  }

  @override
  Widget build(context) {
    Widget page = FrontPage(startQuiz: startQuiz);
    if (this.page == "Questions") {
      page = QuestionsScreen(endQuiz: endQuiz, answers: answers);
    }
    if (this.page == "EndPage") {
      page = ResultsScreen(retryQuiz: retryQuiz, answers: answers);
    }
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 149, 8, 225),
            Color.fromARGB(255, 127, 37, 157),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: page,
    );
  }
}
