#import <UIKit/UIKit.h>
#import "carpVideoAcitytyModel.h"

NS_ASSUME_NONNULL_BEGIN
typedef void(^HZZoneAcittyDetailFooterHeightBlock)(CGFloat fotterHeight);
@interface HZZoneAcittyDetailFooter : UIView
@property(nonatomic,copy) HZZoneAcittyDetailFooterHeightBlock footerBlock;
@property(nonatomic,strong) carpVideoAcitytyModel * hzzoneModel;

@end

NS_ASSUME_NONNULL_END
