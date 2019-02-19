import 'package:flutter/material.dart';
import 'package:hello_world/widget/topBar/top_bar_data.dart';
import 'package:hello_world/widget/list/titlePictureList.dart';
import 'package:hello_world/http/httpPage.dart';
import 'package:hello_world/lessons/lessons.dart';
import 'package:hello_world/component/component.dart';

class TopBarView extends StatefulWidget {

  final List<TopBarData> topBarData;

  TopBarView({@required this.topBarData});

  @override
  State<TopBarView> createState() {
    return _TopBarViewState();
  }
}

class _TopBarViewState extends State<TopBarView> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new DefaultTabController(
        length: widget.topBarData.length,
        child: new Scaffold(
          appBar: PreferredSize(
            child: AppBar(
              bottom: new TabBar(
                isScrollable: true,
                tabs: widget.topBarData.map((TopBarData item) {
                  return new Tab(
                    text: item.title,
                    // icon: new Icon(choice.icon),
                  );
                }).toList(),
              ),
            ),

            preferredSize: Size.fromHeight(50.0)
          ),
          body: new TabBarView(
            children: widget.topBarData.map((TopBarData item) {
              return new Padding(
                padding: const EdgeInsets.all(6.0),
                child: new TopBarPage(topBarData: item),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class TopBarPage extends StatelessWidget {
  const TopBarPage({ Key key, this.topBarData }) : super(key: key);

  final TopBarData topBarData;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    print(topBarData.title);

    switch (topBarData.title) {
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

      case '组件':
        return new ComponentPage();
        break;
    }

    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(topBarData.icon, size: 128.0, color: textStyle.color),
            new Text(topBarData.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}