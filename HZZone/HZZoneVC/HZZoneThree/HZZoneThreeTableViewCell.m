//
//  HZZoneThreeTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneThreeTableViewCell.h"
#import "HZZoneThreeCollectionViewCell.h"
@interface HZZoneThreeTableViewCell ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic,strong) UIImageView * HZZoneuserImgView;
@property(nonatomic,strong) UILabel     * HZZoneNamelb;
@property(nonatomic,strong) UILabel     * HZZoneTimelb;
@property(nonatomic,strong) UIView      * HZZoneLine;
@property(nonatomic,strong) UIButton    * HZZoneColltecdBtn;
@property(nonatomic,strong) UILabel     * HZZoneTitle;
@property(nonatomic,strong) UILabel     * HZZoneSecondtitle;
@property(nonatomic,strong) UILabel     * HZZoneThreeTitle;
@property(nonatomic,strong) UILabel     * HZZoneFoureTitle;
@property(nonatomic,strong) UILabel     * HZZoneFiveTitle;
@property(nonatomic,strong) UIImageView * HZZoneThubImgView;
@property(nonatomic,strong) UICollectionView * HZZoneColltectionView;
@property(nonatomic,strong) UILabel     * HZZoneTotalNumlb;
@property(nonatomic,strong) UIView      * HZZoneDeepline;
@end
@implementation HZZoneThreeTableViewCell
- (void)HZZoneAddSubViews{
    self.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.HZZoneuserImgView];
    [self.contentView addSubview:self.HZZoneNamelb];
    [self.contentView addSubview:self.HZZoneTimelb];
    [self.contentView addSubview:self.HZZoneLine];
    [self.contentView addSubview:self.HZZoneColltecdBtn];
    [self.contentView addSubview:self.HZZoneTitle];
    [self.contentView addSubview:self.HZZoneSecondtitle];
    [self.contentView addSubview:self.HZZoneThreeTitle];
    [self.contentView addSubview:self.HZZoneFoureTitle];
    [self.contentView addSubview:self.HZZoneFiveTitle];
    [self.contentView addSubview:self.HZZoneThubImgView];
    [self.contentView addSubview:self.HZZoneDeepline];
    [self.contentView addSubview:self.HZZoneColltectionView];
    [self.contentView addSubview:self.HZZoneTotalNumlb];

}
- (UIImageView *)HZZoneuserImgView{
    if (!_HZZoneuserImgView) {
        _HZZoneuserImgView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 15, 35, 35)];
        _HZZoneuserImgView.layer.cornerRadius = 17.5;
        _HZZoneuserImgView.layer.masksToBounds = YES;
        _HZZoneuserImgView.backgroundColor = LGDMianColor;
    }
    return _HZZoneuserImgView;
}
- (UILabel *)HZZoneNamelb{
    if (!_HZZoneNamelb) {
        _HZZoneNamelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+5, CGRectGetMinY(_HZZoneuserImgView.frame)+0, 200, 20)];
        _HZZoneNamelb.textColor = LGDLightBLackColor;
        _HZZoneNamelb.font = [UIFont  systemFontOfSize:14];
        _HZZoneNamelb.text = @"夏沫沫子";
    }
    return _HZZoneNamelb;
}
- (UILabel *)HZZoneTimelb{
    if (!_HZZoneTimelb) {
        _HZZoneTimelb = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+5, CGRectGetMaxY(_HZZoneNamelb.frame)+5, 200, 15)];
        _HZZoneTimelb.textColor = LGDGaryColor;
        _HZZoneTimelb.font = [UIFont  systemFontOfSize:12];
        _HZZoneTimelb.text = @"2.64KM . 2分钟前";
    }
    return _HZZoneTimelb;
}
- (UIView *)HZZoneLine{
    if (!_HZZoneLine) {
        _HZZoneLine = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+5, CGRectGetMaxY(_HZZoneuserImgView.frame)+10, GK_SCREEN_WIDTH-CGRectGetMaxX(_HZZoneuserImgView.frame)-10, 1)];
        _HZZoneLine.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneLine;
}
- (UIButton *)HZZoneColltecdBtn{
    if (!_HZZoneColltecdBtn) {
        _HZZoneColltecdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_HZZoneColltecdBtn setTitle:@"收藏" forState:UIControlStateNormal];
        [_HZZoneColltecdBtn setTitleColor:LGDGaryColor forState:UIControlStateNormal];
        _HZZoneColltecdBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [_HZZoneColltecdBtn setImage:[UIImage imageNamed:@"shoucang-nomal"] forState:UIControlStateNormal];
        [_HZZoneColltecdBtn setImage:[UIImage imageNamed:@"shoucang_seltecd"] forState:UIControlStateSelected];
        [_HZZoneColltecdBtn addTarget:self action:@selector(HZZoneColltecdBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_HZZoneColltecdBtn setFrame:CGRectMake(GK_SCREEN_WIDTH-70, CGRectGetMidY(_HZZoneuserImgView.frame)-20, 70, 40)];
    }
    return _HZZoneColltecdBtn;
}
- (UILabel *)HZZoneTitle{
    if (!_HZZoneTitle) {
        _HZZoneTitle = [UILabel new];
        _HZZoneTitle.textColor = LGDBLackColor;
        _HZZoneTitle.font = [UIFont boldSystemFontOfSize:16];
        [_HZZoneTitle  setText:@" 约人看电影.风语咒" textColor:LGDBLackColor appendingImg:@"biaoqian" imgIndex:0 lineSpacing:3];
        [_HZZoneTitle setFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneLine.frame)+10, GK_SCREEN_WIDTH-150, 20)];
    }
    return _HZZoneTitle;
}
- (UILabel *)HZZoneSecondtitle{
    if (!_HZZoneSecondtitle) {
        _HZZoneSecondtitle = [UILabel new];
        _HZZoneSecondtitle.textColor = LGDLightBLackColor;
        _HZZoneSecondtitle.font = [UIFont systemFontOfSize:14];
        [_HZZoneSecondtitle  setText:@" 平时周末" textColor:LGDGaryColor appendingImg:@"tishi" imgIndex:0 lineSpacing:3];
        [_HZZoneSecondtitle setFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneTitle.frame)+10, GK_SCREEN_WIDTH-150, 20)];
    }
    return _HZZoneSecondtitle;
}

