import 'package:flutter/material.dart';
import 'package:hello_world/widget/topBar/top_bar_data.dart';
import 'package:hello_world/component/components/layout/row.dart';
import 'package:hello_world/component/components/layout/column.dart';
import 'package:hello_world/component/components/layout/flex.dart';
import 'package:hello_world/component/components/layout/wrap.dart';
import 'package:hello_world/component/components/layout/stack.dart';
import 'package:hello_world/component/components/radio.dart';
import 'package:hello_world/component/components/checkbox.dart';
import 'package:hello_world/component/components/snackBar.dart';
import 'package:hello_world/component/components/drawer.dart';
import 'package:hello_world/component/components/switch.dart';
import 'package:hello_world/widget/datePicker/datePicker.dart';
import 'package:hello_world/knowledge/knowledge.dart';

class TopBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: PreferredSize(
            child: AppBar(
              bottom: new TabBar(
                isScrollable: true,
                tabs: choices.map((TopBarData choice) {
                  return new Tab(
                    text: choice.title,
                    // icon: new Icon(choice.icon),
                  );
                }).toList(),
              ),
            ),

            preferredSize: Size.fromHeight(50.0)
          ),
          body: new TabBarView(
            children: choices.map((TopBarData choice) {
              return new Padding(
                padding: const EdgeInsets.all(6.0),
                child: new ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

const List<TopBarData> choices = const <TopBarData>[
  const TopBarData(title: '横向布局'),
  const TopBarData(title: '纵向布局'),
  const TopBarData(title: '弹性布局'),
  const TopBarData(title: '流式布局'),
  const TopBarData(title: '层叠布局'),
  const TopBarData(title: '单选按钮'),
  const TopBarData(title: '多选按钮'),
  const TopBarData(title: '切换按钮'),
  const TopBarData(title: '侧边栏'),
  const TopBarData(title: '通知'),
  const TopBarData(title: '日期'),
  const TopBarData(title: '列表'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final TopBarData choice;

  @override
  Widget build(BuildContext context) {
    print(choice.title);

    switch (choice.title) {
      case '横向布局':
        return new MyRow();
        break;

      case '纵向布局':
        return new MyColumn();
        break;

      case '弹性布局':
        return new MyFlex();
        break;

      case '流式布局':
        return new MyWrap();
        break;

      case '层叠布局':
        return new MyStack();
        break;

      case '单选按钮':
        return new MyRadio();
        break;

      case '多选按钮':
        return new MyCheckbox();
        break;

      case '切换按钮':
        return new MySwitch();
        break;

      case '侧边栏':
        return new MyDrawer();
        break;

      case '通知':
        return new MySnackBar();
        break;

      case '日期':
        return new DatePicker();
        break;

      case '列表':
        return new KnowledgePage();
        break;
    }
  }
}