import 'package:flutter/material.dart';
import 'package:hello_world/http/http.dart';

class MyLinePage extends StatefulWidget {
  MyLinePage({Key key}) : super(key: key);

  @override
  _MyLinePageState createState() => new _MyLinePageState();
}

class _MyLinePageState extends State<MyLinePage> {
  List _lineList = [];

  _getLineList() {
    HttpApi.post('getLineList', 'PIS', {}).then((data) {
      setState(() {
        _lineList = data.body['ajaxResult']['data'];
        print(_lineList);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return new Container(
      height: 500,
      child: new ListView(
        children: <Widget>[
          new RaisedButton(
            onPressed: _getLineList,
            child: new Text('获取线路'),
          ),
          new Container(
            height: 400,
            child: _buildLineList(),
          )
        ],
      ),
      // body: new Center(
      //   child: new Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       new RaisedButton(
      //         onPressed: _getLineList,
      //         child: new Text('获取线路'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  String rValue = '';

  Widget _buildLineList() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          return new ListTile(
              title: new Text(_lineList[i]['name']),
              // trailing: new Icon(Icons.favorite),
              trailing: new Radio(
                  value: _lineList[i]['lineId'].toString(),
                  groupValue: rValue,
                  onChanged: (String val) {
                    getValue(val);
                  }),
              onTap: () {
                setState(() {});
              });
        },
        itemCount: _lineList.length);
  }

  @override
  void initState() {
    super.initState();
    _getLineList();
  }

  @override
  void getValue(val) {
    setState(() {
      rValue = val;
    });
  }
}
