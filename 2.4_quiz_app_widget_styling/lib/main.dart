import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  } //createState
} //MyApp

class _MyAppState extends State<MyApp> {
  var _questionIndex =
      0; //could use int instead of var but dart infers and this is a better practice

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  } //answerQuestion

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ), //AppBar
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              }, // onPressed
            ),
          ], // children
        ),
      ),
    );
  } //build
} //MyApp



//NOTES:
/*
*/
