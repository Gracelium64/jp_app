import 'dart:ui';
import 'package:flutter/material.dart';

class GlassFx extends StatelessWidget {
final Widget child;

  const GlassFx({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container()
        ),
    );
  }
}
