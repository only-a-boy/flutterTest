import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  @override
  createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String rValue = '';

  void getValue(value) {
    setState(() {
      rValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(6.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Row(children: <Widget>[
            new Text('苹果'),
            new Radio(
                value: '苹果',
                groupValue: rValue,
                onChanged: (String rval) {
                  getValue(rval);
                }),
          ]),
          new Row(children: <Widget>[
            new Text('草莓'),
            new Radio(
                value: '草莓',
                groupValue: rValue,
                onChanged: (String rval) {
                  getValue(rval);
                }),
          ]),
          new Row(children: <Widget>[
            new Text('香蕉'),
            new Radio(
                value: '香蕉',
                groupValue: rValue,
                onChanged: (String rval) {
                  getValue(rval);
                }),
          ]),
          // new Column(children: <Widget>[new Text('选择的是:$rValue')])
        ],
      ),
    );
  }
}
