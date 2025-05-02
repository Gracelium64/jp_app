import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:ui';
import 'package:jp_app/src/common/items_data.dart';
import 'package:flutter/material.dart';
import 'package:jp_app/src/theme/palette.dart';
import 'package:jp_app/src/theme/symbols_palette.dart';

class MenuCard extends StatefulWidget {
  final MenuItem menuItem;

  const MenuCard({super.key, required this.menuItem});

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: 265,
          width: 192,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
              stops: [0.1, 0.5, 1],
              colors: [
                Palette.menuCardGradientPurple,
                Palette.menuCardGradientPurpleGrey,
                Palette.menuCardGradientGrey,
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(width: 0.5, color: Palette.menuCardBorder),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                Container(
                  height: 155,
                  width: 155,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.menuItem.imgPath),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        widget.menuItem.itemTitle,
                        style: TextStyle(
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Palette.textWhite,
                        ),
                      ),

                      Text(
                        widget.menuItem.itemSubTitle,
                        style: TextStyle(
                          fontFamily: 'SFPrp',
                          fontSize: 11,
                          color: Palette.textGrey,
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(SymbolsPalette.miaoCoin),
                          Text('${widget.menuItem.itemPriceL}'),
                          Spacer(),
                          Icon((MdiIcons.cardsHeartOutline), size: 17),
                          Text('${widget.menuItem.itemLikes}'),
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
    );
  }
}
