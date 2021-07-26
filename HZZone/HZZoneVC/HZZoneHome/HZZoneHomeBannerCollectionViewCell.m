//
//  HZZoneHomeBannerCollectionViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeBannerCollectionViewCell.h"
@interface HZZoneHomeBannerCollectionViewCell ()
@property(nonatomic,strong) UIView * HZZoneContentView;
@end
@implementation HZZoneHomeBannerCollectionViewCell
- (void)HZZoneAddSubViews{
    self.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.HZZoneContentView];
}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, GK_SCREEN_WIDTH-100, 367)];
        _HZZoneContentView.backgroundColor = LGDMianColor;
    }
    return _HZZoneContentView;
}
@end
