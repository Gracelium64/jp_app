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
              FilledButton(onPressed: () {}, child: Text('filled')),
              OutlinedButton(onPressed: () {}, child: Text('outline')),
              Container(
                width: 50,
                height: 50,
                color: Theme.of(context).colorScheme.primary
              ),
              ElevatedButton(onPressed: () {}, child: Text('elevated')),
            ],
          ),
        ),
      ),
    );
  }
}