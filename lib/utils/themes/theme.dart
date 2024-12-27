import 'package:attandance_app/utils/constants/color.dart';
import 'package:attandance_app/utils/themes/text_themes.dart';
import 'package:flutter/material.dart';

class AAppTheme {
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AColors.primary,
    textTheme: ATextTheme.lightTextTheme,
    scaffoldBackgroundColor: Colors.white,
  );
}