- (UILabel *)HZZoneThreeTitle{
    if (!_HZZoneThreeTitle) {
        _HZZoneThreeTitle = [UILabel new];
        _HZZoneThreeTitle.textColor = LGDLightBLackColor;
        _HZZoneThreeTitle.font = [UIFont systemFontOfSize:14];
        [_HZZoneThreeTitle  setText:@" 邀约对下：不限那女" textColor:LGDGaryColor appendingImg:@"tishi" imgIndex:0 lineSpacing:3];
        [_HZZoneThreeTitle setFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneSecondtitle.frame)+5, GK_SCREEN_WIDTH-150, 20)];
    }
    return _HZZoneThreeTitle;
}
- (UILabel *)HZZoneFoureTitle{
    if (!_HZZoneFoureTitle) {
        _HZZoneFoureTitle = [UILabel new];
        _HZZoneFoureTitle.textColor = LGDLightBLackColor;
        _HZZoneFoureTitle.font = [UIFont systemFontOfSize:14];
        [_HZZoneFoureTitle  setText:@" 《风语咒》评分7.6" textColor:LGDGaryColor appendingImg:@"tishi" imgIndex:0 lineSpacing:3];
        [_HZZoneFoureTitle setFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneThreeTitle.frame)+5, GK_SCREEN_WIDTH-150, 20)];
    }
    return _HZZoneFoureTitle;
}
- (UILabel *)HZZoneFiveTitle{
    if (!_HZZoneFiveTitle) {
        _HZZoneFiveTitle = [UILabel new];
        _HZZoneFiveTitle.textColor = LGDLightBLackColor;
        _HZZoneFiveTitle.font = [UIFont systemFontOfSize:14];
        [_HZZoneFiveTitle  setText:@" 地点：万欲国际影城《汇金虹桥店》" textColor:LGDGaryColor appendingImg:@"tishi" imgIndex:0 lineSpacing:3];
        [_HZZoneFiveTitle setFrame:CGRectMake(15, CGRectGetMaxY(_HZZoneFoureTitle.frame)+5, GK_SCREEN_WIDTH-150, 20)];
    }
    return _HZZoneFiveTitle;
}
- (UIImageView *)HZZoneThubImgView{
    if (!_HZZoneThubImgView) {
        _HZZoneThubImgView = [[UIImageView alloc]initWithFrame:CGRectMake(GK_SCREEN_WIDTH-120, CGRectGetMaxY(_HZZoneTitle.frame)+10, 100, 80)];
        _HZZoneThubImgView.backgroundColor = LGDMianColor;
    }
    return _HZZoneThubImgView;
}
- (UIView *)HZZoneDeepline{
    if (!_HZZoneDeepline) {
        _HZZoneDeepline = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneuserImgView.frame)+5, CGRectGetMaxY(_HZZoneFiveTitle.frame)+10, GK_SCREEN_WIDTH-CGRectGetMaxX(_HZZoneuserImgView.frame)-10, 1)];
        _HZZoneDeepline.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneDeepline;
}
- (UICollectionView *)HZZoneColltectionView{
    if (!_HZZoneColltectionView) {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(40, 40);
        layout.sectionInset =  UIEdgeInsetsMake(15, 15, 10, 10);
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _HZZoneColltectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneDeepline.frame), GK_SCREEN_WIDTH-120, 55) collectionViewLayout:layout];
        _HZZoneColltectionView.delegate = self;
        _HZZoneColltectionView.dataSource = self;
        _HZZoneColltectionView.showsVerticalScrollIndicator = NO;
        _HZZoneColltectionView.showsHorizontalScrollIndicator = NO;
        _HZZoneColltectionView.backgroundColor = [UIColor whiteColor];
    }
    return _HZZoneColltectionView;
}
- (UILabel *)HZZoneTotalNumlb{
    if (!_HZZoneTotalNumlb) {
        _HZZoneTotalNumlb  =[[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_HZZoneColltectionView.frame)+10, CGRectGetMidY(_HZZoneColltectionView.frame)-5, 100, 20)];
        _HZZoneTotalNumlb.textColor = LGDBLackColor;
        _HZZoneTotalNumlb.font = [UIFont systemFontOfSize:14];
        _HZZoneTotalNumlb.text = @"已有19人参与";
    }
    return _HZZoneTotalNumlb;
}
#pragma mark--UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneThreeCollectionViewCell * HzzCell = [HZZoneThreeCollectionViewCell HZZoneCreatTheCollectView:collectionView WithTheIndexPath:indexPath];
    return HzzCell;
}

-(void)HZZoneColltecdBtnClick:(UIButton *)collecBtn{
    collecBtn.selected = !collecBtn.selected;
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
