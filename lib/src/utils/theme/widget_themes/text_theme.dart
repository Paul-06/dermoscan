import 'package:dermoscan/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      color: caribbean700, // headlineSmall => 24
      fontWeight: FontWeight.w700
    ),
    headlineMedium: GoogleFonts.poppins(
      color: dBlackColor,
      fontSize: 21,
    ),
    headlineLarge: GoogleFonts.montserrat(
      color: caribbean700, // headlineLarge => 32
      fontWeight: FontWeight.w500
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.black54 // bodyLarge => 16
    ),
    titleLarge: GoogleFonts.montserrat(
      color: dWhiteColor, // titleLarge => 16
      fontWeight: FontWeight.bold
    )
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      color: caribbean300,
      fontWeight: FontWeight.w700
    ),
    headlineMedium: GoogleFonts.poppins(
      color: dWhiteColor,
      fontSize: 20,
    ),
    headlineLarge: GoogleFonts.montserrat(
      color: caribbean300,
      fontWeight: FontWeight.w500
    ),
    bodyLarge: GoogleFonts.poppins(
      color: Colors.white60
    ),
    titleLarge: GoogleFonts.montserrat(
        color: caribbean950,
        fontWeight: FontWeight.bold
    )
  );
}
