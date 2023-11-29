import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../features/features.dart';
import 'app.dart';


class Application extends StatelessWidget {
  Application({
    super.key,
  });

  late final GoRouter _router = _buildRouting();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  GoRouter _buildRouting() {
    return GoRouter(initialLocation: AppRoutInfo.startScreen.path, debugLogDiagnostics: true, routes: [
      GoRoute(
        path: AppRoutInfo.startScreen.path,
        name: AppRoutInfo.startScreen.name,
        builder: (context, state) {
          return  const StartScreen();
        },
      ),

    ]);
  }
}
