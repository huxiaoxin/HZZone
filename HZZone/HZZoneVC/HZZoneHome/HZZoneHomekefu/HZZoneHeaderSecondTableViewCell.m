//
//  HZZoneHeaderSecondTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneHeaderSecondTableViewCell.h"
@interface  HZZoneHeaderSecondTableViewCell ()
@property(nonatomic,strong) UIImageView * HZZoneuserImgView;
@property(nonatomic,strong) UIView      * HZZoneContentView;
@property(nonatomic,strong) UILabel     * HZZoneHotTitle;
@property(nonatomic,strong) UILabel     * HZZoneFirstQuestionlb;
@property(nonatomic,strong) UILabel     * HZZoneSecondQuestionlb;
@property(nonatomic,strong) UILabel     * HZZoneThreeQuestionlb;
@property(nonatomic,strong) UILabel     * HZZoneFoureQuestionlb;
@property(nonatomic,strong) UILabel     * HZZoneFiveQuestionlb;

@end
@implementation HZZoneHeaderSecondTableViewCell
- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneuserImgView];
    [self.contentView addSubview:self.HZZoneContentView];
    [_HZZoneContentView addSubview:self.HZZoneHotTitle];
    [_HZZoneContentView addSubview:self.HZZoneFirstQuestionlb];
    [_HZZoneContentView addSubview:self.HZZoneSecondQuestionlb];
    [_HZZoneContentView addSubview:self.HZZoneThreeQuestionlb];
    [_HZZoneContentView addSubview:self.HZZoneFoureQuestionlb];
    [_HZZoneContentView addSubview:self.HZZoneFiveQuestionlb];

}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+10, CGRectGetMinY(_HZZoneuserImgView.frame)+10, GK_SCREEN_WIDTH-CGRectGetMaxX(_HZZoneuserImgView.frame)-30, 160)];
        _HZZoneContentView.backgroundColor = [UIColor grayColor];
        [_HZZoneContentView acs_radiusWithRadius:20 corner:UIRectCornerBottomLeft | UIRectCornerBottomRight | UIRectCornerTopRight];
    }
    return _HZZoneContentView;
}
- (UILabel *)HZZoneHotTitle{
    if (!_HZZoneHotTitle) {
        _HZZoneHotTitle = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, CGRectGetWidth(_HZZoneContentView.frame)-20, 30)];

        NSTextAttachment * textAttment = [[NSTextAttachment alloc]init];
        textAttment.image = [UIImage imageNamed:@"remen"];
        textAttment.bounds = CGRectMake(0, -4, 20, 20);
        NSAttributedString * attbute = [NSAttributedString attributedStringWithAttachment:textAttment];
        NSMutableAttributedString * mutableAttbute = [[NSMutableAttributedString alloc]initWithString:@" 热门问题"];
        [mutableAttbute addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:15] range:NSMakeRange(0, 4)];
        [mutableAttbute addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, 4)];
        [mutableAttbute insertAttributedString:attbute atIndex:0];
        _HZZoneHotTitle.attributedText = mutableAttbute;
        

    }
    return _HZZoneHotTitle;
}
- (UILabel *)HZZoneFirstQuestionlb{
    if (!_HZZoneFirstQuestionlb) {
        _HZZoneFirstQuestionlb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneHotTitle.frame)+15, CGRectGetWidth(_HZZoneContentView.frame)-20, 15)];
        _HZZoneFirstQuestionlb.textColor = LGDLightBLackColor;
        _HZZoneFirstQuestionlb.font = [UIFont systemFontOfSize:15];
        _HZZoneFirstQuestionlb.text =  @"1、公转商贴息贷款一般什么情况开展";
    }
    return _HZZoneFirstQuestionlb;
}
- (UILabel *)HZZoneSecondQuestionlb{
    if (!_HZZoneSecondQuestionlb) {
        _HZZoneSecondQuestionlb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneFirstQuestionlb.frame)+10, CGRectGetWidth(_HZZoneContentView.frame)-20, 15)];
        _HZZoneSecondQuestionlb.textColor = LGDLightBLackColor;
        _HZZoneSecondQuestionlb.font = [UIFont systemFontOfSize:15];
        _HZZoneSecondQuestionlb.text =  @"2、流动人口居住登记";
    }
    return _HZZoneSecondQuestionlb;
}
- (UILabel *)HZZoneThreeQuestionlb{
    if (!_HZZoneThreeQuestionlb) {
        _HZZoneThreeQuestionlb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneSecondQuestionlb.frame)+10, CGRectGetWidth(_HZZoneContentView.frame)-20, 15)];
        _HZZoneThreeQuestionlb.textColor = LGDLightBLackColor;
        _HZZoneThreeQuestionlb.font = [UIFont systemFontOfSize:15];
        _HZZoneThreeQuestionlb.text =  @"3、参保人员转外就医手续办理";
    }
    return _HZZoneThreeQuestionlb;
}
- (UILabel *)HZZoneFoureQuestionlb{
    if (!_HZZoneFoureQuestionlb) {
        _HZZoneFoureQuestionlb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneThreeQuestionlb.frame)+10, CGRectGetWidth(_HZZoneContentView.frame)-20, 15)];
        _HZZoneFoureQuestionlb.textColor = LGDLightBLackColor;
        _HZZoneFoureQuestionlb.font = [UIFont systemFontOfSize:15];
        _HZZoneFoureQuestionlb.text =  @"4、市民卡如何诊间结算";
    }
    return _HZZoneFoureQuestionlb;
}
- (UIImageView *)HZZoneuserImgView{
    if (!_HZZoneuserImgView) {
        _HZZoneuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 15, 36, 36)];
        _HZZoneuserImgView.layer.cornerRadius = 18;
        _HZZoneuserImgView.layer.masksToBounds = YES;
        _HZZoneuserImgView.backgroundColor  = LGDMianColor;
    }
    return _HZZoneuserImgView;
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
