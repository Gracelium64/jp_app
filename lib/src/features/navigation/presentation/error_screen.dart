import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/glowing_text_btn.dart';
import 'package:jp_app/src/features/navigation/presentation/main_screen.dart';
import 'package:jp_app/src/theme/palette.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GlowingTextBtn(
          btnText: 'Error',
          colorOutlineLight: Palette.buttonOutlineLight,
          colorOutlineDark: Palette.buttonOutlineDark,
          colorGradientLight: Palette.buttonGradientOrange,
          colorGradientDark: Palette.buttonGradientPink,
          fontSizeData: 18,
          destination: MainScreen(),
        ),
      ),
    );
  }
}
