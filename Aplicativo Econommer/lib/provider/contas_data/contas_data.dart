import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class ContasData with ChangeNotifier {
  final double id;
  final String data;
  final double litros;
  final double preco;

  ContasData({
    @required this.id,
    @required this.data,
    @required this.litros,
    @required this.preco,
  });
}

class Contas with ChangeNotifier {
  List<ContasData> _contas = [];
  List<ContasData> get items {
    return [..._contas];
  }

  void alterarItem(int id, String data, double preco, double litros) {
    print(_contas.length);
    _contas.removeWhere((contas) => contas.id == id);
    // print('dede');
    // List<ContasData> loadconta1 = items;
    // loadconta1.insert(
    //   0,
    //   ContasData(
    //       id: Random().nextDouble().toInt(),
    //       data: data,
    //       preco: preco,
    //       litros: litros),
    // );
    // notifyListeners();
    // _contas = loadconta1;
    // notifyListeners();
    // print(_contas.length);
  }

  void addItem(id, String data, double preco, double litros) {
    print('passou add');
    print(id);
    _contas.removeWhere((contas) => contas.id == id);
    if(id == 0){
      id = Random().nextDouble();
    }
    print(id);
    ;
    List<ContasData> loadconta = items;
    loadconta.insert(
      0,
      ContasData(id: id, data: data, preco: preco, litros: litros),
    );
    notifyListeners();
    _contas = loadconta.reversed.toList();
    notifyListeners();
    print(_contas.length);
  }

  void removerconta(double id) {
    _contas.removeWhere((contas) => contas.id == id);

    notifyListeners();
  }

  void clear() {
    _contas = [];
    notifyListeners();
  }
}
