import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/app_text_styles.dart';
import 'package:xender/rotas/rotas.dart';

class BarraInferior extends StatelessWidget {
  final int indice;
  BarraInferior(this.indice);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          indice == 1 ?
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.formColorido),
                Text(
                  'Questionário',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ) : GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(RotasApp.Formulario),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.formPreto),
                Text(
                  'Questionário',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ),
          indice == 2 ?
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.historicoColorido),
                Text(
                  'Histórico',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ) : GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(RotasApp.Historico),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.historicoPreto),
                Text(
                  'Histórico',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ),
          indice == 3 ?
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.homeColorido),
                Text(
                  'Home',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ) :GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(RotasApp.Home),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.homePreta),
                Text(
                  'Home',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ),
          indice == 4 ?
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.lampadaColorido),
                Text(
                  'Dicas',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ) :  GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(RotasApp.Dicas),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.lampadaPreto),
                Text(
                  'Dicas',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ),
          indice == 5?
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.mapaColorido),
                Text(
                  'Mapa',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ) :GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(RotasApp.Mapa),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(AppImages.mapaPreto),
                Text(
                  'Mapa',
                  style: AppTextStyles.textbottomSheet,
                ),
              ],
            ),
          ),
        ],
      ),
      width: double.infinity,
      height: 59,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
    );
  }
}
