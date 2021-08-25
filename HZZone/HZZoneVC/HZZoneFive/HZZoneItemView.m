//
//  HZZoneItemView.m
//  HZZone
//
//  Created by codehzx on 2021/8/24.
//

#import "HZZoneItemView.h"

@implementation HZZoneItemView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = LGDLightGaryColor;
        self.layer.cornerRadius  =5;
        self.layer.masksToBounds = YES;
        [self addSubview:self.hzzonelogoImgView];
        [self addSubview:self.hzzoneBtomlb];
    }
    return self;
}
- (UIImageView *)hzzonelogoImgView{
    if (!_hzzonelogoImgView) {
        _hzzonelogoImgView  =[[UIImageView alloc]init];
        _hzzonelogoImgView.backgroundColor= LGDMianColor;
    }
    return _hzzonelogoImgView;
}
- (UILabel *)hzzoneBtomlb{
    if (!_hzzoneBtomlb) {
        _hzzoneBtomlb  =[[UILabel alloc]init];
        _hzzoneBtomlb.textColor = LGDBLackColor;
        _hzzoneBtomlb.font = [UIFont boldSystemFontOfSize:17];
        _hzzoneBtomlb.text = @"1232131";
    }
    return _hzzoneBtomlb;
}
-(void)layoutSubviews{
    _hzzonelogoImgView.frame =  CGRectMake(10, 15, 35, 35);
    _hzzoneBtomlb.frame = CGRectMake(10, CGRectGetMaxY(_hzzonelogoImgView.frame)+15, 200, 15);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
