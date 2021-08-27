//
//  AppDelegate.h
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import <UIKit/UIKit.h>
#import "HZZoneBaseTabbarViewController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property(nonatomic,strong) UIWindow * window;
@property(nonatomic,strong) HZZoneBaseTabbarViewController * hzzoneBaseTabbar;
+ (AppDelegate *)shareDelegate;

@end

