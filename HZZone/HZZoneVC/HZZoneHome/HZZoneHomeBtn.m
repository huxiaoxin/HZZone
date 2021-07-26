//
//  HZZoneHomeBtn.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeBtn.h"

@implementation HZZoneHomeBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        [self addSubview:self.HZZoneTopImgView];
        [self addSubview:self.HZZoneBtomlb];
    }
    return self;
}
- (UIImageView *)HZZoneTopImgView{
    if (!_HZZoneTopImgView) {
        _HZZoneTopImgView = [UIImageView new];
    }
    return _HZZoneTopImgView;
}
-(UILabel *)HZZoneBtomlb{
    if (!_HZZoneBtomlb) {
        _HZZoneBtomlb = [UILabel new];
        _HZZoneBtomlb.textAlignment = NSTextAlignmentCenter;
        _HZZoneBtomlb.font = [UIFont boldSystemFontOfSize:14];
        _HZZoneBtomlb.textColor = [UIColor blackColor];
    }
    return _HZZoneBtomlb;
}
-(void)layoutSubviews{
    _HZZoneTopImgView.frame = CGRectMake(self.bounds.size.width/2-17.5, 0, 35, 35);
    _HZZoneBtomlb.frame = CGRectMake(0, CGRectGetMaxY(_HZZoneTopImgView.frame)+10, self.bounds.size.width, 15);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
