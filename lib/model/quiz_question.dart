class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;
  List<String> getQuestionAnswers() {
    final questionAnswerList = List.of(answers);
    return questionAnswerList;
  }
}
