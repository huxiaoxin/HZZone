//
//  HZZoneKefuSendView.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneKefuSendView.h"
@interface HZZoneKefuSendView ()
@property(nonatomic,strong) UIImageView * HZZoneSendImgView;
@end
@implementation HZZoneKefuSendView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self addSubview:self.HZZoneSendImgView];
    }
    return self;
}
- (UIImageView *)HZZoneSendImgView{
    if (!_HZZoneSendImgView) {
        _HZZoneSendImgView  =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
        _HZZoneSendImgView.image = [UIImage imageNamed:@"fasongxiaoxi"];
    }
    return _HZZoneSendImgView;
}
-(void)layoutSubviews{
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
