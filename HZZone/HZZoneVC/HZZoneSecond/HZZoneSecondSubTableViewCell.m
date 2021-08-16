//
//  HZZoneSecondSubTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneSecondSubTableViewCell.h"
#import <SDCycleScrollView-umbrella.h>
#import "HZZoneSecondBtn.h"
@interface HZZoneSecondSubTableViewCell ()
@property(nonatomic,strong) SDCycleScrollView * HZZSDC;
@property(nonatomic,strong) UIView            * HZZoneBtomline;
@property(nonatomic,strong) UILabel           * HZZTitle;
@property(nonatomic,strong) UIImageView       * HZZuserImgView;
@property(nonatomic,strong) UILabel           * HZZoneuserNamelb;
@property(nonatomic,strong) HZZoneSecondBtn           * HZZoneLikebtn;
@property(nonatomic,strong) HZZoneSecondBtn           * HZZoneComentbtn;
@property(nonatomic,strong) HZZoneSecondBtn           * HZZoneMorbtn;
@end
@implementation HZZoneSecondSubTableViewCell
-(void)HZZoneAddSubViews{
    [self.contentView addSubview:self.HZZSDC];
    [self.contentView addSubview:self.HZZoneBtomline];
    [self.contentView addSubview:self.HZZTitle];
    [self.contentView addSubview:self.HZZuserImgView];
    [self.contentView addSubview:self.HZZoneuserNamelb];
    [self.contentView addSubview:self.HZZoneLikebtn];
    [self.contentView addSubview:self.HZZoneComentbtn];
    [self.contentView addSubview:self.HZZoneMorbtn];


}
- (SDCycleScrollView *)HZZSDC{
    if (!_HZZSDC) {
        _HZZSDC = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-170, 10, 160, 100)];
        _HZZSDC.showPageControl = NO;
        _HZZSDC.autoScroll = NO;
        _HZZSDC.layer.cornerRadius  =5;
        _HZZSDC.layer.masksToBounds = YES;
        _HZZSDC.scrollDirection  = UICollectionViewScrollDirectionVertical;
        _HZZSDC.imageURLStringsGroup = @[@"https://img1.doubanio.com/view/photo/l/public/p2675429688.jpg",@"https://img1.doubanio.com/view/photo/l/public/p2675429687.jpg",@"https://img9.doubanio.com/view/photo/l/public/p2675429686.jpg"];
    }
    return _HZZSDC;
}
- (UIView *)HZZoneBtomline{
    if (!_HZZoneBtomline) {
        _HZZoneBtomline = [[UIView alloc]initWithFrame:CGRectMake(0, 124, GK_SCREEN_WIDTH, 1)];
        _HZZoneBtomline.backgroundColor  =LGDLightGaryColor;
    }
    return _HZZoneBtomline;
}
- (UILabel *)HZZTitle{
    if (!_HZZTitle) {
        _HZZTitle = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 190, 50)];
        _HZZTitle.numberOfLines = 2;
        _HZZTitle.textColor = LGDBLackColor;
        _HZZTitle.font = [UIFont systemFontOfSize:14];
        _HZZTitle.text  = @"王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义王家卫-极小主义";
    }
    return _HZZTitle;
}
- (UIImageView *)HZZuserImgView{
    if (!_HZZuserImgView) {
        _HZZuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_HZZTitle.frame)+8, 24, 24)];
        _HZZuserImgView.layer.cornerRadius = 12;
        _HZZuserImgView.layer.masksToBounds = YES;
        _HZZuserImgView.backgroundColor = LGDMianColor;
    }
    return _HZZuserImgView;
}
- (UILabel *)HZZoneuserNamelb{
    if (!_HZZoneuserNamelb) {
        _HZZoneuserNamelb  =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZuserImgView.frame)+5, CGRectGetMidY(_HZZuserImgView.frame)-7.5, 200, 15)];
        _HZZoneuserNamelb.textColor = LGDLightBLackColor;
        _HZZoneuserNamelb.font = [UIFont  systemFontOfSize:12];
        _HZZoneuserNamelb.text = @"夜的第七章";
    }
    return _HZZoneuserNamelb;
}
- (HZZoneSecondBtn *)HZZoneLikebtn{
    if (!_HZZoneLikebtn) {
        _HZZoneLikebtn = [HZZoneSecondBtn buttonWithType:UIButtonTypeCustom];
        [_HZZoneLikebtn setFrame:CGRectMake(17, CGRectGetMaxY(_HZZuserImgView.frame)+10, 50, 20)];
        //xihuan-sel
        //xihuan
        _HZZoneLikebtn.HZZoneImgView.image = [UIImage imageNamed:@"xihuan-sel"];
        _HZZoneLikebtn.HZZonelb.text = @"124";
        _HZZoneLikebtn.titleLabel.font = [UIFont systemFontOfSize:12];
        _HZZoneLikebtn.titleLabel.textColor = LGDGaryColor;
        _HZZoneLikebtn.tag = 0;
        [_HZZoneLikebtn addTarget:self action:@selector(HZZoneSecondBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _HZZoneLikebtn;
}
- (HZZoneSecondBtn *)HZZoneComentbtn{
    if (!_HZZoneComentbtn) {
        _HZZoneComentbtn = [HZZoneSecondBtn buttonWithType:UIButtonTypeCustom];
        [_HZZoneComentbtn setFrame:CGRectMake(5+CGRectGetMaxX(_HZZoneLikebtn.frame), CGRectGetMaxY(_HZZuserImgView.frame)+10, 50, 20)];
        //xihuan-sel
        //xihuan
        _HZZoneComentbtn.HZZoneImgView.image = [UIImage imageNamed:@"pinglun-second"];
        _HZZoneComentbtn.HZZonelb.text = @"124";
        _HZZoneComentbtn.titleLabel.font = [UIFont systemFontOfSize:12];
        _HZZoneComentbtn.titleLabel.textColor = LGDGaryColor;
        _HZZoneComentbtn.tag = 1;
        [_HZZoneComentbtn addTarget:self action:@selector(HZZoneSecondBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _HZZoneComentbtn;
}
- (HZZoneSecondBtn *)HZZoneMorbtn{
    if (!_HZZoneMorbtn) {
        _HZZoneMorbtn = [HZZoneSecondBtn buttonWithType:UIButtonTypeCustom];
        [_HZZoneMorbtn setFrame:CGRectMake(5+CGRectGetMaxX(_HZZoneComentbtn.frame), CGRectGetMaxY(_HZZuserImgView.frame)+10, 50, 20)];
        _HZZoneMorbtn.HZZoneImgView.image = [UIImage imageNamed:@"gengduo"];
        _HZZoneMorbtn.HZZonelb.text = @"";
        _HZZoneMorbtn.titleLabel.font = [UIFont systemFontOfSize:12];
        _HZZoneMorbtn.titleLabel.textColor = LGDGaryColor;
        _HZZoneMorbtn.tag = 2;
        [_HZZoneMorbtn addTarget:self action:@selector(HZZoneSecondBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _HZZoneMorbtn;
}
-(void)HZZoneSecondBtnClick:(HZZoneSecondBtn * )hzzoneBtn{
    if ([self.delegate respondsToSelector:@selector(HZZoneSecondSubTableViewCellWithbtnIndex:Cellndex:)]) {
        [self.delegate HZZoneSecondSubTableViewCellWithbtnIndex:hzzoneBtn.tag Cellndex:self.tag];
    }
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
