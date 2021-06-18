import 'package:flutter/material.dart';
import 'package:xender/componentes/appBarMenor.dart';
import 'package:xender/componentes/bottomsheet.dart';


class Mapa extends StatefulWidget {
  const Mapa();

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMenor(title: "MAPA"),
      bottomSheet: BarraInferior(5),
    );
  }
}
