#import "HZZoneVideoActityDetailHeader.h"
#import <SDCycleScrollView.h>
#import <GKPhotoBrowser-umbrella.h>
@interface HZZoneVideoActityDetailHeader  ()<SDCycleScrollViewDelegate>
@property(nonatomic,strong) SDCycleScrollView * HZZoneSDCview;
@property(nonatomic,strong) UIView      * HZZoneContentView;
@property(nonatomic,strong) UILabel     * HZZoneVideoTtitle;
@property(nonatomic,strong) UIImageView * HZZoneJinxingzhonImgView;
@property(nonatomic,strong) UILabel     * HZZoneVideoJXZlb;
@property(nonatomic,strong) UILabel     * HZZoneideoContenlb;
@property(nonatomic,strong) UIProgressView * HZZoneProgresView;
@property(nonatomic,strong) UILabel     * HZZoneSYlb;
@property(nonatomic,strong) UILabel     * HZZoneSYNumlb;

@end
@implementation HZZoneVideoActityDetailHeader
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = LGDViewBJColor;
        [self addSubview:self.HZZoneSDCview];
        [self addSubview:self.HZZoneContentView];
        [_HZZoneContentView addSubview:self.HZZoneJinxingzhonImgView];
        [_HZZoneContentView addSubview:self.HZZoneVideoTtitle];
        [_HZZoneJinxingzhonImgView addSubview:self.HZZoneVideoJXZlb];
        [_HZZoneContentView addSubview:self.HZZoneideoContenlb];
        [_HZZoneContentView addSubview:self.HZZoneProgresView];
        [_HZZoneContentView addSubview:self.HZZoneSYlb];
        [_HZZoneContentView addSubview:self.HZZoneSYNumlb];
        
        [_HZZoneSDCview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.mas_equalTo(self);
            make.height.mas_equalTo(RealWidth(120)+GK_SAFEAREA_TOP);
        }];
        
        [_HZZoneContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(self);
            make.top.mas_equalTo(_HZZoneSDCview.mas_bottom).offset(-RealWidth(20));
            make.height.mas_equalTo(RealWidth(180));
        }];
        [_HZZoneJinxingzhonImgView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.right.mas_equalTo(_HZZoneVideoTtitle.mas_left).offset(-RealWidth(5));
//            make.centerY.mas_equalTo(_HZZoneVideoTtitle.mas_centerY);
            make.left.top.inset(RealWidth(15));
            make.size.mas_equalTo(CGSizeMake(RealWidth(50), RealWidth(19)));
        }];

        [_HZZoneVideoTtitle mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.mas_equalTo(_HZZoneContentView.mas_centerX).offset(RealWidth(25));
            make.right.inset(RealWidth(15));
            make.left.mas_equalTo(_HZZoneJinxingzhonImgView.mas_right).offset(RealWidth(5));
//            make.top.mas_equalTo(RealWidth(18));
            make.top.mas_equalTo(_HZZoneJinxingzhonImgView.mas_top);
        }];
        [_HZZoneVideoJXZlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.mas_equalTo(_HZZoneJinxingzhonImgView);
        
        }];
        [_HZZoneideoContenlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.inset(RealWidth(10));
            make.top.mas_equalTo(_HZZoneVideoTtitle.mas_bottom).offset(RealWidth(10));
        }];
        
        [_HZZoneProgresView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(RealWidth(15));
            make.top.mas_equalTo(_HZZoneideoContenlb.mas_bottom).offset(RealWidth(20));
            make.width.mas_equalTo(RealWidth(120));
        }];
        
        [_HZZoneSYlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_HZZoneProgresView.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_HZZoneProgresView.mas_centerY);
        }];
        [_HZZoneSYNumlb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_HZZoneSYlb.mas_right).offset(RealWidth(5));
            make.centerY.mas_equalTo(_HZZoneProgresView.mas_centerY);
        }];
//        [self setNeedsLayout];
//        [self layoutIfNeeded];
        _HZZoneProgresView.layer.cornerRadius = _HZZoneProgresView.height/2;

    }
    return self;
}
- (void)setCarpModel:(carpVideoAcitytyModel *)carpModel{
    _carpModel = carpModel;
    _HZZoneSDCview.imageURLStringsGroup = carpModel.imgArrs;
    _HZZoneVideoTtitle.text = carpModel.title;
    [_HZZoneideoContenlb setText:carpModel.DetailDesc lineSpacing:RealWidth(3)];
    [_HZZoneProgresView setProgress:carpModel.preogrese animated:YES];
    _HZZoneSYNumlb.text = [NSString stringWithFormat:@"%ld",carpModel.lastPersonNum];
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    
    [_HZZoneContentView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(CGRectGetMaxY(_HZZoneSYNumlb.frame));
    }];
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    if (self.headerBlock) {
        self.headerBlock(CGRectGetMaxY(_HZZoneContentView.frame)+RealWidth(15));
    }else{
        NSLog(@"NO---------");
    }
