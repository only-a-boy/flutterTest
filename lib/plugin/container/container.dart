import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyContainerState();
  }
}

class MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    //单个item
    var img = new Expanded(
      child: new Container(
        decoration: new BoxDecoration(
            border: new Border.all(color: Colors.black38, width: 10.0),
            borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
        margin: const EdgeInsets.all(4.0),
        child: new Image.asset("images/lake.jpg"),
      ),
    );
//    水平布局
    var row = new Row(
      children: [
        img,
        img,
      ],
    );

    return new Container(
      decoration: new BoxDecoration(
        color: Colors.black26,
      ),
      //使用ListView这样我们就可以滑动超出屏幕的内容
      child: new ListView(
        children: [
          row,
          row,
          row,
          row,
        ],
      ),
    );
  }
}
