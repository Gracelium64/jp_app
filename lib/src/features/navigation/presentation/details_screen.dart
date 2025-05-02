import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/glowing_text_btn.dart';
import 'package:jp_app/src/common/widgets/star_rating.dart';
import 'package:jp_app/src/features/navigation/domain/ingredients.dart';
import 'package:jp_app/src/features/navigation/domain/selection_row.dart';
import 'package:jp_app/src/features/navigation/presentation/error_screen.dart';
import 'package:jp_app/src/theme/palette.dart';
import 'package:jp_app/src/theme/symbols_palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatefulWidget {
  // final MenuItem menuItem;

  const DetailsScreen({
    super.key,

    // required this.menuItem
  });

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
              height: 670,
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
                image: AssetImage('assets/graphics/cupkake_cat.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
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
                            padding: const EdgeInsets.fromLTRB(0, 20, 32, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  (MdiIcons.cardsHeartOutline),
                                  size: 17,
                                  color: Palette.textGrey,
                                ),
                                Text(
                                  '200',
                                  style: TextStyle(
                                    fontFamily: 'SFPro',
                                    color: Palette.textGrey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Text(
                            'gdsfg',
                            style: TextStyle(
                              fontFamily: 'InterBlack',
                              letterSpacing: 0.3,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'description',
                            style: TextStyle(
                              fontFamily: 'SFPro',
                              fontSize: 12,
                              color: Colors.white38,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                SymbolsPalette.miaoCoin,
                                style: TextStyle(fontSize: 25),
                              ),
                              Text('8.99'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32),
                            child: SizedBox(height: 1, child: Placeholder()),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Ingredients'),
                                    SizedBox(height: 10),
                                    Row(
                                      spacing: 8,
                                      children: [
                                        Ingredients(
                                          imgUrl: 'assets/details/leaf.png',
                                        ),
                                        Ingredients(
                                          imgUrl:
                                              'assets/details/ice_cubes.png',
                                        ),
                                        Ingredients(
                                          imgUrl: 'assets/details/low_fat.png',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Reviews'),
                                    SizedBox(height: 10),
                                    Row(
                                      spacing: 8,
                                      children: [
                                        StarRating(rating: 4),
                                        Text('4'),
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
              SizedBox(height: 25),
              SizedBox(
                height: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 100, child: Placeholder()),
                    Spacer(),
                    SizedBox(width: 50, child: Placeholder()),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GlowingTextBtn(
                btnText: 'Add to order for ${SymbolsPalette.miaoCoin}',
                colorOutlineLight: Palette.buttonOutlineLight,
                colorOutlineDark: Palette.buttonOutlineDark,
                colorGradientLight: Palette.buttonGradientOrange,
                colorGradientDark: Palette.buttonGradientPink,
                fontSizeData: 18,
                destination: ErrorScreen(),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }
}
