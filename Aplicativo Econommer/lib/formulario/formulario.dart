import 'package:flutter/material.dart';
import 'package:xender/componentes/appBarMenor.dart';
import 'package:xender/componentes/bottomsheet.dart';


class Formulario extends StatefulWidget {
  const Formulario();

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMenor(title: "QUESTIONÁRIO"),
      bottomSheet: BarraInferior(1),
    );
  }
}
