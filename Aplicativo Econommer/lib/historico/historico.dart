import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xender/componentes/appBar.dart';
import 'package:xender/componentes/bottomsheet.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/app_text_styles.dart';
import 'package:xender/provider/contas_data/contas_data.dart';
import 'package:xender/rotas/rotas.dart';

import 'listHistorico/listHistorico.dart';

class Historico extends StatefulWidget {
  const Historico();

  @override
  _HistoricoState createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    final Contas contas = Provider.of<Contas>(context);
    final itens = contas.items;
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarWidget(),
      bottomSheet: BarraInferior(2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: altura * 0.04,
            ),
            Text(
              "Histórico de contas",
              style: AppTextStyles.textBlacktitle,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: itens.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ChangeNotifierProvider.value(
                      value: itens[index],
                      child: ListHistorico(
                        largura: largura,
                      ),
                    ),
                    SizedBox(height: altura * 0.02,)
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(RotasApp.AddConta),
                  child: RadiantGradientMask(
                    child: Icon(
                      Icons.add_circle_outlined,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}

class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          AppGradients.linearButtomAdd.createShader(bounds),
      child: child,
    );
  }
}
