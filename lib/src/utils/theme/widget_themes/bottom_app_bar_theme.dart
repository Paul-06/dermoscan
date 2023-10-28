import 'package:flutter/material.dart';
import 'package:dermoscan/src/constants/colors.dart';

class DBottomAppBarTheme {
  DBottomAppBarTheme._(); // Para evitar la creación de instancias

  static Color getTabIconColor(BuildContext context, bool isSelected) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    Color primaryColor = brightness == Brightness.light ? primary : caribbean400;
    Color secondaryColor = Colors.grey;

    return isSelected ? primaryColor : secondaryColor;
  }

  static TextStyle getTabTextStyle(BuildContext context, bool isSelected) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    Color primaryColor = brightness == Brightness.light ? primary : caribbean400;
    Color secondaryColor = Colors.grey;

    final fontFamily = Theme.of(context).textTheme.bodyLarge?.fontFamily;

    return TextStyle(
      color: isSelected ? primaryColor : secondaryColor,
      fontFamily: fontFamily,
    );
  }

  static BottomAppBarTheme lightBottomBottomAppBarTheme = const BottomAppBarTheme(
    color: Colors.white,
    shape: CircularNotchedRectangle(),
  );

  static BottomAppBarTheme darkBottomBottomAppBarTheme = const BottomAppBarTheme(
    color: Colors.black26,
    shape: CircularNotchedRectangle(),
  );
}
