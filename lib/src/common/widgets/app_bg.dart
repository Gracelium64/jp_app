import 'package:flutter/material.dart';

class AppBg extends StatelessWidget {
  final String appBg;
  
  const AppBg({
    super.key, required this.appBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(appBg),
                  fit: BoxFit.cover,
                ),
              ),
            );
  }
}
