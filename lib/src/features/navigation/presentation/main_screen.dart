import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';

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
            child: Container(
              height: 40.31,
              padding: const EdgeInsets.only(
                top: 12.09,
                left: 16.12,
                right: 17.13,
                bottom: 11.08,
              ),
              decoration: ShapeDecoration(
                color: const Color.fromARGB(255, 57, 55, 55).withValues(alpha: 51),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.01,
                    color: const Color.fromARGB(255, 71, 70, 70).withValues(alpha: 128),
                  ),
                  borderRadius: BorderRadius.circular(30.23),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10.08,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
  
                        TextSpan(
                          text: '􀻐',
                          style: TextStyle(
                            color: const Color.fromARGB(153, 0, 0, 0),
                            fontSize: 12.09,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 1.92,
                            letterSpacing: -0.04,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12.09,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 1.92,
                            letterSpacing: -0.04,
                          ),
                        ),
                        TextSpan(
                          text: 'All categories',
                          style: TextStyle(
                            color: const Color.fromARGB(153, 0, 0, 0),
                            fontSize: 12.09,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 1.92,
                            letterSpacing: -0.04,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12.09,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 1.92,
                            letterSpacing: -0.04,
                          ),
                        ),
                        TextSpan(
                          text: '􀆈',
                          style: TextStyle(
                            color: const Color.fromARGB(153, 0, 0, 0),
                            fontSize: 12.09,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 1.92,
                            letterSpacing: -0.04,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
