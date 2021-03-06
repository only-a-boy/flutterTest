// import 'package:hello_world/widget/utils/MyContainImage.dart';
// import 'package:hello_world/widget/utils/MyContain.dart';
// import 'package:hello_world/http/httpUtils.dart';
// import 'package:hello_world/showmain.dart';
// import 'package:hello_world/other/sqlUtils.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

class RegistPager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RegistPagerState();
  }
}

class RegistPagerState extends State<RegistPager>
    with SingleTickerProviderStateMixin {
  String _userPhone;
  String _passWold;

  @override
  Widget build(BuildContext context) {
    final height_screen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: new BoxDecoration(
              color: Colors.blue,
              gradient: new LinearGradient(
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.5, 1.0),
                colors: <Color>[Color(0xFF4DD0E1), Colors.white70],
              ),
            ),
            padding: new EdgeInsets.only(top: 150.0),
            child: SizedBox(
              height: height_screen * 4 / 7,
              child: Card(
                elevation: 10.0,
                margin: EdgeInsets.only(
                    top: 0.0, left: 40.0, right: 40.0, bottom: 60.0),
                child: Stack(
                  alignment: Alignment(0.0, 1.0),
                  children: <Widget>[
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(left: 40.0, right: 40.0),
                        child: ListView(
                          children: <Widget>[
                            new SizedBox(
                              height: 150.0,
                            ),
                            new TextField(
                              onChanged: (phone) => _userPhone = phone,
                              // enabled: !snapshot.data,
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                              decoration: new InputDecoration(
                                  hintText: '请输入您的用户名',
                                  labelText: "用户名",
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0),
                                  hintStyle: TextStyle(fontSize: 12.0)),
                            ),
                            new SizedBox(
                              height: 10.0,
                            ),
                            new TextField(
                              onChanged: (world) => _passWold = world,
                              // enabled: !snapshot.data,
                              style: new TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                              decoration: new InputDecoration(
                                  hintText: '请输入您的密码',
                                  labelText: "密码",
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.0),
                                  hintStyle: TextStyle(fontSize: 12.0)),
                            ),
                            new SizedBox(
                              height: 40.0,
                            ),
                            Material(
                              //带给我们Material的美丽风格美滋滋。你也多看看这个布局
                              elevation: 10.0,
                              color: Colors.transparent,
                              shape: const StadiumBorder(),
                              child: InkWell(
                                onTap: () {
                                  //登陆
                                  print(_userPhone);
                                  print(_passWold);
                                },
                                //来个飞溅美滋滋。
                                splashColor: Colors.purpleAccent,
                                child: Ink(
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF4DD0E1),
                                      Color(0xFF00838F)
                                    ],
                                  )),
                                  child: Center(
                                    child: Text(
                                      '注册',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    '去登录',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
