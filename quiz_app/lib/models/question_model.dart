class QuizQuestion {
  const QuizQuestion({
    required this.questionText,
    required this.options,
  });

  final String questionText;
  final List<String> options;
}