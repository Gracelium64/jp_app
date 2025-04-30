import 'package:flutter/material.dart';

class Vorlesung extends StatelessWidget {
  const Vorlesung({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // FilledButton(onPressed: () {}, child: Text('filled')),
              // OutlinedButton(onPressed: () {}, child: Text('outline')),
              // Container(
              //   width: 50,
              //   height: 50,
              //   color: Theme.of(context).colorScheme.primary,
              // ),
              // ElevatedButton(onPressed: () {}, child: Text('elevated')),
              // SizedBox(
              //   width: 200.0,
              //   height: 100.0,
              //   child: Shimmer.fromColors(
              //     baseColor: Colors.red,
              //     highlightColor: Colors.yellow,
              //     child: Text(
              //       'Shimmer',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         fontSize: 40.0,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              // StarRating(rating: 4.6),
              Text('labelSmall', style: Theme.of(context).textTheme.labelSmall),
              Text(
                'labelMedium',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text('labelLarge', style: Theme.of(context).textTheme.labelLarge),
              Text('bodySmall', style: Theme.of(context).textTheme.bodySmall),
              Text('bodyMedium', style: Theme.of(context).textTheme.bodyMedium),
              Text('bodyLarge', style: Theme.of(context).textTheme.bodyLarge),
              Text('titleSmall', style: Theme.of(context).textTheme.titleSmall),
              Text(
                'titleMedium',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text('titleLarge', style: Theme.of(context).textTheme.titleLarge),
              Text(
                'headlineSmall',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'headlineMedium',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'headlineLarge',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'displaySmall',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                'displayMedium',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'displayLarge',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
