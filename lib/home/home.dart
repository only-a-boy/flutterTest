import 'package:flutter/material.dart';
import 'package:hello_world/widget/top_bar_view.dart';
// import 'package:hello_world/widget/topBar/top_bar_data.dart';
// import 'package:hello_world/widget/topBar/top_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new TopBarView();
  }
}
