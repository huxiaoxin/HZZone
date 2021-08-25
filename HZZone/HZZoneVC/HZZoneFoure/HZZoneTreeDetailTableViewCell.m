//
//  HZZoneTreeDetailTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/24.
//

#import "HZZoneTreeDetailTableViewCell.h"

@interface HZZoneTreeDetailTableViewCell ()
@property(nonatomic,strong) UIImageView * hzzoneuserImgView;
@property(nonatomic,strong) UILabel     * hzzoneuserNamelb;
@property(nonatomic,strong) UILabel     * hzzoneContentlb;
@property(nonatomic,strong) UILabel     * hzzoneTimelb;
@property(nonatomic,strong) UIView      * hzzoneLine;
@property(nonatomic,strong) UILabel     * hzzoneMsgNumlb;
@end
@implementation HZZoneTreeDetailTableViewCell
- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.hzzoneuserImgView];
    [self.contentView addSubview:self.hzzoneuserNamelb];
    [self.contentView addSubview:self.hzzoneContentlb];
    [self.contentView addSubview:self.hzzoneTimelb];
    [self.contentView addSubview:self.hzzoneLine];
    [self.contentView addSubview:self.hzzoneMsgNumlb];

}
- (UIImageView *)hzzoneuserImgView{
    if (!_hzzoneuserImgView) {
        _hzzoneuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 15, 40, 40)];
        _hzzoneuserImgView.layer.cornerRadius = 20;
        _hzzoneuserImgView.layer.masksToBounds = YES;
        _hzzoneuserImgView.backgroundColor = LGDMianColor;
    }
    return _hzzoneuserImgView;
}
- (UILabel *)hzzoneuserNamelb{
    if (!_hzzoneuserNamelb) {
        _hzzoneuserNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_hzzoneuserImgView.frame)+12, CGRectGetMinY(_hzzoneuserImgView.frame)+5, 200, 18)];
        _hzzoneuserNamelb.textColor = LGDBLackColor;
        _hzzoneuserNamelb.font = [UIFont systemFontOfSize:15];
        _hzzoneuserNamelb.text = @"通知消息";
    }
    return _hzzoneuserNamelb;
}
- (UILabel *)hzzoneContentlb{
    if (!_hzzoneContentlb) {
        _hzzoneContentlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_hzzoneuserImgView.frame)+12, CGRectGetMaxY(_hzzoneuserNamelb.frame)+5, 200, 15)];
        _hzzoneContentlb.font = [UIFont systemFontOfSize:13];
        _hzzoneContentlb.textColor = LGDGaryColor;
        _hzzoneContentlb.text = @"从现在开始我要好好学习";
    }
    return _hzzoneContentlb;
}
- (UILabel *)hzzoneTimelb{
    if (!_hzzoneTimelb) {
        _hzzoneTimelb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-100, 10, 80, 14)];
        _hzzoneTimelb.textAlignment = NSTextAlignmentRight;
        _hzzoneTimelb.font = [UIFont systemFontOfSize:12];
        _hzzoneTimelb.textColor = LGDGaryColor;
        _hzzoneTimelb.text  =@"周一";
    }
    return _hzzoneTimelb;
}
- (UIView *)hzzoneLine{
    if (!_hzzoneLine) {
        _hzzoneLine = [[UIView alloc]initWithFrame:CGRectMake(10, 69, GK_SCREEN_WIDTH-20, 1)];
        _hzzoneLine.backgroundColor = LGDLightGaryColor;
    
    }
    return _hzzoneLine;
}
- (UILabel *)hzzoneMsgNumlb{
    if (!_hzzoneMsgNumlb) {
        _hzzoneMsgNumlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_hzzoneuserImgView.frame)-8, CGRectGetMinY(_hzzoneuserImgView.frame)-5, 16, 16)];
        _hzzoneMsgNumlb.layer.cornerRadius  =8;
        _hzzoneMsgNumlb.layer.masksToBounds = YES;
        _hzzoneMsgNumlb.textAlignment = NSTextAlignmentCenter;
        _hzzoneMsgNumlb.textColor = [UIColor whiteColor];
        _hzzoneMsgNumlb.text =@"12";
        _hzzoneMsgNumlb.font = [UIFont systemFontOfSize:9];
        _hzzoneMsgNumlb.backgroundColor = [UIColor redColor];
    }
    return _hzzoneMsgNumlb;
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
