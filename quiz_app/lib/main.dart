import 'package:flutter/material.dart';
import './quiz.dart';

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
static const questions = [
      {
        'questionText': 'Do you like hedgehogs?', 
        'answers': ['Yes', ' A bit', 'No'],
      },
      {
        'questionText': 'Do you eat meat?', 
        'answers': ['I love meat', ' Sometimes', 'No'],
      },
      {
        'questionText': 'Are you afraid of bugs?',
        'answers': ['YES!', 'It depends', 'Not at all'],
      },
      {
        'questionText': 'Are you a early bird?',
        'answers': ['I love waking up', 'Sometimes', 'Zzzz what?'],
      },
];

var _questionIndex = 0;



void _answerQuestion() {
  if(_questionIndex < questions.length) { 
    setState(() {
    _questionIndex = _questionIndex + 1;
  });}
 
  print('Answer chosen');
}

Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                Question(questions[_questionIndex]['questionText']),
                for (var e in questions[_questionIndex]['answers'])
                 Answer(_answerQuestion, e),
],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
