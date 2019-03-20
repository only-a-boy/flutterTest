import 'package:flutter/material.dart';

class SideBarView {

  //定义两个属性 一个用来展示ICON 一个是动画处理
  final Tab item;
  final AnimationController controller;

  //创建NavigationIconView需要传入三个参数, icon图标, title标题, TickerProvider 
  SideBarView({Widget icon, String title, TickerProvider vsync}):

    item = new Tab(
      icon: icon,
      text: title,
    ),

    controller = new AnimationController(
      duration: kThemeAnimationDuration,
      vsync: vsync,
    );
}