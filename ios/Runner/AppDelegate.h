#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppDelegate : FlutterAppDelegate

@end

@interface DemoPlatformView: NSObject<FlutterPlatformView>

- (instancetype)initWithFrame:(CGRect)frame
               viewIdentifier:(int64_t)viewId
                    arguments:(id _Nullable)args
              binaryMessenger:(nullable NSObject<FlutterBinaryMessenger>*)messenger;

- (UIView*)view;
@end

@interface DemoPlatformViewFactory : NSObject <FlutterPlatformViewFactory>
- (instancetype)initWithMessenger:(nullable NSObject<FlutterBinaryMessenger>*)messenger;
@end

NS_ASSUME_NONNULL_END
