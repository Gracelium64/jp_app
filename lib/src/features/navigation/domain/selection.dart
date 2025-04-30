import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/features/navigation/domain/menu_card_big.dart';

class Selection extends StatelessWidget {
  final String catagory;

  const Selection({super.key, required this.catagory});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: 238,
        // width: 400,
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
                  onTap: () {},
                  child: SizedBox(
                    height: 238,
                    width: 345,
                    child: MenuCardBig(menuItem: itemsData[index]),
                  ),
                ),
              );
            } else if (catagory == 'All') {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 238,
                    width: 345,
                    child: MenuCardBig(menuItem: itemsData[index]),
                  ),
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
