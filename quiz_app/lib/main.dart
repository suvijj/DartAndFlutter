import 'package:flutter/material.dart';

void main() {
 runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Quiz App'),
      ),
      body: Text('Default'),
    ),);
  }
}