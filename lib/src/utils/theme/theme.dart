import 'package:dermoscan/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class DAppTheme {
  DAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: DTextTheme.lightTextTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme
    );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: DTextTheme.darkTextTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme
    );
}
