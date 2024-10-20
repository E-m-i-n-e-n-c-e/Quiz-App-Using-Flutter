class QuizQuestion {
  const QuizQuestion(
    this.question,
    this.options,
  );

  final String question;
  final List<String> options;

  List<String> getShuffledOptions() {
    final shuffledOptions = List.of(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }

  String getCorrectOption() {
    return options[0];
  }
}
