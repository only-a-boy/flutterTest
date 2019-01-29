import 'package:flutter/material.dart';
import 'package:hello_world/todo/todo.dart';

class NoticePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('通知'),
          actions: <Widget>[
            new Container(),
          ],
        ),
        body: new TodoPage(),
      )
    );
  }
}