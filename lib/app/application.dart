import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
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
          return const StartScreen();
        },
      ),
      GoRoute(
        path: AppRoutInfo.housesScreen.path,
        name: AppRoutInfo.housesScreen.name,
        builder: (context, state) {
          return BlocProvider<HousesBloc>(
            create: (BuildContext context) => HousesBloc(),
            child: const HousesScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutInfo.liftScreen.path,
        name: AppRoutInfo.liftScreen.name,
        builder: (context, state) {
          return BlocProvider<LiftBloc>(
            create: (BuildContext context) => LiftBloc(),
            child: const LiftScreen(),
          );
        },
      ),
    ]);
  }
}
