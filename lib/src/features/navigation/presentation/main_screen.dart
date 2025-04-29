import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';
import 'package:jp_app/src/common/widgets/recommended.dart';
import 'package:jp_app/src/common/widgets/selection.dart';
import 'package:jp_app/src/features/navigation/domain/menu_card_big.dart';

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
            child: Column(children: [
              Selection(),
              MenuCardBig(menuItem: itemsData[3]),
              Recommended(),
            ]),
          ),
        ),
      ],
    );
  }
}
