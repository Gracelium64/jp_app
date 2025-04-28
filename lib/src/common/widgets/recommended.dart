import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/features/navigation/domain/detail_card.dart';
import 'package:jp_app/src/features/navigation/domain/menu_card.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

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
            if (itemsData[index].itemCatagory == 'Sweet') {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailCard(menuItem: itemsData[index]);
                        },
                      ),
                    );
                  },
                  child: MenuCard(menuItem: itemsData[index]),
                ),
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}
