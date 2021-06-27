import 'dart:async';

import 'package:flutter/services.dart';

class GoogleMobileAdsFacebook {
  static const MethodChannel _channel =
      const MethodChannel('plugins.flutter.io/google_mobile_ads_facebook');

  static Future<void> setAdvertiserTrackingEnabled(bool enabled) async {
    return await _channel.invokeMethod<void>(
      'FBAdSettings#setAdvertiserTrackingEnabled',
      <dynamic, dynamic>{
        'enabled': enabled,
      },
    );
  }
}
