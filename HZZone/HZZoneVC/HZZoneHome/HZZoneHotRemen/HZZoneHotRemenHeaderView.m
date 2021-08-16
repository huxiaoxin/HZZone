//
//  HZZoneHotRemenHeaderView.m
//  HZZone
//
//  Created by codehzx on 2021/8/14.
//

#import "HZZoneHotRemenHeaderView.h"
#import "HZZoneHotRemenCollectionViewCell.h"
@interface HZZoneHotRemenHeaderView ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property(nonatomic,strong) UIView  * TimeBackView;
@property(nonatomic,strong) UILabel * Timelb;
@property(nonatomic,strong) UILabel * HZZoneTuijianToptite;
@property(nonatomic,strong) UICollectionView * HZZoneCollteionView;
@property(nonatomic,strong) UIView    * HZZoneBtomline;

@end
@implementation HZZoneHotRemenHeaderView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.TimeBackView];
        [_TimeBackView addSubview:self.Timelb];
        [self addSubview:self.HZZoneTuijianToptite];
        [self addSubview:self.HZZoneCollteionView];
        [self addSubview:self.HZZoneBtomline];

    }
    return self;
}
- (UIView *)HZZoneBtomline{
    if (!_HZZoneBtomline) {
        _HZZoneBtomline = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneCollteionView.frame)+40, GK_SCREEN_WIDTH, 2)];
        _HZZoneBtomline.backgroundColor = LGDLightGaryColor;
    }
    return _HZZoneBtomline;
}

- (UIView *)TimeBackView{
    if (!_TimeBackView) {
        _TimeBackView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 40)];
        _TimeBackView.backgroundColor = LGDLightGaryColor;
    }
    return _TimeBackView;
}
- (UILabel *)Timelb{
    if (!_Timelb) {
        _Timelb  =[[UILabel alloc]initWithFrame:CGRectMake(15, 10, 250, 20)];
        _Timelb.textColor = LGDLightBLackColor;
        _Timelb.text =@"7月18号";
        _Timelb.font = [UIFont systemFontOfSize:13];
    }
    return _Timelb;
}
- (UILabel *)HZZoneTuijianToptite{
    if (!_HZZoneTuijianToptite) {
        _HZZoneTuijianToptite  =[[UILabel alloc]initWithFrame:CGRectMake(15, CGRectGetMaxY(_TimeBackView.frame)+20, 250, 20)];
        _HZZoneTuijianToptite.textColor = LGDBLackColor;
        _HZZoneTuijianToptite.text =@"推荐影片";
        _HZZoneTuijianToptite.font = [UIFont boldSystemFontOfSize:16];
    }
    return _HZZoneTuijianToptite;
}
- (UICollectionView *)HZZoneCollteionView{
    if (!_HZZoneCollteionView) {
        UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
        layout.itemSize = CGSizeMake(260, 300);
        layout.scrollDirection  = UICollectionViewScrollDirectionHorizontal;
        layout.sectionInset = UIEdgeInsetsMake(0, 15, 0, 15);
        _HZZoneCollteionView  =[[UICollectionView alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(_HZZoneTuijianToptite.frame)+20, GK_SCREEN_WIDTH, 310) collectionViewLayout:layout];
        _HZZoneCollteionView.delegate  =self;
        _HZZoneCollteionView.dataSource = self;
        _HZZoneCollteionView.showsVerticalScrollIndicator = NO;
        _HZZoneCollteionView.showsHorizontalScrollIndicator = NO;
        _HZZoneCollteionView.backgroundColor = [UIColor clearColor];
        [_HZZoneCollteionView registerClass:[HZZoneHotRemenCollectionViewCell class] forCellWithReuseIdentifier:@"HZZoneHotRemenCollectionViewCell"];
    }
    return _HZZoneCollteionView;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    HZZoneHotRemenCollectionViewCell * hotCell  =[collectionView dequeueReusableCellWithReuseIdentifier:@"HZZoneHotRemenCollectionViewCell" forIndexPath:indexPath];
    return hotCell;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
