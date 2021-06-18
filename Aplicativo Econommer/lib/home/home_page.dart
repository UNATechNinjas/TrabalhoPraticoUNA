import 'package:flutter/material.dart';
import 'package:xender/componentes/appBar.dart';
import 'package:xender/componentes/bottomsheet.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      bottomSheet: BarraInferior(3),
    );
  }
}


