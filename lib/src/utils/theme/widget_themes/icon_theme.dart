import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';

/* -- Light & Dark Icon Themes -- */
class DIconTheme {
  DIconTheme._();

  /* -- Light Theme -- */
  static IconThemeData lightIconTheme = 
  const IconThemeData(
    color: dWhiteColor
  );

  /* -- Dark Theme -- */
  static IconThemeData darkIconTheme = 
  const IconThemeData(
    color: caribbean950
  );
}
