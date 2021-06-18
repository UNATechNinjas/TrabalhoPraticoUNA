import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:xender/shared/models/dicas_model.dart';
import 'package:dio/dio.dart';

class DicasRepositorio {
  Future<List<DicasModel>> getDicas()async{
    final response = await rootBundle.loadString("assets/database/dicas.json");
    final list = jsonDecode(response) as List;
    final dicas = list.map((e) => DicasModel.fromMap(e)).toList();
    return dicas;
  }
}

// class DicasRepositorio {
//   Future<List<DicasModel>> getDicas() async {
//     var response = await Dio().get(
//         'https://my-json-server.typicode.com/AlexandreSaback/WebDev/blob/main/db.json');
//     final list = (response.data as List).map((item) {
//       return DicasModel.fromJson(item);
//     }).toList(); 
//     return list;
//   }
// }