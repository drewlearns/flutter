import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
          children: /*<Widget>*/ [
            Text('The Question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ], //children
        ), //Column
      ), //Scaffold
    ); //Material App
  } //build
} //MyApp

//Diferent Types of Widgets:
/*
1. ouput and input (visible) 
  like RaisedButton(), Text(), Card()
    Drawn onto the screen: "what the user sees"
2. layout & control (invisible)
  like Row(), Column(),ListView(),...
  gives your app structure and control how visible widgets are drawn onto the screen (indirectly visible)
    Built into flutter
3. container() widgets by default are invisible but can have styling so you can see it
*/
