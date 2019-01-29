import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildAlertButton(context);
  }
}

@override
Widget _buildAlertButton(BuildContext context) {
  return new Container(
      alignment: Alignment.center,
      child: new Container(
        child: _buildButton(context),
      ));
}

Widget _buildButton(BuildContext context) {
  return new RaisedButton(
      padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      //padding
      child: new Text(
        'show dialog',
        style: new TextStyle(
          fontSize: 18.0, //textsize
          color: Colors.white, // textcolor
        ),
      ),
      color: Theme.of(context).accentColor,
      elevation: 4.0,
      //shadow
      splashColor: Colors.blueGrey,
      onPressed: () {
        showAlertDialog(context);
      });
}

void showAlertDialog(BuildContext context) {
  NavigatorState navigator =
      context.rootAncestorStateOfType(const TypeMatcher<NavigatorState>());
  debugPrint("navigator is null?" + (navigator == null).toString());

  showDialog(
      context: context,
      builder: (_) => new AlertDialog(
              title: new Text("操作提示"),
              content: new Text("这里是内容"),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("取消"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                new FlatButton(
                  child: new Text("确定"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ]));
}
