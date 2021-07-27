//
//  HZZoneHomeHeaderView.h
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol HZZoneHomeHeaderViewDelegate <NSObject>

-(void)HZZoneHomeHeaderViewWithBtnIndex:(NSInteger)btnIndex;

@end
typedef void(^HZZoneHomeHeaderViewHeight)(CGFloat headerHeight);
@interface HZZoneHomeHeaderView : UIView
@property(nonatomic,copy) HZZoneHomeHeaderViewHeight headerBlock;
@property(nonatomic,weak) id <HZZoneHomeHeaderViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
