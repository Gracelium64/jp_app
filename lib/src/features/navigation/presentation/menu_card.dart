import 'dart:ui';

import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          height: 265,
          width: 192,
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
              stops: [0.1, 0.5, 1],
              colors: [
                Color.fromARGB(255, 129, 81, 231),
                Color.fromARGB(155, 133, 129, 244),
                Color.fromARGB(18, 255, 255, 255),
              ],
              
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(
                width: 0.5,
                color: Color.fromARGB(255, 151, 151, 158),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                Container(height: 155, width: 155, color: Colors.blueGrey),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'title',
                        style: TextStyle(
                          fontFamily: 'SFPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
        
                      Text(
                        'subtitle',
                        style: TextStyle(
                          fontFamily: 'SFPrp',
                          fontSize: 11,
                          color: Color.fromARGB(255, 175, 167, 217),
                        ),
                      ),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('%'),
                          Text('price'),
                          Spacer(),
                          Text('#'),
                          Text('likes'),
                        ],
                      )
                    ],
                    
                  ),
                
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
