
import 'dart:async';

import 'package:flutter/services.dart';

class GoogleMobileAdsFacebook {
  static const MethodChannel _channel =
      const MethodChannel('google_mobile_ads_facebook');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
