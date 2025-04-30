import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/glowing_text_btn.dart';
import 'package:jp_app/src/features/navigation/presentation/main_screen.dart';
import 'package:jp_app/src/theme/palette.dart';

class OrderNowWindow extends StatefulWidget {
  const OrderNowWindow({super.key});

  @override
  State<OrderNowWindow> createState() => _OrderNowWindowState();
}

class _OrderNowWindowState extends State<OrderNowWindow> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Expanded(flex: 5, child: Container(height: 50)),
      ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              clipBehavior: Clip.none,
              padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              decoration: ShapeDecoration(
                color: Palette.boxBg,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.5, color: Palette.boxBorder),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              child: Column(children: [
                Text(
                  'Feeling Snackish Today?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Palette.textWhite,
                    fontSize: 24,
                    fontFamily: 'InterBlack',
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                    letterSpacing: 0.2,
                    /////////////////////////////////////
                    shadows: [
                      Shadow(
                        offset: Offset(0, 30),
                        blurRadius: 180,
                        color: Palette.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.4, 8, 25.4, 0),
                  child: Text(
                    "Explore Angi's most popular snack selection and get instantly happy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Palette.textGrey,
                      fontFamily: 'SFPro',
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                      letterSpacing: 1,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 30),
                          blurRadius: 180,
                          color: Color(0xFF000000),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 35, 0, 35),
                  //
                  //
                  //
                  //
                  //
                  //
                  child: GlowingTextBtn(
                    btnText: 'Order Now',
                    colorOutlineLight: Palette.buttonOutlineLight,
                    colorOutlineDark: Palette.buttonOutlineDark,
                    colorGradientLight: Palette.buttonGradientOrange,
                    colorGradientDark: Palette.buttonGradientPink,
                    fontSizeData: 18, destination: MainScreen(),
                  ),
                ),
              ]),
              //
              //
              //
              //
              //
            ),
          ))
    ]);
  }
}
