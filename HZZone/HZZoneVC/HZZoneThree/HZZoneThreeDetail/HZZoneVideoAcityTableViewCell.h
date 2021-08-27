
#import "HZZoneBaseTableViewCell.h"
#import "carpVideoAcitytyModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol HZZoneVideoAcityTableViewCellDelegate <NSObject>

-(void)HZZoneVideoAcityTableViewCellWithIndex:(NSInteger)cellIndex;

@end
@interface HZZoneVideoAcityTableViewCell : HZZoneBaseTableViewCell
@property(nonatomic,strong) carpVideoAcitytyModel * hzzModel;
@property(nonatomic,weak) id <HZZoneVideoAcityTableViewCellDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
