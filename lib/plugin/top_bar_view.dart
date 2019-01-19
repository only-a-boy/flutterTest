import 'package:flutter/material.dart';
import 'package:hello_world/plugin/list/titlePictureList.dart';

class TabbedAppBarSample extends StatelessWidget {
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
                tabs: choices.map((Choice choice) {
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
            children: choices.map((Choice choice) {
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

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '推荐'),
  const Choice(title: '热点'),
  const Choice(title: '课程'),
  const Choice(title: '视频'),
  const Choice(title: '文章'),
  const Choice(title: '体育'),
  const Choice(title: '财经'),
  const Choice(title: '科技'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    print(choice.title);

    if ('推荐' == choice.title) {
      return new TitlePictureList();
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