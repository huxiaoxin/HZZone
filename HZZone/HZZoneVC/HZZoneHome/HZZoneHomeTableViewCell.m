//
//  HZZoneHomeTableViewCell.m
//  HZZone
//
//  Created by codehzx on 2021/7/26.
//

#import "HZZoneHomeTableViewCell.h"
#import <ZKCycleScrollView-umbrella.h>
#import "HZZoneHomeBannerCollectionViewCell.h"
@interface HZZoneHomeTableViewCell ()<ZKCycleScrollViewDelegate,ZKCycleScrollViewDataSource>
@end
@implementation HZZoneHomeTableViewCell
-(void)HZZoneAddSubViews{
    ZKCycleScrollView *cycleScrollView = [[ZKCycleScrollView alloc] initWithFrame:CGRectMake(0, 0, GK_SCREEN_WIDTH, 367+40)];
    cycleScrollView.itemSize = CGSizeMake(GK_SCREEN_WIDTH-100, 367);
    cycleScrollView.itemZoomScale = 0.9;
    cycleScrollView.itemSpacing = 10; // 设置 cell 间距
    cycleScrollView.backgroundColor = [UIColor clearColor];
    cycleScrollView.delegate = self;
    cycleScrollView.dataSource = self;
    cycleScrollView.hidesPageControl = YES;
    cycleScrollView.autoScroll = NO;
    cycleScrollView.delegate = self;
    cycleScrollView.dataSource = self;
    [cycleScrollView registerCellClass:[HZZoneHomeBannerCollectionViewCell class] forCellWithReuseIdentifier:@"cellReuseId"];
    [self.contentView addSubview:cycleScrollView];
    
}
#pragma mark -- ZKCycleScrollView DataSource
- (NSInteger)numberOfItemsInCycleScrollView:(ZKCycleScrollView *)cycleScrollView {
    return 5;
}

- (__kindof ZKCycleScrollViewCell *)cycleScrollView:(ZKCycleScrollView *)cycleScrollView cellForItemAtIndex:(NSInteger)index {
    HZZoneHomeBannerCollectionViewCell *cell = [cycleScrollView dequeueReusableCellWithReuseIdentifier:@"cellReuseId" forIndex:index];
   // TODO:
   return cell;
}

#pragma mark -- ZKCycleScrollView Delegate
- (void)cycleScrollView:(ZKCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index {
    // TODO:
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
