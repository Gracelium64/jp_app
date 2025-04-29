import 'package:flutter/material.dart';
import 'package:jp_app/src/common/widgets/star_rating.dart';
import 'package:shimmer/shimmer.dart';

class Vorlesung extends StatelessWidget {
  const Vorlesung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              FilledButton(onPressed: () {}, child: Text('filled')),
              OutlinedButton(onPressed: () {}, child: Text('outline')),
              Container(
                width: 50,
                height: 50,
                color: Theme.of(context).colorScheme.primary,
              ),
              ElevatedButton(onPressed: () {}, child: Text('elevated')),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.yellow,
                  child: Text(
                    'Shimmer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              StarRating(rating: 4.6),
            ],
          ),
        ),
      ),
    );
  }
}
