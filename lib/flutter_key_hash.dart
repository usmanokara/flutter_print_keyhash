import 'dart:async';

import 'package:flutter/services.dart';

class FlutterKeyHash {
  static const MethodChannel _channel = MethodChannel('flutter_key_hash');

  static Future<String?> get getFlutterKeyHash async {
    final String? version = await _channel.invokeMethod('getFlutterKeyHash');
    return version;
  }
}
