import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_mobile_ads_facebook/google_mobile_ads_facebook.dart';

void main() {
  const MethodChannel channel = MethodChannel('google_mobile_ads_facebook');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GoogleMobileAdsFacebook.platformVersion, '42');
  });
}
