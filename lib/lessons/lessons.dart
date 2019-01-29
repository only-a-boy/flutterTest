import 'package:flutter/material.dart';
import 'package:hello_world/widget/datePicker/datePicker.dart';

class LessonsPage extends StatefulWidget {
  @override
  createState() => new _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new DatePicker(),
    );
  }
}