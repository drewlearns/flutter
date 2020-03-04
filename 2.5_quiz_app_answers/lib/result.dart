import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12){
      resultText = 'You are awesome, but probably not gunna make it as friends.';
    }else if(resultScore <= 8) {
      resultText = 'You are likable, I\'m sure!';
    }else if(resultScore <= 5) {
      resultText = 'Did we just become best friends?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center (
        child: 
          Column(
            children: <Widget> [ 
              Text(
                resultPhrase, 
                style: 
                  TextStyle(
                    fontSize: 36, 
                    fontWeight: FontWeight.bold
                  ), 
                textAlign: TextAlign.center,
                ),
              FlatButton(
                  child: Text('Restart Quiz'), 
                  textColor: Colors.blue, 
                  onPressed: resetHandler,
              ),
            ]
          )
    );
  }
}