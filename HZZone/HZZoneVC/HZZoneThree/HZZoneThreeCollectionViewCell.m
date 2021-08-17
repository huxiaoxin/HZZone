//
//  HZZoneThreeCollectionViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/17.
//

#import "HZZoneThreeCollectionViewCell.h"
@interface HZZoneThreeCollectionViewCell ()
@property(nonatomic,strong) UIImageView * HzzoneThubImgView;
@end
@implementation HZZoneThreeCollectionViewCell
- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HzzoneThubImgView];
}
- (UIImageView *)HzzoneThubImgView{
    if (!_HzzoneThubImgView) {
        _HzzoneThubImgView = [UIImageView new];
        _HzzoneThubImgView.backgroundColor = LGDMianColor;
    }
    return _HzzoneThubImgView;
}
-(void)layoutSubviews{
    _HzzoneThubImgView.frame = self.bounds;
}
@end
