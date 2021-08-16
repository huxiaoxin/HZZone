//
//  HZZoneSecondHeaderView.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneSecondHeaderView.h"
#import <SDCycleScrollView-umbrella.h>
@interface HZZoneSecondHeaderView ()
@property(nonatomic,strong) SDCycleScrollView * SDCView;
@end
@implementation HZZoneSecondHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.SDCView];
    }
    return self;
}
- (SDCycleScrollView *)SDCView{
    if (!_SDCView) {
        _SDCView = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(15, 0, GK_SCREEN_WIDTH-30, 140)];
        _SDCView.contentMode =  UIViewContentModeScaleAspectFit;
        _SDCView.layer.cornerRadius  =5;
        _SDCView.layer.masksToBounds = YES;
        _SDCView.backgroundColor = LGDLightGaryColor;
        _SDCView.imageURLStringsGroup = @[@"https://img1.doubanio.com/view/photo/l/public/p2675429688.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2675429687.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2675429686.jpg"];
    }
    return _SDCView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
