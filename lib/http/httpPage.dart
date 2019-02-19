import 'package:flutter/material.dart';
import 'package:hello_world/http/http.dart';

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

  var _lineName;

  _getLineList() {
    HttpApi.post('getLineList', 'PIS', {})
      .then((data) {
        setState(() {
          _lineName = data.body['ajaxResult']['message'];
          print(_lineName);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
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
