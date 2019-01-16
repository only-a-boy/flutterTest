import 'package:flutter/material.dart';
import 'package:hello_world/charts/charts.dart';

class IdeaPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('想法'),
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