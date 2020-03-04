import 'package:flutter/material.dart';

import './answers.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final dynamic answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ), 
    );
  } // Build Widget
} // Answer