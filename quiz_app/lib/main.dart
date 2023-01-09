import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
var questionIndex = 0;

void answerQuestion() {
  setState(() {
      questionIndex = questionIndex + 1;
  });

  print('Answer chosen');
}

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Do you like hedgehogs?',
      'Do you eat meat?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Quiz App'),), //Appbar
      body: Column(
        children: [
          Question(
            questions[questionIndex]
          ),
          ElevatedButton(child: Text('Yes'), onPressed: answerQuestion,),
          ElevatedButton(child: Text('A bit'), onPressed: answerQuestion,),
          ElevatedButton(child: Text('No'), onPressed: answerQuestion,),
        ]),
      ),
      );
  }
}
