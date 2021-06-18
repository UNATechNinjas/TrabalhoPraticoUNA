import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_images.dart';
import 'package:xender/core/app_text_styles.dart';
import 'package:xender/rotas/rotas.dart';

class AppBarMenorVoltar extends PreferredSize {
  final String title;
  
  AppBarMenorVoltar({@required this.title})
      : super(
          preferredSize: Size.fromHeight(70),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                   Get.back(
                     
                   );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Image.asset(AppImages.voltar),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0),
                  child: Text(
                    title,
                    style: AppTextStyles.textAppBarWhite,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: SizedBox(),
                ),
              ],
            ),
            alignment: Alignment.center,
            height: 180,
            decoration: BoxDecoration(
                gradient: AppGradients.linearAppBar,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                )),
          ),
        );
}
