#import "FLTGoogleMobileAdsFacebookPlugin.h"

@implementation FLTGoogleMobileAdsFacebookPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FLTGoogleMobileAdsFacebookPlugin* instance = [[FLTGoogleMobileAdsFacebookPlugin alloc] init];

  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"plugins.flutter.io/google_mobile_ads_facebook"
            binaryMessenger:[registrar messenger]];

  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
  UIViewController *rootController =
      UIApplication.sharedApplication.delegate.window.rootViewController;

  if ([call.method isEqualToString:@"FBAdSettings#setAdvertiserTrackingEnabled"]) {
    [FBAdSettings setAdvertiserTrackingEnabled:call.arguments[@"enabled"]];
    result(nil);
  }
}

@end
