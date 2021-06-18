import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:xender/adicionarConta/adicionarContar.dart';
import 'package:xender/adicionarConta/alterarConta.dart';
import 'package:xender/dicas/dicas_details/dicas_details.dart';
import 'package:xender/provider/contas_data/contas_data.dart';
import 'package:xender/rotas/arguments_rotas/arguments_dicas.dart';
import 'package:xender/rotas/rotas.dart';
import 'package:xender/shared/models/dicas_model.dart';
import 'carrossel/carrossel.dart';
import 'home/home_page.dart';
import 'historico/historico.dart';
import 'formulario/formulario.dart';
import 'dicas/dicas.dart';
import 'mapa/mapa.dart';

void main() => runApp(CarouselDemo());

class CarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new Contas()),
        ChangeNotifierProvider(create: (_) => new ContasData()),
        ChangeNotifierProvider(create: (_) => new ArgumentosDicas()),
        ChangeNotifierProvider(create: (_) => new DicasModel()),
      ],
      child: GetMaterialApp(initialRoute: '/', routes: {
        '/': (ctx) => FullscreenSliderDemo(),
        RotasApp.Home: (context) => HomePage(),
        RotasApp.Historico: (context) => Historico(),
        RotasApp.Formulario: (context) => Formulario(),
        RotasApp.Dicas: (context) => Dicas(),
        RotasApp.Mapa: (context) => Mapa(),
        RotasApp.DicasDetails: (context) => DicasDetails(),
        RotasApp.AddConta: (context) => AdicionarConta(),
        RotasApp.AlterarConta: (context) => AlterarConta()
      }),
    );
  }
}
