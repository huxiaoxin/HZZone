//
//  HZZoneVerticalOldView.m
//  HZZone
//
//  Created by codehzx on 2021/8/24.
//

#import "HZZoneVerticalOldView.h"
@interface HZZoneVerticalOldView ()
@property(nonatomic,strong) UILabel * HzzoneContentlb;
@property(nonatomic,strong) UISwitch * HzzoneSwitch;

@end
@implementation HZZoneVerticalOldView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.layer.cornerRadius = 5;
        self.layer.masksToBounds = YES;
        self.backgroundColor = LGDLightGaryColor;
        [self addSubview:self.HzzoneContentlb];
        [self addSubview:self.HzzoneSwitch];

    }
    return self;
}
- (UILabel *)HzzoneContentlb{
    if (!_HzzoneContentlb) {
        _HzzoneContentlb = [[UILabel alloc]init];
        _HzzoneContentlb.text = @"护眼模式";
        _HzzoneContentlb.font  =[UIFont boldSystemFontOfSize:14];
        _HzzoneContentlb.textColor  =LGDBLackColor;
    }
    return _HzzoneContentlb;
}
- (UISwitch *)HzzoneSwitch{
    if (!_HzzoneSwitch) {
        _HzzoneSwitch = [[UISwitch alloc]init];
    }
    return _HzzoneSwitch;
}
-(void)layoutSubviews{
    _HzzoneContentlb.frame = CGRectMake(10, CGRectGetMidY(self.bounds)-7.5, 200, 15);
    _HzzoneSwitch.frame = CGRectMake(self.bounds.size.width-70, CGRectGetHeight(self.bounds)/2-15, 60, 30);

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
