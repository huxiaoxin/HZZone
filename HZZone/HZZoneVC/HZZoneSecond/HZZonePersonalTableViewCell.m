//
//  HZZonePersonalTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZonePersonalTableViewCell.h"
@interface HZZonePersonalTableViewCell ()
@property(nonatomic,strong) UIView * HZZoneContentView;
@property(nonatomic,strong) UIImageView * HZZoneuserImgView;
@property(nonatomic,strong) UILabel     * HZZoneuserNamelb;
@property(nonatomic,strong) UILabel     * HZZoneIDlb;
@property(nonatomic,strong) UILabel     * HZZonetaglb;
@property(nonatomic,strong) UILabel     * HZZoneWatchlb;
@property(nonatomic,strong) UIButton    * HZZoneChatbtn;
@property(nonatomic,strong) UIView      * HZZoneBtomline;
@property(nonatomic,strong) UILabel     * HZZoneDesclb;
@end
@implementation HZZonePersonalTableViewCell

- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneContentView];
    [_HZZoneContentView addSubview:self.HZZoneuserImgView];
    [_HZZoneContentView addSubview:self.HZZoneuserNamelb];
    [_HZZoneContentView addSubview:self.HZZoneIDlb];
    [_HZZoneContentView addSubview:self.HZZonetaglb];
    [_HZZoneContentView addSubview:self.HZZoneWatchlb];
    [_HZZoneContentView addSubview:self.HZZoneChatbtn];
    [_HZZoneContentView addSubview:self.HZZoneBtomline];
    [_HZZoneContentView addSubview:self.HZZoneDesclb];

}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView = [[UIView alloc]initWithFrame:CGRectMake(15, 10, GK_SCREEN_WIDTH-30, 150)];
        _HZZoneContentView.backgroundColor  =[UIColor whiteColor];
        _HZZoneContentView.layer.cornerRadius = 5;
        [_HZZoneContentView viewShadowPathWithColor:LGDLightBLackColor shadowOpacity:0.2 shadowRadius:5 shadowPathType:LeShadowPathAround shadowPathWidth:5];
    }
    return _HZZoneContentView;
}
- (UIImageView *)HZZoneuserImgView{
    if (!_HZZoneuserImgView) {
        _HZZoneuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 40, 40)];
        _HZZoneuserImgView.layer.cornerRadius = 5;
        _HZZoneuserImgView.layer.masksToBounds = YES;
        _HZZoneuserImgView.backgroundColor = LGDMianColor;
    }
    return _HZZoneuserImgView;
}
- (UILabel *)HZZoneuserNamelb{
    if (!_HZZoneuserNamelb) {
        _HZZoneuserNamelb  =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+7, CGRectGetMinY(_HZZoneuserImgView.frame)+2, 200, 18)];
        _HZZoneuserNamelb.textColor = LGDBLackColor;
        _HZZoneuserNamelb.font = [UIFont boldSystemFontOfSize:16];
        _HZZoneuserNamelb.text = @"差不多先生";
    }
    return _HZZoneuserNamelb;
}
- (UILabel *)HZZoneIDlb{
    if (!_HZZoneIDlb) {
        _HZZoneIDlb  =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+7, CGRectGetMaxY(_HZZoneuserNamelb.frame)+5, 200, 13)];
        _HZZoneIDlb.textColor = LGDLightBLackColor;
        _HZZoneIDlb.font = [UIFont boldSystemFontOfSize:12];
        _HZZoneIDlb.text = @"178386716371";
    }
    return _HZZoneIDlb;
}
- (UIButton *)HZZoneChatbtn{
    if (!_HZZoneChatbtn) {
        _HZZoneChatbtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_HZZoneChatbtn setBackgroundColor:LGDMianColor];
        [_HZZoneChatbtn setTitle:@"微聊" forState:UIControlStateNormal];
        _HZZoneChatbtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_HZZoneChatbtn  setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _HZZoneChatbtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
        _HZZoneChatbtn.layer.cornerRadius  = 15;
        _HZZoneChatbtn.layer.masksToBounds = YES;
        [_HZZoneChatbtn setFrame:CGRectMake(CGRectGetWidth(_HZZoneContentView.frame)-70, CGRectGetMidY(_HZZoneuserImgView.frame)-15, 60, 30)];
    }
    return _HZZoneChatbtn;
}
- (UIView *)HZZoneBtomline{
    if (!_HZZoneBtomline) {
        _HZZoneBtomline = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneuserImgView.frame)+10, CGRectGetWidth(_HZZoneContentView.frame), 1)];
        _HZZoneBtomline.backgroundColor  =LGDLightGaryColor;
    }
    return _HZZoneBtomline;
}
- (UILabel *)HZZoneDesclb{
    if (!_HZZoneDesclb) {
        _HZZoneDesclb  =[[UILabel alloc]initWithFrame:CGRectMake(5, CGRectGetMaxY(_HZZoneBtomline.frame)+10, CGRectGetWidth(_HZZoneContentView.frame)-10, 50)];
        _HZZoneDesclb.numberOfLines = 0;
        _HZZoneDesclb.font = [UIFont systemFontOfSize:14];
        [_HZZoneDesclb setText:@"132321478452675472452456214564321463218467312846832164378912467382916478231648392164837215463264578932546782547325478325475321845321453245672834582374572314587213457214" spacing:2];
        
    }
    return _HZZoneDesclb;
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
