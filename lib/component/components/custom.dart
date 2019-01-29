import 'package:flutter/material.dart';

class CustomWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.pink,
      child: new Container(
        color: Colors.purple,
        margin: const EdgeInsets.all(10.0),
        child: new Container(
          color: Colors.orange,
          margin: const EdgeInsets.all(10.0),
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(10.0)
          ),
        )
      )
    );
  }
}