import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/app.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({
    super.key,
  });

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go(AppRoutInfo.housesScreen.path),
              child: const Text('Enter'),
            ),
          )
        ],
      ),
    );
  }
}
