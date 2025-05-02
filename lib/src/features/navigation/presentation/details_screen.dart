import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/glowing_text_btn.dart';
import 'package:jp_app/src/common/widgets/star_rating.dart';
import 'package:jp_app/src/features/navigation/domain/ingredients.dart';
import 'package:jp_app/src/features/navigation/presentation/error_screen.dart';
import 'package:jp_app/src/theme/palette.dart';
import 'package:jp_app/src/theme/symbols_palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatefulWidget {
  final MenuItem menuItem;

  const DetailsScreen({super.key, required this.menuItem});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 720,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Color.fromARGB(255, 47, 58, 58),
                    Color.fromARGB(255, 41, 38, 31),
                  ],
                ),
              ),
            ),
          ],
        ),

        SafeArea(
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.menuItem.imgPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 80, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.cancel_outlined, color: Colors.white60),
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                              side: BorderSide(
                                width: 0.5,
                                color: Palette.menuCardBorder,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  20,
                                  32,
                                  0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      (MdiIcons.cardsHeartOutline),
                                      size: 17,
                                      color: Colors.white60,
                                    ),
                                    Text(
                                      '${widget.menuItem.itemLikes}',
                                      style: TextStyle(
                                        fontFamily: 'SFPro',
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Text(
                                widget.menuItem.itemTitle,
                                style: TextStyle(
                                  fontFamily: 'InterBlack',
                                  letterSpacing: 0.3,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                widget.menuItem.itemDescription,
                                style: TextStyle(
                                  fontFamily: 'SFPro',
                                  fontSize: 12,
                                  color: Colors.white60,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    SymbolsPalette.miaoCoin,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  Text('${widget.menuItem.itemPriceL}'),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(32),
                                child: SizedBox(
                                  height: 1,
                                  child: Placeholder(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  32,
                                  0,
                                  32,
                                  0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Ingredients'),
                                        SizedBox(height: 10),
                                        Row(
                                          spacing: 4,
                                          children: [
                                            Ingredients(
                                              imgUrl: 'assets/details/leaf.png',
                                            ),
                                            Ingredients(
                                              imgUrl:
                                                  'assets/details/ice_cubes.png',
                                            ),
                                            Ingredients(
                                              imgUrl:
                                                  'assets/details/low_fat.png',
                                            ),
                                            Ingredients(
                                              imgUrl: 'assets/details/kcal.png',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Reviews'),
                                        SizedBox(height: 10),
                                        Row(
                                          spacing: 8,
                                          children: [
                                            StarRating(
                                              rating: widget.menuItem.itemStars,
                                              ratingColor: Color.fromARGB(
                                                255,
                                                235,
                                                235,
                                                235,
                                              ),
                                            ),
                                            Text(
                                              '${widget.menuItem.itemStars}',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  SizedBox(
                    height: 75,
                    child: Image.asset(('assets/details/frame3621.png')),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    // SizedBox(width: 100, child: Placeholder()),
                    // Spacer(),
                    // Row(
                    //   spacing: 8,
                    //   children: [
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: Icon(
                    //         Icons.remove_circle_outline,
                    //         color: Colors.white60,
                    //         size: 30,
                    //       ),
                    //     ),
                    //     Text('8', style: TextStyle(fontSize: 20)),
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: Icon(
                    //         Icons.add_circle_outline,
                    //         color: Colors.white60,
                    //         size: 30,
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    //   ],
                    // ),
                  ),

                  GlowingTextBtn(
                    btnText:
                        'Add to order for ${SymbolsPalette.miaoCoin} ${widget.menuItem.itemPriceL}',
                    colorOutlineLight: Palette.buttonOutlineLight,
                    colorOutlineDark: Palette.buttonOutlineDark,
                    colorGradientLight: Palette.buttonGradientOrange,
                    colorGradientDark: Palette.buttonGradientPink,
                    fontSizeData: 18,
                    destination: ErrorScreen(),
                    width1: 350,
                    width2: 350,
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
