import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
      {
        'questionText': 'Do you like hedgehogs?', 
        'answers': [{'text':'Yes', 'score': 10}, {'text':'A bit', 'score': 5}, {'text':'No', 'score': 0}],
      },
      {
        'questionText': 'Do you eat meat?', 
        'answers': [{'text':'I love meat', 'score': 0}, {'text':'Sometimes', 'score': 5}, {'text':'No', 'score': 10}],
      },
      {
        'questionText': 'Are you afraid of bugs?',
        'answers': [{'text':'YES', 'score': 10}, {'text':'It depends', 'score': 5}, {'text':'Not at all!', 'score': 0}],
      },
      {
        'questionText': 'Are you a early bird?',
        'answers': [{'text':'Yes, I love waking up', 'score': 10}, {'text':'Sometimes', 'score': 5}, {'text':'Zzzz what?', 'score': 0}],
      },
  ];
var _questionIndex = 0;
var _totalScore = 0;

void _reset() {
  setState(() {
      _questionIndex = 0;
      _totalScore = 0;
  });

}

void _answerQuestion(int score) {

  _totalScore = _totalScore + score;

  setState(() {
    _questionIndex = _questionIndex + 1;
  });

  print(_questionIndex);
  if(_questionIndex < _questions.length) {
    print('More questions comin');
  } else {
    print('This is it');
  }
}

Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Are you a hedgehog?'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions)
            : Result(_totalScore, _reset), 
      ),
    );
  }
}
