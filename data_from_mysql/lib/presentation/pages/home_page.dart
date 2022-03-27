import 'package:data_from_mysql/core/utils/json_helper.dart';
import 'package:data_from_mysql/data.api/dizi_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: DiziApi.getDiziler(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Beklenmeyen bir hata oluştu..."),
              );
            } else if (snapshot.hasData) {
              http.Response data = snapshot.data as http.Response;
              return ListView.builder(
                  // itemCount: 2,
                  itemCount: JsonHelper.convertResponseToList(data.body).length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        // title: Text("deneme"),
                        // title: Text(data.body),
                        title: Text(
                            JsonHelper.convertResponseToList(data.body)[index]
                                .toString()),
                      ),
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
