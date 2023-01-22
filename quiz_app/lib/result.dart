
import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'xx';
    if (resultScore >= 25 ) {
      resultText = 'You would be a terrible hedgehog';
    } else if (resultScore >= 15){
      resultText = 'You would be an okay hedgehog';
    } else  {
      resultText = 'You would be a great hedgehog!';
    } 
    return resultText;
  }
  
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
       Text(
        resultPhrase,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,),
        TextButton(onPressed: resetHandler, child: Text('Restart'))
      ],)
    );
  }
}