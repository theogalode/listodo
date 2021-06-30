import 'package:flutter/material.dart';

class ListodoColors {
  static final ListodoColors _listodoColors = ListodoColors._();

  factory ListodoColors() {
    return _listodoColors;
  }

  ListodoColors._();

  static const Map<int, Color> _listodoSwatch = {
    50: Color.fromRGBO(254, 48, 0, 0.1),
    100: Color.fromRGBO(254, 48, 0, 0.2),
    200: Color.fromRGBO(254, 48, 0, 0.3),
    300: Color.fromRGBO(254, 48, 0, 0.4),
    400: Color.fromRGBO(254, 48, 0, 0.5),
    500: Color.fromRGBO(254, 48, 0, 0.6),
    600: Color.fromRGBO(254, 48, 0, 0.7),
    700: Color.fromRGBO(254, 48, 0, 0.8),
    800: Color.fromRGBO(254, 48, 0, 0.9),
    900: Color.fromRGBO(254, 48, 0, 1),
  };

  static const Map<int, Color> _listodoAccent = {
    50: Color.fromRGBO(249, 203, 198, 0.1),
    100: Color.fromRGBO(249, 203, 198, 0.2),
    200: Color.fromRGBO(249, 203, 198, 0.3),
    300: Color.fromRGBO(249, 203, 198, 0.4),
    400: Color.fromRGBO(249, 203, 198, 0.5),
    500: Color.fromRGBO(249, 203, 198, 0.6),
    600: Color.fromRGBO(249, 203, 198, 0.7),
    700: Color.fromRGBO(249, 203, 198, 0.8),
    800: Color.fromRGBO(249, 203, 198, 0.9),
    900: Color.fromRGBO(249, 203, 198, 1),
  };

  static const Color listodoLightBlue = Color.fromRGBO(240, 245, 249, 1);

  static const MaterialColor listodoSwatch =
      MaterialColor(0xFFDE2214, _listodoSwatch);

  static const MaterialColor listodoAccent =
      MaterialColor(0xFFF9CBC6, _listodoAccent);
}
