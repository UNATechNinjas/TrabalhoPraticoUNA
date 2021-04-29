import 'package:flutter/material.dart';
void main() {
 String nome = "Alexandre!";
 String dia = "Segunda-feira";
 runApp(
 Center(
 child: RichText(
 textAlign: TextAlign.center,
 textDirection: TextDirection.ltr,
 text: TextSpan(
 text: "Olá, ",
 style: TextStyle(
 color: Colors.green,
 fontSize: 30,
 fontWeight: FontWeight.bold,
 backgroundColor: Colors.white,
 ), //TextStyle.
 children: <TextSpan>[
 TextSpan(
 text: '$nome',
 style: TextStyle(
 color: Colors.blue,
 decoration: TextDecoration.underline,
 decorationColor: Colors.red,
 decorationStyle: TextDecorationStyle.double,
 ),
 ),
 TextSpan(
 text: '\nHoje é $dia!',
 style: TextStyle(
 color: Colors.red,
 backgroundColor: Colors.orange)
 ),
 TextSpan(
 text: '\nBom dia!'),
 ],
 ),
 ),
 ),
 );
}