//
//  HZZoneHomeHeaderView.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeHeaderView.h"
#import <SDCycleScrollView.h>
#import "SGAdvertScrollView.h"
#import "HZZoneHomeBtn.h"
#import "HZZoneHomeCollectionViewCell.h"
@interface HZZoneHomeHeaderView ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) SDCycleScrollView * HZZoneSDC;
@property(nonatomic,strong) UIView            * HZZoneContentView;
@property(nonatomic,strong) UIView            * HZZoneSearchView;
@property(nonatomic,strong) UIButton          * HZZoneSearchBtn;
@property(nonatomic,strong) SGAdvertScrollView * HZZoneSGView;
@property(nonatomic,strong) UICollectionView  * HZZoneColltectionView;
@property(nonatomic,strong) UILabel           * HZZoneRecomentlb;
@end
@implementation HZZoneHomeHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.HZZoneSDC];
        [self addSubview:self.HZZoneContentView];
        [_HZZoneContentView addSubview:self.HZZoneSearchView];
        [_HZZoneSearchView addSubview:self.HZZoneSearchBtn];
        [_HZZoneSearchView addSubview:self.HZZoneSGView];
        [self addSubview:self.HZZoneColltectionView];
        [self addSubview:self.HZZoneRecomentlb];
        NSArray * imgBtnArr = @[@"甄选好片",@"热门推荐",@"影视热门",@"在线客服"];
        
        for (int index = 0; index < imgBtnArr.count; index++) {
            HZZoneHomeBtn * hzzBtn =[[HZZoneHomeBtn alloc]initWithFrame:CGRectMake(CGRectGetWidth(_HZZoneContentView.frame)/imgBtnArr.count*index, CGRectGetMaxY(_HZZoneSearchView.frame)+25, CGRectGetWidth(_HZZoneContentView.frame)/imgBtnArr.count, CGRectGetHeight(_HZZoneContentView.frame)-CGRectGetMaxY(_HZZoneSearchView.frame)-25)];
            hzzBtn.HZZoneTopImgView.image = [UIImage imageNamed:imgBtnArr[index]];
            hzzBtn.HZZoneTopImgView.backgroundColor = LGDMianColor;
            hzzBtn.HZZoneBtomlb.text = imgBtnArr[index];
            hzzBtn.tag = index;
            [hzzBtn addTarget:self action:@selector(HZZoneHomeBtnClick) forControlEvents:UIControlEventTouchUpInside];
            [_HZZoneContentView addSubview:hzzBtn];
        }
        
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (self.headerBlock) {
                self.headerBlock(CGRectGetMaxY(_HZZoneRecomentlb.frame));
            }
        });
        
        
    }
    return self;
}
- (SDCycleScrollView *)HZZoneSDC{
    if (!_HZZoneSDC) {
        _HZZoneSDC = [[SDCycleScrollView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, GK_IS_iPhoneX ? (GK_SAFEAREA_TOP+150) :200)];
        _HZZoneSDC.imageURLStringsGroup = @[@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01e7495927f0a9a801216a3e211e7a.jpg%401280w_1l_2o_100sh.png&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1629869914&t=e0207c98b75450beab66f1fecc7ebf0a",@"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F017df65c7cd3bea801213f26a24069.jpg%402o.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1629869914&t=ddd9d6debedbc42d3fcb52548a879474"];
    }
    return _HZZoneSDC;
}
- (UIView *)HZZoneContentView{
    if (!_HZZoneContentView) {
        _HZZoneContentView = [[UIView alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneSDC.frame)-20, GK_SCREEN_WIDTH-30, 150)];
        _HZZoneContentView.backgroundColor = [UIColor whiteColor];
        _HZZoneContentView.layer.cornerRadius = 5;
        [_HZZoneContentView viewShadowPathWithColor:LGDMianColor shadowOpacity:0.3 shadowRadius:5 shadowPathType:LeShadowPathAround shadowPathWidth:5];
    }
    return _HZZoneContentView;
}
- (UIView *)HZZoneSearchView{
    if (!_HZZoneSearchView) {
        _HZZoneSearchView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, CGRectGetWidth(_HZZoneContentView.frame)-30, 35)];
        _HZZoneSearchView.layer.cornerRadius = 17.5;
        _HZZoneSearchView.layer.masksToBounds = YES;
        _HZZoneSearchView.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneSearchView;
}
- (UIButton *)HZZoneSearchBtn{
    if (!_HZZoneSearchBtn) {
        _HZZoneSearchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _HZZoneSearchBtn.frame = CGRectMake(CGRectGetWidth(_HZZoneSearchView.frame)-40, CGRectGetHeight(_HZZoneSearchView.frame)/2-10, 20, 20);
        [_HZZoneSearchBtn setImage:[UIImage imageNamed:@"sousuo"] forState:UIControlStateNormal];
        [_HZZoneSearchBtn addTarget:self action:@selector(HZZoneSearchBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _HZZoneSearchBtn;
}
- (SGAdvertScrollView *)HZZoneSGView{
    if (!_HZZoneSGView) {
        int HZZoneHeight = CGRectGetHeight(_HZZoneSearchView.frame);
        _HZZoneSGView = [[SGAdvertScrollView alloc]initWithFrame:CGRectMake(15, 0, CGRectGetWidth(_HZZoneSearchView.frame)-15-CGRectGetWidth(_HZZoneSearchBtn.frame)-20, HZZoneHeight)];
        _HZZoneSGView.backgroundColor = [UIColor clearColor];
        _HZZoneSGView.titleColor = [UIColor blackColor];
        _HZZoneSGView.titleFont = [UIFont systemFontOfSize:16];
        _HZZoneSGView.titles = @[@"222222",@"111111111111111111111111111111111111",@"0000000000",@"312321312"];
        _HZZoneSGView.signImages =  @[@"remen",@"",@"remen",@"remen"];
    }
    return _HZZoneSGView;
}
- (UICollectionView *)HZZoneColltectionView{
    if (!_HZZoneColltectionView) {
        UICollectionViewFlowLayout * HZZoneLayout = [[UICollectionViewFlowLayout alloc]init];
        HZZoneLayout.itemSize = CGSizeMake(150, 115);
        HZZoneLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        HZZoneLayout.sectionInset = UIEdgeInsetsMake(15, 15, 15, 15);
        _HZZoneColltectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneContentView.frame)+20, GK_SCREEN_WIDTH, 115) collectionViewLayout:HZZoneLayout];
        _HZZoneColltectionView.showsVerticalScrollIndicator = NO;
        _HZZoneColltectionView.showsHorizontalScrollIndicator = NO;
        _HZZoneColltectionView.backgroundColor = [UIColor clearColor];
        _HZZoneColltectionView.delegate = self;
        _HZZoneColltectionView.dataSource = self;
    }
    return _HZZoneColltectionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneHomeCollectionViewCell * HzzoneCell = [HZZoneHomeCollectionViewCell HZZoneCreatTheCollectView:collectionView WithTheIndexPath:indexPath];
    return HzzoneCell;
}
- (UILabel *)HZZoneRecomentlb{
    if (!_HZZoneRecomentlb) {
        _HZZoneRecomentlb = [[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneColltectionView.frame)+15, 200, 20)];
        _HZZoneRecomentlb.textColor = [UIColor blackColor];
        _HZZoneRecomentlb.text = @"热门推荐";
        _HZZoneRecomentlb.font = [UIFont boldSystemFontOfSize:18];
    }
    return _HZZoneRecomentlb;
}
-(void)HZZoneSearchBtnClick{
    
}
-(void)HZZoneHomeBtnClick{
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
