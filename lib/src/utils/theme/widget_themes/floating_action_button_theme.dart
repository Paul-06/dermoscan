import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Floating Action Button Themes -- */
class DFloatingActionButton {
  DFloatingActionButton._();

  /* -- Light Theme -- */
  static FloatingActionButtonThemeData lightFloatingActionButtonTheme = 
  const FloatingActionButtonThemeData(
    backgroundColor: dPrimaryColor,
    foregroundColor: dWhiteColor,
    elevation: 0
  );

  /* -- Dark Theme -- */
  static FloatingActionButtonThemeData darkFloatingActionButtonTheme = 
  const FloatingActionButtonThemeData(
    backgroundColor: caribbean400,
    foregroundColor: caribbean950,
    elevation: 0
  );
}
