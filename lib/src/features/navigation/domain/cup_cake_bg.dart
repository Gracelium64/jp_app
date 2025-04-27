import 'package:flutter/material.dart';

class CupCakeBg extends StatelessWidget {
  final double snacOpacity;

  const CupCakeBg({super.key, required this.snacOpacity});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        SizedBox(height: 78),
        SingleChildScrollView(
          controller: ScrollController(initialScrollOffset: 50),
          scrollDirection: Axis.horizontal,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 350, 0, 0),
                child: Opacity(
                  opacity: snacOpacity,
                  child: Image.asset(
                    'assets/details/snack_snack.png',
                    scale: 0.95,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              ClipPath(
                child: SizedBox(
                  height: 575,
                  width: 575,
                  child: Image.asset(
                    'assets/graphics/cupcake_chick.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(50, 350, 0, 0),
                child: ClipPath(
                  // clipper: SnackClip(),

                  child: Opacity(
                    opacity: 1,
                    child: Image.asset(
                      'assets/details/snack_snack.png',
                      scale: 0.95,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// class SnackClip extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(178, size.height - 100);
//     path.lineTo(size.width / 3, size.height);
//     path.lineTo(size.width, size.height - 100);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     throw UnimplementedError();
//   }
// }
