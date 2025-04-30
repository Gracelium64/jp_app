import 'package:flutter/material.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData.from(colorScheme: ColorScheme.light()
      // .copyWith(
      //   primary: Palette.darkTeal,
      //   shadow: Palette.darkTeal
      // )
      );

  static final darkTheme = ThemeData.from(
      textTheme: TextTheme(
          displaySmall: TextStyle(
        fontFamily: 'Marvel',
        fontSize: 50,
        fontWeight: FontWeight.bold,
      )),
      colorScheme: ColorScheme.dark());



      
}
