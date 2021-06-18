import 'package:flutter/material.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_text_styles.dart';

class AppBarMenor extends PreferredSize {
  final String title;
  AppBarMenor({@required this.title})
      : super(
          preferredSize: Size.fromHeight(70),
          child: Container(
            child: Text(title,
              style: AppTextStyles.textAppBarWhite,
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
