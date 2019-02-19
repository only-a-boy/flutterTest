import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:hello_world/http/route.dart';

class ParsedResponse<T> {
  ParsedResponse(this.statusCode, this.body);

  final int statusCode;
  final T body;

  bool isOk() {
    return statusCode >= 200 && statusCode < 300;
  }
}

final int NO_INTERNET = 404;

class HttpApi {
  static Future<dynamic> post(String partUrl, String urlType, Map<String, Object> data, [Map<String, String> headers]) async {

    String url = '';

    if (headers == null) {
      headers = {
        'Content-Type': 'application/json'
      };
    }

    if (urlType == 'PIS') {
      url = PIS_ROUTE + partUrl;

      data = {
        'ocCode': PIS_OC_CODE,
      };
    } else if (urlType == 'UCS') {
      url = UCS_ROUTE + partUrl;
    }

    return await http.post(url, headers: headers, body: json.encode(data), encoding: Utf8Codec())
      .then((http.Response response) {

        if (response == null) {
          return new ParsedResponse(NO_INTERNET, {});
        }

        if (response.statusCode < 200 || response.statusCode >= 300) {
          return new ParsedResponse(response.statusCode, {});
        }

        var result = json.decode(response.body);

        print(result);

        return new ParsedResponse(response.statusCode, result);
        
    }).catchError((error) {
      print('$error错误');
    });
  }

  static Future<dynamic> get(String partUrl, String urlType, Map<String, dynamic> data, [Map<String, String> headers]) async {

    String url = partUrl;

    if (headers != null) {
      headers = {
        'Content-Type': 'application/json'
      };
    }

    if (data.length > 0) {
      partUrl += '?';

      data.forEach((key, value) => partUrl += '$key=$value&');

      partUrl = partUrl.substring(0, partUrl.length - 1);
    }

    if (urlType == 'PIS') {
      url = PIS_ROUTE + partUrl;
      data = {
        'ocCode': PIS_OC_CODE,
      };
    } else if (urlType == 'UCS') {
      url = UCS_ROUTE + partUrl;
    } else if (urlType == 'MOVIE') {
      url = MOVIE_ROUTE + partUrl;
    }

    print(url);
    
    return await http.get(url, headers: headers)
      .then((http.Response response) {

        if (response == null) {
          return new ParsedResponse(NO_INTERNET, {});
        }

        if (response.statusCode < 200 || response.statusCode >= 300) {
          return new ParsedResponse(response.statusCode, {});
        }

        var result = json.decode(response.body);

        return new ParsedResponse(response.statusCode, result);
        
    }).catchError((error) {
      print('$error错误');
    });
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
