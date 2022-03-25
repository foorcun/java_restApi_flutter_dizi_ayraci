import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class DiziApi {
  static Future getDiziler() async {
    Uri uri = Uri.parse("http://localhost:8080/api/test");
    // Uri uri = Uri.parse("http://www.mocky.io/v2/5dca69523300004e003decc5");

    http.Response v = await http.get(uri);
    print("gelen ler : " + v.body);
    return v;
  }
}
