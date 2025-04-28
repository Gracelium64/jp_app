import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/features/navigation/domain/detail_card.dart';
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
      home: DetailCard(menuItem: MenuItem('dsfg', 'dsfg dh', 'dsghhfsghsgh',5, 6, 6, 4,5, 'Salty', 'assets/graphics/burger.png')),
      // home: MainScreen(),
      // home: StartScreen(),
      // home: Vorlesung(),
    );
  }
}
