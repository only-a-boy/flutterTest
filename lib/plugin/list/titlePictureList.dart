import 'package:flutter/material.dart';

class TitlePicture {
  const TitlePicture({this.id, this.title, this.picturePath});

  final int id;
  final String title;
  final String picturePath;
}

const List<TitlePicture> titlePictures = const <TitlePicture>[
  const TitlePicture(
      id: 1, title: '今年高考语文好难啊！', picturePath: 'assets/images/my.jpg'),
  const TitlePicture(
      id: 2, title: '今年高考数学好难啊！', picturePath: 'assets/images/my_header.png'),
  const TitlePicture(
      id: 3, title: '今年高考英语好难啊！', picturePath: 'assets/images/my.jpg'),
];

class TitlePictureList extends StatefulWidget {
  @override
  createState() => new _TitlePictureListState();
}

class _TitlePictureListState extends State<TitlePictureList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          ListBody(
            mainAxis: Axis.vertical,
            reverse: false,
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _openViewPage();
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻：不断胜利才能洗涮1-5耻辱 晋级还靠7-11连线'),
                          new Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football1.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football2.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football3.jpg",
                                    height: 60),
                              )
                            ],
                          )
                        ])),
              ),
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _openViewPage();
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻：不断胜利才能洗涮1-5耻辱 晋级还靠7-11连线'),
                          new Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football1.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football2.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football3.jpg",
                                    height: 60),
                              )
                            ],
                          )
                        ])),
              ),
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _openViewPage();
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻：不断胜利才能洗涮1-5耻辱 晋级还靠7-11连线'),
                          new Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football1.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football2.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football3.jpg",
                                    height: 60),
                              )
                            ],
                          )
                        ])),
              ),
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _openViewPage();
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻：不断胜利才能洗涮1-5耻辱 晋级还靠7-11连线'),
                          new Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football1.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football2.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football3.jpg",
                                    height: 60),
                              )
                            ],
                          )
                        ])),
              ),
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _openViewPage();
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻：不断胜利才能洗涮1-5耻辱 晋级还靠7-11连线'),
                          new Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football1.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football2.jpg",
                                    height: 60),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                child: new Image.asset(
                                    "assets/images/football3.jpg",
                                    height: 60),
                              )
                            ],
                          )
                        ])),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _openViewPage() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      print(context);
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('文章展示'),
        ),
        body: new Text(
            '尽管2014年的10月，佩兰带队在武汉3-0大胜泰国，2018年的6月，里皮带队在曼谷2-0战胜泰国，但球迷记得最多的还是那场1-5。如何摆脱1-5的阴影，国足只有一遍又一遍用胜利战胜泰国，才能让外界渐渐淡忘那场对决。这一次的亚洲杯相遇，就是要拿下对手晋级。现役国脚中，经历了当年那场1-5的球员，包括了冯潇霆、赵旭日、于汉超、郜林、武磊等人，其中冯潇霆开场不到半个小时就被换下，而赵旭日在赛后则被诟病。除了于汉超因伤无法出战外，其余球员都有望在这场亚洲杯赛场的相遇中登场，唯有用晋级为当年的噩梦解套。'),
      );
    }));
  }
}
