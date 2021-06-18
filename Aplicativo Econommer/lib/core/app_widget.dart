import 'package:xender/carrossel/carrossel.dart';

import '../home/home_page.dart';

import '../rotas/rotas.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "AppTransito",
        home: FullscreenSliderDemo(),
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        routes: {
          RotasApp.Home: (context) => HomePage(),
        });
  }
}
