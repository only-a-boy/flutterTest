import 'package:flutter/material.dart';
import 'package:hello_world/charts/charts.dart';

class AssessmentPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('统计'),
          actions: <Widget>[
            new Container(),
          ],
        ),
        body: new Center(
          child: new ChartsPage(),
        ),
      )
    );
  }
}