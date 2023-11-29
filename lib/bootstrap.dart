import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:logging/logging.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async =>
    runZonedGuarded(() async => _initialize(builder), _handleError);

void _initialize(FutureOr<Widget> Function() builder) async {
  _initLogger();
}

void _initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
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
