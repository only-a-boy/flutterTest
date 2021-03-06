import 'package:flutter/material.dart';

class View {
  const View({this.id, this.title});
  final String id;
  final String title;
}

class ViewPage extends StatelessWidget {
  const ViewPage({Key key, this.view }) : super(key: key);

  final View view;

  @override
  Widget build(BuildContext context) {
    print(view.title);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(view.title),
      ),
      body: new Text(
          '尽管2014年的10月，佩兰带队在武汉3-0大胜泰国，2018年的6月，里皮带队在曼谷2-0战胜泰国，但球迷记得最多的还是那场1-5。如何摆脱1-5的阴影，国足只有一遍又一遍用胜利战胜泰国，才能让外界渐渐淡忘那场对决。这一次的亚洲杯相遇，就是要拿下对手晋级。现役国脚中，经历了当年那场1-5的球员，包括了冯潇霆、赵旭日、于汉超、郜林、武磊等人，其中冯潇霆开场不到半个小时就被换下，而赵旭日在赛后则被诟病。除了于汉超因伤无法出战外，其余球员都有望在这场亚洲杯赛场的相遇中登场，唯有用晋级为当年的噩梦解套。'),
    );
  }
}
