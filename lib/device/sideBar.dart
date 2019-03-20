import 'package:flutter/material.dart';
import 'package:hello_world/device/sideBarView.dart';
import 'package:hello_world/line/station.dart';

class MySideBar extends StatefulWidget {

  @override
  State<MySideBar> createState() => new _MySideBarState();
}

class _MySideBarState extends State<MySideBar> with TickerProviderStateMixin{

  int _currentIndex = 0;
  List<SideBarView> choices;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

    //定义一个空的设置状态值的方法
  void _rebuild() {
    setState(() {
        });
  }

  @override
  void initState() {
    super.initState();

    //初始化导航图标
    choices = <SideBarView>[
        new SideBarView(title: 'OCC', vsync: this),
        new SideBarView(title: '地面PIS', vsync: this),
        new SideBarView(title: '车载PPC', vsync: this),
        new SideBarView(title: 'AFC', vsync: this),
    ];

     //给每一个按钮区域加上监听
     for (SideBarView choice in choices) {
       choice.controller.addListener(_rebuild);
     }

      _pageList = <StatefulWidget>[
        new MyStationWidget(lineId: 'OCC'),
        new MyStationWidget(lineId: 'ab01'),
        new MyStationWidget(lineId: 'PPC'),
        new MyStationWidget(lineId: 'AFC'),
      ];
      _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {

    final Container container = Container(
          height: 200,
          child: Column(
            children: choices.map((SideBarView item) => 
            new GestureDetector(
                child: new Tab(
                  text: item.item.text
                ),
                onTap: () {
                  setState(() {
                    switch (item.item.text) {
                      case 'OCC':
                        _currentIndex = 0;
                        break;

                      case '地面PIS':
                        _currentIndex = 1;
                        break;

                      case '车载PPC':
                        _currentIndex = 2;
                        break;

                      case 'AFC':
                        _currentIndex = 3;
                        break;

                      default:
                        _currentIndex = 0;
                        break;
                    }
                    // choices[_currentIndex].controller.reverse();
                    // choices[_currentIndex].controller.forward();
                    _currentPage = _pageList[_currentIndex];
                  });
                }
              )
            ).toList(),
          ),
    );

    return Row(
          children: <Widget>[
            container,
            _currentPage
          ]
    );
  }
}