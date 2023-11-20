// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auth_ref/src/utils/elevated_button_theme.dart';
import 'package:auth_ref/src/utils/outlined_button_theme.dart';
import 'package:auth_ref/src/utils/widget_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auth_ref/src/utils/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  // -- Light Theme -- //
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );

// -- Dark Theme -- //
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}