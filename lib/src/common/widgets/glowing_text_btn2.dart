// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/features/navigation/presentation/details_screen.dart';
import 'package:jp_app/src/theme/palette.dart';

class GlowingTextBtn2 extends StatefulWidget {
  final String btnText;
  final Color colorOutlineLight;
  final Color colorOutlineDark;
  final Color colorGradientLight;
  final Color colorGradientDark;
  final double fontSizeData;
  // final Widget destination;

  const GlowingTextBtn2({
    super.key,
    required this.btnText,
    required this.colorOutlineLight,
    required this.colorOutlineDark,
    required this.colorGradientLight,
    required this.colorGradientDark,
    required this.fontSizeData,
    // required this.destination,
  });

  @override
  State<GlowingTextBtn2> createState() => _GlowingTextBtn2State();
}

class _GlowingTextBtn2State extends State<GlowingTextBtn2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 45,
          width: 220,
          decoration: ShapeDecoration(
            gradient: RadialGradient(
              center: Alignment.bottomLeft,
              focal: Alignment.topRight,
              radius: 5,
              colors: [
                widget.colorOutlineLight, // outline gradient
                widget.colorOutlineDark,
              ],
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),

            shadows: [
              BoxShadow(
                blurStyle: BlurStyle.normal,

                color: widget.colorOutlineDark, //////////////
                blurRadius: 20, // glow effect
                offset: Offset(3, 4),
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 1,
          child: Container(
            height: 50,
            width: 230,
            decoration: ShapeDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomRight,
                radius: 5,
                colors: [
                  widget.colorGradientLight, // button colors
                  widget.colorGradientDark,
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          height: 50,
          width: 230,
          child: TextButton(
            onPressed: () {
            
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return DetailsScreen(itemsData);
                    //     },
                    //   ),
                    // );
            },
            child: Text(
              widget.btnText,
              style: TextStyle(
                color: Palette.textWhite,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: widget.fontSizeData,
                height: 1.3,
                shadows: [
                  Shadow(
                    offset: Offset(0, 8),
                    blurRadius: 60,
                    color: Palette.textShadow,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
