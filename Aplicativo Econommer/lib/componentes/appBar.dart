import 'package:flutter/material.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/app_text_styles.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                gradient: AppGradients.linearAppBar,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 103,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.95),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'último Mês',
                              style: AppTextStyles.textAppBar,
                            ),
                            Image.asset(AppImages.relogio),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        'R\$ 250,00',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textAppBarBold,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Previsao atual',
                              style: AppTextStyles.textAppBar,
                            ),
                            Image.asset(AppImages.grafico),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        'R\$ 147,00',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textAppBarBold,
                      ),
                    ],
                  ),
                  width: 150,
                  height: 103,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.95),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
          ),
        );
}
