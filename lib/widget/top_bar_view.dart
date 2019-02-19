import 'package:flutter/material.dart';
import 'package:hello_world/widget/topBar/top_bar_data.dart';
import 'package:hello_world/home/subPage/recommend.dart';
import 'package:hello_world/http/httpPage.dart';
import 'package:hello_world/lessons/lessons.dart';
import 'package:hello_world/home/subPage/movie.dart';

class TopBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: PreferredSize(
            child: AppBar(
              bottom: new TabBar(
                isScrollable: true,
                tabs: choices.map((TopBarData choice) {
                  return new Tab(
                    text: choice.title,
                    // icon: new Icon(choice.icon),
                  );
                }).toList(),
              ),
            ),

            preferredSize: Size.fromHeight(50.0)
          ),
          body: new TabBarView(
            children: choices.map((TopBarData choice) {
              return new Padding(
                padding: const EdgeInsets.all(6.0),
                child: new ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

const List<TopBarData> choices = const <TopBarData>[
  const TopBarData(title: '推荐'),
  const TopBarData(title: '线路'),
  const TopBarData(title: '热门'),
  const TopBarData(title: '课程'),
  const TopBarData(title: '电影'),
  const TopBarData(title: '视频'),
  const TopBarData(title: '文章'),
  const TopBarData(title: '体育'),
  const TopBarData(title: '财经'),
  const TopBarData(title: '科技'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final TopBarData choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    print(choice.title);

    switch (choice.title) {
      case '推荐':
        return new TitlePictureList();
        break;

      case '线路':
        return new MyHttp();
        break;

      case '热门':
        return new MyHttp();
        break;

      case '课程':
        return new LessonsPage();
        break;

      case '电影':
        return new MoviePage();
        break;
    }

    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}