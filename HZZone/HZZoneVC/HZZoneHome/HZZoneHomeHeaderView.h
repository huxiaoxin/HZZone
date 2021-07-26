//
//  HZZoneHomeHeaderView.h
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^HZZoneHomeHeaderViewHeight)(CGFloat headerHeight);
@interface HZZoneHomeHeaderView : UIView
@property(nonatomic,copy) HZZoneHomeHeaderViewHeight headerBlock;
@end

NS_ASSUME_NONNULL_END
