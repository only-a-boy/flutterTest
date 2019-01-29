import 'package:flutter/material.dart';
import 'package:hello_world/widget/component_top_bar_view.dart';
// import 'package:hello_world/widget/topBar/top_bar_data.dart';
// import 'package:hello_world/widget/topBar/top_bar.dart';

class ComponentPage extends StatefulWidget {
  @override
  createState() => _ComponentPageState();
}

class _ComponentPageState extends State<ComponentPage> {
  @override
  Widget build(BuildContext context) {
    return new TopBarView();
  }
}
