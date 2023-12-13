import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:elevator_tracker_app/domain/domain.dart';
import '../features/features.dart';
import 'app.dart';

class Application extends StatelessWidget {
  Application({
    super.key,
    required this.serviceLocator,
  });

  late final GoRouter _router = _buildRouting();
  final GetIt serviceLocator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(),
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
            create: (BuildContext context) => HousesBloc(
              serviceLocator<TrackerRepository>(),
            ),
            child: const HousesScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutInfo.liftScreen.path,
        name: AppRoutInfo.liftScreen.name,
        builder: (context, state) {
          final queriesHouse = state.uri.queryParameters['id'];

          return BlocProvider<LiftBloc>(
            create: (BuildContext context) => LiftBloc(
              serviceLocator<TrackerRepository>(),
            ),
            child: LiftScreen(
              queriesHouse!,
            ),
          );
        },
      ),
    ]);
  }
}
