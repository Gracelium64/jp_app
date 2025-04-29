import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';
import 'package:jp_app/src/common/widgets/star_rating.dart';
import 'package:jp_app/src/theme/palette.dart';
import 'package:jp_app/src/theme/symbols_palette.dart';
// import 'package:jp_app/src/common/widgets/selection.dart';

class MenuCardBig extends StatefulWidget {
  // final MenuCardBig menuItem;

  const MenuCardBig({
    super.key,
    // required MenuItem menuItem,
  });

  @override
  State<MenuCardBig> createState() => _MenuCardBigState();
}

class _MenuCardBigState extends State<MenuCardBig> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBg(appBg: 'assets/bg/bg_startscreen.png'),
        // Center(child: CupCakeBg(snacOpacity: 0.3)),
        Scaffold(
          backgroundColor: const Color.fromARGB(58, 174, 174, 174),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
            child: Column(
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: ClipRRect(
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
                              color: Color.fromARGB(255, 49, 46, 37),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 26, 12, 0),
                                child: SizedBox(
                                    width: 220,
                                    height: 220,
                                    child: Image.asset(
                                        'assets/graphics/burger.png')),
                              )
                            ],
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 16, 32, 0),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        flex: 7,
                                        child: Text(
                                          "Angi's Yummy Burger",
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
                                                  color: Palette.textShadow)
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Palette.starColor,
                                          ),
                                          Text('4.8'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(31, 0, 170, 0),
                                  child: Text(
                                    'Delish vegan burger that tastes like heaven',
                                    style: TextStyle(
                                      color: Palette.textWhite,
                                      fontFamily: 'SFPro',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ),
                                // Text(widget.menuItem.itemPriceL),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(32, 2, 0, 0),
                                  child: Row(
                                    children: [
                                      Text(
                                        SymbolsPalette.miaoCoin,
                                        style: TextStyle(
                                            color: Palette.textWhite,
                                            fontFamily: 'SFPro',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        '  13.99',
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
                                TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.green,
                                    )),
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 213);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}
