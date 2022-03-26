import 'package:data_from_mysql/models/dizi_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  test("http return into data_model", () async {
    // flutter unit test link: https://www.youtube.com/watch?v=RDY6UYh-nyg&t=176s
    // json serialization link: https://www.youtube.com/watch?v=v5xGLrhzDGE
    var model = DiziModel(id: 1, diziName: "Attack on Titan");

    var jsonResponse = '[{"id":1,"diziName":"Attack on Titan"}]';
    print(jsonResponse);
    var jsonResponseD = jsonDecode(jsonResponse);
    print(jsonResponseD);

    // var vv = new Map<String, dynamic>.from(jsonResponseD);
    // print(vv);

    // var modelFromString = DiziModel.fromJson(jsonResponseD);
    var modelFromString = DiziModel.fromJson(jsonResponseD[0]);

    // expect(model.id, 1);
    expect(model.id, modelFromString.id);
    expect(model.diziName, modelFromString.diziName);
  });
}
