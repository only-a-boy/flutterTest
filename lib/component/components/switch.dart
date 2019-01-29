import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool bval = false;
  void getValue(value) {
    setState(() {
      bval = value;
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(6.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Switch(
              value: bval,
              onChanged: (bool val) {
                getValue(val);
              },
            )
          ],
        ),
      ),
    );
  }
}
