import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xender/core/app_text_styles.dart';
import 'package:xender/dicas/dicas_details/dicas_details.dart';
import 'package:xender/rotas/arguments_rotas/arguments_dicas.dart';
import 'package:xender/rotas/rotas.dart';
import 'package:xender/shared/models/dicas_model.dart';

class ListaDicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final DicasModel contas = Provider.of<DicasModel>(context);
    return Container(
      width: largura * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        height: altura * 0.08,
        width: largura * 0.89,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: largura * 0.2,
                child: Image.asset("assets/images/${contas.imagem}.png")),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Container(
                width: largura * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      contas.title,
                      style: AppTextStyles.textBlack,
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 40,
                      color: Colors.grey[600],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
