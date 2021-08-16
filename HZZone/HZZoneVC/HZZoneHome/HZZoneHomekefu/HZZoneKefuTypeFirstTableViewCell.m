//
//  HZZoneKefuTypeFirstTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/28.
//

#import "HZZoneKefuTypeFirstTableViewCell.h"
@interface HZZoneKefuTypeFirstTableViewCell ()
@property(nonatomic,strong) UIImageView * HZZoneuserLeftImgView;
@property(nonatomic,strong) UILabel     * HZZoneCotentlbLeft;

@property(nonatomic,strong) UIImageView * HZZoneUserRightImgView;
@property(nonatomic,strong) UILabel     * HZZoneCotentlbRight;
@end
@implementation HZZoneKefuTypeFirstTableViewCell
- (void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZoneuserLeftImgView];
    [self.contentView addSubview:self.HZZoneCotentlbLeft];

    [self.contentView addSubview:self.HZZoneUserRightImgView];
    [self.contentView addSubview:self.HZZoneCotentlbRight];
}
- (UIImageView *)HZZoneuserLeftImgView{
    if (!_HZZoneuserLeftImgView) {
        _HZZoneuserLeftImgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 15, 36, 36)];
        _HZZoneuserLeftImgView.layer.cornerRadius = 18;
        _HZZoneuserLeftImgView.layer.masksToBounds = YES;
        _HZZoneuserLeftImgView.backgroundColor =LGDMianColor;
    }
    return _HZZoneuserLeftImgView;
}
- (UILabel *)HZZoneCotentlbLeft{
    if (!_HZZoneCotentlbLeft) {
        _HZZoneCotentlbLeft = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserLeftImgView.frame)+10, CGRectGetMinY(_HZZoneuserLeftImgView.frame)+10, 200, 40)];
        _HZZoneCotentlbLeft.numberOfLines = 0;
        _HZZoneCotentlbLeft.textColor = [UIColor blackColor];
        _HZZoneCotentlbLeft.font = [UIFont systemFontOfSize:14];
    }
    return _HZZoneCotentlbLeft;
}
- (UIImageView *)HZZoneUserRightImgView{
    if (!_HZZoneUserRightImgView) {
        _HZZoneUserRightImgView = [[UIImageView alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-36-15, 15, 36, 36)];
        _HZZoneUserRightImgView.layer.cornerRadius = 18;
        _HZZoneUserRightImgView.layer.masksToBounds = YES;
        _HZZoneUserRightImgView.backgroundColor =LGDMianColor;
    }
    return _HZZoneUserRightImgView;;
}
- (UILabel *)HZZoneCotentlbRight{
    if (!_HZZoneCotentlbRight) {
        _HZZoneCotentlbRight = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMinX(_HZZoneUserRightImgView.frame)-200-10, CGRectGetMinY(_HZZoneuserLeftImgView.frame)+10, 200, 40)];
        _HZZoneCotentlbRight.numberOfLines = 0;
        _HZZoneCotentlbRight.textColor = [UIColor blackColor];
        _HZZoneCotentlbRight.font = [UIFont systemFontOfSize:14];
    }
    return _HZZoneCotentlbRight;
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
