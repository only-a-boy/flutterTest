import 'package:flutter/material.dart';
import 'package:hello_world/widget/view/view.dart';

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
                    _openViewPage('国足vs泰国前瞻1');
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻1'),
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
                    _openViewPage('国足vs泰国前瞻2');
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻2'),
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
                    _openViewPage('国足vs泰国前瞻3');
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻3'),
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
                    _openViewPage('国足vs泰国前瞻4');
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻4'),
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
                    _openViewPage('国足vs泰国前瞻5');
                  });
                },
                child: Container(
                    margin: const EdgeInsets.all(4.0),
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Text('国足vs泰国前瞻5'),
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

  void _openViewPage(title) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      print(context);
      return new ViewPage(
          view: new View(id: '1', title: title));
    }));
  }
}
