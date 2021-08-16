//
//  HZZoneHeaderFirstTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneHeaderFirstTableViewCell.h"
@interface HZZoneHeaderFirstTableViewCell ()
@property(nonatomic,strong) UIImageView * HZZoneuserImgView;
@property(nonatomic,strong) UILabel     * HZZoneContentlb;
@end
@implementation HZZoneHeaderFirstTableViewCell
- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneuserImgView];
    [self.contentView addSubview:self.HZZoneContentlb];
    
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
-(UILabel *)HZZoneContentlb{
    if (!_HZZoneContentlb) {
        CGRect ContentRect = [@"浙江省政务服务助理小浙为您服务，有什么可以帮您？" cxl_sizeWithMoreString:[UIFont systemFontOfSize:15] maxWidth:GK_SCREEN_WIDTH-CGRectGetMaxX(_HZZoneuserImgView.frame)-60];
        _HZZoneContentlb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+10, CGRectGetMinY(_HZZoneuserImgView.frame)+5, ContentRect.size.width+30, ContentRect.size.height+15)];
        _HZZoneContentlb.textAlignment = NSTextAlignmentCenter;
        _HZZoneContentlb.numberOfLines = 0;
        _HZZoneContentlb.backgroundColor = [UIColor redColor];
        [_HZZoneContentlb acs_radiusWithRadius:(ContentRect.size.height+15)/2 corner:UIRectCornerBottomLeft | UIRectCornerTopRight | UIRectCornerBottomRight];
        _HZZoneContentlb.layer.masksToBounds = YES;
        _HZZoneContentlb.font = [UIFont systemFontOfSize:15];
        _HZZoneContentlb.textColor =  LGDBLackColor;
        _HZZoneContentlb.text = @"浙江省政务服务助理小浙为您服务，有什么可以帮您？";
    }
    return _HZZoneContentlb;
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
