import 'dart:convert';

import 'package:flutter/cupertino.dart';

class DicasModel with ChangeNotifier{
  final String categoria;
  final String title;
  final String imagemSecundaria;
  final String imagem;
  final String textSecundario;

  DicasModel({
    this.categoria,
    this.title,
    this.imagemSecundaria,
    this.textSecundario,
    this.imagem,
  });

  Map<String, dynamic> toMap() {
    return {
      'categoria': categoria,
      'title': title,
      'imagemSecundaria': imagemSecundaria,
      'textSecundario': textSecundario,
      'imagem': imagem
    };
  }

  factory DicasModel.fromMap(Map<String, dynamic> map) {
    return DicasModel(
      categoria: map['categoria'],
      title: map['title'],
      imagemSecundaria: map['imagemSecundaria'],
      textSecundario: map['textSecundario'],
      imagem: map['imagem']
    );
  }

  String toJson() => json.encode(toMap());

  factory DicasModel.fromJson(String source) => DicasModel.fromMap(json.decode(source));
}