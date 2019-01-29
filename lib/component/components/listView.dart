import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  @override
  createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'dummy application',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('List widget'),
          ),
          body: new ListView(
            children: <Widget>[
              new ListTile(
                title: new Text('item 1dd'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: new Text('item 2'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: new Text('item 3'),
                trailing: new Icon(Icons.arrow_forward),
              ),
            ],
          ),
        )
    );
  }
}