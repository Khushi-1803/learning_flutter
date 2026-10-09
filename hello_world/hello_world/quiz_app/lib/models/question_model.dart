class QuizQuestion {
  const QuizQuestion({
    required this.questionText,
    required this.options,
  });

  final String questionText;
  final List<String> options;

  List<String> getShuffledOptions() {
    final shuffledOptions = List.of(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}