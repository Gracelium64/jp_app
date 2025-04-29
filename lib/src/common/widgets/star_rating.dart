import 'package:flutter/material.dart';
import 'package:jp_app/src/theme/palette.dart';

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    int correctedRating = rating.toInt();
    // final Color starColor = Color.fromARGB(255, 235, 120, 172);

    if (rating > 5) {
      correctedRating = 5;
    } else if (rating < 0) {
      correctedRating = 0;
    }
    if (rating > 4.5 && rating < 5) {
      return Row(
        children: [
          Icon(
            Icons.star,
            color: Palette.starColor,
          ),
          Icon(
            Icons.star,
            color: Palette.starColor,
          ),
          Icon(
            Icons.star,
            color: Palette.starColor,
          ),
          Icon(
            Icons.star,
            color: Palette.starColor,
          ),
          Icon(
            Icons.star_half_outlined,
            color: Palette.starColor,
          ),
        ],
      );
    }

    final int numberOfFullStars = correctedRating;
    final int numberOfEmptyStars = 5 - correctedRating;

    List<Icon> fullStars = List.filled(
        numberOfFullStars,
        Icon(
          Icons.star,
          color: Palette.starColor,
        ));
    List<Icon> emptyStars = List.filled(
        numberOfEmptyStars,
        Icon(
          Icons.star_border_outlined,
          color: Palette.starColor,
        ));

    return Row(
      children: [...fullStars, ...emptyStars],
    );
  }
}
