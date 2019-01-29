// import 'package:flutter/material.dart';
// import 'package:hello_world/widget/choice.dart';
// import 'package:hello_world/home/randomWord.dart';

// class ReadLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Widget tabBarContainer = new TabBar(
//       //创建TabBar实例
//       isScrollable: true, //这个属性是导航栏是否支持滚动，false则会挤在一起了
//       unselectedLabelColor: Colors.grey, //未选标签标签的颜色(这里定义为灰色)
//       labelColor: Colors.black, //选中的颜色（黑色）
//       indicatorColor: Colors.black, //指示器颜色
//       indicatorWeight: 2.0, //指示器厚度
//       tabs: choices.map((Choice choice) {
//         return new Tab(
//           text: choice.title,
//         );
//       }).toList(),
//     );

//     Widget tabContainer = new DefaultTabController(
//       length: choices.length,
//       initialIndex: 0, //初始索引
//       child: new Column(
//         children: <Widget>[
//           new Container(
//             constraints: new BoxConstraints.expand(
//               height: Theme.of(context).textTheme.display1.fontSize + 20.0,
//             ),
//             padding: const EdgeInsets.all(8.0),
//             // color: Colors.teal.shade700,
//             alignment: Alignment.center,
//             child: tabBarContainer,
//           ),
//           new Expanded(
//             child: new TabBarView(
//               children: choices.map((Choice choice) {
//                 print(choice.id == 1);
//                 // if (choice.id == 1) {
//                 //   return new Scaffold(
//                 //     appBar: new AppBar(
//                 //       title: new Text('推荐页'),
//                 //     ),
//                 //     body: new RandomWords(),
//                 //   );
//                 // }
//                 return new Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: new ChoiceCard(choice: choice),
//                 );
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );

//     return tabContainer;
//   }
// }
