import 'package:flutter/services.dart';

class NotificationHandler {
  static const MethodChannel _channel = MethodChannel('your_channel');

  static Future<void> showNotification(String title, String content) async {
    try {
      await _channel.invokeMethod('showNotification', {'title': title, 'content': content});
    } on PlatformException catch (e) {
      print('Error: $e');
    }
  }
}
