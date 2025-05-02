import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  final String imgUrl;

  const Ingredients({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imgUrl), fit: BoxFit.cover),
      ),
    );
  }
}
