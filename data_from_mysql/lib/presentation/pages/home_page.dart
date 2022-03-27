import 'package:data_from_mysql/core/utils/json_helper.dart';
import 'package:data_from_mysql/data.api/dizi_api.dart';
import 'package:data_from_mysql/models/dizi_model.dart';
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
              List<DiziModel> data = snapshot.data as List<DiziModel>;
              return ListView.builder(
                  // itemCount: 2,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(data[index].diziName!),
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
