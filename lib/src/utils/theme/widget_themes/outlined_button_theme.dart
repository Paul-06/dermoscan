import 'package:dermoscan/src/constants/colors.dart';
import 'package:dermoscan/src/constants/sizes.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Elevated Button Themes -- */
class DOutlinedButtonTheme {
  DOutlinedButtonTheme._(); // Para evitar la creacion de instancias

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: caribbean700, // color de fuente
      side: const BorderSide(color: caribbean700), // color de borde
      padding: const EdgeInsets.symmetric(vertical: dButtonHeight)
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: caribbean300, // color de fuente
      side: const BorderSide(color: caribbean300), // color de borde
      padding: const EdgeInsets.symmetric(vertical: dButtonHeight)
    ),
  );
}
