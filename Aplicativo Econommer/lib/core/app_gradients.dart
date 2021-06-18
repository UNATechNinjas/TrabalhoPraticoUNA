import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linearAppBar = LinearGradient(colors: [
    Color.fromRGBO(26, 255, 125, 1),
    Color.fromRGBO(0, 255, 169, 1),
    Color.fromRGBO(40, 191, 210, 0.65),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static final linearButtomAdd = LinearGradient(
      colors: [
        Color.fromRGBO(26, 255, 125, 1),
        Color.fromRGBO(32, 170, 232, 1),
        Color.fromRGBO(32, 120, 232, 1),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,);
      static final linearTextForm = LinearGradient(
      colors: [
        Color.fromRGBO(28, 230, 175, 0.8),
        Color.fromRGBO(32, 170, 232, 0.9),
        Color.fromRGBO(32, 120, 232, 1),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,);

}

