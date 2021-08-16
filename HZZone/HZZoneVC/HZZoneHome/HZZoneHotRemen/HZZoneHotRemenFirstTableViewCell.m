//
//  HZZoneHotRemenFirstTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneHotRemenFirstTableViewCell.h"
@interface HZZoneHotRemenFirstTableViewCell ()
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UILabel     * HZZoneTitlelb;
@property(nonatomic,strong) UILabel     * HZZoneDesclb;
@property(nonatomic,strong) UIImageView * HZZoneuserImgView;
@property(nonatomic,strong) UILabel     * HZZoneuserNamelb;
@property(nonatomic,strong) UILabel     * HZZoneTimelb;
@property(nonatomic,strong) UILabel     * HZZoneComentlb;
@property(nonatomic,strong) UIView      * HZZoneBtomline;
@end
@implementation HZZoneHotRemenFirstTableViewCell
- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneThubImgView];
    [self.contentView addSubview:self.HZZoneTitlelb];
    [self.contentView addSubview:self.HZZoneDesclb];
    [self.contentView addSubview:self.HZZoneuserImgView];
    [self.contentView addSubview:self.HZZoneuserNamelb];
    [self.contentView addSubview:self.HZZoneTimelb];
    [self.contentView addSubview:self.HZZoneComentlb];
    [self.contentView addSubview:self.HZZoneBtomline];

}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 0, GK_SCREEN_WIDTH-30, 150)];
        _HZZoneThubImgView.backgroundColor  =LGDLightGaryColor;
    }
    return _HZZoneThubImgView;
}
- (UILabel *)HZZoneTitlelb{
    if (!_HZZoneTitlelb) {
        _HZZoneTitlelb = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneThubImgView.frame)+5, GK_SCREEN_WIDTH-30, 20)];
        _HZZoneTitlelb.textColor = LGDBLackColor;
        _HZZoneTitlelb.numberOfLines = 0;
        _HZZoneTitlelb.font = [UIFont boldSystemFontOfSize:14];
        _HZZoneTitlelb.text  =@"骗中骗！这部高智商犯罪剧，看到怀疑人生！";
    }
    return _HZZoneTitlelb;
}
- (UILabel *)HZZoneDesclb{
    if (!_HZZoneDesclb) {
        _HZZoneDesclb = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneTitlelb.frame)+5, GK_SCREEN_WIDTH-30, 15)];
        _HZZoneDesclb.textColor = LGDLightBLackColor;
        _HZZoneDesclb.font = [UIFont boldSystemFontOfSize:12];
        _HZZoneDesclb.text  =@"高能骗局，层层反转";
    }
    return _HZZoneDesclb;
}
- (UIImageView *)HZZoneuserImgView{
    if (!_HZZoneuserImgView) {
        _HZZoneuserImgView =  [[UIImageView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneDesclb.frame)+5, 30, 30)];
        _HZZoneuserImgView.layer.cornerRadius = 15;
        _HZZoneuserImgView.layer.masksToBounds = YES;
        _HZZoneuserImgView.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneuserImgView;
}
- (UILabel *)HZZoneuserNamelb{
    if (!_HZZoneuserNamelb) {
        _HZZoneuserNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+10, CGRectGetMidY(_HZZoneuserImgView.frame)-7.5, GK_SCREEN_WIDTH-30, 15)];
        _HZZoneuserNamelb.textColor = LGDLightBLackColor;
        _HZZoneuserNamelb.font = [UIFont boldSystemFontOfSize:15];
        _HZZoneuserNamelb.text  =@"KK电影";
        
        NSString * text_first = @"KK电影";
        NSString *  text_second = @"  3小时前";
        NSMutableAttributedString * attbute = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",text_first,text_second]];
        [attbute addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:NSMakeRange(0, text_first.length)];
        [attbute addAttribute:NSForegroundColorAttributeName value:LGDBLackColor range:NSMakeRange(0, text_first.length)];
        [attbute addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:NSMakeRange(text_first.length, text_second.length)];
        [attbute addAttribute:NSForegroundColorAttributeName value:LGDLightBLackColor range:NSMakeRange(text_first.length, text_second.length)];
        _HZZoneuserNamelb.attributedText = attbute;
    }
    return _HZZoneuserNamelb;
}

- (UILabel *)HZZoneComentlb{
    if (!_HZZoneComentlb) {
        _HZZoneComentlb = [[UILabel alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-250, CGRectGetMidY(_HZZoneuserImgView.frame)-7.5, 230, 15)];
        _HZZoneComentlb.font = [UIFont systemFontOfSize:12];
        [_HZZoneComentlb setText:@"30" textColor:[UIColor colorWithHexString:@"bfbfbf"] appendingImg:@"pinglun" imgIndex:0 lineSpacing:1];
        _HZZoneComentlb.textAlignment = NSTextAlignmentRight;
    }
    return _HZZoneComentlb;
}
- (UIView *)HZZoneBtomline{
    if (!_HZZoneBtomline) {
        _HZZoneBtomline = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneuserImgView.frame)+10, GK_SCREEN_WIDTH, 1)];
        _HZZoneBtomline.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneBtomline;
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
