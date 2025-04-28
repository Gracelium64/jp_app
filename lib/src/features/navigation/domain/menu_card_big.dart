import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/common/items_data.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';

class MenuCardBig extends StatelessWidget {
  const MenuCardBig({super.key, required MenuItem menuItem});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBg(appBg: 'assets/bg/bg_startscreen.png'),
        // Center(child: CupCakeBg(snacOpacity: 0.3)),
        Scaffold(
          backgroundColor: const Color.fromARGB(58, 174, 174, 174),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 64, 16, 0),
            child: Column(
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 353,
                            height: 260,
                            child: Image.asset(
                              'assets/details/Vector.png',
                              color: Color.fromARGB(255, 49, 46, 37),
                            ),
                          ),
                          Column(children: [
                            Text('dfsgd'),
                            Text('descrtoproon'),
                            Text('price'),
                            TextButton(onPressed: () {}, child: Container(height: 50, width: 50, color: Colors.green,)),
                            Row(
                              children: [
                                Image.asset('assets/graphics/burger.png')
                              ],
                            )

                           ]
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 213);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}
