import 'package:flutter/material.dart';

class Choice {
  const Choice({this.id, this.title, this.icon});

  final int id;
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[

  const Choice(
    id: 1,
    title: '推荐',
    icon: Icons.games
  ),
  const Choice(
    id: 2,
    title: '课程',
    icon: Icons.gesture
  ),
  const Choice(
    id: 3,
    title: '文章',
    icon: Icons.get_app
  ),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
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