//     NSLog(@"--------%f",CGRectGetMaxY(_HZZoneContentView.frame)-RealWidth(100));
//    self.headerBlock(CGRectGetMaxY(_HZZoneContentView.frame));
   
}
- (SDCycleScrollView *)HZZoneSDCview{
    if (!_HZZoneSDCview) {
        _HZZoneSDCview = [SDCycleScrollView new];
        _HZZoneSDCview.bannerImageViewContentMode = UIViewContentModeScaleAspectFill;
        _HZZoneSDCview.delegate = self;
//        [_CarpVideoImgView sd_setImageWithURL:[NSURL URLWithString:@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2017%2F1217%2Fbook144628%2F144627049.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626506754&t=afd999788957d2bd25de13ee43b8e2c6"]];
    }
    return _HZZoneSDCview;
}
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index{
    
    NSMutableArray *photos = [NSMutableArray new];
    [_carpModel.imgArrs enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       GKPhoto *photo = [GKPhoto new];
       photo.url = [NSURL URLWithString:obj];
       [photos addObject:photo];
    }];
    
    GKPhotoBrowser *browser = [GKPhotoBrowser photoBrowserWithPhotos:photos currentIndex:index];
    browser.showStyle = GKPhotoBrowserShowStylePush;
    [browser showFromVC:[AppDelegate shareDelegate].window.rootViewController.gk_visibleViewControllerIfExist];


}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView = [UIView new];
        _HZZoneContentView.backgroundColor = LGDViewBJColor;
        [_HZZoneContentView acs_radiusWithRadius:RealWidth(15) corner:UIRectCornerTopLeft | UIRectCornerTopRight];
    }
    return _HZZoneContentView;
}
- (UILabel *)HZZoneVideoTtitle{
    if (!_HZZoneVideoTtitle) {
        _HZZoneVideoTtitle = [UILabel new];
        _HZZoneVideoTtitle.numberOfLines = 0;
        _HZZoneVideoTtitle.textColor = LGDBLackColor;
        _HZZoneVideoTtitle.font = [UIFont boldSystemFontOfSize:15];
        _HZZoneVideoTtitle.text = @"";
    }
    return _HZZoneVideoTtitle;
}
- (UIImageView *)HZZoneJinxingzhonImgView{
    if (!_HZZoneJinxingzhonImgView) {
        _HZZoneJinxingzhonImgView = [UIImageView new];
        _HZZoneJinxingzhonImgView.image = [UIImage imageNamed:@"jinhangzhong"];
    }
    return _HZZoneJinxingzhonImgView;
}
- (UILabel *)HZZoneVideoJXZlb{
    if (!_HZZoneVideoJXZlb) {
        _HZZoneVideoJXZlb = [UILabel new];
        _HZZoneVideoJXZlb.textColor = [UIColor whiteColor];
        _HZZoneVideoJXZlb.font = [UIFont boldSystemFontOfSize:12];
        _HZZoneVideoJXZlb.text = @"进行中";
    }
    return _HZZoneVideoJXZlb;
}
- (UILabel *)HZZoneideoContenlb{
    if (!_HZZoneideoContenlb) {
        _HZZoneideoContenlb = [UILabel new];
        _HZZoneideoContenlb.textColor = LGDGaryColor;
        _HZZoneideoContenlb.font = [UIFont boldSystemFontOfSize:13];
        _HZZoneideoContenlb.numberOfLines = 0 ;
        
    }
    return _HZZoneideoContenlb;
}
- (UIProgressView *)HZZoneProgresView{
    if (!_HZZoneProgresView) {
        _HZZoneProgresView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
        _HZZoneProgresView.tintColor = LGDMianColor;
        _HZZoneProgresView.backgroundColor = LGDGaryColor;
        [_HZZoneProgresView setProgress:.5 animated:YES];
        _HZZoneProgresView.layer.masksToBounds = YES;
    }
    return _HZZoneProgresView;
}
- (UILabel *)HZZoneSYlb{
    if (!_HZZoneSYlb) {
        _HZZoneSYlb = [UILabel new];
        _HZZoneSYlb.text  =@"剩余名额:";
        _HZZoneSYlb.font = [UIFont systemFontOfSize:13];
        _HZZoneSYlb.textColor = LGDGaryColor;
    }
    return _HZZoneSYlb;
}
- (UILabel *)HZZoneSYNumlb{
    if (!_HZZoneSYNumlb) {
        _HZZoneSYNumlb = [UILabel new];
        _HZZoneSYNumlb.textColor = LGDMianColor;
        _HZZoneSYNumlb.font = KFZPFont(16);
        _HZZoneSYNumlb.text = @"";
    }
    return _HZZoneSYNumlb;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
