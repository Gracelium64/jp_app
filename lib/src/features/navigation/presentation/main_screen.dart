import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';
import 'package:jp_app/src/features/navigation/domain/recommended.dart';
import 'package:jp_app/src/features/navigation/domain/selection.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 32, 0),
                  child: Text(
                    'Choose Your Favorite Snack',
                    style: TextStyle(
                      fontFamily: 'InterBlack',
                      fontWeight: FontWeight.w900,
                      height: 1.27,
                      letterSpacing: 1,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 64, child: Placeholder()),
                Selection(catagory: 'Salty'), /////////////////////////////
                Row(
                  children: [
                    Text(
                      'We Recommend',
                      style: TextStyle(
                        fontFamily: 'InterBlack',
                        fontWeight: FontWeight.w900,
                        height: 1.27,
                        letterSpacing: 1,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Recommended(
                  catagory: 'Sweet',
                ), //////////////////////////////////
              ],
            ),
          ),
        ),
      ],
    );
  }
}

          