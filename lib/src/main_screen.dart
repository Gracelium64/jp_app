import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/app_bg.dart';
import 'package:jp_app/src/common/widgets/cup_cake_bg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        AppBg(appBg: 'assets/bg/bg_startscreen.png'),
        Center(child: CupCakeBg(snacOpacity: 0.8)),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            /////////
            padding: const EdgeInsets.fromLTRB(16, 48, 16, 0),

            ///////
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(flex: 5, child: Container(height: 50)),
                // Expanded(
                //   flex: 1,
                //   child: Container(height: 50)),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      clipBehavior: Clip.none,
                      padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(12, 50, 50, 50),
                    
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.5, color: Color.fromARGB(97, 126, 130, 126)),
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
                                      // color: Colors.amber,
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
                                      BoxShadow(
                                        blurStyle: BlurStyle.inner,
                                        offset: Offset(0, -2.5),
                                        blurRadius: 70,
                                        color: Color.fromARGB(100, 255, 172, 228),
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
                                    onPressed: () {},
                                    child: Text(
                                      'Order Now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
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
            ),
          ),
        ),
      ],
    );
  }
}
