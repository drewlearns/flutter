import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  } //createState
} //MyApp

class MyAppState extends State<MyApp> {
  var questionIndex = 0; //could use int instead of var but dart infers and this is a better practice

  void answerQuestion(){
    setState((){
    questionIndex ++;
    });
    print(questionIndex);
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
          children: /*<Widget>*/ [
            Text(
              questions[questionIndex],
              // questions[0],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
          ], //children
        ), //Column
      ), //Scaffold
    ); //Material App
  } //build
} //MyApp

//NOTES:
/*
Widgets are just Dart objects. They need to extend StatelessWidget or StatefulWidget though (and implement a build() method)
Most Widgets have some (named) arguments that require another Widget - e.g. the "children" argument on the Column() constructor. Or "child" on Container().
Widgets are normal Dart classes / objects. But they're only usable as Widgets if you extend StatelessWidget or StatefulWidget and add a build() method.

STATE
In general state is data/information used by the app

app state example: authenticated users, loaded jobs
Widget state example: current user input, is a loading spinner being shown?
A stateless widget, unironically, can't have state.  Text() is a stateless widget that doesn't update or change date (state)

STATEFULL VS STATELESS

Stateless: 
  input date (data can change externally)=> widget => renders UI (gets re-rendered when input data changes)
  Whilst you can add (and also change) properties in a StatelessWidget, there's no way of telling Flutter that it should re-run build() upon such changes.

Stateful:
  input data (data can change externally) => widget (internal state) => Renders UI (gets re-rendered when input data changes or local state changes)

All widgets (i.e. both Stateless and Stateful) can receive data via their constructors. But only StatefulWidgets can have class properties where they can update values + re-run build().

setState() is a "trigger" that informs Flutter that it needs to re-run build() of the Widget.

*/
