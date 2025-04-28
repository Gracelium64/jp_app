import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';
import 'package:jp_app/src/common/widgets/recommended.dart';
import 'package:jp_app/src/features/navigation/presentation/menu_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBg(appBg: 'assets/bg/bg_mainscreen.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 0),
            child: Column(
              
              children: [
              // MenuCard(menuItem: MenuItem('dfg', 'sdfg', 'sdg', 45, 456, 45, 4, 5, 'dsg', 'assets/graphics/icecream.png'),),
              Recommended()
              ]
              ),
          ),
        ),
      ],
    );
  }
}
