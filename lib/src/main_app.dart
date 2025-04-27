import 'package:flutter/material.dart';
import 'package:jp_app/src/features/navigation/presentation/start_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ).copyWith(
        cardTheme: CardThemeData(color: Colors.red, elevation: 16),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(backgroundColor: Colors.purple),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.yellow,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.yellow,
            elevation: 8,
          ),
        ),
      ),
      home: StartScreen(),
    );
  }
}
