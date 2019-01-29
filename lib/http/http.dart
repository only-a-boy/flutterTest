import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hello_world/http/route.dart';
import 'package:hello_world/widget/picker/cityPicker.dart';

class MyHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _lineName = '未知线路';

  String result;

  _getLineList() async {

    Map<String, String> headers = {
      'Content-Type': 'application/json'
    };

    String url = PIS_ROUTE + 'getLineList';

    var param = {
      'ocCode': PIS_OC_CODE,
    };

    http.post(url, headers: headers, body: json.encode(param), encoding: Utf8Codec())
      .then((http.Response response) {
        var responseData = json.decode(response.body);

        var data = [
          {
            'lineId': '00001',
            'name': '测试一号线',
          },
          {
            'lineId': 'A00002',
            'name': '测试二号线'
          },
        ];

        setState(() {
          result = responseData['ajaxResult']['data'][0]['name'];
          _lineName = result;
        });
        
    }).catchError((error) {
      print('$error错误');
    });

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {

    print('$_lineName');
    var spacer = new SizedBox(height: 32.0);

    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('您的线路是:'),
            new Text('$_lineName'),
            spacer,
            new RaisedButton(
              onPressed: _getLineList,
              child: new Text('获取线路'),
            ),
          ],
        ),
      ),
    );
  }
}

// http.get(url).then((http.Response response) {
      //   final Map<String, dynamic> responseData = json.decode(response.body);

      // http.post('https://flutter-cn.firebaseio.com/products.json',
      //         body: json.encode(param),encoding: Utf8Codec())
      // .then((http.Response response) {
      //   final Map<String, dynamic> responseData = json.decode(response.body);

// bool _certificateCheck(X509Certificate cert, String host, int port) =>
//     host == 'devblog.paypal.com';

// http.Client paypalClient() {
//   var ioClient = new HttpClient()
//       ..badCertificateCallback = _certificateCheck;

//   return new http.IOClient(ioClient);
// }
