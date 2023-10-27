import 'package:flutter/material.dart';

/* -- Light & Dark Bottom App Bar Themes -- */
class DBottomAppBarTheme {
  DBottomAppBarTheme._(); // Para evitar la creacion de instancias

  /* -- Light Theme -- */
  static BottomAppBarTheme lightBottomBottomAppBarTheme = 
  const BottomAppBarTheme(
    color: Colors.white,
    shape: CircularNotchedRectangle()
  );

  /* -- Dark Theme -- */
  static BottomAppBarTheme darkBottomBottomAppBarTheme = 
  const BottomAppBarTheme(
    color: Color(0xFF121212),
    shape: CircularNotchedRectangle()
  );
}
