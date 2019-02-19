import 'package:flutter/material.dart';
import 'package:hello_world/http/route.dart';
import 'package:hello_world/http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyLoginState();
}

class MyLoginState extends State<MyLogin> with TickerProviderStateMixin {
  final scaffoldState = GlobalKey<ScaffoldState>();

  String _userPhone;
  String _passWold;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width_srcreen = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: scaffoldState,
      backgroundColor: Colors.white,
      body: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Card(
                color: Colors.white70,
                margin: EdgeInsets.only(top: 25.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/images/login1.jpg'),
                      centerSlice:
                          new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                    ),
                  ),
                  width: width_srcreen - 120,
                  child: new Container(
                    margin: new EdgeInsets.all(16.0),
                    child: ListView(
                      children: <Widget>[
                        new SizedBox(
                          height: 30.0,
                        ),
                        new TextField(
                          onChanged: (phone) => _userPhone = phone,
                          decoration: new InputDecoration(
                            hintText: '请输入您的用户名',
                            labelText: "用户名",
                          ),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new TextField(
                          onChanged: (world) => _passWold = world,
                          decoration: new InputDecoration(
                            hintText: '请输入您的密码',
                            labelText: "密码",
                          ),
                        ),
                        new SizedBox(
                          height: 50.0,
                        ),
                        Material(
                          color: Colors.transparent,
                          shape: const StadiumBorder(),
                          child: InkWell(
                            splashColor: Colors.purpleAccent,
                            child: Ink(
                              height: 60.0,
                              child: new Padding(
                                padding: new EdgeInsets.fromLTRB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new OutlineButton(
                                        borderSide:
                                            new BorderSide(color: Colors.blue),
                                        child: new Text(
                                          '登录',
                                          style:
                                              new TextStyle(color: Colors.blue),
                                        ),
                                        onPressed: () {
                                          _login(
                                              _userPhone, _passWold, context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          shape: const StadiumBorder(),
                          child: InkWell(
                            splashColor: Colors.purpleAccent,
                            child: Ink(
                              height: 60.0,
                              child: new Padding(
                                padding: new EdgeInsets.fromLTRB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: new Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new OutlineButton(
                                        borderSide: new BorderSide(
                                            color: Colors.orange),
                                        child: new Text('注册',
                                            style: new TextStyle(
                                              color: Colors.orange,
                                            )),
                                        onPressed: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: const FractionalOffset(0.5, 0.0),
              end: const FractionalOffset(0.5, 1.0),
              colors: <Color>[Colors.white, Color(0xFFD7CCC8)],
            ),
          ),
        ),
      ),
    );
  }
}

void _login(String name, String password, BuildContext context) {
  print(name);

  print(password);

  var headers = {
    'Content-Type': 'application/json',
    'Operation-Center': IOMS_OPERATION_CENTER,
    'X-Requested-With': 'XMLHttpRequest',
  };

  var data = {
    'username': name,
    'password': password,
  };

  HttpApi.post('api/ucs/login', 'UCS', data, headers)
    .then((data) {
      if (data.isOk()) {
        if (data.body['ajaxResult']['result'] == true) {
          data = data.body['ajaxResult']['data'];
          SharedPreferences.getInstance()
            .then((prefs) {
              // 设置value
              prefs.setString('token', data['token']);

              var token = prefs.getString('token');

              print('token=' + token);

              Navigator.of(context).pop(data['realName']);
            });
        }
      }
    });
}
