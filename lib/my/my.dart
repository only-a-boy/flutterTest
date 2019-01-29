import 'package:flutter/material.dart';
import 'package:hello_world/my/view/arc_banner_image.dart';
import 'package:hello_world/logIn/loginPage.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          new Container(
            child: Stack(
              alignment: Alignment(0.0, 1.0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: ArcBannerImage('images/1.png'),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 16.0,
                  right: 16.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new GestureDetector(
                        onTap: () {
                          _login();
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/my_header.png',
                                width: 70.0,
                                height: 70.0,
                              ),
                              Container(
                                margin: new EdgeInsets.only(top: 10.0),
                                child: Dismissible(
                                  key: Key('a'),
                                  direction: DismissDirection.vertical,
                                  resizeDuration: Duration(milliseconds: 200),
                                  child: new Text(
                                    '请点击登录',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                    key: Key('a'),
                                  ),
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //第二个部分
          Container(
            margin: new EdgeInsets.only(top: 30.0, bottom: 1.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.redAccent,
                      size: 25.0,
                    ),
                    Container(
                      child: Text(
                        '收藏',
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.comment,
                      color: Colors.blue,
                      size: 25.0,
                    ),
                    Container(
                      child: Text('评价', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.watch_later,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      child: Text('足迹', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Divider(
              color: Colors.black12,
              height: 2.0,
            ),
            margin: new EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
          ),
          Container(
            child: Text(
              '我的课程',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
            ),
            margin: new EdgeInsets.only(left: 15.0, top: 8.0),
          ),
          //第四个部分
          Container(
            margin: new EdgeInsets.only(top: 30.0, bottom: 1.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.wallpaper,
                      color: Colors.orange,
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('语文', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.card_membership,
                      color: Colors.orange,
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text(
                        '数学',
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.free_breakfast,
                      color: Colors.orange,
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('英语', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.phonelink,
                      color: Colors.orange,
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('物理', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.phonelink,
                      color: Colors.orange,
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('化学', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Divider(
              color: Colors.black12,
              height: 2.0,
            ),
            margin: new EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
          ),
          //第5个部分
          Container(
            margin: new EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width,
            height: 150.0,
            child: Image.asset(
              'assets/images/my.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Text(
              '服务',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.0),
            ),
            margin: new EdgeInsets.only(left: 15.0, top: 8.0),
          ),
          Container(
            child: Divider(
              color: Colors.black12,
              height: 2.0,
            ),
            margin: new EdgeInsets.only(left: 18.0, right: 18.0, top: 10.0),
          ),
          Container(
            margin: new EdgeInsets.only(top: 30.0, bottom: 1.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.local_play,
                      color: Color(0xFFFF80AB),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('写作业', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.memory,
                      color: Colors.orange,
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('写作业', style: TextStyle(fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.headset,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('写作业', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.phonelink,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('好友', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.only(top: 20.0, bottom: 35.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.wallpaper,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('我的文章', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.card_membership,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('我的文章', style: TextStyle(fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.free_breakfast,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('我的文章', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.phonelink,
                      color: Color(0xFF4DD0E1),
                      size: 25.0,
                    ),
                    Container(
                      margin: new EdgeInsets.only(top: 5.0),
                      child: Text('我的文章', style: TextStyle(fontSize: 13.0)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _login() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      print(context);
      return new MyLogin();
    }));
  }

}
