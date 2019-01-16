import 'package:flutter/material.dart';

//创建一个ICON展示控件
class NavigationIconView {

  //定义两个属性 一个用来展示ICON 一个是动画处理
  final BottomNavigationBarItem item;
  final AnimationController controller;

  //创建NavigationIconView需要传入三个参数, icon图标, title标题, TickerProvider 
  NavigationIconView({Widget icon, Widget title, TickerProvider vsync}):

    item = new BottomNavigationBarItem(
      icon: icon,
      title: title,
    ),

    controller = new AnimationController(
      duration: kThemeAnimationDuration,
      vsync: vsync,
    );
}