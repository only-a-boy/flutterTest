import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool bval = false;
  void method1(value) {
    setState(() {
      bval = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("侧边栏"),
          backgroundColor: Colors.green,
        ),
        drawer: new Drawer(
          child: new Container(
            height: 100.0,
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('测试一下'),
                  accountEmail: new Text('test@gmail.com'),
                  currentAccountPicture: new CircleAvatar(
                    backgroundColor: Colors.black26,
                    child: new Text('shi'),
                  ),
                  decoration: new BoxDecoration(color: Colors.blueAccent),
                  otherAccountsPictures: <Widget>[
                    new CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: new Text('test'),
                    ),
                    new CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: new Text('test'),
                    ),
                  ],
                ),
                new ListTile(
                  title: new Text('详情1'),
                  trailing: new Icon(Icons.accessibility),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                new ListTile(
                  title: new Text('详情2'),
                  trailing: new Icon(Icons.accessibility),
                ),
                new ListTile(
                  title: new Text('详情3'),
                  trailing: new Icon(Icons.accessibility),
                )
              ],
            ),
          ),
        ));
  }
}
