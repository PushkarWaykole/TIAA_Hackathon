import 'package:flutter/material.dart';
import 'package:auth_ref/src/constants/colors.dart';
import 'package:auth_ref/src/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  // -- Light Theme -- //
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  // -- Dark Theme -- //
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}