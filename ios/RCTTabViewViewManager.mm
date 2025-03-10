#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import <React/RCTImageLoader.h>
#import "RCTBridge.h"
#import "react_native_bottom_tabs-Swift.h"

@interface RCTTabView : RCTViewManager
@end

@implementation RCTTabView

RCT_EXPORT_MODULE(RCTTabView)

- (UIView *)view
{
  RCTImageLoader *imageLoader = [self.bridge moduleForClass:[RCTImageLoader class]];
  return [[TabViewProvider alloc] initWithEventDispatcher:self.bridge.eventDispatcher imageLoader:imageLoader];
}

RCT_EXPORT_VIEW_PROPERTY(items, NSArray)
RCT_EXPORT_VIEW_PROPERTY(onPageSelected, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(selectedPage, NSString)
RCT_EXPORT_VIEW_PROPERTY(tabViewStyle, NSString)
RCT_EXPORT_VIEW_PROPERTY(icons, NSArray<RCTImageSource *>);
RCT_EXPORT_VIEW_PROPERTY(config, NSDictionary)

@end
