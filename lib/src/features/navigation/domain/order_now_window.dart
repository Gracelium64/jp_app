import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/features/navigation/presentation/main_screen.dart';

class OrderNowWindow extends StatefulWidget {
  const OrderNowWindow({super.key});

  @override
  State<OrderNowWindow> createState() => _OrderNowWindowState();
}

class _OrderNowWindowState extends State<OrderNowWindow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(flex: 5, child: Container(height: 50)),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              clipBehavior: Clip.none,
              padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              decoration: ShapeDecoration(
                color: const Color.fromARGB(12, 50, 50, 50),

                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.5,
                    color: Color.fromARGB(100, 155, 160, 155),
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Feeling Snackish Today?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'InterBlack',
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                      letterSpacing: 0.2,
                      /////////////////////////////////////
                      shadows: [
                        Shadow(
                          offset: Offset(0, 30),
                          blurRadius: 180,
                          color: Color(0xFF000000),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.4, 8, 25.4, 0),
                    child: Text(
                      "Explore Angi's most popular snack selection and get instantly happy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0x99EBEBF5),
                        fontFamily: 'SFPro',
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                        letterSpacing: 1,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 30),
                            blurRadius: 180,
                            color: Color(0xFF000000),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 35, 0, 35),
                    child: Stack(
                      children: [
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
                                  Color.fromARGB(255, 246, 158, 163),
                                  Color.fromARGB(255, 233, 122, 196),
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
                            shadows: [
                              BoxShadow(
                                blurStyle: BlurStyle.inner,
                                offset: Offset(0, 2.5),
                                blurRadius: 60,
                                color: Color.fromARGB(120, 147, 117, 182),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                Color.fromARGB(20, 254, 200, 241),
                                Color.fromARGB(20, 255, 255, 255),

                                //A28
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          height: 50,
                          width: 230,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const MainScreen(),
                                  ),
                                );
                              });
                            },
                            child: Text(
                              'Order Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                height: 1.3,
                                shadows: [
                                  Shadow(
                                    offset: Offset(0, 8),
                                    blurRadius: 60,
                                    color: Color.fromARGB(180, 80, 80, 80),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(flex: 1, child: Container(height: 62)),
      ],
    );
  }
}
