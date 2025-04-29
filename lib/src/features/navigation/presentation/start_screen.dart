import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';
import 'package:jp_app/src/features/navigation/domain/order_now_window.dart';
import 'package:jp_app/src/features/navigation/domain/cup_cake_bg.dart';
import 'package:jp_app/src/theme/palette.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBg(appBg: 'assets/bg/bg_startscreen.png'),
        Center(child: CupCakeBg(snacOpacity: 0.3)),
        Scaffold(
          backgroundColor: Palette.transparent,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 80),
            child: OrderNowWindow(),
          ),
        ),
      ],
    );
  }
}
