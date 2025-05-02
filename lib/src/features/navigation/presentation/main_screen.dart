import 'package:jp_app/Src/features/navigation/domain/variables.dart';
import 'package:flutter/material.dart';
import 'package:jp_app/Src/common/widgets/app_bg.dart';
import 'package:jp_app/Src/features/navigation/domain/recommended.dart';
import 'package:jp_app/Src/features/navigation/domain/selection.dart';
import 'package:jp_app/Src/features/navigation/domain/selection_row.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBg(appBg: 'assets/bg/bg_mainscreen.png'),
        PopScope(
          canPop: false,
          
          child: Scaffold(
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
                  SizedBox(
                    height: 64,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(spacing: 12, children: [SelectionRow()]),
                    ),
                  ),

                  Selection(catagory: selection), /////////////////////////////
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
                  Recommended(catagory: 'Sweet'), /////////////////////////////
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
