//
//  HZZoneGoodListTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/27.
//

#import "HZZoneGoodListTableViewCell.h"
@interface HZZoneGoodListTableViewCell ()
@property(nonatomic,strong) UIView * HZZoneContentView;
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UILabel     * HZZoneToplb;
@property(nonatomic,strong) UILabel     * HZZoneSecondlb;
@property(nonatomic,strong) UILabel     * HZZoneThreedlb;
@property(nonatomic,strong) UILabel     * HZZoneFouredlb;
@property(nonatomic,strong) UIView      * HZZoneRightView;
@property(nonatomic,strong) UILabel     * HZZoneSourelb;
@property(nonatomic,strong) UILabel     * HZZoneSoureContentlb;
@property(nonatomic,strong) UILabel     * HZZoneNumslb;
@end
@implementation HZZoneGoodListTableViewCell
-(void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneContentView];
    [self.contentView addSubview:self.HZZoneThubImgView];
    [_HZZoneContentView addSubview:self.HZZoneToplb];
    [_HZZoneContentView addSubview:self.HZZoneSecondlb];
    [_HZZoneContentView addSubview:self.HZZoneThreedlb];
    [_HZZoneContentView addSubview:self.HZZoneFouredlb];
    [_HZZoneContentView addSubview:self.HZZoneRightView];
    [_HZZoneRightView addSubview:self.HZZoneSourelb];
    [_HZZoneRightView addSubview:self.HZZoneSoureContentlb];
    [_HZZoneRightView addSubview:self.HZZoneNumslb];
}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView =[[UIView alloc]initWithFrame:CGRectMake(15, 40, GK_SCREEN_WIDTH-30, 110)];
        _HZZoneContentView.backgroundColor =[UIColor whiteColor];
        [_HZZoneContentView viewShadowPathWithColor:LGDGaryColor shadowOpacity:0.5 shadowRadius:5 shadowPathType:LeShadowPathAround shadowPathWidth:5];
        _HZZoneContentView.layer.cornerRadius = 5;
    }
    return _HZZoneContentView;
}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(25, 20, 80, 115)];
        _HZZoneThubImgView.layer.cornerRadius = 5;
        _HZZoneThubImgView.layer.masksToBounds = YES;
        _HZZoneThubImgView.backgroundColor  =LGDMianColor;
    }
    return _HZZoneThubImgView;
}
- (UIView *)HZZoneRightView{
    if (!_HZZoneRightView) {
        _HZZoneRightView  =[[UIView alloc]initWithFrame:CGRectMake(CGRectGetWidth(_HZZoneContentView.frame)-65, 0, 60, 60)];
        _HZZoneRightView.backgroundColor = LGDMianColor;
        _HZZoneRightView.layer.cornerRadius = 5;
        _HZZoneRightView.layer.masksToBounds = YES;
    }
    return _HZZoneRightView;
}
- (UILabel *)HZZoneSourelb{
    if (!_HZZoneSourelb) {
        _HZZoneSourelb = [[UILabel alloc]initWithFrame:CGRectMake(0, 5, CGRectGetWidth(_HZZoneRightView.frame), 15)];
        _HZZoneSourelb.textAlignment = NSTextAlignmentCenter;
        _HZZoneSourelb.textColor = [UIColor whiteColor];
        _HZZoneSourelb.text = @"自由评分";
        _HZZoneSourelb.font = [UIFont systemFontOfSize:12];
    }
    return _HZZoneSourelb;
}
- (UILabel *)HZZoneSoureContentlb{
    if (!_HZZoneSoureContentlb) {
        _HZZoneSoureContentlb = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneSourelb.frame)+2, CGRectGetWidth(_HZZoneRightView.frame), 20)];
        _HZZoneSoureContentlb.textAlignment = NSTextAlignmentCenter;
        _HZZoneSoureContentlb.textColor = [UIColor whiteColor];
        _HZZoneSoureContentlb.text = @"9.1";
        _HZZoneSoureContentlb.font = [UIFont systemFontOfSize:20];
    }
    return _HZZoneSoureContentlb;
}
- (UILabel *)HZZoneNumslb{
    if (!_HZZoneNumslb) {
        _HZZoneNumslb = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneRightView.frame)-16, CGRectGetWidth(_HZZoneRightView.frame), 15)];
        _HZZoneNumslb.textAlignment = NSTextAlignmentCenter;
        _HZZoneNumslb.textColor = [UIColor whiteColor];
        _HZZoneNumslb.font = [UIFont systemFontOfSize:12];
        _HZZoneNumslb.text = @"5621人";
    }
    return _HZZoneNumslb;
}
- (UILabel *)HZZoneToplb{
    if (!_HZZoneToplb) {
        _HZZoneToplb = [[UILabel alloc]initWithFrame:CGRectMake(100, 10, 170, 20)];
        _HZZoneToplb.textColor =[UIColor blackColor];
        _HZZoneToplb.text = @"龙猫";
        _HZZoneToplb.font = [UIFont boldSystemFontOfSize:18];
    }
    return _HZZoneToplb;
}
- (UILabel *)HZZoneSecondlb{
    if (!_HZZoneSecondlb) {
        _HZZoneSecondlb = [[UILabel alloc]initWithFrame:CGRectMake(100, CGRectGetMaxY(_HZZoneToplb.frame)+10, 170, 15)];
        _HZZoneSecondlb.text = @"原名:龙猫";
        _HZZoneSecondlb.font = [UIFont systemFontOfSize:13];
        _HZZoneSecondlb.textColor = LGDLightBLackColor;
    }
    return _HZZoneSecondlb;
}
- (UILabel *)HZZoneThreedlb{
    if (!_HZZoneThreedlb) {
        _HZZoneThreedlb = [[UILabel alloc]initWithFrame:CGRectMake(100, CGRectGetMaxY(_HZZoneSecondlb.frame)+5, 170, 15)];
        _HZZoneThreedlb.text = @"1088/日本/动画/冒险";
        _HZZoneThreedlb.font = [UIFont systemFontOfSize:13];
        _HZZoneThreedlb.textColor = LGDLightBLackColor;
    }
    return _HZZoneThreedlb;
}
- (UILabel *)HZZoneFouredlb{
    if (!_HZZoneFouredlb) {
        _HZZoneFouredlb = [[UILabel alloc]initWithFrame:CGRectMake(100, CGRectGetMaxY(_HZZoneThreedlb.frame)+5, 260, 15)];
        _HZZoneFouredlb.text = @"上映日期：2021-02-02(中国大陆)";
        _HZZoneFouredlb.font = [UIFont systemFontOfSize:13];
        _HZZoneFouredlb.textColor = LGDLightBLackColor;
    }
    return _HZZoneFouredlb;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
