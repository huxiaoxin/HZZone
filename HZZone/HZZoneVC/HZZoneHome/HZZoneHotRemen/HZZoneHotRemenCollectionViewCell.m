//
//  HZZoneHotRemenCollectionViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneHotRemenCollectionViewCell.h"
@interface HZZoneHotRemenCollectionViewCell ()
@property(nonatomic,strong) UIView * HZZoneContentView;
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UILabel   * HZZoneSourecelb;
@property(nonatomic,strong) UILabel   * HZZoneContentlb;
@property(nonatomic,strong) UILabel   * HZZoneAuthorlb;
@end
@implementation HZZoneHotRemenCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.HZZoneContentView];
        [_HZZoneContentView addSubview:self.HZZoneThubImgView];
        [_HZZoneThubImgView addSubview:self.HZZoneSourecelb];
        [_HZZoneContentView addSubview:self.HZZoneContentlb];
        [_HZZoneContentView addSubview:self.HZZoneAuthorlb];
        _HZZoneContentView.layer.cornerRadius = 5;
        [_HZZoneContentView viewShadowPathWithColor:LGDLightBLackColor shadowOpacity:0.1 shadowRadius:3 shadowPathType:LeShadowPathAround shadowPathWidth:3];

    }
    return self;
}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView =[[UIView alloc]initWithFrame:CGRectMake(5, 0, 250, 300)];
        _HZZoneContentView.backgroundColor = [UIColor whiteColor];
    }
    return _HZZoneContentView;
}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 250, 150)];
        _HZZoneThubImgView.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneThubImgView;
}
- (UILabel *)HZZoneSourecelb{
    if (!_HZZoneSourecelb) {
        _HZZoneSourecelb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneThubImgView.frame)-30, 200, 20)];
        _HZZoneSourecelb.textColor = LGDMianColor;
        _HZZoneSourecelb.font = [UIFont boldSystemFontOfSize:15];
        _HZZoneSourecelb.text = @"9.2";
    }
    return _HZZoneSourecelb;
}
- (UILabel *)HZZoneContentlb{
    if (!_HZZoneContentlb) {
        _HZZoneContentlb = [[UILabel alloc]initWithFrame:CGRectMake(5, CGRectGetMaxY(_HZZoneThubImgView.frame)+4, CGRectGetWidth(_HZZoneContentView.frame), 20)];
        _HZZoneContentlb.textColor = LGDLightBLackColor;
        _HZZoneContentlb.font = [UIFont systemFontOfSize:13];
        _HZZoneContentlb.numberOfLines = 0;
        [_HZZoneContentlb setText:@"我希望有个如你一般的人，贯彻未来，数遍生命的公路牌，我希望有个如你一般的人" spacing:2];
        CGSize ContentlbSize = [_HZZoneContentlb getSpaceLabelSize:@"我希望有个如你一般的人，贯彻未来，数遍生命的公路牌，我希望有个如你一般的人" withFont:[UIFont systemFontOfSize:13] withWidth:CGRectGetWidth(_HZZoneContentView.frame)-10 lineSpacing:2];
        _HZZoneContentlb.size = ContentlbSize;
    }
    
    return _HZZoneContentlb;
}
- (UILabel *)HZZoneAuthorlb{
    if (!_HZZoneAuthorlb) {
        _HZZoneAuthorlb = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneContentView.frame)-35, CGRectGetWidth(_HZZoneContentView.frame)-25, 25)];
        _HZZoneAuthorlb.textAlignment = NSTextAlignmentRight;
        _HZZoneAuthorlb.textColor =  LGDBLackColor;
        _HZZoneAuthorlb.font = [UIFont boldSystemFontOfSize:16];
        _HZZoneAuthorlb.text = @"- - <何以为家>";
    }
    return _HZZoneAuthorlb;
}
-(void)layoutSubviews{
//    _HZZoneContentView.frame = CGRectMake(5, 0, self.bounds.size.width-5, self.bounds.size.height);
}

@end
