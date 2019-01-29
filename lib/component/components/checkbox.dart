import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: const EdgeInsets.all(6.0),
        child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Row(children: <Widget>[
                new Text('苹果'),
                new Checkbox(
                    value: select1,
                    onChanged: (bool cb) {
                      setState(() {
                        select1 = cb;
                        print(select1);
                      });
                    })
              ]),
              new Row(children: <Widget>[
                new Text('草莓'),
                new Checkbox(
                    value: select2,
                    onChanged: (bool cb) {
                      setState(() {
                        select2 = cb;
                        print(select2);
                      });
                    })
              ]),
              new Row(children: <Widget>[
                new Text('香蕉'),
                new Checkbox(
                    value: select3,
                    onChanged: (bool cb) {
                      setState(() {
                        select3 = cb;
                        print(select3);
                      });
                    })
              ]),
            ]));
  }
}
