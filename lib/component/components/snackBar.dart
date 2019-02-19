import 'package:flutter/material.dart';

class MySnackBar extends StatefulWidget {
  @override
  createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  bool bval = false;
  void method1(value) {
    setState(() {
      bval = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();
    void getValue() {
      _skey.currentState.showSnackBar(new SnackBar(
        content: new Text('您有一条新的消息，请查看'),
        backgroundColor: Colors.blue,
      ));
    }

    return new Scaffold(
      key: _skey,
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            getValue();
          },
          child: new Text('显示消息'),
        ),
      ),
    );
  }
}
