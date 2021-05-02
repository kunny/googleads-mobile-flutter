#import "FLTGoogleMobileAdsFacebookPlugin.h"

@implementation FLTGoogleMobileAdsFacebookPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"plugins.flutter.io/google_mobile_ads_facebook"
            binaryMessenger:[registrar messenger]];
  FLTGoogleMobileAdsFacebookPlugin* instance = [[FLTGoogleMobileAdsFacebookPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

@end
