//
//  HZZoneHomeCollectionViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeCollectionViewCell.h"
@interface HZZoneHomeCollectionViewCell ()
@property(nonatomic,strong) UIImageView * HZZoneTopimgView;
@property(nonatomic,strong) UILabel     * HZZoneBtomlb;
@end
@implementation HZZoneHomeCollectionViewCell
-(void)HZZoneAddSubViews{
    [self addSubview:self.HZZoneTopimgView];
    [self addSubview:self.HZZoneBtomlb];
}
- (UIImageView *)HZZoneTopimgView{
    if (!_HZZoneTopimgView) {
        _HZZoneTopimgView = [UIImageView new];
        _HZZoneTopimgView.backgroundColor = LGDMianColor;
    }
    return _HZZoneTopimgView;
}
-(UILabel *)HZZoneBtomlb{
    if (!_HZZoneBtomlb) {
        _HZZoneBtomlb = [UILabel new];
        _HZZoneBtomlb.textColor =[UIColor blackColor];
        _HZZoneBtomlb.font = [UIFont systemFontOfSize:13];
        _HZZoneBtomlb.text = @"热门追剧热门追剧热门追剧";
    }
    return _HZZoneBtomlb;
}
-(void)layoutSubviews{
    _HZZoneTopimgView.frame = CGRectMake(0, 0, self.bounds.size.width, 90);
    _HZZoneBtomlb.frame = CGRectMake(0, CGRectGetMaxY(_HZZoneTopimgView.frame)+6, self.bounds.size.width, 20);
}
@end
