//
//  HZZoneVerticalView.m
//  HZZone
//
//  Created by codehzx on 2021/8/24.
//

#import "HZZoneVerticalView.h"
@interface HZZoneVerticalView ()
@property(nonatomic,strong) UILabel * HzzoneContentlb;
@property(nonatomic,strong) UIButton * HzzoneSwitchBtn;
@end
@implementation HZZoneVerticalView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self  = [super initWithFrame:frame]) {
        self.layer.cornerRadius = 5;
        self.layer.masksToBounds = YES;
        self.backgroundColor = LGDLightGaryColor;
        [self addSubview:self.HzzoneContentlb];
        [self addSubview:self.HzzoneSwitchBtn];
    }
    return self;
}
- (UILabel *)HzzoneContentlb{
    if (!_HzzoneContentlb) {
        _HzzoneContentlb = [[UILabel alloc]init];
        _HzzoneContentlb.text = @"给小鹅写个好评，鼓励一下😁";
        _HzzoneContentlb.font  =[UIFont boldSystemFontOfSize:14];
        _HzzoneContentlb.textColor  =LGDBLackColor;
    }
    return _HzzoneContentlb;
}
- (UIButton *)HzzoneSwitchBtn{
    if (!_HzzoneSwitchBtn) {
        _HzzoneSwitchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_HzzoneSwitchBtn  setBackgroundColor:[UIColor colorWithHexString:@"B7C1DD"]];
        [_HzzoneSwitchBtn setTitleColor:LGDBLackColor forState:UIControlStateNormal];
        [_HzzoneSwitchBtn setTitle:@"去" forState:UIControlStateNormal];
        _HzzoneSwitchBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        _HzzoneSwitchBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        _HzzoneSwitchBtn.layer.cornerRadius = 5;
        _HzzoneSwitchBtn.layer.masksToBounds = YES;
    }
    return _HzzoneSwitchBtn;
}
-(void)layoutSubviews{
    _HzzoneContentlb.frame = CGRectMake(10, CGRectGetMidY(self.bounds)-7.5, 200, 15);
    _HzzoneSwitchBtn.frame = CGRectMake(self.bounds.size.width-70, CGRectGetHeight(self.bounds)/2-15, 60, 30);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
