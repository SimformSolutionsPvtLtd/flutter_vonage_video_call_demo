import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterVonageVideoCall {
  FlutterVonageVideoCall._();
  static const _vonageChannel = const MethodChannel('vonage');

  static Future<void> init({
    @required String session,
    @required String token,
    @required String apiKey,
  }) async {
    assert(session != null);
    assert(token != null);
    assert(apiKey != null);
    try {
      await _vonageChannel.invokeMethod('initVonageVideoCall', {
        "SESSION": session,
        "TOKEN": token,
        "API_KEY": apiKey,
      });
    } on PlatformException catch (e) {
      print("Failed to Make Video Call : '${e.message}'.");
    }
  }
}
