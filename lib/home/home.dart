import 'package:flutter/material.dart';
import 'package:hello_world/plugin/top_bar_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     return new TabbedAppBarSample();
  }
}
