import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xender/componentes/appBarmenorVoltar.dart';
import 'package:xender/componentes/bottomsheet.dart';
import 'package:xender/componentes/buttonDegrade.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/app_text_styles.dart';
import 'package:xender/rotas/arguments_rotas/arguments_dicas.dart';
import 'package:xender/shared/models/dicas_model.dart';

class DicasDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dicas = ModalRoute.of(context).settings.arguments as ArgumentosDicas;
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBarMenorVoltar(
        title: dicas.title,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: altura * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset("assets/images/${dicas.imagem}.png"),
              ),
              SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Expanded(
                  child: Text(
                    dicas.text,
                    style: AppTextStyles.textBlack,
                  ),
                ),
              ),
              SizedBox(),
              ButtonDegrade(
                largura: largura,
                text: 'COMPARTILHAR',
              ),
              SizedBox(
                height: 70,
                child: Material(
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomSheet: BarraInferior(5),
    );
  }
}