//
//  HZZoneSecondBtn.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneSecondBtn.h"

@implementation HZZoneSecondBtn
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.HZZoneImgView];
        [self addSubview:self.HZZonelb];
    }
    return self;
}
- (UIImageView *)HZZoneImgView{
    if (!_HZZoneImgView) {
        _HZZoneImgView = [UIImageView new];
    }
    return _HZZoneImgView;
}
-(UILabel *)HZZonelb{
    if (!_HZZonelb) {
        _HZZonelb = [[UILabel alloc]init];
        _HZZonelb.textColor = LGDGaryColor;
        _HZZonelb.font = [UIFont systemFontOfSize:12];
    }
    return _HZZonelb;
}
-(void)layoutSubviews{
    _HZZoneImgView.frame = CGRectMake(0, 0, 15, 15);
    _HZZonelb.frame = CGRectMake(CGRectGetMaxX(_HZZoneImgView.frame)+5, 0, 40, 15);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
