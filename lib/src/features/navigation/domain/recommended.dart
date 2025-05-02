import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/features/navigation/domain/menu_card.dart';
import 'package:jp_app/src/features/navigation/presentation/details_screen.dart';
import 'package:jp_app/src/theme/palette.dart';

class Recommended extends StatelessWidget {
  final String catagory;

  const Recommended({super.key, required this.catagory});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 265,
        child: ListView.builder(
          shrinkWrap: true,

          scrollDirection: Axis.horizontal,

          padding: EdgeInsets.all(8),
          itemCount: itemsData.length,
          itemBuilder: (BuildContext buildCards, int index) {
            if (itemsData[index].itemCatagory == catagory) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Palette.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 800,
                          child: DetailsScreen(menuItem: itemsData[index]),
                        );
                      },
                    );
                  },
                  child: MenuCard(menuItem: itemsData[index]),
                ),
              );
            } else if (catagory == 'All') {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Palette.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 800,
                          child: DetailsScreen(menuItem: itemsData[index]),
                        );
                      },
                    );
                  },
                  child: MenuCard(menuItem: itemsData[index]),
                ),
              );
            } else {
              return SizedBox(height: 0, width: 0);
            }
          },
        ),
      ),
    );
  }
}
