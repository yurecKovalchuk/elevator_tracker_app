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
      body: Padding(
        padding: const EdgeInsets.all(46.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Test Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 34),
            ),
            const SizedBox(height: 16),
            Image.asset(
              'assets/lift.jpeg',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => context.go(AppRoutInfo.housesScreen.path),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black),
                ),
                child: const Text(
                  'Enter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
