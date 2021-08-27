
#import <UIKit/UIKit.h>
#import "carpVideoAcitytyModel.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^HZZoneActityDetailHeaderHeightBlock)(CGFloat headerHeight);
@interface HZZoneVideoActityDetailHeader : UIView
@property(nonatomic,copy)   HZZoneActityDetailHeaderHeightBlock  headerBlock;
@property(nonatomic,strong) carpVideoAcitytyModel * carpModel;
@end

NS_ASSUME_NONNULL_END
