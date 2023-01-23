import 'package:flutter/material.dart';
import 'package:quiz_app/workouts.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Workouts> workouts = [
    Workouts(id: 'w1', title: '5k walk', timesLeft: 2, date: DateTime.now(),),
    Workouts(id: '2', title: '10 pushups', timesLeft: 2, date: DateTime.now(),)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Container( //<-- tämän ylle vielä yksi card tjsp. "pelillistetty hahmo", "pisteet" yms.
          width: double.infinity,
          child: Card(
            child: Text('CHART'),
            elevation: 5
          ),
        ),
        Card(child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Times Done'),
            ),
            TextButton(
              onPressed: (){}, child: Text('Add Workout'))
          ],
        ),),
        Column(children: workouts.map((wo) {
          return Card(
            child: Row(
              children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 15, horizontal: 15
                  ),
                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                  wo.timesLeft.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20)
                  ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(wo.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text(DateFormat('dd/MM/yyyy').format(wo.date),
                      style: TextStyle(color: Colors.grey))
                  ],)
            ],),);
        }).toList(),),
      ],
      ),
    );
  }
}
