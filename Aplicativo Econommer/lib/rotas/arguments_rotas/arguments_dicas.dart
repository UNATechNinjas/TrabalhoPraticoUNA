import 'package:flutter/cupertino.dart';

class ArgumentosDicas with ChangeNotifier {
  String text;
  String imagem;
  String title;

  ArgumentosDicas({this.text, this.imagem, this.title});
}
class ArgumentosConta with ChangeNotifier {
  String date;
  double preco;
  double litros;
  double id;

  ArgumentosConta({this.date, this.preco, this.litros, this.id});
}

