//
//  AppDelegate.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (HZZoneBaseTabbarViewController *)hzzoneBaseTabbar{
    if (!_hzzoneBaseTabbar) {
        _hzzoneBaseTabbar = [[HZZoneBaseTabbarViewController alloc]init];
    }
    return _hzzoneBaseTabbar;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initGKNavConfigers];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = self.hzzoneBaseTabbar;
    // Override point for customization after application launch.
    return YES;
}
-(void)initGKNavConfigers{
    GKNavigationBarConfigure *HZZoneConfiger = [GKNavigationBarConfigure sharedInstance];
    [HZZoneConfiger setupDefaultConfigure];
    HZZoneConfiger.backgroundColor = [UIColor whiteColor];
    HZZoneConfiger.backStyle = GKNavigationBarBackStyleBlack;
    HZZoneConfiger.titleColor = [UIColor blackColor];
    HZZoneConfiger.titleFont = [UIFont boldSystemFontOfSize:18];
    if (@available(ios 11.0,*)) {
        UIScrollView.appearance.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        UITableView.appearance.estimatedRowHeight = 0;
        UITableView.appearance.estimatedSectionFooterHeight = 0;
        UITableView.appearance.estimatedSectionHeaderHeight = 0;
    }

}




@end
