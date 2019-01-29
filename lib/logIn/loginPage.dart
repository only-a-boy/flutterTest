import 'package:flutter/material.dart';
import 'package:hello_world/logIn/registerPage.dart';

//登录按钮
class LoginButton extends StatelessWidget {
  final String userName;
  final String Password;
  LoginButton({Key k, this.userName, this.Password});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: OutlineButton(
          borderSide: BorderSide(
              color: Colors.lightBlueAccent,
              width: 3.0,
              style: BorderStyle.none),
          onPressed: () {
            print("111");
            if (1212 != '123456' || 1212 != '123456') {
              final snackBar = SnackBar(
                content: Text('用户名和密码错误!'),
                action: SnackBarAction(
                    label: '退出',
                    onPressed: () {
                      Navigator.of(context).pop(this);
                    }),
              );

              // Find the Scaffold in the Widget tree and use it to show a SnackBar!
              Scaffold.of(context).showSnackBar(snackBar);
            }
          },
          child: new Text(
            '登陆',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
        height: 45.0,
        decoration: new BoxDecoration(
            color: Color(0xFFB2EBF2),
            borderRadius: BorderRadius.all(const Radius.circular(58.0))),
      ),
      margin: new EdgeInsets.symmetric(horizontal: 60.0),
    );
  }
}

class MyLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyLoginState();
}

class MyLoginState extends State<MyLogin> with TickerProviderStateMixin {
  final scaffoldState = GlobalKey<ScaffoldState>();

  AppLifecycleState _lastLifecycleState;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  String _userPhone;
  String _passWold;

  AnimationController animationController;

  @override
  void dispose() {
    // WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height_screen = MediaQuery.of(context).size.height;
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
            //alignment: Alignment(0.1, 0.3),
            children: <Widget>[
              new Container(
                alignment: Alignment.topCenter,
              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.only(
                    top: 190.0, right: 50.0, left: 50.0, bottom: 100.0),
                elevation: 11.0,
                child: Container(
                  alignment: Alignment.center,
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
                          // enabled: !snapshot.data,
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.black),
                          decoration: new InputDecoration(
                              hintText: '请输入您的用户名',
                              labelText: "用户名",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 13.0),
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
                                  fontWeight: FontWeight.w700, fontSize: 13.0),
                              hintStyle: TextStyle(fontSize: 12.0)),
                        ),
                        new SizedBox(
                          height: 50.0,
                        ),
                        Material(
                          elevation: 10.0,
                          color: Colors.transparent,
                          shape: const StadiumBorder(),
                          child: InkWell(
                            onTap: () {
                              //登陆
                              print(_userPhone);
                              print(_passWold);
                              Navigator.pop(context);
                              // Navigator.of(context).pop();
                            },
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
                                  '登录',
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
                                Navigator.of(context).push(new PageRouteBuilder(
                                  opaque: false,
                                  pageBuilder: (BuildContext context, _, __) {
                                    return new RegistPager();
                                  },
                                ));
                              },
                              splashColor: Colors.purpleAccent,
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF4DD0E1),
                                    Color(0xFF00838F)
                                  ],
                                )),
                                child: Text(
                                  '注册',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        )
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
