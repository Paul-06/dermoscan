import 'package:dermoscan/src/constants/colors.dart';
import 'package:dermoscan/src/constants/sizes.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Elevated Button Themes -- */
class DElevatedButtonTheme {
  DElevatedButtonTheme._(); // Para evitar la creacion de instancias

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: dWhiteColor, // color de fuente
      backgroundColor: dPrimaryColor, // color de fondo
      side: const BorderSide(color: dPrimaryColor), // color de borde
      padding: const EdgeInsets.symmetric(vertical: dButtonHeight)
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: caribbean950, // color de fuente
      backgroundColor: caribbean400, // color de fondo
      side: const BorderSide(color: dPrimaryColor), // color de borde
      padding: const EdgeInsets.symmetric(vertical: dButtonHeight)
    )
  );
}
