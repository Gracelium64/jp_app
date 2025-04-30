import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/glowing_text_btn.dart';
import 'package:jp_app/src/features/navigation/presentation/start_screen.dart';
import 'package:jp_app/src/theme/palette.dart';
import 'package:jp_app/src/theme/symbols_palette.dart';

class MenuCardBig extends StatefulWidget {
  final MenuItem menuItem;

  const MenuCardBig({super.key, required this.menuItem});

  @override
  State<MenuCardBig> createState() => _MenuCardBigState();
}

class _MenuCardBigState extends State<MenuCardBig> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      
      borderRadius: BorderRadius.all(Radius.circular(35)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Stack(
          children: [
            SizedBox(
              width: 400,
              height: 238,
              child: Image.asset(
                'assets/details/Vector.png',
                fit: BoxFit.fill,
                color: Color.fromARGB(255, 49, 46, 37),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 26, 0, 0),
                  child: SizedBox(
                    width: 210,
                    height: 210,
                    child: Image.asset(widget.menuItem.imgPath),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Text(
                          widget.menuItem.itemTitle,
                          style: TextStyle(
                            color: Palette.textWhite,
                            fontFamily: 'SFPro',
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            letterSpacing: 0.3,
                            shadows: [
                              Shadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: Palette.textShadow,
                              ),
                            ], ////////top row
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Palette.starColor),
                          Text(widget.menuItem.itemStars.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(31, 0, 170, 0),
                  child: Text(
                    widget.menuItem.itemDescription,
                    style: TextStyle(
                      color: Palette.textWhite,
                      fontFamily: 'SFPro', //description
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 2, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        SymbolsPalette.miaoCoin,
                        style: TextStyle(
                          color: Palette.textWhite,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '  ${widget.menuItem.itemPriceL}', //price
                        style: TextStyle(
                          color: Palette.textWhite,
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 24, 0, 0),
                  child: SizedBox(
                    // height: 279,
                    width: 120,
                    child: GlowingTextBtn(
                      btnText: 'Add to order',
                      colorOutlineLight: Palette.button2OutlineLight, //button
                      colorOutlineDark: Palette.button2OutlineDark,
                      colorGradientLight: Palette.button2GradientPurple,
                      colorGradientDark: Palette.button2GradientPink,
                      fontSizeData: 13,
                      destination: StartScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
