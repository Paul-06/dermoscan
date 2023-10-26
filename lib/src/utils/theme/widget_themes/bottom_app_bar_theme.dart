import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Bottom App Bar Themes -- */
class DBottomAppBarTheme {
  DBottomAppBarTheme._(); // Para evitar la creacion de instancias

  /* -- Light Theme -- */
  static BottomAppBarTheme lightBottomBottomAppBarTheme = 
  const BottomAppBarTheme(
    color: primary,
    shape: CircularNotchedRectangle()
  );

  /* -- Dark Theme -- */
  static BottomAppBarTheme darkBottomBottomAppBarTheme = 
  const BottomAppBarTheme(
    color: caribbean400,
    shape: CircularNotchedRectangle()
  );
}
