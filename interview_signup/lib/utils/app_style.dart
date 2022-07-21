import 'package:flutter/material.dart';

Color primary = const Color.fromRGBO(25, 25, 25, 1);

class Styles {
  // Colors
  static Color primaryColor = primary;
  static Color questionColor = const Color.fromRGBO(48, 48, 48, 1);
  static Color spotColor = const Color.fromRGBO(112, 112, 112, 1);
  static Color minorColor = const Color.fromRGBO(60, 60, 60, 1);
  static Color answerColor = const Color.fromRGBO(30, 69, 62, 1);
  static Color explainColor = const Color.fromRGBO(147, 147, 147, 1);
  static Color bgColor = primary;

  // Gradient
  static Gradient goldGradient = const LinearGradient(colors: [
    Color.fromRGBO(194, 159, 82, 1),
    Color.fromRGBO(239, 229, 169, 1)
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);
  static Gradient platinumGradient = const LinearGradient(colors: [
    Color.fromRGBO(168, 173, 181, 1),
    Color.fromRGBO(204, 211, 224, 1)
  ], begin: Alignment.topLeft, end: Alignment.bottomRight);
  static Gradient diamondGradient = const LinearGradient(colors: [
    Color.fromRGBO(113, 143, 172, 1),
    Color.fromRGBO(178, 204, 240, 1)
  ], begin: Alignment.topRight, end: Alignment.bottomLeft);
}
