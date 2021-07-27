//
//  HZZoneHomeBannerCollectionViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeBannerCollectionViewCell.h"
@interface HZZoneHomeBannerCollectionViewCell ()
@property(nonatomic,strong) UIView * HZZoneContentView;
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UILabel   * HZZoneToplb;
@property(nonatomic,strong) UILabel   * HZZoneContentlb;
@property(nonatomic,strong) UILabel   * HZZoneArtislb;
@end
@implementation HZZoneHomeBannerCollectionViewCell
- (void)HZZoneAddSubViews{
    self.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.HZZoneContentView];
    [_HZZoneContentView addSubview:self.HZZoneThubImgView];
    [_HZZoneContentView addSubview:self.HZZoneToplb];
    [_HZZoneContentView addSubview:self.HZZoneContentlb];
    [_HZZoneContentView addSubview:self.HZZoneArtislb];
}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, GK_SCREEN_WIDTH-100, 367)];
        _HZZoneContentView.backgroundColor = [UIColor whiteColor];
        [_HZZoneContentView viewShadowPathWithColor:LGDGaryColor shadowOpacity:0.4 shadowRadius:5 shadowPathType:LeShadowPathAround shadowPathWidth:5];
        _HZZoneContentView.layer.cornerRadius = 5;
    }
    return _HZZoneContentView;
}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH-100, 150)];
        _HZZoneThubImgView.contentMode = UIViewContentModeScaleAspectFill;
        
        [_HZZoneThubImgView sd_setImageWithURL:[NSURL URLWithString:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201701%2F27%2F20170127011917_UmwnT.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1629986679&t=45bc8471bb94ce7b3d1511004a078368"] placeholderImage:[UIImage imageNamed:@""]];
        [_HZZoneThubImgView acs_radiusWithRadius:10 corner:UIRectCornerTopLeft | UIRectCornerTopRight];
        _HZZoneThubImgView.layer.cornerRadius = 5;
        _HZZoneThubImgView.layer.masksToBounds = YES;

    }
    return _HZZoneThubImgView;
}
- (UILabel *)HZZoneToplb{
    if (!_HZZoneToplb) {
        _HZZoneToplb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneThubImgView.frame)+15, CGRectGetWidth(_HZZoneContentView.frame)-10, 20)];
        _HZZoneToplb.font = KBlFont(20);
        _HZZoneToplb.textColor = LGDBLackColor;
        _HZZoneToplb.text = @"重庆森林";
    }
    return _HZZoneToplb;
}
- (UILabel *)HZZoneContentlb{
    if (!_HZZoneContentlb) {
        _HZZoneContentlb = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(_HZZoneToplb.frame)+15, CGRectGetWidth(_HZZoneContentView.frame)-10, 20)];
        _HZZoneContentlb.font = KBlFont(14);
        _HZZoneContentlb.textColor = LGDLightBLackColor;
        _HZZoneContentlb.numberOfLines = 0;
        [_HZZoneContentlb setText:@"重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林" lineSpacing:10];
       CGSize ContentlbSize =  [_HZZoneContentlb getSpaceLabelSize:@"重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林重庆森林" withFont:KBlFont(14) withWidth:CGRectGetWidth(_HZZoneContentView.frame)-10 lineSpacing:10];
        _HZZoneContentlb.size = ContentlbSize;
    }
    return _HZZoneContentlb;
}
- (UILabel *)HZZoneArtislb{
    if (!_HZZoneArtislb) {
        _HZZoneArtislb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetWidth(_HZZoneContentView.frame)-120, 340, 100, 15)];
        _HZZoneArtislb.textAlignment = NSTextAlignmentRight;
        _HZZoneArtislb.font = KBlFont(12);
        _HZZoneArtislb.textColor = LGDLightBLackColor;
        _HZZoneArtislb.text = @"导演：王家卫";
    }
    return _HZZoneArtislb;
}
@end
