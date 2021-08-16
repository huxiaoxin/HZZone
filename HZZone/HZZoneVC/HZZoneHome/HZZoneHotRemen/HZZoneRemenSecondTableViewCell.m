//
//  HZZoneRemenSecondTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneRemenSecondTableViewCell.h"
@interface HZZoneRemenSecondTableViewCell ()
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UIView      * HZZoneBtomline;
@property(nonatomic,strong) UILabel     * HZZoneTitle;
@property(nonatomic,strong) UIView      * HZZoneIndictorView;
@property(nonatomic,strong) UILabel     * HZZoneAuthorlb;
@property(nonatomic,strong) UILabel     * HZZoneDeeplb;
@property(nonatomic,strong) UILabel     * HZZoneComentlb;

@end
@implementation HZZoneRemenSecondTableViewCell

- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneThubImgView];
    [self.contentView addSubview:self.HZZoneTitle];
    [self.contentView addSubview:self.HZZoneIndictorView];
    [self.contentView addSubview:self.HZZoneAuthorlb];
    [self.contentView addSubview:self.HZZoneDeeplb];
    [self.contentView addSubview:self.HZZoneComentlb];
    [self.contentView addSubview:self.HZZoneBtomline];
}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 10, 120,85)];
        _HZZoneThubImgView.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneThubImgView;
}
- (UIView *)HZZoneBtomline{
    if (!_HZZoneBtomline) {
        _HZZoneBtomline  =[[UIView alloc]initWithFrame:CGRectMake(0, 109, GK_SCREEN_WIDTH, 1)];
        _HZZoneBtomline.backgroundColor = LGDLightGaryColor;
        
    }
    return _HZZoneBtomline;
}
- (UILabel *)HZZoneTitle{
    if (!_HZZoneTitle) {
        _HZZoneTitle = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneThubImgView.frame)+10, 8, GK_SCREEN_WIDTH-CGRectGetMaxX(_HZZoneThubImgView.frame)-20, 50)];
        _HZZoneTitle.numberOfLines = 2;
        _HZZoneTitle.textColor = LGDBLackColor;
        _HZZoneTitle.font = [UIFont boldSystemFontOfSize:14];
        _HZZoneTitle.text = @"片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘片中盘";
    }
    return _HZZoneTitle;
}
- (UIView *)HZZoneIndictorView{
    if (!_HZZoneIndictorView) {
        _HZZoneIndictorView = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneThubImgView.frame)+10, CGRectGetMaxY(_HZZoneTitle.frame)+5, 2, 10)];
        _HZZoneIndictorView.backgroundColor = LGDMianColor;
    }
    return _HZZoneIndictorView;
}
- (UILabel *)HZZoneAuthorlb{
    if (!_HZZoneAuthorlb) {
        _HZZoneAuthorlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneIndictorView.frame)+2, CGRectGetMidY(_HZZoneIndictorView.frame)-7.5, 200, 15)];
        _HZZoneAuthorlb.text = @"电影人生";
        _HZZoneAuthorlb.font = [UIFont systemFontOfSize:13];
        _HZZoneAuthorlb.textColor =LGDGaryColor;
    }
    return _HZZoneAuthorlb;
}
- (UILabel *)HZZoneDeeplb{
    if (!_HZZoneDeeplb) {
        _HZZoneDeeplb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneThubImgView.frame)+10, CGRectGetMaxY(_HZZoneIndictorView.frame)+5, 200, 15)];
        _HZZoneDeeplb.text = @"3小时前";
        _HZZoneDeeplb.font = [UIFont systemFontOfSize:13];
        _HZZoneDeeplb.textColor =LGDGaryColor;
    }
    return _HZZoneDeeplb;
}
- (UILabel *)HZZoneComentlb{
    if (!_HZZoneComentlb) {
        _HZZoneComentlb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-250, CGRectGetMidY(_HZZoneDeeplb.frame)-7.5, 230, 15)];
        _HZZoneComentlb.font = [UIFont systemFontOfSize:12];
        [_HZZoneComentlb setText:@"30" textColor:[UIColor colorWithHexString:@"bfbfbf"] appendingImg:@"pinglun" imgIndex:0 lineSpacing:1];
        _HZZoneComentlb.textAlignment = NSTextAlignmentRight;
    }
    return _HZZoneComentlb;
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
