import 'package:flutter/material.dart';
import 'package:hello_world/home/home.dart';
import 'package:hello_world/knowledge/knowledge.dart';
import 'package:hello_world/notice/notice.dart';
import 'package:hello_world/assessment/assessment.dart';
import 'package:hello_world/my/my.dart';
import 'navigation_icon_view.dart';
import 'package:hello_world/plugin/top_bar_view.dart';

class Index extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  int _currentIndex = 0;  // 当前界面的索引值
  List<NavigationIconView> _navigationIconViews;  // 底部图标按钮区域
  List<StatefulWidget> _pageList;  // 存放图标对应的页面
  StatefulWidget _currentPage;  // 当前显示的页面

  //定义一个空的设置状态值的方法
  void _rebuild() {
    setState(() {
          
        });
  }

  @override
  void initState() {
    super.initState();

    //初始化导航图标
     _navigationIconViews = <NavigationIconView>[
      new NavigationIconView(icon: new Icon(Icons.home), title: new Text('首页'), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.g_translate), title: new Text('背单词'), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.add_alert), title: new Text('通知'), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.assessment), title: new Text('统计'), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.perm_identity), title: new Text('我的'), vsync: this),
     ];

     //给每一个按钮区域加上监听
     for (NavigationIconView view in _navigationIconViews) {
       view.controller.addListener(_rebuild);
     }

      // 将我们 bottomBar 上面的按钮图标对应的页面存放起来，方便我们在点击的时候
      _pageList = <StatefulWidget>[
        new HomePage(),
        new KnowledgePage(),
        new NoticePage(),
        new AssessmentPage(),
        new MyPage(),
      ];
      _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {

    //声明定义一个底部导航的工具栏
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationIconViews
          .map((NavigationIconView navigationIconView) => navigationIconView.item)
          .toList(),  //添加icon按钮
      currentIndex: _currentIndex,  //当前点击的索引值
      type: BottomNavigationBarType.fixed,  //设置底部导航工具栏的类型: fixed固定
      onTap: (int index) {  //添加点击事件
        setState(() {   //点击之后, 需要触发的逻辑事件
          _navigationIconViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationIconViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      },
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,    //动态展示我们当前的页面
        ),
        bottomNavigationBar: bottomNavigationBar,   //底部工具栏
      ),
      theme: new ThemeData(
        primarySwatch: Colors.blue,   //设置主题颜色
      ),
    );
  }
}