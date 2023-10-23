import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      color: caribbean700,
      fontWeight: FontWeight.w700
    ),
    headlineLarge: GoogleFonts.montserrat(
      color: caribbean700,
      fontWeight: FontWeight.w500
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black54
    )
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      color: caribbean300,
      fontWeight: FontWeight.w700
    ),
    headlineLarge: GoogleFonts.montserrat(
      color: caribbean300,
      fontWeight: FontWeight.w500
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.white60
    )
  );
}
