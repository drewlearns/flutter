class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    );
  } //Build Widget
} // Question class
