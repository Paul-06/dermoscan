import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark App Bar Themes -- */
class DAppBarTheme {
  DAppBarTheme._();

  /* -- Light Theme -- */
  static AppBarTheme lightAppBarTheme = const AppBarTheme(
    centerTitle: true,
    backgroundColor: dPrimaryColor,
  );

  /* -- Dark Theme -- */
  static AppBarTheme darkAppBarTheme = const AppBarTheme(
    centerTitle: true,
    backgroundColor: caribbean400,
  );
}