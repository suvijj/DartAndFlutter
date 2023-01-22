import 'package:flutter/foundation.dart';

class Workouts {
  String id;
  String title;
  int timesLeft;
  DateTime date;

  Workouts({
   @required this.id,
   @required this.title,
   @required this.timesLeft,
   @required this.date
   });
}