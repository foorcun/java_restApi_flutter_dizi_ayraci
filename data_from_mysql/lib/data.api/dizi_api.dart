import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class DiziApi {
  static Future<http.Response> getTest() async {
    Uri uri = Uri.parse("http://localhost:8080/api/test");
    // Uri uri = Uri.parse("http://www.mocky.io/v2/5dca69523300004e003decc5");

    http.Response response = await http.get(uri);
    print("gelenler : " + response.body);
    return response;
  }

  static Future<http.Response> getDiziler() async {
    Uri uri = Uri.parse("http://localhost:8080/api/test/entities");
    // Uri uri = Uri.parse("http://www.mocky.io/v2/5dca69523300004e003decc5");

    http.Response response = await http.get(uri);
    // print("gelenler : " + response.body);
    return response;
  }
}
