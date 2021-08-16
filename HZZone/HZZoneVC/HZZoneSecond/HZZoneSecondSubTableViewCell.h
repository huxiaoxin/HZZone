//
//  HZZoneSecondSubTableViewCell.h
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN
@protocol HZZoneSecondSubTableViewCellDelegate <NSObject>

-(void)HZZoneSecondSubTableViewCellWithbtnIndex:(NSInteger)btnIndex Cellndex:(NSInteger)cellIndex;

@end
@interface HZZoneSecondSubTableViewCell : HZZoneBaseTableViewCell
@property(nonatomic,weak) id <HZZoneSecondSubTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
