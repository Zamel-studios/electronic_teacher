class Question {
  late String question_text;
  late List<String> options;
  late int correct_option_index;
  Question(
      {required this.question_text,
      required this.options,
      required this.correct_option_index});
  bool isCorrect(int selected_option_index) {
    return selected_option_index == correct_option_index;
  }
}

