#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  DemoPlatformViewFactory *demoPlatformViewFactory = [[DemoPlatformViewFactory alloc] initWithMessenger:nil];
  NSObject<FlutterPluginRegistrar>* registrar = [self registrarForPlugin:@"DemoPlatformView"];
  [registrar registerViewFactory:demoPlatformViewFactory withId:@"DemoPlatformView"];
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end

@implementation DemoPlatformViewFactory

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger>*)messenger {
  self = [super init];
  if (self) {
  }
  return self;
}

- (NSObject<FlutterPlatformView>*)createWithFrame:(CGRect)frame
                                   viewIdentifier:(int64_t)viewId
                                        arguments:(id _Nullable)args {
  DemoPlatformView* platformView = [[DemoPlatformView alloc] initWithFrame:frame
                                                                viewIdentifier:viewId
                                                                     arguments:args
                                                               binaryMessenger:nil];
  return platformView;
}

- (NSObject<FlutterMessageCodec>*)createArgsCodec {
  return [FlutterStringCodec sharedInstance];
}

@end

@interface DemoPlatformView()

@property (strong, nonatomic) UILabel *label;

@end

@implementation DemoPlatformView

- (instancetype)initWithFrame:(CGRect)frame
               viewIdentifier:(int64_t)viewId
                    arguments:(id _Nullable)args
              binaryMessenger:(NSObject<FlutterBinaryMessenger>*)messenger {
  if ([super init]) {
    UILabel *label = [[UILabel alloc] init];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"This is a platform view";
    label.textColor = UIColor.blackColor;
    label.backgroundColor = UIColor.yellowColor;
    _label = label;
  }
  return self;
}

- (UIView*)view {
  return _label;
}

@end
