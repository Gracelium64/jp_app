import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/features/navigation/domain/variables.dart';
import 'package:jp_app/src/theme/palette.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SelectionRow extends StatefulWidget {
  const SelectionRow({super.key});

  @override
  State<SelectionRow> createState() => _SelectionRowState();
}

Color colorClicked1 = Color.fromARGB(255, 234, 192, 231);
Color colorClicked2 = Palette.transparent;
Color colorClicked3 = Palette.transparent;
Color colorClicked4 = Palette.transparent;
Color textColor1 = Colors.black;
Color textColor2 = Color.fromARGB(255, 204, 197, 199);
Color textColor3 = Color.fromARGB(255, 204, 197, 199);
Color textColor4 = Color.fromARGB(255, 204, 197, 199);

class _SelectionRowState extends State<SelectionRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  colorClicked1 = Color.fromARGB(255, 234, 192, 231);
                  colorClicked2 = Palette.transparent;
                  colorClicked3 = Palette.transparent;
                  colorClicked4 = Palette.transparent;
                  selection = 'All';
                  textColor1 = Colors.black;
                  textColor2 = Color.fromARGB(255, 204, 197, 199);
                  textColor3 = Color.fromARGB(255, 204, 197, 199);
                  textColor4 = Color.fromARGB(255, 204, 197, 199);
                });
              },

              child: Container(
                height: 40,
                padding: const EdgeInsets.only(
                  top: 9,
                  left: 16,
                  right: 17,
                  bottom: 0,
                ),
                decoration: ShapeDecoration(
                  color: colorClicked1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(width: 1, color: Palette.textGrey),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.lunch_dining, color: textColor1),
                    Text('All Catagories', style: TextStyle(color: textColor1)),
                    Icon(MdiIcons.chevronDown, color: textColor1),
                  ],
                ),
              ),
            ),
          ),
        ),

        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  colorClicked2 = Color.fromARGB(255, 234, 192, 231);
                  colorClicked1 = Palette.transparent;
                  colorClicked3 = Palette.transparent;
                  colorClicked4 = Palette.transparent;
                  selection = 'Salty';
                  textColor2 = Colors.black;
                  textColor1 = Color.fromARGB(255, 204, 197, 199);
                  textColor3 = Color.fromARGB(255, 204, 197, 199);
                  textColor4 = Color.fromARGB(255, 204, 197, 199);
                });
              },

              child: Container(
                height: 40,
                padding: const EdgeInsets.only(
                  top: 9,
                  left: 16,
                  right: 17,
                  bottom: 0,
                ),
                decoration: ShapeDecoration(
                  color: colorClicked2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(width: 1, color: Palette.textGrey),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Salty', style: TextStyle(color: textColor2)),
                  ],
                ),
              ),
            ),
          ),
        ),

        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  colorClicked3 = Color.fromARGB(255, 234, 192, 231);
                  colorClicked1 = Palette.transparent;
                  colorClicked2 = Palette.transparent;
                  colorClicked4 = Palette.transparent;
                  selection = 'Salty';
                  textColor3 = Colors.black;
                  textColor1 = Color.fromARGB(255, 204, 197, 199);
                  textColor2 = Color.fromARGB(255, 204, 197, 199);
                  textColor4 = Color.fromARGB(255, 204, 197, 199);
                });
              },

              child: Container(
                height: 40,
                padding: const EdgeInsets.only(
                  top: 9,
                  left: 16,
                  right: 17,
                  bottom: 0,
                ),
                decoration: ShapeDecoration(
                  color: colorClicked3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(width: 1, color: Palette.textGrey),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sweet', style: TextStyle(color: textColor3)),
                  ],
                ),
              ),
            ),
          ),
        ),

        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  colorClicked4 = Color.fromARGB(255, 234, 192, 231);
                  colorClicked1 = Palette.transparent;
                  colorClicked3 = Palette.transparent;
                  colorClicked2 = Palette.transparent;
                  selection = 'All';
                  textColor4 = Colors.black;
                  textColor1 = Color.fromARGB(255, 204, 197, 199);
                  textColor3 = Color.fromARGB(255, 204, 197, 199);
                  textColor2 = Color.fromARGB(255, 204, 197, 199);
                });
              },

              child: Container(
                height: 40,
                padding: const EdgeInsets.only(
                  top: 9,
                  left: 16,
                  right: 17,
                  bottom: 0,
                ),
                decoration: ShapeDecoration(
                  color: colorClicked4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(width: 1, color: Palette.textGrey),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Drinks', style: TextStyle(color: textColor4)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
