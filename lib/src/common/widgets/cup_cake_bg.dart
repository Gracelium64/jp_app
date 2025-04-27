import 'package:flutter/material.dart';

class CupCakeBg extends StatelessWidget {
  final double snacOpacity;
  
  const CupCakeBg({
    super.key, required this.snacOpacity,
  });

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
            children:
            [
    
             SizedBox(
              height: 575,
              width: 575,
              child: Image.asset(
                'assets/graphics/cupcake_chick.png',
                fit: BoxFit.cover,
              ),
            ),
            //      //
        // how to make strokes go darker on edge of cupcake //                
          //      //
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 350, 0, 0),
          child: Opacity(
            opacity: snacOpacity,
            child: Image.asset('assets/details/snack_snack.png',
            scale: 0.95,
            fit: BoxFit.cover
            ),
          ),
        ),
            ]
          ),
        ),
      ],
    );
  }
}
