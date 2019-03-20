import 'package:flutter/material.dart';
import 'package:hello_world/http/http.dart';
import 'package:hello_world/line/line.dart';
import 'package:hello_world/device/sideBar.dart';

class MyDevice extends StatefulWidget {
  @override
  createState() => _MyDeviceState();
}

class _MyDeviceState extends State<MyDevice> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("设备列表"),
          backgroundColor: Colors.green,
        ),
        drawer: new Drawer(
          child: new Container(
            height: 100,
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: new Text('线路列表'),
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
                MyLinePage()
              ],
            ),
          ),
        ),
        body: MySideBar(),
      );
        
  }
}
