import 'package:dermoscan/src/utils/theme/widget_themes/app_bar_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/bottom_app_bar_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/floating_action_button_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/icon_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:dermoscan/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class DAppTheme {
  DAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light, // Brillo
      textTheme: DTextTheme.lightTextTheme, // color de texto
      outlinedButtonTheme: DOutlinedButtonTheme.lightOutlinedButtonTheme, // color de botones outline
      elevatedButtonTheme: DElevatedButtonTheme.lightElevatedButtonTheme, // color de botones solid
      inputDecorationTheme: DTextFormFieldTheme.lightInputDecorationTheme, // color de input form
      floatingActionButtonTheme: DFloatingActionButton.lightFloatingActionButtonTheme, // color de boton flotante
      bottomAppBarTheme: DBottomAppBarTheme.lightBottomBottomAppBarTheme, // color del tabbed menu
      // iconTheme: DIconTheme.lightIconTheme // color de los iconos
      appBarTheme: DAppBarTheme.lightAppBarTheme
    );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: DTextTheme.darkTextTheme,
      outlinedButtonTheme: DOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: DElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: DTextFormFieldTheme.darkInputDecorationTheme,
      floatingActionButtonTheme: DFloatingActionButton.darkFloatingActionButtonTheme,
      bottomAppBarTheme: DBottomAppBarTheme.darkBottomBottomAppBarTheme,
      // iconTheme: DIconTheme.darkIconTheme
      appBarTheme: DAppBarTheme.darkAppBarTheme
    );
}
