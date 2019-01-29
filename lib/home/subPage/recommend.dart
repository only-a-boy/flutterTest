import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:hello_world/widget/view/view.dart';

class TitlePicture {
  const TitlePicture({this.id, this.title, this.picturePath});

  final int id;
  final String title;
  final String picturePath;
}

class TitlePictureList extends StatefulWidget {
  @override
  createState() => new _TitlePictureListState();
}

class _TitlePictureListState extends State<TitlePictureList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/data/news.json'),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return new Center(
                  child: new Card(
                    child: new Text('loading...'),
                  ),
                );

              default:
                if (snapshot.hasError) {
                  return new Text('Error: ${snapshot.error}');
                } else {
                  var data = json.decode(snapshot.data.toString());

                  return ListView.builder(
                      itemCount: data == null ? 0 : data.length,
                      itemBuilder: (BuildContext context, int index) {

                        List<dynamic> urlList = data[index]['image'];

                        return ListBody(
                          mainAxis: Axis.vertical,
                          reverse: false,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () {
                                setState(() {
                                  _openViewPage(data[index]['title']);
                                });
                              },
                              child: Container(
                                  margin: const EdgeInsets.all(4.0),
                                  child: new Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        new Text(data[index]['title']),
                                        new Row(
                                          children: urlList.map((dynamic imageUrl) {
                                            return new Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: new Image.asset(
                                                imageUrl,
                                                height: 60
                                              ),
                                            );
                                          }).toList(),
                                        )
                                      ])),
                            ),
                          ],
                        );
                      }
                    );
                }
            }
          }),
    );
  }

  void _openViewPage(title) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      print(context);
      return new ViewPage(view: new View(id: '1', title: title));
    }));
  }
}
