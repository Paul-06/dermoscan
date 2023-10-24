import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

class DTextFormFieldTheme {
  DTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: caribbean700,
        floatingLabelStyle: TextStyle(color: caribbean700),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: caribbean700)
        )
      );

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: caribbean300,
        floatingLabelStyle: TextStyle(color: caribbean300),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: caribbean300)
        )
      );
}
