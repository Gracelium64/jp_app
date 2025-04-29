import 'package:flutter/material.dart';
import 'package:jp_app/src/theme/palette.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData.from(
    colorScheme: ColorScheme.light()
    // .copyWith(
    //   primary: Palette.darkTeal,
    //   shadow: Palette.darkTeal
    // )
  );

  

  static final darkTheme = ThemeData.from(
    colorScheme: ColorScheme.dark()
  );
}
