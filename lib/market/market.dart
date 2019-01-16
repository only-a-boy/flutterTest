import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('市场'),
          actions: <Widget>[
            new Container(),
          ],
        ),
        body: new Center(
          child: null,
        ),
      )
    );
  }
}