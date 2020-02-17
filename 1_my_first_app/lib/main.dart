import 'package:flutter/material.dart'; //built in google pre-styled base class such as StatelessWidget

// void main() { //main function that returns nothing (void)
//   runApp(MyApp()); //Material dart file from google
// }
//This function ^ takes the widget object you pass to it and ensures that the widget tree of that widget gets created.
void main() => runApp(MyApp()); //arrow function

// //The following draws the app on the screen using "build" method
// // classes always are pascal case
// class MyApp extends StatelessWidget { //extends means that it's built on top of a provided widget
//   @override // technically not required, decorator - provided by dart.  It makes our code clear and clean
//   Widget build(BuildContext context){ //BuildContext is a n object type
//     return MaterialApp(home: Text('Hello'),); //MatericalApp is the basic styling for flutter we pass into it the text widget
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ), //provided by dart
        body: Text('This is my default text!'),
      ),
    );
  }
}
//build() returns a so-called "widget tree" which tells Flutter what to draw onto the screen.
//Flutter is all about buildings apps and for that, you need user interfaces. You build these user interfaces with Widgets => The core UI building blocks.
