import 'package:flutter/material.dart';
import 'package:xender/core/app_gradients.dart';
import 'package:xender/core/app_text_styles.dart';

class ButtonDegrade extends StatelessWidget {
  
  const ButtonDegrade({
    Key key,
    @required this.largura,
    @required this.text
  }) : super(key: key);

  final double largura;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: largura * 0.4,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: AppGradients.linearButtomAdd),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTextStyles.textAppBarWhite,
        ),
      ),
    );
  }
}