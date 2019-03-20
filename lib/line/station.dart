import 'package:flutter/material.dart';
import 'package:hello_world/http/http.dart';

class MyStationWidget extends StatefulWidget {
  final String lineId;
  
  MyStationWidget({@required this.lineId});

  @override
  State<MyStationWidget> createState() => new _MyStationWidgetState();
}

class _MyStationWidgetState extends State<MyStationWidget> {
  List _list = [];

  _getStationList(data) {
    HttpApi.post('getStationList', 'PIS', data).then((data) {
      setState(() {
        _list = data.body['ajaxResult']['data'];
        print(_list);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 250,
      height: 500,
      child: new ListView(
        children: <Widget>[
          new Container(
            height: 400,
            child: _buildList(),
          )
        ],
      ),
    );
  }

  Widget _buildList() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        return new ListTile(
          title: new Text(_list[i]['name']),
          onTap: () {
            setState(() {});
          });
      },
      itemCount: _list == null ?  0 : _list.length);
  }

  @override
  void initState() {
    super.initState();
  }
  
  @override
  void didUpdateWidget(MyStationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    var data = {
      'lineId': widget.lineId
    };

    _getStationList(data);
  }
}
