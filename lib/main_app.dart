import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/recommended.dart';
import 'package:jp_app/src/features/navigation/domain/menu_card_big.dart';
import 'package:jp_app/src/features/navigation/presentation/main_screen.dart';
import 'package:jp_app/src/features/navigation/presentation/start_screen.dart';
import 'package:jp_app/src/theme/app_theme.dart';
import 'package:jp_app/vorlesung.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        home: StartScreen(),
        // home: MenuCardBig(menuItem2: itemsData[0])
        // home: MainScreen(),
        // home: Vorlesung(),
        );
  }
}
