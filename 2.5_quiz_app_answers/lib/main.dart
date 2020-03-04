import 'package:flutter/material.dart';

// import './answers.dart';
// import './question.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  } //createState
} //MyApp

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [{'text': 'Black', 'score': 10}, {'text': 'red', 'score': 6}, {'text': 'green', 'score': 3}, {'text': 'white', 'score': 1},],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [{'text': 'Dog', 'score': 0}, {'text': 'Cat', 'score': 10}, {'text': 'Bird', 'score': 8}, {'text': 'Fish', 'score': 10}],
    },
    {
      'questionText': 'What\'s your favorite car manufacturer?',
      'answers': [{'text': 'Ford', 'score': 10}, {'text': 'Honda', 'score': 5}, {'text': 'Tesla', 'score': 0}, {'text': 'Toyota', 'score': 5}],
    },
  ];

  var _questionIndex = 0; //could use int instead of var but dart infers and this is a better practice
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) { 
    // int _totalScore = 0;
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('We have no more questions');
    }
  } //answerQuestion

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length 
          ? Quiz(
            answerQuestion: _answerQuestion, 
            questionIndex: _questionIndex, 
            questions: _questions,
          )
          : Result(_totalScore, _resetQuiz),
      ),
    );
  } //build
} //MyApp

//NOTES:
/*
*/
