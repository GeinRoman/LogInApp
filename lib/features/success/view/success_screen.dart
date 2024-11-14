import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
                title: Text('Congratulations!', style: Theme.of(context).textTheme.titleLarge,)
            ),
            body: const Center(
                child: Text('You successfully logged in!'),
            ),
    );
  }
}
