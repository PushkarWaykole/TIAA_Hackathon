import 'package:auth_ref/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auth_ref/src/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  // -- Light Text Theme -- //
  static TextTheme lightTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: tDarkColor,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: tDarkColor,
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: tDarkColor,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: tDarkColor,
    ),
  );

// -- Dark Text Theme -- //
  static TextTheme darkTextTheme = TextTheme(
    headlineSmall: GoogleFonts.montserrat(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: tWhiteColor,
    ),
    headlineMedium: GoogleFonts.montserrat(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: tWhiteColor,
    ),
    headlineLarge: GoogleFonts.montserrat(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: tWhiteColor,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: tWhiteColor,
    ),
  );
}