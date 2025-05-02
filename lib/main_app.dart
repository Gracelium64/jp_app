import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/features/navigation/presentation/details_screen.dart';
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
      // home: MainScreen(),
      // home: DetailsScreen(menuItem: itemsData.first),
      // home: Vorlesung(),
    );
  }
}


////// still remains: actual buttons for size and amount in DetailsScreen, functionality like icon
/// functionality of shown items per catagory
/// functinonality 'Add to order' button instead of clicking on frame
