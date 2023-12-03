import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import 'package:logging/logging.dart';

import 'di/injection.dart';

Future<void> bootstrap(FutureOr<Widget> Function(GetIt getIt) builder) async =>
    runZonedGuarded(() async => _initialize(kDebugMode, builder), _handleError);

void _initialize(bool isDebugMode, FutureOr<Widget> Function(GetIt getIt) builder) async {
  _initLogger(isDebugMode);
  final serviceLocator = await configureDependencies();

  return runApp(await builder(serviceLocator));
}

void _initLogger(bool isDebugMode) {
  Logger.root.level = isDebugMode ? Level.ALL : Level.INFO;
  Logger.root.onRecord.listen((record) {
    if (isDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });
}

void _handleError(Object error, StackTrace stack) {
  final logger = Logger('_handleError');

  if (kDebugMode) {
    logger.warning('Error: $error; stack: $stack');
  }
}
